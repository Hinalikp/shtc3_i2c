#include "shtc3.h"
#include "i2c.h" // Include the ESP-IDF I2C driver header
#include "esp_log.h"

#define SHTC3_I2C_ADDRESS 0x70

#ifndef ACK_CHECK_EN
#define ACK_CHECK_EN 0x1
#endif

#ifndef NACK_VAL
#define NACK_VAL 0x1
#endif

static const char *TAG = "SHTC3";

float temp_celsius = 0.0;
float relative_humidity = 0.0;

static esp_err_t i2c_master_write_data(i2c_port_t i2c_num, uint8_t addr, uint8_t* data, size_t data_len) {
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (addr << 1) | I2C_MASTER_WRITE, ACK_CHECK_EN);
    i2c_master_write(cmd, data, data_len, ACK_CHECK_EN);
    i2c_master_stop(cmd);
    esp_err_t ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);
    return ret;
}

static esp_err_t i2c_master_read_data(i2c_port_t i2c_num, uint8_t addr, uint8_t* data, size_t data_len) {
    i2c_cmd_handle_t cmd = i2c_cmd_link_create();
    i2c_master_start(cmd);
    i2c_master_write_byte(cmd, (addr << 1) | I2C_MASTER_READ, ACK_CHECK_EN);
    if (data_len > 1) {
        i2c_master_read(cmd, data, data_len - 1, I2C_MASTER_ACK);
    }
    i2c_master_read_byte(cmd, data + data_len - 1, I2C_MASTER_NACK);
    i2c_master_stop(cmd);
    esp_err_t ret = i2c_master_cmd_begin(i2c_num, cmd, 1000 / portTICK_PERIOD_MS);
    i2c_cmd_link_delete(cmd);
    return ret;
}

static void i2c_init() {
    i2c_config_t conf = {
        .mode = I2C_MODE_MASTER,
        .sda_io_num = 21, // Modify this with the appropriate GPIO number for SDA
        .scl_io_num = 22, // Modify this with the appropriate GPIO number for SCL
        .sda_pullup_en = GPIO_PULLUP_ENABLE,
        .scl_pullup_en = GPIO_PULLUP_ENABLE,
        .master.clk_speed = 100000 // Modify this to the desired I2C clock speed (e.g., 100000 for 100kHz)
    };
    i2c_param_config(I2C_NUM_0, &conf);
    i2c_driver_install(I2C_NUM_0, I2C_MODE_MASTER, 0, 0, 0);
}

void shtc3_read_sensor_data() {
    uint8_t command[2] = {0x7C, 0xA2}; // Command to read temperature and humidity
    uint8_t data[6]; // Data buffer to store the result
    i2c_init();

    // Read data from the sensor at address 0x70
    esp_err_t ret = i2c_master_write_data(I2C_NUM_0, SHTC3_I2C_ADDRESS, command, sizeof(command));
    if (ret == ESP_OK) {
        vTaskDelay(pdMS_TO_TICKS(100)); // Wait for sensor to process the data
        ret = i2c_master_read_data(I2C_NUM_0, SHTC3_I2C_ADDRESS, data, sizeof(data));
        if (ret == ESP_OK) {
            // Data is in two parts: 1st 3 bytes for temperature, next 3 bytes for humidity
            int16_t temperature = (data[0] << 8) | data[1];
            uint16_t humidity = (data[3] << 8) | data[4];
            temp_celsius = -45 + 175.0 * (temperature / 65535.0);
            relative_humidity = 100.0 * (humidity / 65535.0); // Cast to uint16_t

            ESP_LOGI(TAG, "Temperature: %.2f °C", temp_celsius);
            ESP_LOGI(TAG, "Humidity: %.2f %%", relative_humidity);
        } else {
            ESP_LOGE(TAG, "Failed to read data from sensor");
        }
    } else {
        ESP_LOGE(TAG, "Failed to send command to sensor");
    }
}


float shtc3_get_temperature() {
    return temp_celsius;
}

float shtc3_get_humidity() {
    return relative_humidity;
}