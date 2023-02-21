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
#include <string.h>
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

#define	false	0
#define	true	1
#define	boolean	_Bool
enum{INPUT, OUTPUT}; //GPIO directions
//Settings
const boolean debug = true; //Turn this OFF if you don't want debug messages.
const boolean inputsOut = true; //Turn this OFF if you don't want the inputs to be sent via uart.
const boolean voltageOut = false; //Turn this ON if you want votlage messages.
const int dirInitial = true; // Set the initial direction; forwards/backwards depends on setup
const int modeThreshold = 1200;  //Less than this value will result in manual mode
const int killThreshold = 1600;  //Between modeThreshold and this will kill outputs
                                 //Above killThreshold will result in autonomous mode
const int noSignalThreshold = 500; //

//Define pin numbers
const int inSteer = 2; // Pin connected to steering output on R/C receiver
const int inMotor = 3; // Pin connected to motor output on R/C receiver
const int inMode = 4; // Pin connected to mode output on R/C receiver
const int motorPin = 6; // Pin that outputs the PWM signal to the motor controller
const int steerPin = 5; // Pin that outputs the PWM signal to the steering servo
const int ledPin = 13; // Status LED
const int voltSensePin = 12; // The voltage sensing pin

char command[5]; //Keep track of our command as it comes in
int value;
boolean LEDstatus = false; //Keep track of the LED status
boolean mode;
float voltage;
int rxSteer;
int rxMotor;
int rxMode = 0; //Start in manual mode

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

void straightAndStop() {
  analogWrite("throttle", 90);
  analogWrite("steering", 90);
}

void setup() {
  Serial_begin(115200);  //Start serial @ 57600 baud

  //Set the correct pin modes
  pinMode(ledPin, OUTPUT);
  pinMode(motorPin, OUTPUT);
  pinMode(voltSensePin, INPUT);
  pinMode(inMode, INPUT);
  pinMode(inMotor, INPUT);
  pinMode(inSteer, INPUT);

  //Setup our servos
//  steering.attach(steerPin);
//  throttle.attach(motorPin);

  //Begin with zero motor/steering
  straightAndStop();
  if (debug)
	  print("Ready to receive commands...\r\n", sizeof("Ready to receive commands...\r\n"));
  HAL_Delay(10);

//  startForkserver(0);
}

void loop() {

  rxMode = 1500; // we make it hard code

  HAL_Delay(10); //Without this (intentional blocking) delay the arduino won't read the next pulseIn properly

  if (voltageOut) { //If we're reporting a voltage
//    voltage = map(analogRead(voltSensePin), 0, 1023, 0, 480); //Read and map it
	  voltage = 16200;  // we make it hard code
    voltage = voltage / 100; //Scale it
    sprintf(OutBuf, "voltage, %d\r\n", voltage);
    Serial_write(OutBuf, sizeof(OutBuf)); //Print it
  }

  LEDstatus = !LEDstatus; //Flip the status for next time this runs and write it
  digitalWrite(ledPin, LEDstatus);


  if (rxMode > killThreshold) {  //If we hit the I done goofed switch zero motor/steering
    straightAndStop();
    print("error\r\n", sizeof("error\r\n"));  //This means if recording data with suiron it will pause
                              //Makes sure you don't get a heap of "bad" data
  }

  else if ((rxMode < modeThreshold) && (rxMode > 900)) {  //Manual mode
    if (mode == true) { // If we just came from auto control,  zero motor/steering
      straightAndStop();
      print("Entered manual control mode.\r\n", sizeof("Entered manual control mode.\r\n"));
      mode = false; // Now we're in manual mode
    }
    //int rxSteerRaw = pulseIn(inSteer, HIGH, 20000);  //Read our steering/motor values
    int rxSteerRaw = 0;  //Read our steering/motor values
    HAL_Delay(10); //Without this (intentional blocking) delay the arduino won't read the second pulseIn properly
//    int rxMotorRaw = pulseIn(inMotor, HIGH, 20000);
//    rxSteer = map(rxSteerRaw, 1000, 2000, 40, 150); // Read the steering output on R/C receiver
//    rxMotor = map(rxMotorRaw, 1000, 2000, 40, 150); // Read the motor output on R/C receiver
    //we make it hard code
    int rxMotorRaw = 15000;
    rxSteer = 0;
    rxMotor = 1500;

    if (inputsOut) { //If we're outputting control values
      while (1) {  //Everytime we get a character via serial read it then send values

        sprintf(OutBuf, "rxSteer: %d; rxMotor: %d\r\n", rxSteer, rxMotor);
        print(OutBuf, sizeof(OutBuf));
      }

      if (debug) {  //If we're debugging print the raw inputs (before scaling/mapping)
        sprintf(OutBuf, "rawRxMotor: %d; rawRxSteer: %d\r\n", rxMotorRaw, rxSteerRaw);
        print(OutBuf, sizeof(OutBuf));
      }
    }

    analogWrite("throttle", rxMotor);
    analogWrite("steering", rxSteer);
  }

  else { //Autonomous control mode
    if (mode == false) { // If we just came from manual control
      straightAndStop(); // Set the motor power to zero and straighten wheels
      print("Entered autonomous control mode.\r\n", sizeof("Entered autonomous control mode.\r\n"));
    }

    mode = true; // Now we're in auto mode

    while (1) { //If there is something in the serial buffer waiting to be read

//      command = Serial.readStringUntil(','); //Read all of the command
//      value = Serial.readStringUntil('\n'); //Read all of the value to set
//    	 Serial.read(); //skip the new line
//      we make it hard code
	  
      uint32_t start, end;

      start = DWT_GetTick();
      sprintf(OutBuf, "start: [%f]\r\n", ((double)(start)/(SystemCoreClock)));
      print((uint8_t *)OutBuf, sizeof(OutBuf));

      for(int i=1;i<10;i++){
        // //for test command steer
        // strcpy(command, "steer");

        //for test command motor
        strcpy(command, "motor");
        
        value = i*10+9;

        if (debug == true){
            //If debugging, print out commands
            sprintf(OutBuf, "Set the %s to %d\r\n", command, value);
            print(OutBuf, sizeof(OutBuf));

        }

        if (strcmp(command,"steer")==0) {  //If we get a steering command then set the steering to it
          analogWrite("steering", value);
        }

        else if (strcmp(command, "motor")==0) {  //If we get a motor command then set the motor to it
          analogWrite("throttle", value);
        }

        else {  //If it was any other command we weren't expecting it
          if (debug == true)
            print("Someone done goofed... (you sent something you weren't meant to!)\r\n", sizeof("Someone done goofed... (you sent something you weren't meant to!)\r\n"));
        }
      }


      end = DWT_GetTick();

      sprintf(OutBuf, "end:[%f]\r\n", ((double)(end)/(SystemCoreClock)));
      print((uint8_t *)OutBuf, sizeof(OutBuf));


      sprintf(OutBuf, "duration: [%f]\r\n", ((double)((end-start)/10.0)/(SystemCoreClock)));
      print((uint8_t *)OutBuf, sizeof(OutBuf));


      while(1)
      {
      }
    }
  }
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

  print("Starting steering control\r\n", sizeof("Starting steering control\r\n"));
  setup();

  loop();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

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
