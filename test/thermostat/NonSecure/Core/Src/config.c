#include "config.h"
#include "main.h"

void config_memory(){
    bitmap[0] = 1;
    memory [0] = 0;
    dfi_trigger_count = 0;
    cfi_trigger_count = 0;
    global_ebp=&memory[500]; // before 500, remapped for global variables
    global_esp=&memory[504];
    sensitiveAddr = 0;
}

void tagFunction(int id){
  sensitiveAddr = id;
  SensitiveFunction();

}

void SensitiveFunction(){
  sensitiveAddr = 0;


}

void config_dwt(){
 tagFunction(0);
 CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk /*enable tracing*/ |
   	                     	   CoreDebug_DEMCR_MON_EN_Msk  /*enable debug interrupt*/ ;

  uint32_t * comp1 = 0xE0001030;
  *comp1 = &memory[2048];

  DWT->FUNCTION1 = (0<<11)|1<<4|7;

  uint32_t *comp0 =  0xE0001020;
  *comp0 = (uint32_t) &memory[0];
  DWT->FUNCTION0 =  (0 << 11) | 1<<4 | 5; // 1<< 11 => 0 << 11

}
