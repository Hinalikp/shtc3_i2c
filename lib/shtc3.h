#ifndef SHTC3_H
#define SHTC3_H

#include <stdint.h>

void shtc3_read_sensor_data();
float shtc3_get_temperature();
float shtc3_get_humidity();

#endif /* SHTC3_H */
