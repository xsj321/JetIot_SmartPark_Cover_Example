#include "JetIot.h"
#include "config.h"



/**
 * @description: 创建一个组件
 * @param {char} *name 组件名称
 * @param {char} *type 组件的值类型
 * @param {void} *value 组件的值
 * @return {*} 组件指针
 */
jetIotComponent_t *jetIotThingComponent_create(char *name, char *type, void *value)
{
    jetIotComponent_t *component = (jetIotComponent_t *)malloc(sizeof(jetIotComponent_t));
    component->name = name;
    component->type = type;
    component->value = value;
    return component;
}


/**
 * @description: 创建一个物对象
 * @param {char} *name 物体名称
 * @param {char} *id 物体ID
 * @param {jetIotComponent_t} **components 物体组件指针数组
 * @param {int} componentNum 物体组件数
 * @return {*} 物对象指针
 */
jetIotThing_t *jetIotThing_create(char *name, char *id, jetIotComponent_t **components, int componentNum)
{
    jetIotThing_t *thing = (jetIotThing_t *)malloc(sizeof(jetIotThing_t));
    thing->name = name;
    thing->id = id;
    thing->components = components;
    thing->componentsNum = componentNum;

    return thing;
}

/**
 * @description: 转换物对象为cJSON对象
 * @param {jetIotThing_t} *thing 物对象指针
 * @return {*} 转化后对CJSON对象
 */
cJSON *jetIotThing_parse_json(jetIotThing_t *thing)
{
    char *_TAG = "jetIotThing_parse";
    cJSON *jsonThing = cJSON_CreateObject();
    cJSON *jsonComponents = cJSON_CreateObject();
    cJSON_AddItemToObject(jsonThing, "name", cJSON_CreateString(thing->name));
    cJSON_AddItemToObject(jsonThing, "id", cJSON_CreateString(thing->id));

    for (int i = 0; i < thing->componentsNum; i++)
    {
        cJSON *component = cJSON_CreateObject();
        jetIotComponent_t *nowComponent = thing->components[i];
        cJSON_AddItemToObject(component, "name", cJSON_CreateString(nowComponent->name));
        cJSON_AddItemToObject(component, "type", cJSON_CreateString(nowComponent->type));
        char *type = nowComponent->type;
        if (strcmp(type, "int") == 0)
        {
            cJSON_AddItemToObject(component, "value", cJSON_CreateNumber(*(double *)nowComponent->value));
        }
        else if (strcmp(type, "boolean") == 0)
        {
            cJSON_AddItemToObject(component, "value", cJSON_CreateBool(*(bool *)nowComponent->value));
        }
        else
        {
            cJSON_AddItemToObject(component, "value", cJSON_CreateString((char *)nowComponent->value));
        }

        cJSON_AddItemToObject(jsonComponents, nowComponent->name, component);
    }

    cJSON_AddItemToObject(jsonThing, "components", jsonComponents);

    // cJSON_Delete(jsonComponents);

    ESP_LOGI(_TAG, "jetIotThing_parse: \n%s\n", cJSON_PrintUnformatted(jsonThing));

    // printf("%s\n",cJSON_Print(jsonThing));

    return jsonThing;
}


/**
 * @description: 心跳定时回调
 * @param {void} *arg 回调参数一般为空
 * @return {*}
 */
static void heatBeat_cb(void *arg)
{
    char *_TAG = "heatBeat_cb";
    char config[60] = {0};
    sprintf(config, "{\"event_id\": %d, \"id\": \"%s\"}", EVENT_THING_DEVICE_HEATBEAT, DEVICE_ID);
    esp_mqtt_client_publish(mqtt_client, JETIOT_TOSERVER_TOPIC, config, strlen(config), 1, 0);
    ESP_LOGI(_TAG, "设备心跳");
}

/**
 * @description: 开始心跳发送
 * @param {int} time_sec 间隔秒数
 * @return {*}
 */
static void startHeatBeat(int time_sec)
{
    esp_timer_handle_t handle = 0;
    esp_timer_create_args_t test_periodic_arg = {
        .callback = &heatBeat_cb, //设置回调函数
        .arg = NULL,              //不携带参数
        .name = "HeatBeat"        //定时器名字
    };
    esp_err_t err = esp_timer_create(&test_periodic_arg, &handle);
    err = esp_timer_start_periodic(handle, time_sec * 1000000);
}


/**
 * @description: 检测设备是否在JetIot服务器进行了注册
 * @param {cJSON} *dataJSON 初始化流程中服务器返回的结果
 * @return {*}
 */
static void deviceOnlineCheck(cJSON *dataJSON)
{
    cJSON *onlineRes = cJSON_GetObjectItem(dataJSON, "success");

    if (onlineRes->valueint == true)
    {
        ESP_LOGI(_TAG, "设备上线成功");
    }
    else
    {
        ESP_LOGI(_TAG, "设备上线失败，可能没有进行注册，尝试注册设备");
        registerDevice(&deviceThing);
    }
}

/**
 * @description: 事件路由，用来选择接收到事件的ID
 * @param {esp_mqtt_event_handle_t} event mqtt事件对象
 * @return {*}
 */
static void JetIotEventRouter(esp_mqtt_event_handle_t event)
{
    const char *_TAG = "JetIotEventRouter";
    char *nowTopic = event->topic;
    if (strcmp(nowTopic, JETIOT_DEVICE_TOPIC) == 0)
    {
        cJSON *dataJSON = cJSON_Parse(event->data);
        cJSON *eventIdJSON = cJSON_GetObjectItem(dataJSON, "event_id");

        char eventID[10] = {0};
        sprintf(eventID, "%s", cJSON_Print(eventIdJSON));
        ESP_LOGI(_TAG, "EventID : %s", eventID);
        int intId = atoi(eventID);
        switch (intId)
        {
            // 设备上线通知
        case EVENT_THING_DEVICE_ONLINE:
            deviceOnlineCheck(dataJSON);
            break;

        default:
            break;
        }
    }
    else
    {
        ESP_LOGE(_TAG, "路由错误");
    }
}

/**
 * @description: mqtt事件处理函数
 * @param {esp_mqtt_event_handle_t} event mqtt事件对象
 * @return {*}
 */
static esp_err_t mqtt_event_handler(esp_mqtt_event_handle_t event)
{
    esp_mqtt_client_handle_t client = event->client;
    static int msg_id = 0;
    static int actual_len = 0;
    // your_context_t *context = event->context;
    switch (event->event_id)
    {
    case MQTT_EVENT_CONNECTED:
        ESP_LOGI(_TAG, "MQTT_EVENT_CONNECTED");
        xEventGroupSetBits(mqtt_event_group, CONNECTED_BIT);
        msg_id = esp_mqtt_client_subscribe(client, CONFIG_EXAMPLE_SUBSCIBE_TOPIC, qos_test);
        ESP_LOGI(_TAG, "sent subscribe successful, msg_id=%d", msg_id);

        break;
    case MQTT_EVENT_DISCONNECTED:
        ESP_LOGI(_TAG, "MQTT_EVENT_DISCONNECTED");
        break;

    case MQTT_EVENT_SUBSCRIBED:
        ESP_LOGI(_TAG, "MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_UNSUBSCRIBED:
        ESP_LOGI(_TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_PUBLISHED:
        ESP_LOGI(_TAG, "MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_DATA:
        ESP_LOGI(_TAG, "MQTT_EVENT_DATA");
        printf("TOPIC=%.*s\r\n", event->topic_len, event->topic);
        printf("DATA=%.*s\r\n", event->data_len, event->data);
        printf("ID=%d, total_len=%d, data_len=%d, current_data_offset=%d\n", event->msg_id, event->total_data_len, event->data_len, event->current_data_offset);
        if (event->topic)
        {
            actual_len = event->data_len;
            msg_id = event->msg_id;
        }
        else
        {
            actual_len += event->data_len;
            // check consisency with msg_id across multiple data events for single msg
            if (msg_id != event->msg_id)
            {
                ESP_LOGI(_TAG, "Wrong msg_id in chunked message %d != %d", msg_id, event->msg_id);
                abort();
            }
        }
        JetIotEventRouter(event);
        break;
    case MQTT_EVENT_ERROR:
        ESP_LOGI(_TAG, "MQTT_EVENT_ERROR");
        break;
    default:
        ESP_LOGI(_TAG, "Other event id:%d", event->event_id);
        break;
    }
    return ESP_OK;
}


/**
 * @description: 初始化mqtt连接
 * @param {*}
 * @return {*}
 */
static void mqtt_app_start(void)
{
    char config[60] = {0};
    sprintf(config, "{\"event_id\": %d, \"id\": \"%s\"}", EVENT_THING_DEVICE_OFFLINE, DEVICE_ID);
    mqtt_event_group = xEventGroupCreate();
    const esp_mqtt_client_config_t mqtt_cfg = {
        .event_handle = mqtt_event_handler,
        .user_context = JETIOT_DEVICE_MQTT_USER,
        .password = JETIOT_DEVICE_MQTT_PASSWORD,
        .client_id = DEVICE_ID,
        .lwt_topic = "ccbb",
        .lwt_msg = config,
        .lwt_msg_len = 60,
        .lwt_qos = 0,
        .lwt_retain = 0};

    ESP_LOGI(_TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    mqtt_client = esp_mqtt_client_init(&mqtt_cfg);

    // get_string(line, sizeof(line));
    // 设置MQTT客户端
    esp_mqtt_client_stop(mqtt_client);
    ESP_LOGI(_TAG, "[TCP transport] Startup..");
    esp_mqtt_client_set_uri(mqtt_client, JETIOT_HOST);

    xEventGroupClearBits(mqtt_event_group, CONNECTED_BIT);
    esp_mqtt_client_start(mqtt_client);
    ESP_LOGI(_TAG, "Note free memory: %d bytes", esp_get_free_heap_size());
    xEventGroupWaitBits(mqtt_event_group, CONNECTED_BIT, false, true, portMAX_DELAY);
}

/**
 * @description: 向JetIot注册设备
 * @param {jetIotThing_t} *thing 物对象指针
 * @return {*}
 */
void registerDevice(jetIotThing_t *thing)
{
    char *_TAG = "registerDevice";
    cJSON *thingJson = jetIotThing_parse_json(thing);
    char *sendString = cJSON_Print(thingJson);
    esp_mqtt_client_publish(mqtt_client, JETIOT_REGISTER_TOPIC, sendString, strlen(sendString), 1, 0);
    cJSON_Delete(thingJson);
    free(sendString);
    ESP_LOGI(_TAG, "注册设备进程中..");
}


/**
 * @description: 初始化JetIot连接
 * @param {jetIotThing_t} *thing 物对象指针
 * @return {*}
 */
void initJetIot(jetIotThing_t *thing)
{
    deviceThing = *thing;
    mqtt_app_start();
    char config[60];
    sprintf(config, "{\"event_id\": %d, \"id\": \"%s\"}", EVENT_THING_DEVICE_ONLINE, DEVICE_ID);
    int size = strlen(config);
    esp_mqtt_client_subscribe(mqtt_client, JETIOT_DEVICE_TOPIC, 1);
    esp_mqtt_client_publish(mqtt_client, JETIOT_TOSERVER_TOPIC, config, size, 1, 0);
    ESP_LOGI(_TAG, " init JetIot : %s", config);
    startHeatBeat(JETIOT_DEVICE_MQTT_HEATBEAT);
}

// /**执行事件
//  *
//  * @param eventID 事件ID
//  * @param Data 数据
//  */


// void runEvent(int eventID, char *Data)
// {
//     char send[60];
// }

/**
 * @description: 更新对应组件的值
 * @param {jetIotComponentValues_t} *data 组件值对象
 * @return {*}
 */
void updateDeviceComponentValue(jetIotComponentValues_t *data)
{
    char send[100];
    sprintf(send, "{\"event_id\": %d,\"id\": \"%s\",\"component_name\": \"%s\",\"value\": %s}",
            0,
            DEVICE_ID,
            data->componentName,
            data->value);
    ESP_LOGI(_TAG, "update %s  \n component:%s \n value:%s \n data:%s",
             DEVICE_ID,
             data->componentName,
             data->value,
             send);

    esp_mqtt_client_publish(mqtt_client, JETIOT_TOSERVER_TOPIC, send, strlen(send), 1, 0);
}
