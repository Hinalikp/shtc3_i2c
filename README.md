# SHTC3 Sensor Interface with ESP-IDF

This repository contains code for interfacing with the Sensirion SHTC3 temperature and humidity sensor using the ESP-IDF (Espressif IoT Development Framework) and I2C communication protocol.

## Prerequisites

- ESP-IDF development environment set up(ESP-IDF v5.1.2 used)
- Sensirion SHTC3 sensor
- Wiring for I2C communication between ESP32 and SHTC3 sensor

## Setup

1. Connect the SHTC3 sensor to the ESP32 microcontroller using the I2C protocol. Ensure proper wiring of SDA and SCL pins.
2. Configure the I2C parameters in the `i2c_init()` function according to your hardware setup, including GPIO pins and clock speed.
3. Include the necessary headers and libraries: `shtc3.h`, `i2c.h`, and `esp_log.h`.


## Usage

1. Call `shtc3_read_sensor_data()` to trigger the sensor to measure temperature and humidity and update the global variables.
2. Access temperature and humidity data using `shtc3_get_temperature()` and `shtc3_get_humidity()` functions.
