######################################
# Makefile by CubeMX2Makefile.py
######################################

######################################
# target
######################################

TARGET=light-controller_NonSecure

######################################
# building variables
######################################
# debug build?
ifdef OPT_VAL
# optimization
OPT_LEVEL = O$(OPT_VAL)
OPT = $(OPT_LEVEL)

else

OPT = O0

endif

#######################################

# Manual modification required
endpoint = /home/fdl/Desktop/llvm_build_source/CCE_coding/light-controller/endpoint.json
edge_FILE = /home/fdl/Desktop/llvm_build_source/CCE_coding/light-controller/edges.json

CG_FILE = $(BUILD_LINK_IR)/CG_analysis.json

#######################################
# pathes
#######################################
# Build path
BUILD_IR_DIR = Build/BuildIR
BUILD_LINK_IR = Build/LINKIR
BUILD_OBJECTS = Build/Objects
BUILD_DIR = Build

######################################
# source
######################################

C_SOURCES = ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_cortex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_exti.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash_ramfunc.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_gpio.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_i2c.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_i2c_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_icache.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_rcc_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_tim.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_tim_ex.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart.c ../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart_ex.c ./Core/Src/sysmem.c ./Core/Src/main.c ./Core/Src/config.c ./Core/Src/system_stm32l5xx_ns.c ./Core/Src/stm32l5xx_hal_msp.c ./Core/Src/stm32l5xx_it.c ./Core/Src/syscalls.c

ASM_SOURCES = ./Core/Startup/startup_stm32l562qeixq.s

#######################################
# binaries
#######################################

LLVMPATH = /home/fdl/Desktop/llvm_build_source/build/bin
CLANG = $(LLVMPATH)/clang
LLVMLINK = $(LLVMPATH)/llvm-link
LLVMOPT = $(LLVMPATH)/opt
LLC = $(LLVMPATH)/llc
CC = $(CLANG)

ARM_NONE_EABI_PATH = /home/fdl/Desktop/llvm_build_source/urai-rt-lib/gcc/bins/
ARMGCC = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-gcc
LD = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-ld
CP = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-objcopy
AR = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-ar
SZ = $(ARM_NONE_EABI_PATH)/bin/arm-none-eabi-size
HEX = $(CP) -O ihex
BIN = $(CP) -O binary -S

#######################################
# CFLAGS
#######################################
# macros for gcc
AS_DEFS =
C_DEFS = -DDEBUG -DUSE_HAL_DRIVER -DSTM32L562xx

# includes for gcc
AS_INCLUDES =
C_INCLUDES = -ICore/Inc -I../Secure_nsclib -I../Drivers/STM32L5xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../Drivers/STM32L5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Include -ICore/Inc -I../Secure_nsclib -I../Drivers/STM32L5xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../Drivers/STM32L5xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Include
# compile gcc flags

C_INCLUDES += -I$(ARM_NONE_EABI_PATH)/arm-none-eabi/include

ASFLAGS = -mcpu=cortex-m33 --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=soft -g3 -DDEBUG -c -x assembler-with-cpp $(AS_DEFS) $(AS_INCLUDES) -Wall -fdata-sections -ffunction-sections -mthumb

NVCFLAGS = -target arm-none-eabi -mcpu=cortex-m33 -std=gnu11 -g3 $(C_DEFS) -c $(C_INCLUDES) -$(OPT)
NVCFLAGS += -S -emit-llvm -Wall -ffunction-sections -fdata-sections -gline-tables-only  
NVCFLAGS += -fshort-enums -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb

GCCFLAGS = -mcpu=cortex-m33 --specs=nosys.specs -Wl,-Map=Debug/$(TARGET).map -Wl,--gc-sections -static 
GCCFLAGS += --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -u _printf_float -Wl,--start-group -lc -lm -Wl,--end-group

#######################################
# LDFLAGS
#######################################

# link script
LDSCRIPT = STM32L562QEIXQ_FLASH.ld

FORCE :
#######################################
# build the application
#######################################
# list of ASM program objects for DFI

# $(warning ----Log---$(DFI_ASM_OBJECTS))

# list of objects

IR_FILES += $(addprefix $(BUILD_IR_DIR)/,$(notdir $(C_SOURCES:.c=.ll)))
vpath %.c $(sort $(dir $(C_SOURCES)))

ASM_OBJECTS = $(addprefix $(BUILD_OBJECTS)/,$(notdir $(ASM_SOURCES:.s=.o)))
vpath %.s $(sort $(dir $(ASM_SOURCES)))

NSC_OBJECTS = ../Secure/Debug/secure_nsclib.o

# $(warning ---Log DFI_OBJECTS:---- $(DFI_OBJECTS))

###############################################

$(BUILD_IR_DIR)/%.ll: %.c Makefile| $(BUILD_IR_DIR) $(BUILD_LINK_IR)
	$(CLANG) $(NVCFLAGS) $< -o $@

$(BUILD_LINK_IR)/$(TARGET).ll: $(IR_FILES) Makefile | $(BUILD_IR_DIR) $(BUILD_LINK_IR)
	$(LLVMLINK) $(IR_FILES) -o $@	

###############################################

$(BUILD_LINK_IR)/$(TARGET)--getcg.ll: $(BUILD_LINK_IR)/$(TARGET).ll Makefile| $(BUILD_LINK_IR) 
	$(LLVMOPT) -load LLVMGetCG.so -getcg -getcg-analysis=$(CG_FILE) $< -o $@

$(BUILD_LINK_IR)/$(TARGET)--cceinstrumented.ll: $(BUILD_LINK_IR)/$(TARGET).ll Makefile| $(BUILD_LINK_IR) 
	$(LLVMOPT) -load LLVMCCEInstrument.so -CCEInstrument -end-point=$(endpoint) -edge-weight=$(edge_FILE) $< -o $@

###############################################

# Target Objects
$(BUILD_OBJECTS)/$(TARGET).o: $(BUILD_LINK_IR)/$(TARGET).ll Makefile | $(BUILD_LINK_IR) 
	$(LLC) -filetype=obj --float-abi=hard $< -o $@

# CCE Instrumented Objects
$(BUILD_OBJECTS)/$(TARGET)--cceinstrumented.o: $(BUILD_LINK_IR)/$(TARGET)--cceinstrumented.ll Makefile | $(BUILD_LINK_IR) 
	$(LLC) -filetype=obj --float-abi=hard $< -o $@

###############################################

# ASM Objects
$(BUILD_OBJECTS)/%.o: %.s Makefile | $(BUILD_OBJECTS)
	$(ARMGCC) -c $(ASFLAGS) $< -o $@

$(BUILD_OBJECTS)/$(TARGET).elf: $(ASM_OBJECTS) $(BUILD_OBJECTS)/$(TARGET).o Makefile | $(BUILD_OBJECTS)
	$(ARMGCC) $(ASM_OBJECTS) $(BUILD_OBJECTS)/$(TARGET).o $(NSC_OBJECTS) $(GCCFLAGS) -T$(LDSCRIPT) -o $@ 

$(BUILD_OBJECTS)/$(TARGET)--cceinstrumented.elf: $(ASM_OBJECTS) $(BUILD_OBJECTS)/$(TARGET)--cceinstrumented.o Makefile | $(BUILD_OBJECTS)
	$(ARMGCC) $(ASM_OBJECTS) $(BUILD_OBJECTS)/$(TARGET)--cceinstrumented.o $(NSC_OBJECTS) $(GCCFLAGS) -T$(LDSCRIPT) -o $@ 

###############################################
# make -j$(nproc) default
# default: Get the binary without any instrument or analysis 
# getcg: Analyze the program and get the calling relationship of the program
# cceinstrumented: Instrument the program according to the weight calculated by the CCE algorithm

default: setup $(BUILD_OBJECTS) $(BUILD_OBJECTS)/$(TARGET).elf

getcg: setup $(BUILD_LINK_IR) $(BUILD_LINK_IR)/$(TARGET)--getcg.ll 

cceinstrumented: setup $(BUILD_OBJECTS) $(BUILD_OBJECTS)/$(TARGET)--cceinstrumented.elf

setup:
	export C_INCLUDE_PATH=$(ARM_NONE_EABI_PATH)/arm-none-eabi/include

###############################################

$(BUILD_DIR):
	mkdir -p $@

$(BUILD_OBJECTS):
	mkdir -p $@

$(BUILD_IR_DIR):
	mkdir -p $@

$(BUILD_LINK_IR):
	mkdir -p $@

#######################################
# clean up
#######################################
clean:
	-rm -fR .dep $(BUILD_DIR) $(BUILD_LINK_IR) $(BUILD_IR_DIR)
	-rm -f *.dot
	-rm -f run.tmp

#######################################
# dependencies
#######################################
-include $(shell mkdir .dep 2>/dev/null) $(wildcard .dep/*)

.PHONY: clean all

# *** EOF ***