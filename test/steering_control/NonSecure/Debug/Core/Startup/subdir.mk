################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Core/Startup/startup_stm32l562qeixq.s 

OBJS += \
./Core/Startup/startup_stm32l562qeixq.o 

S_DEPS += \
./Core/Startup/startup_stm32l562qeixq.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Startup/startup_stm32l562qeixq.o: ../Core/Startup/startup_stm32l562qeixq.s
	arm-none-eabi-gcc -mcpu=cortex-m33 -g3 -c -x assembler-with-cpp -MMD -MP -MF"Core/Startup/startup_stm32l562qeixq.d" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

