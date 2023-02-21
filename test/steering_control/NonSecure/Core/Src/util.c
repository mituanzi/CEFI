#include <stdio.h>
// #include <time.h>
// #include <sys/time.h>
#include <unistd.h>
#include <stdlib.h>
#include "util.h"
#include "main.h"

void pinMode(int pin, int mode) {
//	printf("%s (int pin = %d, int mode = %d)\n", __func__, pin, mode);

	unsigned char string[50] = {0};
	sprintf(string, "%s (int pin = %d, int mode = %d)\r\n", __func__, pin, mode);
	print(string, sizeof(string));
	return;
}

int digitalRead(int pin) {
	int val;
	unsigned char string[50] = {0};
	sprintf(string, "%s (int pin = %d)\r\n", __func__, pin);
	print(string, sizeof(string));
	scanf("%d", &val);
	return val;
}

void digitalWrite(int pin, int value) {
//	printf("%s (int pin = %d, int value = %d)\n", __func__, pin, value);

	unsigned char string[50] = {0};
	sprintf(string, "%s (int pin = %d, int value = %d)\r\n", __func__, pin, value);
	print(string, sizeof(string));

	return;
}

void Serial_begin(int baud) {
//	printf("%s (int baud = %d)\n", __func__, baud);

	unsigned char string[50] = {0};
	sprintf(string, "%s (int baud = %d)\r\n", __func__, baud);
	print(string, sizeof(string));

	return;
}

int Serial_available() {
	char c;

	// c = getchar();
	c = 'a';

//	printf("%s() c:%c\n", __func__, c);

	unsigned char string[50] = {0};
	sprintf(string, "%s() c:%c\r\n", __func__, c);
	print(string, sizeof(string));

	// if (c == 'y')
	// 	return 1;
	// else
	// 	return 0;

	return 1;
}
// char *buf = "+hisisatest ";
int Serial_read() {
	char c = getchar();

	return (int)c;
}

int Serial_write(char* output, int len) {
//	printf("%s (char *output = %s, int len = %d)\n", __func__, output, len);

	unsigned char string[60] = {0};
	sprintf(string, "%s (char *output = %s, int len = %d)\n", __func__, output, len);
	print(string, sizeof(string));

	return 0;
}

int analogRead(int pin) {
	int val;
	printf("read from pin %d\n", pin);
	scanf("%d", &val);
	return val;
}

void analogWrite(char* operation, int value) {

	unsigned char string[80] = {0};
	sprintf(string, "%s (char *operation = %s, int value = %d)\r\n", __func__, operation, value);
	print(string, sizeof(string));
}

unsigned long millis() {
	uint32_t start;

	start = HAL_GetTick();

	return start;

}

// unsigned long usecs() {
// 	struct timeval start;

// 	gettimeofday(&start, NULL);

// 	return start.tv_sec * 1000 * 1000 + start.tv_usec;

// }

void delayMicroseconds(float usecs) {
	
	HAL_Delay(usecs);
}

int toUInt(char* input, int len) {
	int val;
	val = atoi(input);
	return val;
}
