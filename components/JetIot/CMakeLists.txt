set(JetIot_srcs "src/JetIot.c")
idf_component_register(SRCS "${JetIot_srcs}"
                    INCLUDE_DIRS "include")
include_directories(
    $ENV{IDF_PATH}/components/mqtt/esp-mqtt/include
    $ENV{IDF_PATH}/components/json/cJSON
    )