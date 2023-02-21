; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart_ex.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart_ex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.__UART_HandleTypeDef = type { %struct.USART_TypeDef*, %struct.UART_InitTypeDef, %struct.UART_AdvFeatureInitTypeDef, i8*, i16, i16, i8*, i16, i16, i16, i32, i16, i16, i32, void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)*, %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef*, i8, i32, i32, i32 }
%struct.USART_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.UART_InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.UART_AdvFeatureInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__DMA_HandleTypeDef = type { %struct.DMA_Channel_TypeDef*, %struct.DMA_InitTypeDef, i8, i8, i8*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, i32, %struct.DMA_TypeDef*, i32, %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef*, i32, %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef*, i32 }
%struct.DMA_Channel_TypeDef = type { i32, i32, i32, i32, i32 }
%struct.DMA_InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DMA_TypeDef = type { i32, i32 }
%struct.DMAMUX_Channel_TypeDef = type { i32 }
%struct.DMAMUX_ChannelStatus_TypeDef = type { i32, i32 }
%struct.DMAMUX_RequestGen_TypeDef = type { i32 }
%struct.DMAMUX_RequestGenStatus_TypeDef = type { i32, i32 }
%struct.UART_WakeUpTypeDef = type { i32, i16, i8 }

@__const.UARTEx_SetNbDataToProcess.numerator = private unnamed_addr constant [8 x i8] c"\01\01\01\03\07\01\00\00", align 1
@__const.UARTEx_SetNbDataToProcess.denominator = private unnamed_addr constant [8 x i8] c"\08\04\02\04\08\01\01\01", align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RS485Ex_Init(%struct.__UART_HandleTypeDef* %huart, i32 %Polarity, i32 %AssertionTime, i32 %DeassertionTime) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %Polarity.addr = alloca i32, align 4
  %AssertionTime.addr = alloca i32, align 4
  %DeassertionTime.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 %Polarity, i32* %Polarity.addr, align 4
  store i32 %AssertionTime, i32* %AssertionTime.addr, align 4
  store i32 %DeassertionTime, i32* %DeassertionTime.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !10
  %cmp = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !11
  br i1 %cmp, label %if.then, label %if.end, !dbg !10

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !12
  br label %return, !dbg !12

if.end:                                           ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !13
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 19, !dbg !14
  %2 = load volatile i32, i32* %gState, align 4, !dbg !14
  %cmp1 = icmp eq i32 %2, 0, !dbg !15
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !13

if.then2:                                         ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !16
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 18, !dbg !17
  store i8 0, i8* %Lock, align 4, !dbg !18
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !19
  call arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* %4), !dbg !20
  br label %if.end3, !dbg !21

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !22
  %gState4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 19, !dbg !23
  store volatile i32 36, i32* %gState4, align 4, !dbg !24
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !25
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !25
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !25
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 0, !dbg !25
  %8 = load volatile i32, i32* %CR1, align 4, !dbg !25
  %and = and i32 %8, -2, !dbg !25
  store volatile i32 %and, i32* %CR1, align 4, !dbg !25
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !26
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_SetConfig(%struct.__UART_HandleTypeDef* %9), !dbg !27
  %conv = zext i8 %call to i32, !dbg !27
  %cmp5 = icmp eq i32 %conv, 1, !dbg !28
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !27

if.then7:                                         ; preds = %if.end3
  store i8 1, i8* %retval, align 1, !dbg !29
  br label %return, !dbg !29

if.end8:                                          ; preds = %if.end3
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !30
  %AdvancedInit = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 2, !dbg !31
  %AdvFeatureInit = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit, i32 0, i32 0, !dbg !32
  %11 = load i32, i32* %AdvFeatureInit, align 4, !dbg !32
  %cmp9 = icmp ne i32 %11, 0, !dbg !33
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !30

if.then11:                                        ; preds = %if.end8
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !34
  call arm_aapcs_vfpcc void @UART_AdvFeatureConfig(%struct.__UART_HandleTypeDef* %12), !dbg !35
  br label %if.end12, !dbg !36

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !37
  %Instance13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !37
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance13, align 4, !dbg !37
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 2, !dbg !37
  %15 = load volatile i32, i32* %CR3, align 4, !dbg !37
  %or = or i32 %15, 16384, !dbg !37
  store volatile i32 %or, i32* %CR3, align 4, !dbg !37
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !38
  %Instance14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 0, !dbg !38
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance14, align 4, !dbg !38
  %CR315 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 2, !dbg !38
  %18 = load volatile i32, i32* %CR315, align 4, !dbg !38
  %and16 = and i32 %18, -32769, !dbg !38
  %19 = load i32, i32* %Polarity.addr, align 4, !dbg !38
  %or17 = or i32 %and16, %19, !dbg !38
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !38
  %Instance18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 0, !dbg !38
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance18, align 4, !dbg !38
  %CR319 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 2, !dbg !38
  store volatile i32 %or17, i32* %CR319, align 4, !dbg !38
  %22 = load i32, i32* %AssertionTime.addr, align 4, !dbg !39
  %shl = shl i32 %22, 21, !dbg !40
  store i32 %shl, i32* %temp, align 4, !dbg !41
  %23 = load i32, i32* %DeassertionTime.addr, align 4, !dbg !42
  %shl20 = shl i32 %23, 16, !dbg !43
  %24 = load i32, i32* %temp, align 4, !dbg !44
  %or21 = or i32 %24, %shl20, !dbg !44
  store i32 %or21, i32* %temp, align 4, !dbg !44
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !45
  %Instance22 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 0, !dbg !45
  %26 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance22, align 4, !dbg !45
  %CR123 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %26, i32 0, i32 0, !dbg !45
  %27 = load volatile i32, i32* %CR123, align 4, !dbg !45
  %and24 = and i32 %27, -67043329, !dbg !45
  %28 = load i32, i32* %temp, align 4, !dbg !45
  %or25 = or i32 %and24, %28, !dbg !45
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !45
  %Instance26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !45
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance26, align 4, !dbg !45
  %CR127 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 0, !dbg !45
  store volatile i32 %or25, i32* %CR127, align 4, !dbg !45
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !46
  %Instance28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 0, !dbg !46
  %32 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance28, align 4, !dbg !46
  %CR129 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %32, i32 0, i32 0, !dbg !46
  %33 = load volatile i32, i32* %CR129, align 4, !dbg !46
  %or30 = or i32 %33, 1, !dbg !46
  store volatile i32 %or30, i32* %CR129, align 4, !dbg !46
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !47
  %call31 = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %34), !dbg !48
  store i8 %call31, i8* %retval, align 1, !dbg !49
  br label %return, !dbg !49

return:                                           ; preds = %if.end12, %if.then7, %if.then
  %35 = load i8, i8* %retval, align 1, !dbg !50
  ret i8 %35, !dbg !50
}

declare dso_local arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef*) #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @UART_SetConfig(%struct.__UART_HandleTypeDef*) #1

declare dso_local arm_aapcs_vfpcc void @UART_AdvFeatureConfig(%struct.__UART_HandleTypeDef*) #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef*) #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UARTEx_WakeupCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !51 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !52
  ret void, !dbg !53
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UARTEx_RxFifoFullCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !54 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UARTEx_TxFifoEmptyCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !57 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !58
  ret void, !dbg !59
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_MultiProcessorEx_AddressLength_Set(%struct.__UART_HandleTypeDef* %huart, i32 %AddressLength) #0 !dbg !60 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %AddressLength.addr = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 %AddressLength, i32* %AddressLength.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !61
  %cmp = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !62
  br i1 %cmp, label %if.then, label %if.end, !dbg !61

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !63
  br label %return, !dbg !63

if.end:                                           ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !64
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 19, !dbg !65
  store volatile i32 36, i32* %gState, align 4, !dbg !66
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !67
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 0, !dbg !67
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !67
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 0, !dbg !67
  %4 = load volatile i32, i32* %CR1, align 4, !dbg !67
  %and = and i32 %4, -2, !dbg !67
  store volatile i32 %and, i32* %CR1, align 4, !dbg !67
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !68
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 0, !dbg !68
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !68
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 1, !dbg !68
  %7 = load volatile i32, i32* %CR2, align 4, !dbg !68
  %and2 = and i32 %7, -17, !dbg !68
  %8 = load i32, i32* %AddressLength.addr, align 4, !dbg !68
  %or = or i32 %and2, %8, !dbg !68
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !68
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 0, !dbg !68
  %10 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !68
  %CR24 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %10, i32 0, i32 1, !dbg !68
  store volatile i32 %or, i32* %CR24, align 4, !dbg !68
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !69
  %Instance5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !69
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance5, align 4, !dbg !69
  %CR16 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 0, !dbg !69
  %13 = load volatile i32, i32* %CR16, align 4, !dbg !69
  %or7 = or i32 %13, 1, !dbg !69
  store volatile i32 %or7, i32* %CR16, align 4, !dbg !69
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !70
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %14), !dbg !71
  store i8 %call, i8* %retval, align 1, !dbg !72
  br label %return, !dbg !72

return:                                           ; preds = %if.end, %if.then
  %15 = load i8, i8* %retval, align 1, !dbg !73
  ret i8 %15, !dbg !73
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_StopModeWakeUpSourceConfig(%struct.__UART_HandleTypeDef* %huart, [2 x i32] %WakeUpSelection.coerce) #0 !dbg !74 {
entry:
  %retval = alloca i8, align 1
  %WakeUpSelection = alloca %struct.UART_WakeUpTypeDef, align 4
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  %0 = bitcast %struct.UART_WakeUpTypeDef* %WakeUpSelection to [2 x i32]*
  store [2 x i32] %WakeUpSelection.coerce, [2 x i32]* %0, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !75
  br label %do.body, !dbg !76

do.body:                                          ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !76
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 18, !dbg !76
  %2 = load i8, i8* %Lock, align 4, !dbg !76
  %conv = zext i8 %2 to i32, !dbg !76
  %cmp = icmp eq i32 %conv, 1, !dbg !76
  br i1 %cmp, label %if.then, label %if.else, !dbg !76

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !76
  br label %return, !dbg !76

if.else:                                          ; preds = %do.body
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !76
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 18, !dbg !76
  store i8 1, i8* %Lock2, align 4, !dbg !76
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !76

do.end:                                           ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !77
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 19, !dbg !78
  store volatile i32 36, i32* %gState, align 4, !dbg !79
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !80
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 0, !dbg !80
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !80
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 0, !dbg !80
  %7 = load volatile i32, i32* %CR1, align 4, !dbg !80
  %and = and i32 %7, -2, !dbg !80
  store volatile i32 %and, i32* %CR1, align 4, !dbg !80
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !81
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !81
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !81
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 2, !dbg !81
  %10 = load volatile i32, i32* %CR3, align 4, !dbg !81
  %and4 = and i32 %10, -3145729, !dbg !81
  %WakeUpEvent = getelementptr inbounds %struct.UART_WakeUpTypeDef, %struct.UART_WakeUpTypeDef* %WakeUpSelection, i32 0, i32 0, !dbg !81
  %11 = load i32, i32* %WakeUpEvent, align 4, !dbg !81
  %or = or i32 %and4, %11, !dbg !81
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !81
  %Instance5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 0, !dbg !81
  %13 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance5, align 4, !dbg !81
  %CR36 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %13, i32 0, i32 2, !dbg !81
  store volatile i32 %or, i32* %CR36, align 4, !dbg !81
  %WakeUpEvent7 = getelementptr inbounds %struct.UART_WakeUpTypeDef, %struct.UART_WakeUpTypeDef* %WakeUpSelection, i32 0, i32 0, !dbg !82
  %14 = load i32, i32* %WakeUpEvent7, align 4, !dbg !82
  %cmp8 = icmp eq i32 %14, 0, !dbg !83
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !84

if.then10:                                        ; preds = %do.end
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !85
  %16 = bitcast %struct.UART_WakeUpTypeDef* %WakeUpSelection to [2 x i32]*, !dbg !86
  %17 = load [2 x i32], [2 x i32]* %16, align 4, !dbg !86
  call arm_aapcs_vfpcc void @UARTEx_Wakeup_AddressConfig(%struct.__UART_HandleTypeDef* %15, [2 x i32] %17), !dbg !86
  br label %if.end11, !dbg !87

if.end11:                                         ; preds = %if.then10, %do.end
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !88
  %Instance12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !88
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance12, align 4, !dbg !88
  %CR113 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 0, !dbg !88
  %20 = load volatile i32, i32* %CR113, align 4, !dbg !88
  %or14 = or i32 %20, 1, !dbg !88
  store volatile i32 %or14, i32* %CR113, align 4, !dbg !88
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !89
  store i32 %call, i32* %tickstart, align 4, !dbg !90
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !91
  %22 = load i32, i32* %tickstart, align 4, !dbg !92
  %call15 = call arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* %21, i32 4194304, i8 zeroext 0, i32 %22, i32 33554431), !dbg !93
  %conv16 = zext i8 %call15 to i32, !dbg !93
  %cmp17 = icmp ne i32 %conv16, 0, !dbg !94
  br i1 %cmp17, label %if.then19, label %if.else20, !dbg !93

if.then19:                                        ; preds = %if.end11
  store i8 3, i8* %status, align 1, !dbg !95
  br label %if.end22, !dbg !96

if.else20:                                        ; preds = %if.end11
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !97
  %gState21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 19, !dbg !98
  store volatile i32 32, i32* %gState21, align 4, !dbg !99
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then19
  br label %do.body23, !dbg !100

do.body23:                                        ; preds = %if.end22
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !100
  %Lock24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 18, !dbg !100
  store i8 0, i8* %Lock24, align 4, !dbg !100
  br label %do.end25, !dbg !100

do.end25:                                         ; preds = %do.body23
  %25 = load i8, i8* %status, align 1, !dbg !101
  store i8 %25, i8* %retval, align 1, !dbg !102
  br label %return, !dbg !102

return:                                           ; preds = %do.end25, %if.then
  %26 = load i8, i8* %retval, align 1, !dbg !103
  ret i8 %26, !dbg !103
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UARTEx_Wakeup_AddressConfig(%struct.__UART_HandleTypeDef* %huart, [2 x i32] %WakeUpSelection.coerce) #0 !dbg !104 {
entry:
  %WakeUpSelection = alloca %struct.UART_WakeUpTypeDef, align 4
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %0 = bitcast %struct.UART_WakeUpTypeDef* %WakeUpSelection to [2 x i32]*
  store [2 x i32] %WakeUpSelection.coerce, [2 x i32]* %0, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !105
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 0, !dbg !105
  %2 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !105
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %2, i32 0, i32 1, !dbg !105
  %3 = load volatile i32, i32* %CR2, align 4, !dbg !105
  %and = and i32 %3, -17, !dbg !105
  %AddressLength = getelementptr inbounds %struct.UART_WakeUpTypeDef, %struct.UART_WakeUpTypeDef* %WakeUpSelection, i32 0, i32 1, !dbg !105
  %4 = load i16, i16* %AddressLength, align 4, !dbg !105
  %conv = zext i16 %4 to i32, !dbg !105
  %or = or i32 %and, %conv, !dbg !105
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !105
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 0, !dbg !105
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !105
  %CR22 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 1, !dbg !105
  store volatile i32 %or, i32* %CR22, align 4, !dbg !105
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !106
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !106
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !106
  %CR24 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 1, !dbg !106
  %9 = load volatile i32, i32* %CR24, align 4, !dbg !106
  %and5 = and i32 %9, 16777215, !dbg !106
  %Address = getelementptr inbounds %struct.UART_WakeUpTypeDef, %struct.UART_WakeUpTypeDef* %WakeUpSelection, i32 0, i32 2, !dbg !106
  %10 = load i8, i8* %Address, align 2, !dbg !106
  %conv6 = zext i8 %10 to i32, !dbg !106
  %shl = shl i32 %conv6, 24, !dbg !106
  %or7 = or i32 %and5, %shl, !dbg !106
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !106
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !106
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !106
  %CR29 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 1, !dbg !106
  store volatile i32 %or7, i32* %CR29, align 4, !dbg !106
  ret void, !dbg !107
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef*, i32, i8 zeroext, i32, i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_EnableStopMode(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !108 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !109

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !109
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !109
  %1 = load i8, i8* %Lock, align 4, !dbg !109
  %conv = zext i8 %1 to i32, !dbg !109
  %cmp = icmp eq i32 %conv, 1, !dbg !109
  br i1 %cmp, label %if.then, label %if.else, !dbg !109

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !109
  br label %return, !dbg !109

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !109
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !109
  store i8 1, i8* %Lock2, align 4, !dbg !109
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !109

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !110
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !110
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !110
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 0, !dbg !110
  %5 = load volatile i32, i32* %CR1, align 4, !dbg !110
  %or = or i32 %5, 2, !dbg !110
  store volatile i32 %or, i32* %CR1, align 4, !dbg !110
  br label %do.body3, !dbg !111

do.body3:                                         ; preds = %do.end
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !111
  %Lock4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !111
  store i8 0, i8* %Lock4, align 4, !dbg !111
  br label %do.end5, !dbg !111

do.end5:                                          ; preds = %do.body3
  store i8 0, i8* %retval, align 1, !dbg !112
  br label %return, !dbg !112

return:                                           ; preds = %do.end5, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !113
  ret i8 %7, !dbg !113
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_DisableStopMode(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !114 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !115

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !115
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !115
  %1 = load i8, i8* %Lock, align 4, !dbg !115
  %conv = zext i8 %1 to i32, !dbg !115
  %cmp = icmp eq i32 %conv, 1, !dbg !115
  br i1 %cmp, label %if.then, label %if.else, !dbg !115

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !115
  br label %return, !dbg !115

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !115
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !115
  store i8 1, i8* %Lock2, align 4, !dbg !115
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !115

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !116
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !116
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !116
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 0, !dbg !116
  %5 = load volatile i32, i32* %CR1, align 4, !dbg !116
  %and = and i32 %5, -3, !dbg !116
  store volatile i32 %and, i32* %CR1, align 4, !dbg !116
  br label %do.body3, !dbg !117

do.body3:                                         ; preds = %do.end
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !117
  %Lock4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !117
  store i8 0, i8* %Lock4, align 4, !dbg !117
  br label %do.end5, !dbg !117

do.end5:                                          ; preds = %do.body3
  store i8 0, i8* %retval, align 1, !dbg !118
  br label %return, !dbg !118

return:                                           ; preds = %do.end5, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !119
  ret i8 %7, !dbg !119
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_EnableFifoMode(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !120 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tmpcr1 = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !121

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !121
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !121
  %1 = load i8, i8* %Lock, align 4, !dbg !121
  %conv = zext i8 %1 to i32, !dbg !121
  %cmp = icmp eq i32 %conv, 1, !dbg !121
  br i1 %cmp, label %if.then, label %if.else, !dbg !121

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !121
  br label %return, !dbg !121

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !121
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !121
  store i8 1, i8* %Lock2, align 4, !dbg !121
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !121

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !122
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !123
  store volatile i32 36, i32* %gState, align 4, !dbg !124
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !125
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !125
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !125
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !125
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !125
  store i32 %6, i32* %tmpcr1, align 4, !dbg !126
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !127
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !127
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !127
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !127
  %9 = load volatile i32, i32* %CR14, align 4, !dbg !127
  %and = and i32 %9, -2, !dbg !127
  store volatile i32 %and, i32* %CR14, align 4, !dbg !127
  %10 = load i32, i32* %tmpcr1, align 4, !dbg !128
  %or = or i32 %10, 536870912, !dbg !128
  store i32 %or, i32* %tmpcr1, align 4, !dbg !128
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !129
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 10, !dbg !130
  store i32 536870912, i32* %FifoMode, align 4, !dbg !131
  %12 = load i32, i32* %tmpcr1, align 4, !dbg !132
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !132
  %Instance5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !132
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance5, align 4, !dbg !132
  %CR16 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 0, !dbg !132
  store volatile i32 %12, i32* %CR16, align 4, !dbg !132
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !133
  call arm_aapcs_vfpcc void @UARTEx_SetNbDataToProcess(%struct.__UART_HandleTypeDef* %15), !dbg !134
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !135
  %gState7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 19, !dbg !136
  store volatile i32 32, i32* %gState7, align 4, !dbg !137
  br label %do.body8, !dbg !138

do.body8:                                         ; preds = %do.end
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !138
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 18, !dbg !138
  store i8 0, i8* %Lock9, align 4, !dbg !138
  br label %do.end10, !dbg !138

do.end10:                                         ; preds = %do.body8
  store i8 0, i8* %retval, align 1, !dbg !139
  br label %return, !dbg !139

return:                                           ; preds = %do.end10, %if.then
  %18 = load i8, i8* %retval, align 1, !dbg !140
  ret i8 %18, !dbg !140
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UARTEx_SetNbDataToProcess(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !141 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %rx_fifo_depth = alloca i8, align 1
  %tx_fifo_depth = alloca i8, align 1
  %rx_fifo_threshold = alloca i8, align 1
  %tx_fifo_threshold = alloca i8, align 1
  %numerator = alloca [8 x i8], align 1
  %denominator = alloca [8 x i8], align 1
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = bitcast [8 x i8]* %numerator to i8*, !dbg !142
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %0, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.UARTEx_SetNbDataToProcess.numerator, i32 0, i32 0), i32 8, i1 false), !dbg !142
  %1 = bitcast [8 x i8]* %denominator to i8*, !dbg !143
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 1 %1, i8* align 1 getelementptr inbounds ([8 x i8], [8 x i8]* @__const.UARTEx_SetNbDataToProcess.denominator, i32 0, i32 0), i32 8, i1 false), !dbg !143
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !144
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 10, !dbg !145
  %3 = load i32, i32* %FifoMode, align 4, !dbg !145
  %cmp = icmp eq i32 %3, 0, !dbg !146
  br i1 %cmp, label %if.then, label %if.else, !dbg !144

if.then:                                          ; preds = %entry
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !147
  %NbTxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 12, !dbg !148
  store i16 1, i16* %NbTxDataToProcess, align 2, !dbg !149
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !150
  %NbRxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 11, !dbg !151
  store i16 1, i16* %NbRxDataToProcess, align 4, !dbg !152
  br label %if.end, !dbg !153

if.else:                                          ; preds = %entry
  store i8 8, i8* %rx_fifo_depth, align 1, !dbg !154
  store i8 8, i8* %tx_fifo_depth, align 1, !dbg !155
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !156
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !156
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !156
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 2, !dbg !156
  %8 = load volatile i32, i32* %CR3, align 4, !dbg !156
  %and = and i32 %8, 234881024, !dbg !156
  %shr = lshr i32 %and, 25, !dbg !157
  %conv = trunc i32 %shr to i8, !dbg !158
  store i8 %conv, i8* %rx_fifo_threshold, align 1, !dbg !159
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !160
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 0, !dbg !160
  %10 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !160
  %CR32 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %10, i32 0, i32 2, !dbg !160
  %11 = load volatile i32, i32* %CR32, align 4, !dbg !160
  %and3 = and i32 %11, -536870912, !dbg !160
  %shr4 = lshr i32 %and3, 29, !dbg !161
  %conv5 = trunc i32 %shr4 to i8, !dbg !162
  store i8 %conv5, i8* %tx_fifo_threshold, align 1, !dbg !163
  %12 = load i8, i8* %tx_fifo_depth, align 1, !dbg !164
  %conv6 = zext i8 %12 to i16, !dbg !165
  %conv7 = zext i16 %conv6 to i32, !dbg !165
  %13 = load i8, i8* %tx_fifo_threshold, align 1, !dbg !166
  %idxprom = zext i8 %13 to i32, !dbg !167
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %numerator, i32 0, i32 %idxprom, !dbg !167
  %14 = load i8, i8* %arrayidx, align 1, !dbg !167
  %conv8 = zext i8 %14 to i32, !dbg !167
  %mul = mul nsw i32 %conv7, %conv8, !dbg !168
  %15 = load i8, i8* %tx_fifo_threshold, align 1, !dbg !169
  %idxprom9 = zext i8 %15 to i32, !dbg !170
  %arrayidx10 = getelementptr inbounds [8 x i8], [8 x i8]* %denominator, i32 0, i32 %idxprom9, !dbg !170
  %16 = load i8, i8* %arrayidx10, align 1, !dbg !170
  %conv11 = zext i8 %16 to i16, !dbg !171
  %conv12 = zext i16 %conv11 to i32, !dbg !171
  %div = sdiv i32 %mul, %conv12, !dbg !172
  %conv13 = trunc i32 %div to i16, !dbg !173
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !174
  %NbTxDataToProcess14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 12, !dbg !175
  store i16 %conv13, i16* %NbTxDataToProcess14, align 2, !dbg !176
  %18 = load i8, i8* %rx_fifo_depth, align 1, !dbg !177
  %conv15 = zext i8 %18 to i16, !dbg !178
  %conv16 = zext i16 %conv15 to i32, !dbg !178
  %19 = load i8, i8* %rx_fifo_threshold, align 1, !dbg !179
  %idxprom17 = zext i8 %19 to i32, !dbg !180
  %arrayidx18 = getelementptr inbounds [8 x i8], [8 x i8]* %numerator, i32 0, i32 %idxprom17, !dbg !180
  %20 = load i8, i8* %arrayidx18, align 1, !dbg !180
  %conv19 = zext i8 %20 to i32, !dbg !180
  %mul20 = mul nsw i32 %conv16, %conv19, !dbg !181
  %21 = load i8, i8* %rx_fifo_threshold, align 1, !dbg !182
  %idxprom21 = zext i8 %21 to i32, !dbg !183
  %arrayidx22 = getelementptr inbounds [8 x i8], [8 x i8]* %denominator, i32 0, i32 %idxprom21, !dbg !183
  %22 = load i8, i8* %arrayidx22, align 1, !dbg !183
  %conv23 = zext i8 %22 to i16, !dbg !184
  %conv24 = zext i16 %conv23 to i32, !dbg !184
  %div25 = sdiv i32 %mul20, %conv24, !dbg !185
  %conv26 = trunc i32 %div25 to i16, !dbg !186
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !187
  %NbRxDataToProcess27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 11, !dbg !188
  store i16 %conv26, i16* %NbRxDataToProcess27, align 4, !dbg !189
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !190
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_DisableFifoMode(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !191 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tmpcr1 = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !192

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !192
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !192
  %1 = load i8, i8* %Lock, align 4, !dbg !192
  %conv = zext i8 %1 to i32, !dbg !192
  %cmp = icmp eq i32 %conv, 1, !dbg !192
  br i1 %cmp, label %if.then, label %if.else, !dbg !192

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !192
  br label %return, !dbg !192

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !192
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !192
  store i8 1, i8* %Lock2, align 4, !dbg !192
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !192

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !193
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !194
  store volatile i32 36, i32* %gState, align 4, !dbg !195
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !196
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !196
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !196
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !196
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !196
  store i32 %6, i32* %tmpcr1, align 4, !dbg !197
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !198
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !198
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !198
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !198
  %9 = load volatile i32, i32* %CR14, align 4, !dbg !198
  %and = and i32 %9, -2, !dbg !198
  store volatile i32 %and, i32* %CR14, align 4, !dbg !198
  %10 = load i32, i32* %tmpcr1, align 4, !dbg !199
  %and5 = and i32 %10, -536870913, !dbg !199
  store i32 %and5, i32* %tmpcr1, align 4, !dbg !199
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !200
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 10, !dbg !201
  store i32 0, i32* %FifoMode, align 4, !dbg !202
  %12 = load i32, i32* %tmpcr1, align 4, !dbg !203
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !203
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !203
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !203
  %CR17 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 0, !dbg !203
  store volatile i32 %12, i32* %CR17, align 4, !dbg !203
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !204
  %gState8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 19, !dbg !205
  store volatile i32 32, i32* %gState8, align 4, !dbg !206
  br label %do.body9, !dbg !207

do.body9:                                         ; preds = %do.end
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !207
  %Lock10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 18, !dbg !207
  store i8 0, i8* %Lock10, align 4, !dbg !207
  br label %do.end11, !dbg !207

do.end11:                                         ; preds = %do.body9
  store i8 0, i8* %retval, align 1, !dbg !208
  br label %return, !dbg !208

return:                                           ; preds = %do.end11, %if.then
  %17 = load i8, i8* %retval, align 1, !dbg !209
  ret i8 %17, !dbg !209
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetTxFifoThreshold(%struct.__UART_HandleTypeDef* %huart, i32 %Threshold) #0 !dbg !210 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %Threshold.addr = alloca i32, align 4
  %tmpcr1 = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 %Threshold, i32* %Threshold.addr, align 4
  br label %do.body, !dbg !211

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !211
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !211
  %1 = load i8, i8* %Lock, align 4, !dbg !211
  %conv = zext i8 %1 to i32, !dbg !211
  %cmp = icmp eq i32 %conv, 1, !dbg !211
  br i1 %cmp, label %if.then, label %if.else, !dbg !211

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !211
  br label %return, !dbg !211

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !211
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !211
  store i8 1, i8* %Lock2, align 4, !dbg !211
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !211

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !212
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !213
  store volatile i32 36, i32* %gState, align 4, !dbg !214
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !215
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !215
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !215
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !215
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !215
  store i32 %6, i32* %tmpcr1, align 4, !dbg !216
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !217
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !217
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !217
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !217
  %9 = load volatile i32, i32* %CR14, align 4, !dbg !217
  %and = and i32 %9, -2, !dbg !217
  store volatile i32 %and, i32* %CR14, align 4, !dbg !217
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !218
  %Instance5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !218
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance5, align 4, !dbg !218
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 2, !dbg !218
  %12 = load volatile i32, i32* %CR3, align 4, !dbg !218
  %and6 = and i32 %12, 536870911, !dbg !218
  %13 = load i32, i32* %Threshold.addr, align 4, !dbg !218
  %or = or i32 %and6, %13, !dbg !218
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !218
  %Instance7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !218
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance7, align 4, !dbg !218
  %CR38 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 2, !dbg !218
  store volatile i32 %or, i32* %CR38, align 4, !dbg !218
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !219
  call arm_aapcs_vfpcc void @UARTEx_SetNbDataToProcess(%struct.__UART_HandleTypeDef* %16), !dbg !220
  %17 = load i32, i32* %tmpcr1, align 4, !dbg !221
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !221
  %Instance9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !221
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance9, align 4, !dbg !221
  %CR110 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 0, !dbg !221
  store volatile i32 %17, i32* %CR110, align 4, !dbg !221
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !222
  %gState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 19, !dbg !223
  store volatile i32 32, i32* %gState11, align 4, !dbg !224
  br label %do.body12, !dbg !225

do.body12:                                        ; preds = %do.end
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !225
  %Lock13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 18, !dbg !225
  store i8 0, i8* %Lock13, align 4, !dbg !225
  br label %do.end14, !dbg !225

do.end14:                                         ; preds = %do.body12
  store i8 0, i8* %retval, align 1, !dbg !226
  br label %return, !dbg !226

return:                                           ; preds = %do.end14, %if.then
  %22 = load i8, i8* %retval, align 1, !dbg !227
  ret i8 %22, !dbg !227
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_SetRxFifoThreshold(%struct.__UART_HandleTypeDef* %huart, i32 %Threshold) #0 !dbg !228 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %Threshold.addr = alloca i32, align 4
  %tmpcr1 = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 %Threshold, i32* %Threshold.addr, align 4
  br label %do.body, !dbg !229

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !229
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !229
  %1 = load i8, i8* %Lock, align 4, !dbg !229
  %conv = zext i8 %1 to i32, !dbg !229
  %cmp = icmp eq i32 %conv, 1, !dbg !229
  br i1 %cmp, label %if.then, label %if.else, !dbg !229

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !229
  br label %return, !dbg !229

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !229
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !229
  store i8 1, i8* %Lock2, align 4, !dbg !229
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !229

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !230
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !231
  store volatile i32 36, i32* %gState, align 4, !dbg !232
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !233
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !233
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !233
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !233
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !233
  store i32 %6, i32* %tmpcr1, align 4, !dbg !234
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !235
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !235
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !235
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !235
  %9 = load volatile i32, i32* %CR14, align 4, !dbg !235
  %and = and i32 %9, -2, !dbg !235
  store volatile i32 %and, i32* %CR14, align 4, !dbg !235
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !236
  %Instance5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !236
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance5, align 4, !dbg !236
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 2, !dbg !236
  %12 = load volatile i32, i32* %CR3, align 4, !dbg !236
  %and6 = and i32 %12, -234881025, !dbg !236
  %13 = load i32, i32* %Threshold.addr, align 4, !dbg !236
  %or = or i32 %and6, %13, !dbg !236
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !236
  %Instance7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !236
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance7, align 4, !dbg !236
  %CR38 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 2, !dbg !236
  store volatile i32 %or, i32* %CR38, align 4, !dbg !236
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !237
  call arm_aapcs_vfpcc void @UARTEx_SetNbDataToProcess(%struct.__UART_HandleTypeDef* %16), !dbg !238
  %17 = load i32, i32* %tmpcr1, align 4, !dbg !239
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !239
  %Instance9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !239
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance9, align 4, !dbg !239
  %CR110 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 0, !dbg !239
  store volatile i32 %17, i32* %CR110, align 4, !dbg !239
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !240
  %gState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 19, !dbg !241
  store volatile i32 32, i32* %gState11, align 4, !dbg !242
  br label %do.body12, !dbg !243

do.body12:                                        ; preds = %do.end
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !243
  %Lock13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 18, !dbg !243
  store i8 0, i8* %Lock13, align 4, !dbg !243
  br label %do.end14, !dbg !243

do.end14:                                         ; preds = %do.body12
  store i8 0, i8* %retval, align 1, !dbg !244
  br label %return, !dbg !244

return:                                           ; preds = %do.end14, %if.then
  %22 = load i8, i8* %retval, align 1, !dbg !245
  ret i8 %22, !dbg !245
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_ReceiveToIdle(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size, i16* %RxLen, i32 %Timeout) #0 !dbg !246 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  %RxLen.addr = alloca i16*, align 4
  %Timeout.addr = alloca i32, align 4
  %pdata8bits = alloca i8*, align 4
  %pdata16bits = alloca i16*, align 4
  %uhMask = alloca i16, align 2
  %tickstart = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  store i16* %RxLen, i16** %RxLen.addr, align 4
  store i32 %Timeout, i32* %Timeout.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !247
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 20, !dbg !248
  %1 = load volatile i32, i32* %RxState, align 4, !dbg !248
  %cmp = icmp eq i32 %1, 32, !dbg !249
  br i1 %cmp, label %if.then, label %if.else135, !dbg !247

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !250
  %cmp1 = icmp eq i8* %2, null, !dbg !251
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !252

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !253
  %conv = zext i16 %3 to i32, !dbg !253
  %cmp2 = icmp eq i32 %conv, 0, !dbg !254
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !255

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !256
  br label %return, !dbg !256

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !257

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !257
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !257
  %5 = load i8, i8* %Lock, align 4, !dbg !257
  %conv5 = zext i8 %5 to i32, !dbg !257
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !257
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !257

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !257
  br label %return, !dbg !257

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !257
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !257
  store i8 1, i8* %Lock9, align 4, !dbg !257
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !257

do.end:                                           ; preds = %if.end10
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !258
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 21, !dbg !259
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !260
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !261
  %RxState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 20, !dbg !262
  store volatile i32 34, i32* %RxState11, align 4, !dbg !263
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !264
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 13, !dbg !265
  store volatile i32 1, i32* %ReceptionType, align 4, !dbg !266
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !267
  store i32 %call, i32* %tickstart, align 4, !dbg !268
  %10 = load i16, i16* %Size.addr, align 2, !dbg !269
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !270
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 7, !dbg !271
  store i16 %10, i16* %RxXferSize, align 4, !dbg !272
  %12 = load i16, i16* %Size.addr, align 2, !dbg !273
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !274
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 8, !dbg !275
  store volatile i16 %12, i16* %RxXferCount, align 2, !dbg !276
  br label %do.body12, !dbg !277

do.body12:                                        ; preds = %do.end
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 1, !dbg !277
  %WordLength = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 1, !dbg !277
  %15 = load i32, i32* %WordLength, align 4, !dbg !277
  %cmp13 = icmp eq i32 %15, 4096, !dbg !277
  br i1 %cmp13, label %if.then15, label %if.else23, !dbg !277

if.then15:                                        ; preds = %do.body12
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Init16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 1, !dbg !277
  %Parity = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init16, i32 0, i32 3, !dbg !277
  %17 = load i32, i32* %Parity, align 4, !dbg !277
  %cmp17 = icmp eq i32 %17, 0, !dbg !277
  br i1 %cmp17, label %if.then19, label %if.else20, !dbg !277

if.then19:                                        ; preds = %if.then15
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Mask = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 9, !dbg !277
  store i16 511, i16* %Mask, align 4, !dbg !277
  br label %if.end22, !dbg !277

if.else20:                                        ; preds = %if.then15
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Mask21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 9, !dbg !277
  store i16 255, i16* %Mask21, align 4, !dbg !277
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then19
  br label %if.end57, !dbg !277

if.else23:                                        ; preds = %do.body12
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Init24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 1, !dbg !277
  %WordLength25 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init24, i32 0, i32 1, !dbg !277
  %21 = load i32, i32* %WordLength25, align 4, !dbg !277
  %cmp26 = icmp eq i32 %21, 0, !dbg !277
  br i1 %cmp26, label %if.then28, label %if.else38, !dbg !277

if.then28:                                        ; preds = %if.else23
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Init29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 1, !dbg !277
  %Parity30 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init29, i32 0, i32 3, !dbg !277
  %23 = load i32, i32* %Parity30, align 4, !dbg !277
  %cmp31 = icmp eq i32 %23, 0, !dbg !277
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !277

if.then33:                                        ; preds = %if.then28
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Mask34 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 9, !dbg !277
  store i16 255, i16* %Mask34, align 4, !dbg !277
  br label %if.end37, !dbg !277

if.else35:                                        ; preds = %if.then28
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Mask36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 9, !dbg !277
  store i16 127, i16* %Mask36, align 4, !dbg !277
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then33
  br label %if.end56, !dbg !277

if.else38:                                        ; preds = %if.else23
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Init39 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 1, !dbg !277
  %WordLength40 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init39, i32 0, i32 1, !dbg !277
  %27 = load i32, i32* %WordLength40, align 4, !dbg !277
  %cmp41 = icmp eq i32 %27, 268435456, !dbg !277
  br i1 %cmp41, label %if.then43, label %if.else53, !dbg !277

if.then43:                                        ; preds = %if.else38
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Init44 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 1, !dbg !277
  %Parity45 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init44, i32 0, i32 3, !dbg !277
  %29 = load i32, i32* %Parity45, align 4, !dbg !277
  %cmp46 = icmp eq i32 %29, 0, !dbg !277
  br i1 %cmp46, label %if.then48, label %if.else50, !dbg !277

if.then48:                                        ; preds = %if.then43
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Mask49 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 9, !dbg !277
  store i16 127, i16* %Mask49, align 4, !dbg !277
  br label %if.end52, !dbg !277

if.else50:                                        ; preds = %if.then43
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Mask51 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 9, !dbg !277
  store i16 63, i16* %Mask51, align 4, !dbg !277
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  br label %if.end55, !dbg !277

if.else53:                                        ; preds = %if.else38
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !277
  %Mask54 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 9, !dbg !277
  store i16 0, i16* %Mask54, align 4, !dbg !277
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.end52
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end37
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end22
  br label %do.end58, !dbg !277

do.end58:                                         ; preds = %if.end57
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !278
  %Mask59 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %33, i32 0, i32 9, !dbg !279
  %34 = load i16, i16* %Mask59, align 4, !dbg !279
  store i16 %34, i16* %uhMask, align 2, !dbg !280
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !281
  %Init60 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 1, !dbg !282
  %WordLength61 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init60, i32 0, i32 1, !dbg !283
  %36 = load i32, i32* %WordLength61, align 4, !dbg !283
  %cmp62 = icmp eq i32 %36, 4096, !dbg !284
  br i1 %cmp62, label %land.lhs.true, label %if.else69, !dbg !285

land.lhs.true:                                    ; preds = %do.end58
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !286
  %Init64 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 1, !dbg !287
  %Parity65 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init64, i32 0, i32 3, !dbg !288
  %38 = load i32, i32* %Parity65, align 4, !dbg !288
  %cmp66 = icmp eq i32 %38, 0, !dbg !289
  br i1 %cmp66, label %if.then68, label %if.else69, !dbg !290

if.then68:                                        ; preds = %land.lhs.true
  store i8* null, i8** %pdata8bits, align 4, !dbg !291
  %39 = load i8*, i8** %pData.addr, align 4, !dbg !292
  %40 = bitcast i8* %39 to i16*, !dbg !293
  store i16* %40, i16** %pdata16bits, align 4, !dbg !294
  br label %if.end70, !dbg !295

if.else69:                                        ; preds = %land.lhs.true, %do.end58
  %41 = load i8*, i8** %pData.addr, align 4, !dbg !296
  store i8* %41, i8** %pdata8bits, align 4, !dbg !297
  store i16* null, i16** %pdata16bits, align 4, !dbg !298
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then68
  br label %do.body71, !dbg !299

do.body71:                                        ; preds = %if.end70
  %42 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !299
  %Lock72 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %42, i32 0, i32 18, !dbg !299
  store i8 0, i8* %Lock72, align 4, !dbg !299
  br label %do.end73, !dbg !299

do.end73:                                         ; preds = %do.body71
  %43 = load i16*, i16** %RxLen.addr, align 4, !dbg !300
  store i16 0, i16* %43, align 2, !dbg !301
  br label %while.cond, !dbg !302

while.cond:                                       ; preds = %if.end127, %do.end73
  %44 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !303
  %RxXferCount74 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %44, i32 0, i32 8, !dbg !304
  %45 = load volatile i16, i16* %RxXferCount74, align 2, !dbg !304
  %conv75 = zext i16 %45 to i32, !dbg !303
  %cmp76 = icmp ugt i32 %conv75, 0, !dbg !305
  br i1 %cmp76, label %while.body, label %while.end, !dbg !302

while.body:                                       ; preds = %while.cond
  %46 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !306
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %46, i32 0, i32 0, !dbg !306
  %47 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !306
  %ISR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %47, i32 0, i32 7, !dbg !306
  %48 = load volatile i32, i32* %ISR, align 4, !dbg !306
  %and = and i32 %48, 16, !dbg !306
  %cmp78 = icmp eq i32 %and, 16, !dbg !306
  br i1 %cmp78, label %if.then80, label %if.end88, !dbg !306

if.then80:                                        ; preds = %while.body
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !307
  %Instance81 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 0, !dbg !307
  %50 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance81, align 4, !dbg !307
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %50, i32 0, i32 8, !dbg !307
  store volatile i32 16, i32* %ICR, align 4, !dbg !307
  %51 = load i16*, i16** %RxLen.addr, align 4, !dbg !308
  %52 = load i16, i16* %51, align 2, !dbg !309
  %conv82 = zext i16 %52 to i32, !dbg !309
  %cmp83 = icmp ugt i32 %conv82, 0, !dbg !310
  br i1 %cmp83, label %if.then85, label %if.end87, !dbg !309

if.then85:                                        ; preds = %if.then80
  %53 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !311
  %RxState86 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %53, i32 0, i32 20, !dbg !312
  store volatile i32 32, i32* %RxState86, align 4, !dbg !313
  store i8 0, i8* %retval, align 1, !dbg !314
  br label %return, !dbg !314

if.end87:                                         ; preds = %if.then80
  br label %if.end88, !dbg !315

if.end88:                                         ; preds = %if.end87, %while.body
  %54 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !316
  %Instance89 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %54, i32 0, i32 0, !dbg !316
  %55 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance89, align 4, !dbg !316
  %ISR90 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %55, i32 0, i32 7, !dbg !316
  %56 = load volatile i32, i32* %ISR90, align 4, !dbg !316
  %and91 = and i32 %56, 32, !dbg !316
  %cmp92 = icmp eq i32 %and91, 32, !dbg !316
  br i1 %cmp92, label %if.then94, label %if.end114, !dbg !316

if.then94:                                        ; preds = %if.end88
  %57 = load i8*, i8** %pdata8bits, align 4, !dbg !317
  %cmp95 = icmp eq i8* %57, null, !dbg !318
  br i1 %cmp95, label %if.then97, label %if.else102, !dbg !317

if.then97:                                        ; preds = %if.then94
  %58 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !319
  %Instance98 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %58, i32 0, i32 0, !dbg !320
  %59 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance98, align 4, !dbg !320
  %RDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %59, i32 0, i32 9, !dbg !321
  %60 = load volatile i32, i32* %RDR, align 4, !dbg !321
  %61 = load i16, i16* %uhMask, align 2, !dbg !322
  %conv99 = zext i16 %61 to i32, !dbg !322
  %and100 = and i32 %60, %conv99, !dbg !323
  %conv101 = trunc i32 %and100 to i16, !dbg !324
  %62 = load i16*, i16** %pdata16bits, align 4, !dbg !325
  store i16 %conv101, i16* %62, align 2, !dbg !326
  %63 = load i16*, i16** %pdata16bits, align 4, !dbg !327
  %incdec.ptr = getelementptr inbounds i16, i16* %63, i32 1, !dbg !327
  store i16* %incdec.ptr, i16** %pdata16bits, align 4, !dbg !327
  br label %if.end110, !dbg !328

if.else102:                                       ; preds = %if.then94
  %64 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !329
  %Instance103 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %64, i32 0, i32 0, !dbg !330
  %65 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance103, align 4, !dbg !330
  %RDR104 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %65, i32 0, i32 9, !dbg !331
  %66 = load volatile i32, i32* %RDR104, align 4, !dbg !331
  %67 = load i16, i16* %uhMask, align 2, !dbg !332
  %conv105 = trunc i16 %67 to i8, !dbg !333
  %conv106 = zext i8 %conv105 to i32, !dbg !333
  %and107 = and i32 %66, %conv106, !dbg !334
  %conv108 = trunc i32 %and107 to i8, !dbg !335
  %68 = load i8*, i8** %pdata8bits, align 4, !dbg !336
  store i8 %conv108, i8* %68, align 1, !dbg !337
  %69 = load i8*, i8** %pdata8bits, align 4, !dbg !338
  %incdec.ptr109 = getelementptr inbounds i8, i8* %69, i32 1, !dbg !338
  store i8* %incdec.ptr109, i8** %pdata8bits, align 4, !dbg !338
  br label %if.end110

if.end110:                                        ; preds = %if.else102, %if.then97
  %70 = load i16*, i16** %RxLen.addr, align 4, !dbg !339
  %71 = load i16, i16* %70, align 2, !dbg !340
  %conv111 = zext i16 %71 to i32, !dbg !340
  %add = add i32 %conv111, 1, !dbg !340
  %conv112 = trunc i32 %add to i16, !dbg !340
  store i16 %conv112, i16* %70, align 2, !dbg !340
  %72 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !341
  %RxXferCount113 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %72, i32 0, i32 8, !dbg !342
  %73 = load volatile i16, i16* %RxXferCount113, align 2, !dbg !343
  %dec = add i16 %73, -1, !dbg !343
  store volatile i16 %dec, i16* %RxXferCount113, align 2, !dbg !343
  br label %if.end114, !dbg !344

if.end114:                                        ; preds = %if.end110, %if.end88
  %74 = load i32, i32* %Timeout.addr, align 4, !dbg !345
  %cmp115 = icmp ne i32 %74, -1, !dbg !346
  br i1 %cmp115, label %if.then117, label %if.end127, !dbg !345

if.then117:                                       ; preds = %if.end114
  %call118 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !347
  %75 = load i32, i32* %tickstart, align 4, !dbg !348
  %sub = sub i32 %call118, %75, !dbg !349
  %76 = load i32, i32* %Timeout.addr, align 4, !dbg !350
  %cmp119 = icmp ugt i32 %sub, %76, !dbg !351
  br i1 %cmp119, label %if.then124, label %lor.lhs.false121, !dbg !352

lor.lhs.false121:                                 ; preds = %if.then117
  %77 = load i32, i32* %Timeout.addr, align 4, !dbg !353
  %cmp122 = icmp eq i32 %77, 0, !dbg !354
  br i1 %cmp122, label %if.then124, label %if.end126, !dbg !355

if.then124:                                       ; preds = %lor.lhs.false121, %if.then117
  %78 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !356
  %RxState125 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %78, i32 0, i32 20, !dbg !357
  store volatile i32 32, i32* %RxState125, align 4, !dbg !358
  store i8 3, i8* %retval, align 1, !dbg !359
  br label %return, !dbg !359

if.end126:                                        ; preds = %lor.lhs.false121
  br label %if.end127, !dbg !360

if.end127:                                        ; preds = %if.end126, %if.end114
  br label %while.cond, !dbg !302, !llvm.loop !361

while.end:                                        ; preds = %while.cond
  %79 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !363
  %RxXferSize128 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %79, i32 0, i32 7, !dbg !364
  %80 = load i16, i16* %RxXferSize128, align 4, !dbg !364
  %conv129 = zext i16 %80 to i32, !dbg !363
  %81 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !365
  %RxXferCount130 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %81, i32 0, i32 8, !dbg !366
  %82 = load volatile i16, i16* %RxXferCount130, align 2, !dbg !366
  %conv131 = zext i16 %82 to i32, !dbg !365
  %sub132 = sub nsw i32 %conv129, %conv131, !dbg !367
  %conv133 = trunc i32 %sub132 to i16, !dbg !363
  %83 = load i16*, i16** %RxLen.addr, align 4, !dbg !368
  store i16 %conv133, i16* %83, align 2, !dbg !369
  %84 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !370
  %RxState134 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %84, i32 0, i32 20, !dbg !371
  store volatile i32 32, i32* %RxState134, align 4, !dbg !372
  store i8 0, i8* %retval, align 1, !dbg !373
  br label %return, !dbg !373

if.else135:                                       ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !374
  br label %return, !dbg !374

return:                                           ; preds = %if.else135, %while.end, %if.then124, %if.then85, %if.then8, %if.then4
  %85 = load i8, i8* %retval, align 1, !dbg !375
  ret i8 %85, !dbg !375
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_ReceiveToIdle_IT(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !376 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  %status = alloca i8, align 1
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !377
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 20, !dbg !378
  %1 = load volatile i32, i32* %RxState, align 4, !dbg !378
  %cmp = icmp eq i32 %1, 32, !dbg !379
  br i1 %cmp, label %if.then, label %if.else23, !dbg !377

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !380
  %cmp1 = icmp eq i8* %2, null, !dbg !381
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !382

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !383
  %conv = zext i16 %3 to i32, !dbg !383
  %cmp2 = icmp eq i32 %conv, 0, !dbg !384
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !385

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !386
  br label %return, !dbg !386

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !387

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !387
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !387
  %5 = load i8, i8* %Lock, align 4, !dbg !387
  %conv5 = zext i8 %5 to i32, !dbg !387
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !387
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !387

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !387
  br label %return, !dbg !387

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !387
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !387
  store i8 1, i8* %Lock9, align 4, !dbg !387
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !387

do.end:                                           ; preds = %if.end10
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !388
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 13, !dbg !389
  store volatile i32 1, i32* %ReceptionType, align 4, !dbg !390
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !391
  %9 = load i8*, i8** %pData.addr, align 4, !dbg !392
  %10 = load i16, i16* %Size.addr, align 2, !dbg !393
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_IT(%struct.__UART_HandleTypeDef* %8, i8* %9, i16 zeroext %10), !dbg !394
  store i8 %call, i8* %status, align 1, !dbg !395
  %11 = load i8, i8* %status, align 1, !dbg !396
  %conv11 = zext i8 %11 to i32, !dbg !396
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !397
  br i1 %cmp12, label %if.then14, label %if.end22, !dbg !396

if.then14:                                        ; preds = %do.end
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !398
  %ReceptionType15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 13, !dbg !399
  %13 = load volatile i32, i32* %ReceptionType15, align 4, !dbg !399
  %cmp16 = icmp eq i32 %13, 1, !dbg !400
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !398

if.then18:                                        ; preds = %if.then14
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !401
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !401
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !401
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 8, !dbg !401
  store volatile i32 16, i32* %ICR, align 4, !dbg !401
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !402
  %Instance19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 0, !dbg !402
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance19, align 4, !dbg !402
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 0, !dbg !402
  %18 = load volatile i32, i32* %CR1, align 4, !dbg !402
  %or = or i32 %18, 16, !dbg !402
  store volatile i32 %or, i32* %CR1, align 4, !dbg !402
  br label %if.end21, !dbg !403

if.else20:                                        ; preds = %if.then14
  store i8 1, i8* %status, align 1, !dbg !404
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then18
  br label %if.end22, !dbg !405

if.end22:                                         ; preds = %if.end21, %do.end
  %19 = load i8, i8* %status, align 1, !dbg !406
  store i8 %19, i8* %retval, align 1, !dbg !407
  br label %return, !dbg !407

if.else23:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !408
  br label %return, !dbg !408

return:                                           ; preds = %if.else23, %if.end22, %if.then8, %if.then4
  %20 = load i8, i8* %retval, align 1, !dbg !409
  ret i8 %20, !dbg !409
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_IT(%struct.__UART_HandleTypeDef*, i8*, i16 zeroext) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UARTEx_ReceiveToIdle_DMA(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !410 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  %status = alloca i8, align 1
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !411
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 20, !dbg !412
  %1 = load volatile i32, i32* %RxState, align 4, !dbg !412
  %cmp = icmp eq i32 %1, 32, !dbg !413
  br i1 %cmp, label %if.then, label %if.else23, !dbg !411

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !414
  %cmp1 = icmp eq i8* %2, null, !dbg !415
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !416

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !417
  %conv = zext i16 %3 to i32, !dbg !417
  %cmp2 = icmp eq i32 %conv, 0, !dbg !418
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !419

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !420
  br label %return, !dbg !420

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !421

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !421
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !421
  %5 = load i8, i8* %Lock, align 4, !dbg !421
  %conv5 = zext i8 %5 to i32, !dbg !421
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !421
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !421

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !421
  br label %return, !dbg !421

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !421
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !421
  store i8 1, i8* %Lock9, align 4, !dbg !421
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !421

do.end:                                           ; preds = %if.end10
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !422
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 13, !dbg !423
  store volatile i32 1, i32* %ReceptionType, align 4, !dbg !424
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !425
  %9 = load i8*, i8** %pData.addr, align 4, !dbg !426
  %10 = load i16, i16* %Size.addr, align 2, !dbg !427
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_DMA(%struct.__UART_HandleTypeDef* %8, i8* %9, i16 zeroext %10), !dbg !428
  store i8 %call, i8* %status, align 1, !dbg !429
  %11 = load i8, i8* %status, align 1, !dbg !430
  %conv11 = zext i8 %11 to i32, !dbg !430
  %cmp12 = icmp eq i32 %conv11, 0, !dbg !431
  br i1 %cmp12, label %if.then14, label %if.end22, !dbg !430

if.then14:                                        ; preds = %do.end
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !432
  %ReceptionType15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 13, !dbg !433
  %13 = load volatile i32, i32* %ReceptionType15, align 4, !dbg !433
  %cmp16 = icmp eq i32 %13, 1, !dbg !434
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !432

if.then18:                                        ; preds = %if.then14
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !435
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !435
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !435
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 8, !dbg !435
  store volatile i32 16, i32* %ICR, align 4, !dbg !435
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !436
  %Instance19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 0, !dbg !436
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance19, align 4, !dbg !436
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 0, !dbg !436
  %18 = load volatile i32, i32* %CR1, align 4, !dbg !436
  %or = or i32 %18, 16, !dbg !436
  store volatile i32 %or, i32* %CR1, align 4, !dbg !436
  br label %if.end21, !dbg !437

if.else20:                                        ; preds = %if.then14
  store i8 1, i8* %status, align 1, !dbg !438
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then18
  br label %if.end22, !dbg !439

if.end22:                                         ; preds = %if.end21, %do.end
  %19 = load i8, i8* %status, align 1, !dbg !440
  store i8 %19, i8* %retval, align 1, !dbg !441
  br label %return, !dbg !441

if.else23:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !442
  br label %return, !dbg !442

return:                                           ; preds = %if.else23, %if.end22, %if.then8, %if.then4
  %20 = load i8, i8* %retval, align 1, !dbg !443
  ret i8 %20, !dbg !443
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_DMA(%struct.__UART_HandleTypeDef*, i8*, i16 zeroext) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart_ex.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_RS485Ex_Init", scope: !1, file: !1, line: 166, type: !9, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 172, column: 7, scope: !8)
!11 = !DILocation(line: 172, column: 13, scope: !8)
!12 = !DILocation(line: 174, column: 5, scope: !8)
!13 = !DILocation(line: 188, column: 7, scope: !8)
!14 = !DILocation(line: 188, column: 14, scope: !8)
!15 = !DILocation(line: 188, column: 21, scope: !8)
!16 = !DILocation(line: 191, column: 5, scope: !8)
!17 = !DILocation(line: 191, column: 12, scope: !8)
!18 = !DILocation(line: 191, column: 17, scope: !8)
!19 = !DILocation(line: 205, column: 22, scope: !8)
!20 = !DILocation(line: 205, column: 5, scope: !8)
!21 = !DILocation(line: 207, column: 3, scope: !8)
!22 = !DILocation(line: 209, column: 3, scope: !8)
!23 = !DILocation(line: 209, column: 10, scope: !8)
!24 = !DILocation(line: 209, column: 17, scope: !8)
!25 = !DILocation(line: 212, column: 3, scope: !8)
!26 = !DILocation(line: 215, column: 22, scope: !8)
!27 = !DILocation(line: 215, column: 7, scope: !8)
!28 = !DILocation(line: 215, column: 29, scope: !8)
!29 = !DILocation(line: 217, column: 5, scope: !8)
!30 = !DILocation(line: 220, column: 7, scope: !8)
!31 = !DILocation(line: 220, column: 14, scope: !8)
!32 = !DILocation(line: 220, column: 27, scope: !8)
!33 = !DILocation(line: 220, column: 42, scope: !8)
!34 = !DILocation(line: 222, column: 27, scope: !8)
!35 = !DILocation(line: 222, column: 5, scope: !8)
!36 = !DILocation(line: 223, column: 3, scope: !8)
!37 = !DILocation(line: 226, column: 3, scope: !8)
!38 = !DILocation(line: 229, column: 3, scope: !8)
!39 = !DILocation(line: 232, column: 11, scope: !8)
!40 = !DILocation(line: 232, column: 25, scope: !8)
!41 = !DILocation(line: 232, column: 8, scope: !8)
!42 = !DILocation(line: 233, column: 12, scope: !8)
!43 = !DILocation(line: 233, column: 28, scope: !8)
!44 = !DILocation(line: 233, column: 8, scope: !8)
!45 = !DILocation(line: 234, column: 3, scope: !8)
!46 = !DILocation(line: 237, column: 3, scope: !8)
!47 = !DILocation(line: 240, column: 31, scope: !8)
!48 = !DILocation(line: 240, column: 11, scope: !8)
!49 = !DILocation(line: 240, column: 3, scope: !8)
!50 = !DILocation(line: 241, column: 1, scope: !8)
!51 = distinct !DISubprogram(name: "HAL_UARTEx_WakeupCallback", scope: !1, file: !1, line: 272, type: !9, scopeLine: 273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DILocation(line: 275, column: 3, scope: !51)
!53 = !DILocation(line: 280, column: 1, scope: !51)
!54 = distinct !DISubprogram(name: "HAL_UARTEx_RxFifoFullCallback", scope: !1, file: !1, line: 287, type: !9, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 290, column: 3, scope: !54)
!56 = !DILocation(line: 295, column: 1, scope: !54)
!57 = distinct !DISubprogram(name: "HAL_UARTEx_TxFifoEmptyCallback", scope: !1, file: !1, line: 302, type: !9, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DILocation(line: 305, column: 3, scope: !57)
!59 = !DILocation(line: 310, column: 1, scope: !57)
!60 = distinct !DISubprogram(name: "HAL_MultiProcessorEx_AddressLength_Set", scope: !1, file: !1, line: 387, type: !9, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DILocation(line: 390, column: 7, scope: !60)
!62 = !DILocation(line: 390, column: 13, scope: !60)
!63 = !DILocation(line: 392, column: 5, scope: !60)
!64 = !DILocation(line: 398, column: 3, scope: !60)
!65 = !DILocation(line: 398, column: 10, scope: !60)
!66 = !DILocation(line: 398, column: 17, scope: !60)
!67 = !DILocation(line: 401, column: 3, scope: !60)
!68 = !DILocation(line: 404, column: 3, scope: !60)
!69 = !DILocation(line: 407, column: 3, scope: !60)
!70 = !DILocation(line: 410, column: 31, scope: !60)
!71 = !DILocation(line: 410, column: 11, scope: !60)
!72 = !DILocation(line: 410, column: 3, scope: !60)
!73 = !DILocation(line: 411, column: 1, scope: !60)
!74 = distinct !DISubprogram(name: "HAL_UARTEx_StopModeWakeUpSourceConfig", scope: !1, file: !1, line: 425, type: !9, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!75 = !DILocation(line: 427, column: 21, scope: !74)
!76 = !DILocation(line: 436, column: 3, scope: !74)
!77 = !DILocation(line: 438, column: 3, scope: !74)
!78 = !DILocation(line: 438, column: 10, scope: !74)
!79 = !DILocation(line: 438, column: 17, scope: !74)
!80 = !DILocation(line: 441, column: 3, scope: !74)
!81 = !DILocation(line: 444, column: 3, scope: !74)
!82 = !DILocation(line: 446, column: 23, scope: !74)
!83 = !DILocation(line: 446, column: 35, scope: !74)
!84 = !DILocation(line: 446, column: 7, scope: !74)
!85 = !DILocation(line: 448, column: 33, scope: !74)
!86 = !DILocation(line: 448, column: 5, scope: !74)
!87 = !DILocation(line: 449, column: 3, scope: !74)
!88 = !DILocation(line: 452, column: 3, scope: !74)
!89 = !DILocation(line: 455, column: 15, scope: !74)
!90 = !DILocation(line: 455, column: 13, scope: !74)
!91 = !DILocation(line: 458, column: 35, scope: !74)
!92 = !DILocation(line: 458, column: 66, scope: !74)
!93 = !DILocation(line: 458, column: 7, scope: !74)
!94 = !DILocation(line: 458, column: 101, scope: !74)
!95 = !DILocation(line: 460, column: 12, scope: !74)
!96 = !DILocation(line: 461, column: 3, scope: !74)
!97 = !DILocation(line: 465, column: 5, scope: !74)
!98 = !DILocation(line: 465, column: 12, scope: !74)
!99 = !DILocation(line: 465, column: 19, scope: !74)
!100 = !DILocation(line: 469, column: 3, scope: !74)
!101 = !DILocation(line: 471, column: 10, scope: !74)
!102 = !DILocation(line: 471, column: 3, scope: !74)
!103 = !DILocation(line: 472, column: 1, scope: !74)
!104 = distinct !DISubprogram(name: "UARTEx_Wakeup_AddressConfig", scope: !1, file: !1, line: 956, type: !9, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!105 = !DILocation(line: 961, column: 3, scope: !104)
!106 = !DILocation(line: 964, column: 3, scope: !104)
!107 = !DILocation(line: 965, column: 1, scope: !104)
!108 = distinct !DISubprogram(name: "HAL_UARTEx_EnableStopMode", scope: !1, file: !1, line: 480, type: !9, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!109 = !DILocation(line: 483, column: 3, scope: !108)
!110 = !DILocation(line: 486, column: 3, scope: !108)
!111 = !DILocation(line: 489, column: 3, scope: !108)
!112 = !DILocation(line: 491, column: 3, scope: !108)
!113 = !DILocation(line: 492, column: 1, scope: !108)
!114 = distinct !DISubprogram(name: "HAL_UARTEx_DisableStopMode", scope: !1, file: !1, line: 499, type: !9, scopeLine: 500, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!115 = !DILocation(line: 502, column: 3, scope: !114)
!116 = !DILocation(line: 505, column: 3, scope: !114)
!117 = !DILocation(line: 508, column: 3, scope: !114)
!118 = !DILocation(line: 510, column: 3, scope: !114)
!119 = !DILocation(line: 511, column: 1, scope: !114)
!120 = distinct !DISubprogram(name: "HAL_UARTEx_EnableFifoMode", scope: !1, file: !1, line: 518, type: !9, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocation(line: 526, column: 3, scope: !120)
!122 = !DILocation(line: 528, column: 3, scope: !120)
!123 = !DILocation(line: 528, column: 10, scope: !120)
!124 = !DILocation(line: 528, column: 17, scope: !120)
!125 = !DILocation(line: 531, column: 12, scope: !120)
!126 = !DILocation(line: 531, column: 10, scope: !120)
!127 = !DILocation(line: 534, column: 3, scope: !120)
!128 = !DILocation(line: 537, column: 3, scope: !120)
!129 = !DILocation(line: 538, column: 3, scope: !120)
!130 = !DILocation(line: 538, column: 10, scope: !120)
!131 = !DILocation(line: 538, column: 19, scope: !120)
!132 = !DILocation(line: 541, column: 3, scope: !120)
!133 = !DILocation(line: 544, column: 29, scope: !120)
!134 = !DILocation(line: 544, column: 3, scope: !120)
!135 = !DILocation(line: 546, column: 3, scope: !120)
!136 = !DILocation(line: 546, column: 10, scope: !120)
!137 = !DILocation(line: 546, column: 17, scope: !120)
!138 = !DILocation(line: 549, column: 3, scope: !120)
!139 = !DILocation(line: 551, column: 3, scope: !120)
!140 = !DILocation(line: 552, column: 1, scope: !120)
!141 = distinct !DISubprogram(name: "UARTEx_SetNbDataToProcess", scope: !1, file: !1, line: 974, type: !9, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!142 = !DILocation(line: 980, column: 11, scope: !141)
!143 = !DILocation(line: 981, column: 11, scope: !141)
!144 = !DILocation(line: 983, column: 7, scope: !141)
!145 = !DILocation(line: 983, column: 14, scope: !141)
!146 = !DILocation(line: 983, column: 23, scope: !141)
!147 = !DILocation(line: 985, column: 5, scope: !141)
!148 = !DILocation(line: 985, column: 12, scope: !141)
!149 = !DILocation(line: 985, column: 30, scope: !141)
!150 = !DILocation(line: 986, column: 5, scope: !141)
!151 = !DILocation(line: 986, column: 12, scope: !141)
!152 = !DILocation(line: 986, column: 30, scope: !141)
!153 = !DILocation(line: 987, column: 3, scope: !141)
!154 = !DILocation(line: 990, column: 19, scope: !141)
!155 = !DILocation(line: 991, column: 19, scope: !141)
!156 = !DILocation(line: 992, column: 35, scope: !141)
!157 = !DILocation(line: 992, column: 85, scope: !141)
!158 = !DILocation(line: 992, column: 25, scope: !141)
!159 = !DILocation(line: 992, column: 23, scope: !141)
!160 = !DILocation(line: 993, column: 35, scope: !141)
!161 = !DILocation(line: 993, column: 85, scope: !141)
!162 = !DILocation(line: 993, column: 25, scope: !141)
!163 = !DILocation(line: 993, column: 23, scope: !141)
!164 = !DILocation(line: 994, column: 43, scope: !141)
!165 = !DILocation(line: 994, column: 33, scope: !141)
!166 = !DILocation(line: 994, column: 69, scope: !141)
!167 = !DILocation(line: 994, column: 59, scope: !141)
!168 = !DILocation(line: 994, column: 57, scope: !141)
!169 = !DILocation(line: 994, column: 113, scope: !141)
!170 = !DILocation(line: 994, column: 101, scope: !141)
!171 = !DILocation(line: 994, column: 91, scope: !141)
!172 = !DILocation(line: 994, column: 89, scope: !141)
!173 = !DILocation(line: 994, column: 32, scope: !141)
!174 = !DILocation(line: 994, column: 5, scope: !141)
!175 = !DILocation(line: 994, column: 12, scope: !141)
!176 = !DILocation(line: 994, column: 30, scope: !141)
!177 = !DILocation(line: 995, column: 43, scope: !141)
!178 = !DILocation(line: 995, column: 33, scope: !141)
!179 = !DILocation(line: 995, column: 69, scope: !141)
!180 = !DILocation(line: 995, column: 59, scope: !141)
!181 = !DILocation(line: 995, column: 57, scope: !141)
!182 = !DILocation(line: 995, column: 113, scope: !141)
!183 = !DILocation(line: 995, column: 101, scope: !141)
!184 = !DILocation(line: 995, column: 91, scope: !141)
!185 = !DILocation(line: 995, column: 89, scope: !141)
!186 = !DILocation(line: 995, column: 32, scope: !141)
!187 = !DILocation(line: 995, column: 5, scope: !141)
!188 = !DILocation(line: 995, column: 12, scope: !141)
!189 = !DILocation(line: 995, column: 30, scope: !141)
!190 = !DILocation(line: 997, column: 1, scope: !141)
!191 = distinct !DISubprogram(name: "HAL_UARTEx_DisableFifoMode", scope: !1, file: !1, line: 559, type: !9, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!192 = !DILocation(line: 567, column: 3, scope: !191)
!193 = !DILocation(line: 569, column: 3, scope: !191)
!194 = !DILocation(line: 569, column: 10, scope: !191)
!195 = !DILocation(line: 569, column: 17, scope: !191)
!196 = !DILocation(line: 572, column: 12, scope: !191)
!197 = !DILocation(line: 572, column: 10, scope: !191)
!198 = !DILocation(line: 575, column: 3, scope: !191)
!199 = !DILocation(line: 578, column: 3, scope: !191)
!200 = !DILocation(line: 579, column: 3, scope: !191)
!201 = !DILocation(line: 579, column: 10, scope: !191)
!202 = !DILocation(line: 579, column: 19, scope: !191)
!203 = !DILocation(line: 582, column: 3, scope: !191)
!204 = !DILocation(line: 584, column: 3, scope: !191)
!205 = !DILocation(line: 584, column: 10, scope: !191)
!206 = !DILocation(line: 584, column: 17, scope: !191)
!207 = !DILocation(line: 587, column: 3, scope: !191)
!208 = !DILocation(line: 589, column: 3, scope: !191)
!209 = !DILocation(line: 590, column: 1, scope: !191)
!210 = distinct !DISubprogram(name: "HAL_UARTEx_SetTxFifoThreshold", scope: !1, file: !1, line: 605, type: !9, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!211 = !DILocation(line: 614, column: 3, scope: !210)
!212 = !DILocation(line: 616, column: 3, scope: !210)
!213 = !DILocation(line: 616, column: 10, scope: !210)
!214 = !DILocation(line: 616, column: 17, scope: !210)
!215 = !DILocation(line: 619, column: 12, scope: !210)
!216 = !DILocation(line: 619, column: 10, scope: !210)
!217 = !DILocation(line: 622, column: 3, scope: !210)
!218 = !DILocation(line: 625, column: 3, scope: !210)
!219 = !DILocation(line: 628, column: 29, scope: !210)
!220 = !DILocation(line: 628, column: 3, scope: !210)
!221 = !DILocation(line: 631, column: 3, scope: !210)
!222 = !DILocation(line: 633, column: 3, scope: !210)
!223 = !DILocation(line: 633, column: 10, scope: !210)
!224 = !DILocation(line: 633, column: 17, scope: !210)
!225 = !DILocation(line: 636, column: 3, scope: !210)
!226 = !DILocation(line: 638, column: 3, scope: !210)
!227 = !DILocation(line: 639, column: 1, scope: !210)
!228 = distinct !DISubprogram(name: "HAL_UARTEx_SetRxFifoThreshold", scope: !1, file: !1, line: 654, type: !9, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!229 = !DILocation(line: 663, column: 3, scope: !228)
!230 = !DILocation(line: 665, column: 3, scope: !228)
!231 = !DILocation(line: 665, column: 10, scope: !228)
!232 = !DILocation(line: 665, column: 17, scope: !228)
!233 = !DILocation(line: 668, column: 12, scope: !228)
!234 = !DILocation(line: 668, column: 10, scope: !228)
!235 = !DILocation(line: 671, column: 3, scope: !228)
!236 = !DILocation(line: 674, column: 3, scope: !228)
!237 = !DILocation(line: 677, column: 29, scope: !228)
!238 = !DILocation(line: 677, column: 3, scope: !228)
!239 = !DILocation(line: 680, column: 3, scope: !228)
!240 = !DILocation(line: 682, column: 3, scope: !228)
!241 = !DILocation(line: 682, column: 10, scope: !228)
!242 = !DILocation(line: 682, column: 17, scope: !228)
!243 = !DILocation(line: 685, column: 3, scope: !228)
!244 = !DILocation(line: 687, column: 3, scope: !228)
!245 = !DILocation(line: 688, column: 1, scope: !228)
!246 = distinct !DISubprogram(name: "HAL_UARTEx_ReceiveToIdle", scope: !1, file: !1, line: 709, type: !9, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!247 = !DILocation(line: 717, column: 7, scope: !246)
!248 = !DILocation(line: 717, column: 14, scope: !246)
!249 = !DILocation(line: 717, column: 22, scope: !246)
!250 = !DILocation(line: 719, column: 10, scope: !246)
!251 = !DILocation(line: 719, column: 16, scope: !246)
!252 = !DILocation(line: 719, column: 25, scope: !246)
!253 = !DILocation(line: 719, column: 29, scope: !246)
!254 = !DILocation(line: 719, column: 34, scope: !246)
!255 = !DILocation(line: 719, column: 9, scope: !246)
!256 = !DILocation(line: 721, column: 7, scope: !246)
!257 = !DILocation(line: 724, column: 5, scope: !246)
!258 = !DILocation(line: 726, column: 5, scope: !246)
!259 = !DILocation(line: 726, column: 12, scope: !246)
!260 = !DILocation(line: 726, column: 22, scope: !246)
!261 = !DILocation(line: 727, column: 5, scope: !246)
!262 = !DILocation(line: 727, column: 12, scope: !246)
!263 = !DILocation(line: 727, column: 20, scope: !246)
!264 = !DILocation(line: 728, column: 5, scope: !246)
!265 = !DILocation(line: 728, column: 12, scope: !246)
!266 = !DILocation(line: 728, column: 26, scope: !246)
!267 = !DILocation(line: 731, column: 17, scope: !246)
!268 = !DILocation(line: 731, column: 15, scope: !246)
!269 = !DILocation(line: 733, column: 26, scope: !246)
!270 = !DILocation(line: 733, column: 5, scope: !246)
!271 = !DILocation(line: 733, column: 12, scope: !246)
!272 = !DILocation(line: 733, column: 24, scope: !246)
!273 = !DILocation(line: 734, column: 26, scope: !246)
!274 = !DILocation(line: 734, column: 5, scope: !246)
!275 = !DILocation(line: 734, column: 12, scope: !246)
!276 = !DILocation(line: 734, column: 24, scope: !246)
!277 = !DILocation(line: 737, column: 5, scope: !246)
!278 = !DILocation(line: 738, column: 14, scope: !246)
!279 = !DILocation(line: 738, column: 21, scope: !246)
!280 = !DILocation(line: 738, column: 12, scope: !246)
!281 = !DILocation(line: 741, column: 10, scope: !246)
!282 = !DILocation(line: 741, column: 17, scope: !246)
!283 = !DILocation(line: 741, column: 22, scope: !246)
!284 = !DILocation(line: 741, column: 33, scope: !246)
!285 = !DILocation(line: 741, column: 56, scope: !246)
!286 = !DILocation(line: 741, column: 60, scope: !246)
!287 = !DILocation(line: 741, column: 67, scope: !246)
!288 = !DILocation(line: 741, column: 72, scope: !246)
!289 = !DILocation(line: 741, column: 79, scope: !246)
!290 = !DILocation(line: 741, column: 9, scope: !246)
!291 = !DILocation(line: 743, column: 19, scope: !246)
!292 = !DILocation(line: 744, column: 34, scope: !246)
!293 = !DILocation(line: 744, column: 21, scope: !246)
!294 = !DILocation(line: 744, column: 19, scope: !246)
!295 = !DILocation(line: 745, column: 5, scope: !246)
!296 = !DILocation(line: 748, column: 21, scope: !246)
!297 = !DILocation(line: 748, column: 19, scope: !246)
!298 = !DILocation(line: 749, column: 19, scope: !246)
!299 = !DILocation(line: 752, column: 5, scope: !246)
!300 = !DILocation(line: 755, column: 6, scope: !246)
!301 = !DILocation(line: 755, column: 12, scope: !246)
!302 = !DILocation(line: 758, column: 5, scope: !246)
!303 = !DILocation(line: 758, column: 12, scope: !246)
!304 = !DILocation(line: 758, column: 19, scope: !246)
!305 = !DILocation(line: 758, column: 31, scope: !246)
!306 = !DILocation(line: 761, column: 11, scope: !246)
!307 = !DILocation(line: 764, column: 9, scope: !246)
!308 = !DILocation(line: 768, column: 14, scope: !246)
!309 = !DILocation(line: 768, column: 13, scope: !246)
!310 = !DILocation(line: 768, column: 20, scope: !246)
!311 = !DILocation(line: 770, column: 11, scope: !246)
!312 = !DILocation(line: 770, column: 18, scope: !246)
!313 = !DILocation(line: 770, column: 26, scope: !246)
!314 = !DILocation(line: 772, column: 11, scope: !246)
!315 = !DILocation(line: 774, column: 7, scope: !246)
!316 = !DILocation(line: 777, column: 11, scope: !246)
!317 = !DILocation(line: 779, column: 13, scope: !246)
!318 = !DILocation(line: 779, column: 24, scope: !246)
!319 = !DILocation(line: 781, column: 37, scope: !246)
!320 = !DILocation(line: 781, column: 44, scope: !246)
!321 = !DILocation(line: 781, column: 54, scope: !246)
!322 = !DILocation(line: 781, column: 60, scope: !246)
!323 = !DILocation(line: 781, column: 58, scope: !246)
!324 = !DILocation(line: 781, column: 26, scope: !246)
!325 = !DILocation(line: 781, column: 12, scope: !246)
!326 = !DILocation(line: 781, column: 24, scope: !246)
!327 = !DILocation(line: 782, column: 22, scope: !246)
!328 = !DILocation(line: 783, column: 9, scope: !246)
!329 = !DILocation(line: 786, column: 35, scope: !246)
!330 = !DILocation(line: 786, column: 42, scope: !246)
!331 = !DILocation(line: 786, column: 52, scope: !246)
!332 = !DILocation(line: 786, column: 67, scope: !246)
!333 = !DILocation(line: 786, column: 58, scope: !246)
!334 = !DILocation(line: 786, column: 56, scope: !246)
!335 = !DILocation(line: 786, column: 25, scope: !246)
!336 = !DILocation(line: 786, column: 12, scope: !246)
!337 = !DILocation(line: 786, column: 23, scope: !246)
!338 = !DILocation(line: 787, column: 21, scope: !246)
!339 = !DILocation(line: 790, column: 10, scope: !246)
!340 = !DILocation(line: 790, column: 16, scope: !246)
!341 = !DILocation(line: 791, column: 9, scope: !246)
!342 = !DILocation(line: 791, column: 16, scope: !246)
!343 = !DILocation(line: 791, column: 27, scope: !246)
!344 = !DILocation(line: 792, column: 7, scope: !246)
!345 = !DILocation(line: 795, column: 11, scope: !246)
!346 = !DILocation(line: 795, column: 19, scope: !246)
!347 = !DILocation(line: 797, column: 15, scope: !246)
!348 = !DILocation(line: 797, column: 31, scope: !246)
!349 = !DILocation(line: 797, column: 29, scope: !246)
!350 = !DILocation(line: 797, column: 44, scope: !246)
!351 = !DILocation(line: 797, column: 42, scope: !246)
!352 = !DILocation(line: 797, column: 53, scope: !246)
!353 = !DILocation(line: 797, column: 57, scope: !246)
!354 = !DILocation(line: 797, column: 65, scope: !246)
!355 = !DILocation(line: 797, column: 13, scope: !246)
!356 = !DILocation(line: 799, column: 11, scope: !246)
!357 = !DILocation(line: 799, column: 18, scope: !246)
!358 = !DILocation(line: 799, column: 26, scope: !246)
!359 = !DILocation(line: 801, column: 11, scope: !246)
!360 = !DILocation(line: 803, column: 7, scope: !246)
!361 = distinct !{!361, !302, !362}
!362 = !DILocation(line: 804, column: 5, scope: !246)
!363 = !DILocation(line: 807, column: 14, scope: !246)
!364 = !DILocation(line: 807, column: 21, scope: !246)
!365 = !DILocation(line: 807, column: 34, scope: !246)
!366 = !DILocation(line: 807, column: 41, scope: !246)
!367 = !DILocation(line: 807, column: 32, scope: !246)
!368 = !DILocation(line: 807, column: 6, scope: !246)
!369 = !DILocation(line: 807, column: 12, scope: !246)
!370 = !DILocation(line: 809, column: 5, scope: !246)
!371 = !DILocation(line: 809, column: 12, scope: !246)
!372 = !DILocation(line: 809, column: 20, scope: !246)
!373 = !DILocation(line: 811, column: 5, scope: !246)
!374 = !DILocation(line: 815, column: 5, scope: !246)
!375 = !DILocation(line: 817, column: 1, scope: !246)
!376 = distinct !DISubprogram(name: "HAL_UARTEx_ReceiveToIdle_IT", scope: !1, file: !1, line: 832, type: !9, scopeLine: 833, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!377 = !DILocation(line: 837, column: 7, scope: !376)
!378 = !DILocation(line: 837, column: 14, scope: !376)
!379 = !DILocation(line: 837, column: 22, scope: !376)
!380 = !DILocation(line: 839, column: 10, scope: !376)
!381 = !DILocation(line: 839, column: 16, scope: !376)
!382 = !DILocation(line: 839, column: 25, scope: !376)
!383 = !DILocation(line: 839, column: 29, scope: !376)
!384 = !DILocation(line: 839, column: 34, scope: !376)
!385 = !DILocation(line: 839, column: 9, scope: !376)
!386 = !DILocation(line: 841, column: 7, scope: !376)
!387 = !DILocation(line: 844, column: 5, scope: !376)
!388 = !DILocation(line: 847, column: 5, scope: !376)
!389 = !DILocation(line: 847, column: 12, scope: !376)
!390 = !DILocation(line: 847, column: 26, scope: !376)
!391 = !DILocation(line: 849, column: 37, scope: !376)
!392 = !DILocation(line: 849, column: 44, scope: !376)
!393 = !DILocation(line: 849, column: 51, scope: !376)
!394 = !DILocation(line: 849, column: 15, scope: !376)
!395 = !DILocation(line: 849, column: 12, scope: !376)
!396 = !DILocation(line: 852, column: 9, scope: !376)
!397 = !DILocation(line: 852, column: 16, scope: !376)
!398 = !DILocation(line: 854, column: 11, scope: !376)
!399 = !DILocation(line: 854, column: 18, scope: !376)
!400 = !DILocation(line: 854, column: 32, scope: !376)
!401 = !DILocation(line: 856, column: 9, scope: !376)
!402 = !DILocation(line: 857, column: 9, scope: !376)
!403 = !DILocation(line: 858, column: 7, scope: !376)
!404 = !DILocation(line: 865, column: 16, scope: !376)
!405 = !DILocation(line: 867, column: 5, scope: !376)
!406 = !DILocation(line: 869, column: 12, scope: !376)
!407 = !DILocation(line: 869, column: 5, scope: !376)
!408 = !DILocation(line: 873, column: 5, scope: !376)
!409 = !DILocation(line: 875, column: 1, scope: !376)
!410 = distinct !DISubprogram(name: "HAL_UARTEx_ReceiveToIdle_DMA", scope: !1, file: !1, line: 893, type: !9, scopeLine: 894, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!411 = !DILocation(line: 898, column: 7, scope: !410)
!412 = !DILocation(line: 898, column: 14, scope: !410)
!413 = !DILocation(line: 898, column: 22, scope: !410)
!414 = !DILocation(line: 900, column: 10, scope: !410)
!415 = !DILocation(line: 900, column: 16, scope: !410)
!416 = !DILocation(line: 900, column: 25, scope: !410)
!417 = !DILocation(line: 900, column: 29, scope: !410)
!418 = !DILocation(line: 900, column: 34, scope: !410)
!419 = !DILocation(line: 900, column: 9, scope: !410)
!420 = !DILocation(line: 902, column: 7, scope: !410)
!421 = !DILocation(line: 905, column: 5, scope: !410)
!422 = !DILocation(line: 908, column: 5, scope: !410)
!423 = !DILocation(line: 908, column: 12, scope: !410)
!424 = !DILocation(line: 908, column: 26, scope: !410)
!425 = !DILocation(line: 910, column: 38, scope: !410)
!426 = !DILocation(line: 910, column: 45, scope: !410)
!427 = !DILocation(line: 910, column: 52, scope: !410)
!428 = !DILocation(line: 910, column: 15, scope: !410)
!429 = !DILocation(line: 910, column: 12, scope: !410)
!430 = !DILocation(line: 913, column: 9, scope: !410)
!431 = !DILocation(line: 913, column: 16, scope: !410)
!432 = !DILocation(line: 915, column: 11, scope: !410)
!433 = !DILocation(line: 915, column: 18, scope: !410)
!434 = !DILocation(line: 915, column: 32, scope: !410)
!435 = !DILocation(line: 917, column: 9, scope: !410)
!436 = !DILocation(line: 918, column: 9, scope: !410)
!437 = !DILocation(line: 919, column: 7, scope: !410)
!438 = !DILocation(line: 926, column: 16, scope: !410)
!439 = !DILocation(line: 928, column: 5, scope: !410)
!440 = !DILocation(line: 930, column: 12, scope: !410)
!441 = !DILocation(line: 930, column: 5, scope: !410)
!442 = !DILocation(line: 934, column: 5, scope: !410)
!443 = !DILocation(line: 936, column: 1, scope: !410)
