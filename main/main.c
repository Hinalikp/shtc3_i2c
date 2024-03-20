#include "shtc3.h"
#include "esp_log.h"

void app_main() {
    // Initialize SHTC3 sensor
    shtc3_read_sensor_data();

    // Get temperature and humidity
    float temperature = shtc3_get_temperature();
    float humidity = shtc3_get_humidity();

    // Print sensor data
    ESP_LOGI("MAIN", "Temperature: %.2f °C", temperature);
    ESP_LOGI("MAIN", "Humidity: %.2f %%", humidity);
}
