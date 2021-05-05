#ifndef CONFIG_H__
#define CONFIG_H__


/********************设备设置***********************/
// 设备名称
#define DEVICE_NAME "温湿度测试设备"
// 用户设备ID
#define DEVICE_ID "testDevice"


/********************MQTT设置***********************/
#define JETIOT_HOST "mqtt://101.37.86.133:1883"
// 设备注册主题
#define JETIOT_REGISTER_TOPIC "thingServer/function/register"
// 设备注册回复主题
#define JETIOT_REGISTER_REPLY_TOPIC "thingServer/function/register/testDevice"
// 设备发送到服务器的主题
#define JETIOT_TOSERVER_TOPIC "thingServer/entity/toserver"
// 用户设备接受服务器消息主题
#define JETIOT_DEVICE_TOPIC "thingServer/entity/testDevice/todevice"
// MQTT服务器用户名
#define JETIOT_DEVICE_MQTT_USER "admin"
// MQTT服务器密码
#define JETIOT_DEVICE_MQTT_PASSWORD "xsj08262334910"
// MQTT心跳间隔秒数
#define JETIOT_DEVICE_MQTT_HEATBEAT 5




#endif