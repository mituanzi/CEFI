################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/config.c \
../Core/Src/main.c \
../Core/Src/stm32l5xx_hal_msp.c \
../Core/Src/stm32l5xx_it.c \
../Core/Src/syscalls.c \
../Core/Src/sysmem.c \
../Core/Src/system_stm32l5xx_ns.c 

OBJS += \
./Core/Src/config.o \
./Core/Src/main.o \
./Core/Src/stm32l5xx_hal_msp.o \
./Core/Src/stm32l5xx_it.o \
./Core/Src/syscalls.o \
./Core/Src/sysmem.o \
./Core/Src/system_stm32l5xx_ns.o 

C_DEPS += \
./Core/Src/config.d \
./Core/Src/main.d \
./Core/Src/stm32l5xx_hal_msp.d \
./Core/Src/stm32l5xx_it.d \
./Core/Src/syscalls.d \
./Core/Src/sysmem.d \
./Core/Src/system_stm32l5xx_ns.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/%.o: ../Core/Src/%.c Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m33 -std=gnu11 -g3 '-DMBEDTLS_CONFIG_FILE="mbedtls_config.h"' -DUSE_HAL_DRIVER -DSTM32L562xx -DDEBUG -c -I../Core/Inc -I../../Secure_nsclib -I../../Drivers/STM32L5xx_HAL_Driver/Inc -I../../Drivers/CMSIS/Device/ST/STM32L5xx/Include -I../../Drivers/STM32L5xx_HAL_Driver/Inc/Legacy -I../../Drivers/CMSIS/Include -I../MBEDTLS/App -I../../Middlewares/Third_Party/mbedTLS/include/mbedtls -I../../Middlewares/Third_Party/mbedTLS/include -I../../Drivers/BSP/STM32L562E-DK -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src

clean-Core-2f-Src:
	-$(RM) ./Core/Src/config.d ./Core/Src/config.o ./Core/Src/main.d ./Core/Src/main.o ./Core/Src/stm32l5xx_hal_msp.d ./Core/Src/stm32l5xx_hal_msp.o ./Core/Src/stm32l5xx_it.d ./Core/Src/stm32l5xx_it.o ./Core/Src/syscalls.d ./Core/Src/syscalls.o ./Core/Src/sysmem.d ./Core/Src/sysmem.o ./Core/Src/system_stm32l5xx_ns.d ./Core/Src/system_stm32l5xx_ns.o

.PHONY: clean-Core-2f-Src

