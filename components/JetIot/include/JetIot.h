/*
 * @Author: your name
 * @Date: 2021-05-04 17:10:15
 * @LastEditTime: 2021-05-04 22:12:22
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /publish_test/components/JetIot/include/JetIot.h
 */
#ifndef JETIOT_H__
#define JETIOT_H__

#include "mqtt_client.h"
#include "esp_log.h"
#include "cJSON.h"
#include "cJSON_Utils.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"
#include "freertos/event_groups.h"

#include "soc/timer_group_struct.h"
#include "driver/periph_ctrl.h"
#include "driver/timer.h"

// 其他事件
#define EVENT_OTHER -1
// 修改设备组件值
#define EVENT_COMPONENT_CHANGE_VALUE 0
typedef struct jetIotComponentValues
{
    char *componentName;
    char *value; //如果为字符串需要加上转义符 “str”
} jetIotComponentValues_t;

typedef struct jetIotComponent
{
    char *name;
    char *type;
    void *value;

} jetIotComponent_t;

typedef struct jetIotThing
{
    char *name;
    char *id;
    int  componentsNum;
    jetIotComponent_t **components;

} jetIotThing_t;

// 修改设备属性
#define EVENT_THING_CHANGE_VALUE 1
// 设备上线通知
#define EVENT_THING_DEVICE_ONLINE 3
// 设备离线通知
#define EVENT_THING_DEVICE_OFFLINE 4
// 设备心跳事件
#define EVENT_THING_DEVICE_HEATBEAT 5

static EventGroupHandle_t mqtt_event_group;

const static int CONNECTED_BIT = BIT0;

static char *_TAG = "JetIot";

static esp_mqtt_client_handle_t mqtt_client = NULL;

static jetIotThing_t deviceThing;

// static char *expected_data = NULL;
// static char *actual_data = NULL;
// static size_t expected_size = 0;
// static size_t expected_published = 0;
// static size_t actual_published = 0;
static int qos_test = 0;

void initJetIot(jetIotThing_t * thing);
void registerDevice();
void runEvent(int eventID, char *Data);
void updateDeviceComponentValue(jetIotComponentValues_t *data);
jetIotComponent_t * jetIotThingComponent_create(char * name,char * type,void * value);
jetIotThing_t * jetIotThing_create(char * name,char * id,jetIotComponent_t ** components,int componentNum);
cJSON * jetIotThing_parse_json (jetIotThing_t * thing);
#endif