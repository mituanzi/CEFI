#include "LiquidCrystal.h"
#include "main.h"
#include <stdio.h>


void lcd_begin(LiquidCrystal* lcd, unsigned int cols, unsigned int rows) {
//	printf("%s (LiquidCrystal * lcd = 0x%x, unsigned int cols = %u, unsigned int rows = %u)\n", __func__, lcd, cols, rows);

	unsigned char string[100] = {0};
	sprintf(string, "%s (LiquidCrystal * lcd = 0x%x, unsigned int cols = %u, unsigned int rows = %u)\r\n", __func__, lcd, cols, rows);
	print(string, sizeof(string));

	return;
}

void lcd_clear(LiquidCrystal* lcd) {
//	printf("%s (LiquidCrystal * lcd = 0x%x\n", __func__);

	unsigned char string[50] = {0};
	sprintf(string, "%s (LiquidCrystal * lcd = 0x%x\r\n", __func__);
	print(string, sizeof(string));

	return; //http://stackoverflow.com/questions/10105666/clearing-the-terminal-screen
}

void lcd_print(LiquidCrystal* lcd, char* output, int len) {
//	printf("%s (LiquidCrystal * lcd = 0x%x, char* output = %s, int len = %d)\n", __func__, lcd, output, len);

	unsigned char string[200] = {0};
	sprintf(string, "%s (LiquidCrystal * lcd = 0x%x, char* output = %s, int len = %d)\r\n", __func__, lcd, output, len);
	print(string, sizeof(string));

	return;
}

void lcd_setCursor(LiquidCrystal* lcd, int x, int y) { //http://stackoverflow.com/questions/10105666/clearing-the-terminal-screen
//	printf("%s (LiquidCrystal * lcd = 0x%x, int x = %d, int y = %d\n", __func__, x, y);

	unsigned char string[100] = {0};
	sprintf(string, "%s (LiquidCrystal * lcd = 0x%x, int x = %d, int y = %d\r\n", __func__, x, y);
	print(string, sizeof(string));

	return;
}
