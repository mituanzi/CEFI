/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "LiquidCrystal.h"
#include "util.h"
#include "led.h"
#include "config.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef huart1;
__IO ITStatus UartReady = HAL_UART_STATE_RESET;//RESET;

 unsigned char OutBuf[50] = {0};

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void MX_GPIO_Init(void);
static void MX_USART1_UART_Init(void);
/* USER CODE BEGIN PFP */


#define SYRINGE_VOLUME_ML 30.0
#define SYRINGE_BARREL_LENGTH_MM 80.0

#define THREADED_ROD_PITCH 1.25
#define STEPS_PER_REVOLUTION 200.0
#define MICROSTEPS_PER_STEP 16.0

#define SPEED_MICROSECONDS_DELAY 100 //longer delay = lower speed

#define	false	0
#define	true	1

#define	boolean	_Bool
#define three_dec_places( x ) ( (int)( (x*1e3)+0.5 - (((int)x)*1e3) ) )

long ustepsPerMM = MICROSTEPS_PER_STEP * STEPS_PER_REVOLUTION / THREADED_ROD_PITCH;
long ustepsPerML = (MICROSTEPS_PER_STEP * STEPS_PER_REVOLUTION * SYRINGE_BARREL_LENGTH_MM) / (SYRINGE_VOLUME_ML * THREADED_ROD_PITCH );
//long ustepsPerMM = 2;
//long ustepsPerML = 5;

/* -- Pin definitions -- */
int motorDirPin = 2;
int motorStepPin = 3;

int triggerPin = 0;    //TODOO check RPi pin-out before implementing
int bigTriggerPin = 0; //TODOO check RPi pin-out before implementing

/* -- Keypad states -- */
int  adc_key_val[5] ={30, 150, 360, 535, 760 };

enum{ KEY_RIGHT, KEY_UP, KEY_DOWN, KEY_LEFT, KEY_SELECT, KEY_NONE};
int NUM_KEYS = 5;
int adc_key_in;
int key = KEY_NONE;

/* -- Enums and constants -- */
enum{PUSH,PULL}; //syringe movement direction
enum{MAIN, BOLUS_MENU}; //UI states

enum{INPUT, OUTPUT}; //GPIO directions
enum{HIGH, LOW}; //GPIO states

const int mLBolusStepsLength = 9;
float mLBolusSteps[9] = {0.001, 0.005, 0.010, 0.050, 0.100, 0.500, 1.000, 5.000, 10.000};

/* -- Default Parameters -- */
float mLBolus = 0.500; //default bolus size
float mLBigBolus = 1.000; //default large bolus size
float mLUsed = 0.0;
int mLBolusStepIdx = 3; //0.05 mL increments at first
//float mLBolusStep = mLBolusSteps[mLBolusStepIdx];
float mLBolusStep = 0.050;

long stepperPos = 0; //in microsteps
char charBuf[16];

//debounce params
long lastKeyRepeatAt = 0;
long keyRepeatDelay = 400;
long keyDebounce = 125;
int prevKey = KEY_NONE;

//menu stuff
int uiState = MAIN;

//triggering
int prevBigTrigger = HIGH;
int prevTrigger = HIGH;

//serial
char serialStr[80] = "";
boolean serialStrReady = false;
int serialStrLen = 0; 

/* -- Initialize libraries -- */
LiquidCrystal lcd;

int DWT_Init() {
	CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk /*enable tracing*/ |
							   CoreDebug_DEMCR_MON_EN_Msk; //| /*enable debug interrupt*/

	DWT->CYCCNT = 0;  //reset CYCCNT register
	DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;  //enable CYCCNT counter
}

uint32_t DWT_GetTick() {
	return DWT->CYCCNT;
}

void print(unsigned char* str, int len) {

  // UartReady = HAL_UART_STATE_RESET;

  if (HAL_UART_Transmit_IT(&huart1, (uint8_t *) str, len) != HAL_OK) {
    Error_Handler();
  }
  //##- Wait for the end of the transfer ###################################

  while(HAL_UART_GetState(&huart1) != HAL_UART_STATE_READY)
  {
  }
  // Reset transmission flag
  UartReady = HAL_UART_STATE_RESET;

}

void judge_legality(char *endfunc, int id)
{
  unsigned char warningstr[50] = {0};
  int ret = trust_interface(endfunc, id);
  
  if(ret!=1)
  {
	sprintf(warningstr, " This operation is illegal.\r\n");
    print(warningstr, sizeof(warningstr));
    while(1)
    {

    }
  }
//   else
//   {
// 	sprintf(warningstr, " This operation is legal.\r\n");
//     print(warningstr, sizeof(warningstr));
//   }
  return;
}

void setup(){
	/* LCD setup */
	lcd_begin(&lcd, 16, 2);
	lcd_clear(&lcd);

	lcd_print(&lcd, "SyringePump v2.0", 16);

	/* Triggering setup */
	pinMode(triggerPin, INPUT);
	pinMode(bigTriggerPin, INPUT);
	digitalWrite(triggerPin, HIGH); //enable pullup resistor
	digitalWrite(bigTriggerPin, HIGH); //enable pullup resistor

	/* Motor Setup */
	pinMode(motorDirPin, OUTPUT);
	pinMode(motorStepPin, OUTPUT);

	/* Serial setup */
	//Note that serial commands must be terminated with a newline
	//to be processed. Check this setting in your serial monitor if
	//serial commands aren't doing anything.
	Serial_begin(115200); //Note that your serial connection must be set to 57600 to work!
}

void checkTriggers();
void readSerial();
void processSerial();
void bolus(int direction);
void readKey();
void doKeyAction(unsigned int key);
void updateScreen();
int get_key(unsigned int input);

void loop(int count){

	//check for LCD updates
	//readKey();

	//look for triggers on trigger lines
	//checkTriggers();

	//check serial port for new commands
	// readSerial();
	

	// EVAL1: get the time spent on processSerial() for 1 uL, with/without rewritting.
	// 	here we hard code mLBolus

	if(serialStrReady){
//		cfv_init(1024);

		processSerial();

//		cfv_quote();
	}

	sprintf(OutBuf, "mLBolus =[%f]\r\n", mLBolus);
	print(OutBuf, sizeof(OutBuf));
}

void checkTriggers(){
	//check low-reward trigger line
	int pushTriggerValue = digitalRead(triggerPin);
	if(pushTriggerValue == HIGH && prevTrigger == LOW){
		bolus(PUSH);
		updateScreen();
	}
	prevTrigger = pushTriggerValue;

	//check high-reward trigger line
	int bigTriggerValue = digitalRead(bigTriggerPin);
	if(bigTriggerValue == HIGH && prevBigTrigger == LOW){
		//push big reward amount
		float mLBolusTemp = mLBolus;
		mLBolus = mLBigBolus;
		bolus(PUSH);
		mLBolus = mLBolusTemp;

		updateScreen();
	}
	prevBigTrigger = bigTriggerValue;
}

void readSerial(){
	//pulls in characters from serial port as they arrive
	//builds serialStr and sets ready flag when newline is found
	// char *buf = "fdl123 ";
	int i =0;
	while (Serial_available()) {
		char inChar = (char)Serial_read();
		if (inChar < 0x20) {
			serialStrReady = true;
		}
		else{
			serialStr[serialStrLen] = inChar;
			serialStrLen++;
		}
		// i++;
	}
}

void processSerial(){
	//process serial commands as they are read in
	if(serialStr[0] == '+'){
		bolus(PUSH);
		updateScreen();
	}
	else if(serialStr[0] == '-'){
		bolus(PULL);
		updateScreen();
	}
	else if(toUInt(serialStr, serialStrLen) != 0){
		int uLbolus = toUInt(serialStr, serialStrLen);
		mLBolus = (float)uLbolus / 1000.0;
		updateScreen();
	}
	else{
		Serial_write("Invalid command: [", 18);
		Serial_write(serialStr, serialStrLen);
		Serial_write("]\r\n", 3);
	}
	serialStrReady = false;
	serialStrLen = 0;
}

void bolus(int direction){
	//Move stepper. Will not return until stepper is done moving.

	//change units to steps
	long steps = (mLBolus * ustepsPerML);
	if(direction == PUSH){
		led_on();
		digitalWrite(motorDirPin, HIGH);
		steps = mLBolus * ustepsPerML;
		mLUsed += mLBolus;
	}
	else if(direction == PULL){
		led_off();
		digitalWrite(motorDirPin, LOW);
		if((mLUsed-mLBolus) > 0){
			mLUsed -= mLBolus;
		}
		else{
			mLUsed = 0;
		}
	}

	float usDelay = SPEED_MICROSECONDS_DELAY; //can go down to 20 or 30

	// for(long i=0; i < steps; i++){
	// 	digitalWrite(motorStepPin, HIGH);
	// 	delayMicroseconds(usDelay);

	// 	digitalWrite(motorStepPin, LOW);
	// 	delayMicroseconds(usDelay);
	// }

}

void readKey(){
	//Some UI niceness here.
	//When user holds down a key, it will repeat every so often (keyRepeatDelay).
	//But when user presses and releases a key,
	//the key becomes responsive again after the shorter debounce period (keyDebounce).

	adc_key_in = analogRead(0);
	key = get_key(adc_key_in); // convert into key press

	long currentTime = millis();
	long timeSinceLastPress = (currentTime-lastKeyRepeatAt);

	boolean processThisKey = false;
	if (prevKey == key && timeSinceLastPress > keyRepeatDelay){
		processThisKey = true;
	}
	if(prevKey == KEY_NONE && timeSinceLastPress > keyDebounce){
		processThisKey = true;
	}
	if(key == KEY_NONE){
		processThisKey = false;
	}

	prevKey = key;

	if(processThisKey){
		doKeyAction(key);
		lastKeyRepeatAt = currentTime;
	}
}

void doKeyAction(unsigned int key){
	if(key == KEY_NONE){
		return;
	}

	if(key == KEY_SELECT){
		if(uiState == MAIN){
			uiState = BOLUS_MENU;
		}
		else if(BOLUS_MENU){
			uiState = MAIN;
		}
	}

	if(uiState == MAIN){
		if(key == KEY_LEFT){
			bolus(PULL);
		}
		if(key == KEY_RIGHT){
			bolus(PUSH);
		}
		if(key == KEY_UP){
			mLBolus += mLBolusStep;
		}
		if(key == KEY_DOWN){
			if((mLBolus - mLBolusStep) > 0){
				mLBolus -= mLBolusStep;
			}
			else{
				mLBolus = 0;
			}
		}
	}
	else if(uiState == BOLUS_MENU){
		if(key == KEY_LEFT){
			//nothin'
		}
		if(key == KEY_RIGHT){
			//nothin'
		}
		if(key == KEY_UP){
			if(mLBolusStepIdx < mLBolusStepsLength-1){
				mLBolusStepIdx++;
				mLBolusStep = mLBolusSteps[mLBolusStepIdx];
			}
		}
		if(key == KEY_DOWN){
			if(mLBolusStepIdx > 0){
				mLBolusStepIdx -= 1;
				mLBolusStep = mLBolusSteps[mLBolusStepIdx];
			}
		}
	}

	updateScreen();
}

void updateScreen(){
	//build strings for upper and lower lines of screen
	char s1[80]; //upper line
	char s2[80]; //lower line
	int s1Len = 0;
	int s2Len = 0;

	if(uiState == MAIN){
		s1Len = sprintf(s1, "Used %d.%d mL", (int)mLUsed, three_dec_places(mLUsed));
		s2Len = sprintf(s2, "Bolus %d.%d mL", (int)mLBolus, three_dec_places(mLBolus));
	}
	else if(uiState == BOLUS_MENU){
		s1Len = sprintf(s1, "Menu> BolusStep");
		s2Len = sprintf(s2, "%d.%d", (int)mLBolusStep, three_dec_places(mLBolusStep));
	}

	//do actual screen update
	lcd_clear(&lcd);

	lcd_setCursor(&lcd, 0, 0);  //line=1, x=0
	lcd_print(&lcd, s1, s1Len);

	lcd_setCursor(&lcd, 0, 1);  //line=2, x=0
	lcd_print(&lcd, s2, s2Len);
}


// Convert ADC value to key number
int get_key(unsigned int input){
	int k;
	for (k = 0; k < NUM_KEYS; k++){
		if (input < (unsigned int)adc_key_val[k]){
    		return k;
		}
	}
	if (k >= NUM_KEYS){
	  k = KEY_NONE;     // No valid key pressed
	}
	return k;
}



/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

 void init(){

//   config_memory();
//   config_dwt();

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART1_UART_Init();

  DWT_Init();   
 }

 int main(){
	 init();
	 main_logic();
	 
	 return 0;
 }

/**
  * @brief  The application entry point.
  * @retval int
  */
int main_logic(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */


  /* USER CODE BEGIN 2 */

  print("Starting syringe pump\r\n", sizeof("Starting syringe pump\r\n"));
  setup();

  uint32_t start, end;

//   start = HAL_GetTick();
  start = DWT_GetTick();
//   memset(OutBuf,0,50);
//   sprintf(OutBuf, "start: [%u]\r\n", start);
  sprintf(OutBuf, "start: [%f]\r\n", ((double)(start)/(SystemCoreClock)));
  print((uint8_t *)OutBuf, sizeof(OutBuf));

  for(int count = 1; count < 11; count++) {
	
	mLBolus = 0.001 * count;
	serialStrReady = true;

	// //for test '+'
	// serialStr[0] = '+';

	// //for test '-'
	// serialStr[0] = '-';
	
	// // for test legal num
	// sprintf(serialStr, "%d", count);
	// serialStrLen = sizeof(serialStr);

	// for test illegal input
	sprintf(serialStr, "It is %d", count);
	serialStrLen = sizeof(serialStr);

  	loop(count);
	// break;
  }

//   loop(11);

//   end = HAL_GetTick();
  end = DWT_GetTick();
//   memset(OutBuf,0,50);
//   sprintf(OutBuf, "end:[%u]\r\n", end);
  sprintf(OutBuf, "end:[%f]\r\n", ((double)(end)/(SystemCoreClock)));
  print((uint8_t *)OutBuf, sizeof(OutBuf));
  
//   memset(OutBuf,0,50);
//   sprintf(OutBuf, "duration: [%f]\r\n", ((end-start)/100.0));
  sprintf(OutBuf, "duration: [%f]\r\n", ((double)((end-start)/10.0)/(SystemCoreClock)));
  print((uint8_t *)OutBuf, sizeof(OutBuf));

//   sprintf(OutBuf, "cfi_trigger_count:%d\r\n", cfi_trigger_count);
//   print((uint8_t*)OutBuf, sizeof(OutBuf));

//   sprintf(OutBuf, "dfi_trigger_count:%d\r\n", dfi_trigger_count);
//   print((uint8_t*)OutBuf, sizeof(OutBuf));


//   // the trigger leads to transform sec_bitmap to the normal world bitmap
//   sensitiveAddr = 0xaabbccdd;
//   memory[100] = 1;

//   int *count_addr = &bitmap[8000];
//   int *array = &bitmap[8004];
//   int j=0;
//   for (int i=0; j<*count_addr; i+=3){
//     j+= 1;
//     for (int k=0;k<50;k++)
//       OutBuf[k] = 0;
//     sprintf(OutBuf, "%d: src:0x%x, dst:0x%x, type: %d \r\n", j, array[i],array[i+1],array[i+2]);
//     print((uint8_t *)OutBuf, sizeof(OutBuf));
//   }

//   for (int i=0; i<8000;i++){
//       for (int k=0;k<50;k++)
//         OutBuf[k] = 0;

// 		  if(bitmap[i]==1){
// 			  sprintf(OutBuf, "CFI trigger : index:%d \n\r", i);
// 			  print((uint8_t *)OutBuf, sizeof(OutBuf));
// 		  }else if (bitmap[i]==2){
// 			  sprintf(OutBuf, "DFI trigger : index:%d \n\r", i);
// 			  print((uint8_t *)OutBuf, sizeof(OutBuf));;
// 		  }else if (bitmap[i]==3){
// 			  sprintf(OutBuf, "CFI&DFI trigger : index:%d \n\r", i);
// 			  print((uint8_t *)OutBuf, sizeof(OutBuf));
// 		  }
// 	}


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief USART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART1_UART_Init(void)
{

  /* USER CODE BEGIN USART1_Init 0 */

  /* USER CODE END USART1_Init 0 */

  /* USER CODE BEGIN USART1_Init 1 */

  /* USER CODE END USART1_Init 1 */
  huart1.Instance = USART1;
  huart1.Init.BaudRate = 115200;
  huart1.Init.WordLength = UART_WORDLENGTH_8B;
  huart1.Init.StopBits = UART_STOPBITS_1;
  huart1.Init.Parity = UART_PARITY_NONE;
  huart1.Init.Mode = UART_MODE_TX_RX;
  huart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart1.Init.OverSampling = UART_OVERSAMPLING_16;
  huart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART1_Init 2 */

  /* USER CODE END USART1_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
