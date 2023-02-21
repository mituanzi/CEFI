#include <stdio.h>
#include "led.h"
#include "main.h"

void led_on() {
//	printf("%s\n", __func__);

	unsigned char string[50] = {0};
	sprintf(string, "%s\r\n", __func__);
	print(string, sizeof(string));

	return;
}

void led_off() {
//	printf("%s\n", __func__);

	unsigned char string[50] = {0};
	sprintf(string, "%s\r\n", __func__);
	print(string, sizeof(string));

	return;
}
