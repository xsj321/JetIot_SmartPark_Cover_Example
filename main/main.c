/* MQTT publish test

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "esp_event.h"
#include "esp_netif.h"
#include "protocol_examples_common.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"
#include "freertos/event_groups.h"

#include "lwip/sockets.h"
#include "lwip/dns.h"
#include "lwip/netdb.h"

#include "cJSON.h"
#include "cJSON_Utils.h"

#include "esp_log.h"
#include "mqtt_client.h"

#include "JetIot.h"
#include "dht11.h"
#include "config.h"

#include "driver/gpio.h"

#define KEY_IO 15

static const char *TAG = "PUBLISH_TEST";

void update()
{
    int humidity = DHT11_read().humidity;
    int temperature = DHT11_read().temperature;

    ESP_LOGI("humidity", "%d", humidity);
    ESP_LOGI("temperature", "%d", temperature);

    char humidityString[10] = {0};
    char temperatureSring[10] = {0};

    itoa(humidity, humidityString, 10);
    itoa(temperature, temperatureSring, 10);

    ESP_LOGI("humidityString", "%s", humidityString);
    ESP_LOGI("temperatureSring", "%s", temperatureSring);

    jetIotComponentValues_t temperatureData = {
        .componentName = "temperature",
        .value = temperatureSring,
    };

    jetIotComponentValues_t humidityData = {
        .componentName = "humidity",
        .value = humidityString,
    };

    updateDeviceComponentValue(&temperatureData);
    updateDeviceComponentValue(&humidityData);
}

void key_read_task(void *pvParameter)
{
    char * _TAG = "key_read_task";
    for (;;)
    {
        if (gpio_get_level(KEY_IO) == 1)
        {
            vTaskDelay(60);
            if (gpio_get_level(KEY_IO) == 1)
            {
                ESP_LOGI(_TAG, "井盖被触动");
                jetIotComponentValues_t coverData = {
                    .componentName = "cover",
                    .value = "false",
                };
                updateDeviceComponentValue(&coverData);
            }
        }
        else
        {
            jetIotComponentValues_t coverData = {
                    .componentName = "cover",
                    .value = "true",
                };
                updateDeviceComponentValue(&coverData);
        }

        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}

void app_main(void)
{
    // char line[256];
    // char pattern[32];
    // char transport[32];
    // int repeat = 0;

    ESP_LOGI(TAG, "[APP] Free memory: %d bytes", esp_get_free_heap_size());
    ESP_LOGI(TAG, "[APP] IDF version: %s", esp_get_idf_version());

    esp_log_level_set("*", ESP_LOG_DEBUG);
    esp_log_level_set("MQTT_CLIENT", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT_TCP", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT_SSL", ESP_LOG_VERBOSE);
    esp_log_level_set("TRANSPORT", ESP_LOG_VERBOSE);
    esp_log_level_set("OUTBOX", ESP_LOG_VERBOSE);

    ESP_ERROR_CHECK(nvs_flash_init());
    ESP_ERROR_CHECK(esp_netif_init());
    ESP_ERROR_CHECK(esp_event_loop_create_default());

    /* This helper function configures Wi-Fi or Ethernet, as selected in menuconfig.
     * Read "Establishing Wi-Fi or Ethernet Connection" section in
     * examples/protocols/README.md for more information about this function.
     */
    ESP_ERROR_CHECK(example_connect());

    // 设定设备物模型
    double firstValue = 1.00;
    bool firstBool = true;
    jetIotComponent_t *temperature_c = jetIotThingComponent_create("temperature", "int", &firstValue);
    jetIotComponent_t *humidity_c = jetIotThingComponent_create("humidity", "int", &firstValue);
    jetIotComponent_t *cover_c = jetIotThingComponent_create("cover", "boolean", &firstBool);
    jetIotComponent_t *components[] = {temperature_c, humidity_c,cover_c};
    jetIotThing_t *thing = jetIotThing_create(DEVICE_NAME, DEVICE_ID, components, 3);
    // cJSON* jet =  jetIotThing_parse_json(thing);
    // cJSON_Delete(jet);

    initJetIot(thing);
    DHT11_init(GPIO_NUM_4);
    vTaskDelay(1000 / portTICK_RATE_MS);

    // gpio_pad_select_gpio(GPIO_NUM_17);
    // gpio_set_direction(GPIO_NUM_17, GPIO_MODE_INPUT);

    gpio_config_t io_conf;
    io_conf.intr_type = GPIO_PIN_INTR_DISABLE;
    io_conf.mode = GPIO_MODE_INPUT;
    io_conf.pin_bit_mask = (1 << 15);
    io_conf.pull_down_en = 0;

    io_conf.pull_up_en = 1;
    ESP_ERROR_CHECK(gpio_config(&io_conf));

    xTaskCreate(&key_read_task, "KEY", 2048, NULL, 5, NULL);

    while (1)
    {

        // int msg_id = esp_mqtt_client_publish(mqtt_client, MY_MQTT_PUBLIC_TOPIC, "expected_data", sizeof("expected_data"), qos_test, 0);
        // ESP_LOGI(TAG, "[%d] Publishing...", msg_id);
        // printf("Temperature is %d \n", DHT11_read().temperature);
        // printf("Humidity is %d\n", DHT11_read().humidity);
        // printf("Status code is %d\n", DHT11_read().status);

        // update();
        // key_read();
        // printf(" Current Gpio15 Level is : %d \r\n\r\n",
        // 	gpio_get_level(GPIO_NUM_15));

        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}
