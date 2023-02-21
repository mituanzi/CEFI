; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart.c"
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
%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }

@UARTPrescTable = dso_local constant [12 x i16] [i16 1, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 16, i16 32, i16 64, i16 128, i16 256], align 2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Init(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !10
  %cmp = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !11
  br i1 %cmp, label %if.then, label %if.end, !dbg !10

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !12
  br label %return, !dbg !12

if.end:                                           ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !13
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 1, !dbg !14
  %HwFlowCtl = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 5, !dbg !15
  %2 = load i32, i32* %HwFlowCtl, align 4, !dbg !15
  %cmp1 = icmp ne i32 %2, 0, !dbg !16
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !13

if.then2:                                         ; preds = %if.end
  br label %if.end3, !dbg !17

if.else:                                          ; preds = %if.end
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !18
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !19
  %4 = load volatile i32, i32* %gState, align 4, !dbg !19
  %cmp4 = icmp eq i32 %4, 0, !dbg !20
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !18

if.then5:                                         ; preds = %if.end3
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !21
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 18, !dbg !22
  store i8 0, i8* %Lock, align 4, !dbg !23
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !24
  call arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* %6), !dbg !25
  br label %if.end6, !dbg !26

if.end6:                                          ; preds = %if.then5, %if.end3
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !27
  %gState7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 19, !dbg !28
  store volatile i32 36, i32* %gState7, align 4, !dbg !29
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !30
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !30
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !30
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 0, !dbg !30
  %10 = load volatile i32, i32* %CR1, align 4, !dbg !30
  %and = and i32 %10, -2, !dbg !30
  store volatile i32 %and, i32* %CR1, align 4, !dbg !30
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !31
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_SetConfig(%struct.__UART_HandleTypeDef* %11), !dbg !32
  %conv = zext i8 %call to i32, !dbg !32
  %cmp8 = icmp eq i32 %conv, 1, !dbg !33
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !32

if.then10:                                        ; preds = %if.end6
  store i8 1, i8* %retval, align 1, !dbg !34
  br label %return, !dbg !34

if.end11:                                         ; preds = %if.end6
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !35
  %AdvancedInit = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 2, !dbg !36
  %AdvFeatureInit = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit, i32 0, i32 0, !dbg !37
  %13 = load i32, i32* %AdvFeatureInit, align 4, !dbg !37
  %cmp12 = icmp ne i32 %13, 0, !dbg !38
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !35

if.then14:                                        ; preds = %if.end11
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !39
  call arm_aapcs_vfpcc void @UART_AdvFeatureConfig(%struct.__UART_HandleTypeDef* %14), !dbg !40
  br label %if.end15, !dbg !41

if.end15:                                         ; preds = %if.then14, %if.end11
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !42
  %Instance16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 0, !dbg !42
  %16 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance16, align 4, !dbg !42
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %16, i32 0, i32 1, !dbg !42
  %17 = load volatile i32, i32* %CR2, align 4, !dbg !42
  %and17 = and i32 %17, -18433, !dbg !42
  store volatile i32 %and17, i32* %CR2, align 4, !dbg !42
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !43
  %Instance18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !43
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance18, align 4, !dbg !43
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 2, !dbg !43
  %20 = load volatile i32, i32* %CR3, align 4, !dbg !43
  %and19 = and i32 %20, -43, !dbg !43
  store volatile i32 %and19, i32* %CR3, align 4, !dbg !43
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !44
  %Instance20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 0, !dbg !44
  %22 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance20, align 4, !dbg !44
  %CR121 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %22, i32 0, i32 0, !dbg !44
  %23 = load volatile i32, i32* %CR121, align 4, !dbg !44
  %or = or i32 %23, 1, !dbg !44
  store volatile i32 %or, i32* %CR121, align 4, !dbg !44
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !45
  %call22 = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %24), !dbg !46
  store i8 %call22, i8* %retval, align 1, !dbg !47
  br label %return, !dbg !47

return:                                           ; preds = %if.end15, %if.then10, %if.then
  %25 = load i8, i8* %retval, align 1, !dbg !48
  ret i8 %25, !dbg !48
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !49 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @UART_SetConfig(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !52 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tmpreg = alloca i32, align 4
  %brrtemp = alloca i16, align 2
  %clocksource = alloca i8, align 1
  %usartdiv = alloca i32, align 4
  %ret = alloca i8, align 1
  %lpuart_ker_ck_pres = alloca i32, align 4
  %pclk = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8 0, i8* %ret, align 1, !dbg !53
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !54
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !54
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !54
  %cmp = icmp eq %struct.USART_TypeDef* %1, inttoptr (i32 1073774592 to %struct.USART_TypeDef*), !dbg !54
  br i1 %cmp, label %if.then, label %if.else, !dbg !54

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !55

if.else:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !56
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 1, !dbg !57
  %WordLength = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 1, !dbg !58
  %3 = load i32, i32* %WordLength, align 4, !dbg !58
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !59
  %Init1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 1, !dbg !60
  %Parity = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init1, i32 0, i32 3, !dbg !61
  %5 = load i32, i32* %Parity, align 4, !dbg !61
  %or = or i32 %3, %5, !dbg !62
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !63
  %Init2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 1, !dbg !64
  %Mode = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init2, i32 0, i32 4, !dbg !65
  %7 = load i32, i32* %Mode, align 4, !dbg !65
  %or3 = or i32 %or, %7, !dbg !66
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !67
  %Init4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 1, !dbg !68
  %OverSampling = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init4, i32 0, i32 6, !dbg !69
  %9 = load i32, i32* %OverSampling, align 4, !dbg !69
  %or5 = or i32 %or3, %9, !dbg !70
  store i32 %or5, i32* %tmpreg, align 4, !dbg !71
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !72
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 10, !dbg !73
  %11 = load i32, i32* %FifoMode, align 4, !dbg !73
  %12 = load i32, i32* %tmpreg, align 4, !dbg !74
  %or6 = or i32 %12, %11, !dbg !74
  store i32 %or6, i32* %tmpreg, align 4, !dbg !74
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !75
  %Instance7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !75
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance7, align 4, !dbg !75
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 0, !dbg !75
  %15 = load volatile i32, i32* %CR1, align 4, !dbg !75
  %and = and i32 %15, -805344781, !dbg !75
  %16 = load i32, i32* %tmpreg, align 4, !dbg !75
  %or8 = or i32 %and, %16, !dbg !75
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !75
  %Instance9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 0, !dbg !75
  %18 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance9, align 4, !dbg !75
  %CR110 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %18, i32 0, i32 0, !dbg !75
  store volatile i32 %or8, i32* %CR110, align 4, !dbg !75
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !76
  %Instance11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 0, !dbg !76
  %20 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance11, align 4, !dbg !76
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %20, i32 0, i32 1, !dbg !76
  %21 = load volatile i32, i32* %CR2, align 4, !dbg !76
  %and12 = and i32 %21, -12289, !dbg !76
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !76
  %Init13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 1, !dbg !76
  %StopBits = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init13, i32 0, i32 2, !dbg !76
  %23 = load i32, i32* %StopBits, align 4, !dbg !76
  %or14 = or i32 %and12, %23, !dbg !76
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !76
  %Instance15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 0, !dbg !76
  %25 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance15, align 4, !dbg !76
  %CR216 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %25, i32 0, i32 1, !dbg !76
  store volatile i32 %or14, i32* %CR216, align 4, !dbg !76
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !77
  %Init17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 1, !dbg !78
  %HwFlowCtl = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init17, i32 0, i32 5, !dbg !79
  %27 = load i32, i32* %HwFlowCtl, align 4, !dbg !79
  store i32 %27, i32* %tmpreg, align 4, !dbg !80
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !81
  %Instance18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 0, !dbg !81
  %29 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance18, align 4, !dbg !81
  %cmp19 = icmp eq %struct.USART_TypeDef* %29, inttoptr (i32 1073774592 to %struct.USART_TypeDef*), !dbg !81
  br i1 %cmp19, label %if.end23, label %if.then20, !dbg !82

if.then20:                                        ; preds = %if.end
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !83
  %Init21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 1, !dbg !84
  %OneBitSampling = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init21, i32 0, i32 7, !dbg !85
  %31 = load i32, i32* %OneBitSampling, align 4, !dbg !85
  %32 = load i32, i32* %tmpreg, align 4, !dbg !86
  %or22 = or i32 %32, %31, !dbg !86
  store i32 %or22, i32* %tmpreg, align 4, !dbg !86
  br label %if.end23, !dbg !87

if.end23:                                         ; preds = %if.then20, %if.end
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !88
  %Instance24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %33, i32 0, i32 0, !dbg !88
  %34 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance24, align 4, !dbg !88
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %34, i32 0, i32 2, !dbg !88
  %35 = load volatile i32, i32* %CR3, align 4, !dbg !88
  %and25 = and i32 %35, 301987071, !dbg !88
  %36 = load i32, i32* %tmpreg, align 4, !dbg !88
  %or26 = or i32 %and25, %36, !dbg !88
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !88
  %Instance27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 0, !dbg !88
  %38 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance27, align 4, !dbg !88
  %CR328 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %38, i32 0, i32 2, !dbg !88
  store volatile i32 %or26, i32* %CR328, align 4, !dbg !88
  %39 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !89
  %Instance29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %39, i32 0, i32 0, !dbg !89
  %40 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance29, align 4, !dbg !89
  %PRESC = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %40, i32 0, i32 11, !dbg !89
  %41 = load volatile i32, i32* %PRESC, align 4, !dbg !89
  %and30 = and i32 %41, -16, !dbg !89
  %42 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !89
  %Init31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %42, i32 0, i32 1, !dbg !89
  %ClockPrescaler = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init31, i32 0, i32 8, !dbg !89
  %43 = load i32, i32* %ClockPrescaler, align 4, !dbg !89
  %or32 = or i32 %and30, %43, !dbg !89
  %44 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !89
  %Instance33 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %44, i32 0, i32 0, !dbg !89
  %45 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance33, align 4, !dbg !89
  %PRESC34 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %45, i32 0, i32 11, !dbg !89
  store volatile i32 %or32, i32* %PRESC34, align 4, !dbg !89
  br label %do.body, !dbg !90

do.body:                                          ; preds = %if.end23
  %46 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !90
  %Instance35 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %46, i32 0, i32 0, !dbg !90
  %47 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance35, align 4, !dbg !90
  %cmp36 = icmp eq %struct.USART_TypeDef* %47, inttoptr (i32 1073821696 to %struct.USART_TypeDef*), !dbg !90
  br i1 %cmp36, label %if.then37, label %if.else42, !dbg !90

if.then37:                                        ; preds = %do.body
  %48 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !90
  %and38 = and i32 %48, 3, !dbg !90
  switch i32 %and38, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb39
    i32 1, label %sw.bb40
    i32 3, label %sw.bb41
  ], !dbg !90

sw.bb:                                            ; preds = %if.then37
  store i8 1, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog, !dbg !90

sw.bb39:                                          ; preds = %if.then37
  store i8 2, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog, !dbg !90

sw.bb40:                                          ; preds = %if.then37
  store i8 4, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog, !dbg !90

sw.bb41:                                          ; preds = %if.then37
  store i8 8, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog, !dbg !90

sw.default:                                       ; preds = %if.then37
  store i8 16, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog, !dbg !90

sw.epilog:                                        ; preds = %sw.default, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb
  br label %if.end103, !dbg !90

if.else42:                                        ; preds = %do.body
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !90
  %Instance43 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 0, !dbg !90
  %50 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance43, align 4, !dbg !90
  %cmp44 = icmp eq %struct.USART_TypeDef* %50, inttoptr (i32 1073759232 to %struct.USART_TypeDef*), !dbg !90
  br i1 %cmp44, label %if.then45, label %if.else53, !dbg !90

if.then45:                                        ; preds = %if.else42
  %51 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !90
  %and46 = and i32 %51, 12, !dbg !90
  switch i32 %and46, label %sw.default51 [
    i32 0, label %sw.bb47
    i32 8, label %sw.bb48
    i32 4, label %sw.bb49
    i32 12, label %sw.bb50
  ], !dbg !90

sw.bb47:                                          ; preds = %if.then45
  store i8 0, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog52, !dbg !90

sw.bb48:                                          ; preds = %if.then45
  store i8 2, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog52, !dbg !90

sw.bb49:                                          ; preds = %if.then45
  store i8 4, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog52, !dbg !90

sw.bb50:                                          ; preds = %if.then45
  store i8 8, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog52, !dbg !90

sw.default51:                                     ; preds = %if.then45
  store i8 16, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog52, !dbg !90

sw.epilog52:                                      ; preds = %sw.default51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47
  br label %if.end102, !dbg !90

if.else53:                                        ; preds = %if.else42
  %52 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !90
  %Instance54 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %52, i32 0, i32 0, !dbg !90
  %53 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance54, align 4, !dbg !90
  %cmp55 = icmp eq %struct.USART_TypeDef* %53, inttoptr (i32 1073760256 to %struct.USART_TypeDef*), !dbg !90
  br i1 %cmp55, label %if.then56, label %if.else64, !dbg !90

if.then56:                                        ; preds = %if.else53
  %54 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !90
  %and57 = and i32 %54, 48, !dbg !90
  switch i32 %and57, label %sw.default62 [
    i32 0, label %sw.bb58
    i32 32, label %sw.bb59
    i32 16, label %sw.bb60
    i32 48, label %sw.bb61
  ], !dbg !90

sw.bb58:                                          ; preds = %if.then56
  store i8 0, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog63, !dbg !90

sw.bb59:                                          ; preds = %if.then56
  store i8 2, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog63, !dbg !90

sw.bb60:                                          ; preds = %if.then56
  store i8 4, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog63, !dbg !90

sw.bb61:                                          ; preds = %if.then56
  store i8 8, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog63, !dbg !90

sw.default62:                                     ; preds = %if.then56
  store i8 16, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog63, !dbg !90

sw.epilog63:                                      ; preds = %sw.default62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58
  br label %if.end101, !dbg !90

if.else64:                                        ; preds = %if.else53
  %55 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !90
  %Instance65 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %55, i32 0, i32 0, !dbg !90
  %56 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance65, align 4, !dbg !90
  %cmp66 = icmp eq %struct.USART_TypeDef* %56, inttoptr (i32 1073761280 to %struct.USART_TypeDef*), !dbg !90
  br i1 %cmp66, label %if.then67, label %if.else75, !dbg !90

if.then67:                                        ; preds = %if.else64
  %57 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !90
  %and68 = and i32 %57, 192, !dbg !90
  switch i32 %and68, label %sw.default73 [
    i32 0, label %sw.bb69
    i32 128, label %sw.bb70
    i32 64, label %sw.bb71
    i32 192, label %sw.bb72
  ], !dbg !90

sw.bb69:                                          ; preds = %if.then67
  store i8 0, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog74, !dbg !90

sw.bb70:                                          ; preds = %if.then67
  store i8 2, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog74, !dbg !90

sw.bb71:                                          ; preds = %if.then67
  store i8 4, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog74, !dbg !90

sw.bb72:                                          ; preds = %if.then67
  store i8 8, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog74, !dbg !90

sw.default73:                                     ; preds = %if.then67
  store i8 16, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog74, !dbg !90

sw.epilog74:                                      ; preds = %sw.default73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69
  br label %if.end100, !dbg !90

if.else75:                                        ; preds = %if.else64
  %58 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !90
  %Instance76 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %58, i32 0, i32 0, !dbg !90
  %59 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance76, align 4, !dbg !90
  %cmp77 = icmp eq %struct.USART_TypeDef* %59, inttoptr (i32 1073762304 to %struct.USART_TypeDef*), !dbg !90
  br i1 %cmp77, label %if.then78, label %if.else86, !dbg !90

if.then78:                                        ; preds = %if.else75
  %60 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !90
  %and79 = and i32 %60, 768, !dbg !90
  switch i32 %and79, label %sw.default84 [
    i32 0, label %sw.bb80
    i32 512, label %sw.bb81
    i32 256, label %sw.bb82
    i32 768, label %sw.bb83
  ], !dbg !90

sw.bb80:                                          ; preds = %if.then78
  store i8 0, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog85, !dbg !90

sw.bb81:                                          ; preds = %if.then78
  store i8 2, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog85, !dbg !90

sw.bb82:                                          ; preds = %if.then78
  store i8 4, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog85, !dbg !90

sw.bb83:                                          ; preds = %if.then78
  store i8 8, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog85, !dbg !90

sw.default84:                                     ; preds = %if.then78
  store i8 16, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog85, !dbg !90

sw.epilog85:                                      ; preds = %sw.default84, %sw.bb83, %sw.bb82, %sw.bb81, %sw.bb80
  br label %if.end99, !dbg !90

if.else86:                                        ; preds = %if.else75
  %61 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !90
  %Instance87 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %61, i32 0, i32 0, !dbg !90
  %62 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance87, align 4, !dbg !90
  %cmp88 = icmp eq %struct.USART_TypeDef* %62, inttoptr (i32 1073774592 to %struct.USART_TypeDef*), !dbg !90
  br i1 %cmp88, label %if.then89, label %if.else97, !dbg !90

if.then89:                                        ; preds = %if.else86
  %63 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 34), align 4, !dbg !90
  %and90 = and i32 %63, 3072, !dbg !90
  switch i32 %and90, label %sw.default95 [
    i32 0, label %sw.bb91
    i32 2048, label %sw.bb92
    i32 1024, label %sw.bb93
    i32 3072, label %sw.bb94
  ], !dbg !90

sw.bb91:                                          ; preds = %if.then89
  store i8 0, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog96, !dbg !90

sw.bb92:                                          ; preds = %if.then89
  store i8 2, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog96, !dbg !90

sw.bb93:                                          ; preds = %if.then89
  store i8 4, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog96, !dbg !90

sw.bb94:                                          ; preds = %if.then89
  store i8 8, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog96, !dbg !90

sw.default95:                                     ; preds = %if.then89
  store i8 16, i8* %clocksource, align 1, !dbg !90
  br label %sw.epilog96, !dbg !90

sw.epilog96:                                      ; preds = %sw.default95, %sw.bb94, %sw.bb93, %sw.bb92, %sw.bb91
  br label %if.end98, !dbg !90

if.else97:                                        ; preds = %if.else86
  store i8 16, i8* %clocksource, align 1, !dbg !90
  br label %if.end98

if.end98:                                         ; preds = %if.else97, %sw.epilog96
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %sw.epilog85
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %sw.epilog74
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %sw.epilog63
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %sw.epilog52
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %sw.epilog
  br label %do.end, !dbg !90

do.end:                                           ; preds = %if.end103
  %64 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !91
  %Instance104 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %64, i32 0, i32 0, !dbg !91
  %65 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance104, align 4, !dbg !91
  %cmp105 = icmp eq %struct.USART_TypeDef* %65, inttoptr (i32 1073774592 to %struct.USART_TypeDef*), !dbg !91
  br i1 %cmp105, label %if.then106, label %if.else160, !dbg !91

if.then106:                                       ; preds = %do.end
  %66 = load i8, i8* %clocksource, align 1, !dbg !92
  %conv = zext i8 %66 to i32, !dbg !92
  switch i32 %conv, label %sw.default114 [
    i32 0, label %sw.bb107
    i32 1, label %sw.bb108
    i32 2, label %sw.bb110
    i32 4, label %sw.bb111
    i32 8, label %sw.bb113
  ], !dbg !93

sw.bb107:                                         ; preds = %if.then106
  %call = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !94
  store i32 %call, i32* %pclk, align 4, !dbg !95
  br label %sw.epilog115, !dbg !96

sw.bb108:                                         ; preds = %if.then106
  %call109 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq(), !dbg !97
  store i32 %call109, i32* %pclk, align 4, !dbg !98
  br label %sw.epilog115, !dbg !99

sw.bb110:                                         ; preds = %if.then106
  store i32 16000000, i32* %pclk, align 4, !dbg !100
  br label %sw.epilog115, !dbg !101

sw.bb111:                                         ; preds = %if.then106
  %call112 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !102
  store i32 %call112, i32* %pclk, align 4, !dbg !103
  br label %sw.epilog115, !dbg !104

sw.bb113:                                         ; preds = %if.then106
  store i32 32768, i32* %pclk, align 4, !dbg !105
  br label %sw.epilog115, !dbg !106

sw.default114:                                    ; preds = %if.then106
  store i32 0, i32* %pclk, align 4, !dbg !107
  store i8 1, i8* %ret, align 1, !dbg !108
  br label %sw.epilog115, !dbg !109

sw.epilog115:                                     ; preds = %sw.default114, %sw.bb113, %sw.bb111, %sw.bb110, %sw.bb108, %sw.bb107
  %67 = load i32, i32* %pclk, align 4, !dbg !110
  %cmp116 = icmp ne i32 %67, 0, !dbg !111
  br i1 %cmp116, label %if.then118, label %if.end159, !dbg !110

if.then118:                                       ; preds = %sw.epilog115
  %68 = load i32, i32* %pclk, align 4, !dbg !112
  %69 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !113
  %Init119 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %69, i32 0, i32 1, !dbg !114
  %ClockPrescaler120 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init119, i32 0, i32 8, !dbg !115
  %70 = load i32, i32* %ClockPrescaler120, align 4, !dbg !115
  %arrayidx = getelementptr inbounds [12 x i16], [12 x i16]* @UARTPrescTable, i32 0, i32 %70, !dbg !116
  %71 = load i16, i16* %arrayidx, align 2, !dbg !116
  %conv121 = zext i16 %71 to i32, !dbg !116
  %div = udiv i32 %68, %conv121, !dbg !117
  store i32 %div, i32* %lpuart_ker_ck_pres, align 4, !dbg !118
  %72 = load i32, i32* %lpuart_ker_ck_pres, align 4, !dbg !119
  %73 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !120
  %Init122 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %73, i32 0, i32 1, !dbg !121
  %BaudRate = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init122, i32 0, i32 0, !dbg !122
  %74 = load i32, i32* %BaudRate, align 4, !dbg !122
  %mul = mul i32 3, %74, !dbg !123
  %cmp123 = icmp ult i32 %72, %mul, !dbg !124
  br i1 %cmp123, label %if.then130, label %lor.lhs.false, !dbg !125

lor.lhs.false:                                    ; preds = %if.then118
  %75 = load i32, i32* %lpuart_ker_ck_pres, align 4, !dbg !126
  %76 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !127
  %Init125 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %76, i32 0, i32 1, !dbg !128
  %BaudRate126 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init125, i32 0, i32 0, !dbg !129
  %77 = load i32, i32* %BaudRate126, align 4, !dbg !129
  %mul127 = mul i32 4096, %77, !dbg !130
  %cmp128 = icmp ugt i32 %75, %mul127, !dbg !131
  br i1 %cmp128, label %if.then130, label %if.else131, !dbg !132

if.then130:                                       ; preds = %lor.lhs.false, %if.then118
  store i8 1, i8* %ret, align 1, !dbg !133
  br label %if.end158, !dbg !134

if.else131:                                       ; preds = %lor.lhs.false
  %78 = load i32, i32* %pclk, align 4, !dbg !135
  %conv132 = zext i32 %78 to i64, !dbg !135
  %79 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !135
  %Init133 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %79, i32 0, i32 1, !dbg !135
  %ClockPrescaler134 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init133, i32 0, i32 8, !dbg !135
  %80 = load i32, i32* %ClockPrescaler134, align 4, !dbg !135
  %arrayidx135 = getelementptr inbounds [12 x i16], [12 x i16]* @UARTPrescTable, i32 0, i32 %80, !dbg !135
  %81 = load i16, i16* %arrayidx135, align 2, !dbg !135
  %conv136 = zext i16 %81 to i64, !dbg !135
  %div137 = udiv i64 %conv132, %conv136, !dbg !135
  %mul138 = mul i64 %div137, 256, !dbg !135
  %82 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !135
  %Init139 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %82, i32 0, i32 1, !dbg !135
  %BaudRate140 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init139, i32 0, i32 0, !dbg !135
  %83 = load i32, i32* %BaudRate140, align 4, !dbg !135
  %conv141 = zext i32 %83 to i64, !dbg !135
  %div142 = udiv i64 %conv141, 2, !dbg !135
  %conv143 = trunc i64 %div142 to i32, !dbg !135
  %conv144 = zext i32 %conv143 to i64, !dbg !135
  %add = add i64 %mul138, %conv144, !dbg !135
  %84 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !135
  %Init145 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %84, i32 0, i32 1, !dbg !135
  %BaudRate146 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init145, i32 0, i32 0, !dbg !135
  %85 = load i32, i32* %BaudRate146, align 4, !dbg !135
  %conv147 = zext i32 %85 to i64, !dbg !135
  %div148 = udiv i64 %add, %conv147, !dbg !135
  %conv149 = trunc i64 %div148 to i32, !dbg !135
  store i32 %conv149, i32* %usartdiv, align 4, !dbg !136
  %86 = load i32, i32* %usartdiv, align 4, !dbg !137
  %cmp150 = icmp uge i32 %86, 768, !dbg !138
  br i1 %cmp150, label %land.lhs.true, label %if.else156, !dbg !139

land.lhs.true:                                    ; preds = %if.else131
  %87 = load i32, i32* %usartdiv, align 4, !dbg !140
  %cmp152 = icmp ule i32 %87, 1048575, !dbg !141
  br i1 %cmp152, label %if.then154, label %if.else156, !dbg !142

if.then154:                                       ; preds = %land.lhs.true
  %88 = load i32, i32* %usartdiv, align 4, !dbg !143
  %89 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !144
  %Instance155 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %89, i32 0, i32 0, !dbg !145
  %90 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance155, align 4, !dbg !145
  %BRR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %90, i32 0, i32 3, !dbg !146
  store volatile i32 %88, i32* %BRR, align 4, !dbg !147
  br label %if.end157, !dbg !148

if.else156:                                       ; preds = %land.lhs.true, %if.else131
  store i8 1, i8* %ret, align 1, !dbg !149
  br label %if.end157

if.end157:                                        ; preds = %if.else156, %if.then154
  br label %if.end158

if.end158:                                        ; preds = %if.end157, %if.then130
  br label %if.end159, !dbg !150

if.end159:                                        ; preds = %if.end158, %sw.epilog115
  br label %if.end256, !dbg !151

if.else160:                                       ; preds = %do.end
  %91 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !152
  %Init161 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %91, i32 0, i32 1, !dbg !153
  %OverSampling162 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init161, i32 0, i32 6, !dbg !154
  %92 = load i32, i32* %OverSampling162, align 4, !dbg !154
  %cmp163 = icmp eq i32 %92, 32768, !dbg !155
  br i1 %cmp163, label %if.then165, label %if.else215, !dbg !152

if.then165:                                       ; preds = %if.else160
  %93 = load i8, i8* %clocksource, align 1, !dbg !156
  %conv166 = zext i8 %93 to i32, !dbg !156
  switch i32 %conv166, label %sw.default175 [
    i32 0, label %sw.bb167
    i32 1, label %sw.bb169
    i32 2, label %sw.bb171
    i32 4, label %sw.bb172
    i32 8, label %sw.bb174
  ], !dbg !157

sw.bb167:                                         ; preds = %if.then165
  %call168 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !158
  store i32 %call168, i32* %pclk, align 4, !dbg !159
  br label %sw.epilog176, !dbg !160

sw.bb169:                                         ; preds = %if.then165
  %call170 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq(), !dbg !161
  store i32 %call170, i32* %pclk, align 4, !dbg !162
  br label %sw.epilog176, !dbg !163

sw.bb171:                                         ; preds = %if.then165
  store i32 16000000, i32* %pclk, align 4, !dbg !164
  br label %sw.epilog176, !dbg !165

sw.bb172:                                         ; preds = %if.then165
  %call173 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !166
  store i32 %call173, i32* %pclk, align 4, !dbg !167
  br label %sw.epilog176, !dbg !168

sw.bb174:                                         ; preds = %if.then165
  store i32 32768, i32* %pclk, align 4, !dbg !169
  br label %sw.epilog176, !dbg !170

sw.default175:                                    ; preds = %if.then165
  store i32 0, i32* %pclk, align 4, !dbg !171
  store i8 1, i8* %ret, align 1, !dbg !172
  br label %sw.epilog176, !dbg !173

sw.epilog176:                                     ; preds = %sw.default175, %sw.bb174, %sw.bb172, %sw.bb171, %sw.bb169, %sw.bb167
  %94 = load i32, i32* %pclk, align 4, !dbg !174
  %cmp177 = icmp ne i32 %94, 0, !dbg !175
  br i1 %cmp177, label %if.then179, label %if.end214, !dbg !174

if.then179:                                       ; preds = %sw.epilog176
  %95 = load i32, i32* %pclk, align 4, !dbg !176
  %96 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !176
  %Init180 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %96, i32 0, i32 1, !dbg !176
  %ClockPrescaler181 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init180, i32 0, i32 8, !dbg !176
  %97 = load i32, i32* %ClockPrescaler181, align 4, !dbg !176
  %arrayidx182 = getelementptr inbounds [12 x i16], [12 x i16]* @UARTPrescTable, i32 0, i32 %97, !dbg !176
  %98 = load i16, i16* %arrayidx182, align 2, !dbg !176
  %conv183 = zext i16 %98 to i32, !dbg !176
  %div184 = udiv i32 %95, %conv183, !dbg !176
  %mul185 = mul i32 %div184, 2, !dbg !176
  %99 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !176
  %Init186 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %99, i32 0, i32 1, !dbg !176
  %BaudRate187 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init186, i32 0, i32 0, !dbg !176
  %100 = load i32, i32* %BaudRate187, align 4, !dbg !176
  %div188 = udiv i32 %100, 2, !dbg !176
  %add189 = add i32 %mul185, %div188, !dbg !176
  %101 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !176
  %Init190 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %101, i32 0, i32 1, !dbg !176
  %BaudRate191 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init190, i32 0, i32 0, !dbg !176
  %102 = load i32, i32* %BaudRate191, align 4, !dbg !176
  %div192 = udiv i32 %add189, %102, !dbg !176
  %conv193 = trunc i32 %div192 to i16, !dbg !177
  %conv194 = zext i16 %conv193 to i32, !dbg !177
  store i32 %conv194, i32* %usartdiv, align 4, !dbg !178
  %103 = load i32, i32* %usartdiv, align 4, !dbg !179
  %cmp195 = icmp uge i32 %103, 16, !dbg !180
  br i1 %cmp195, label %land.lhs.true197, label %if.else212, !dbg !181

land.lhs.true197:                                 ; preds = %if.then179
  %104 = load i32, i32* %usartdiv, align 4, !dbg !182
  %cmp198 = icmp ule i32 %104, 65535, !dbg !183
  br i1 %cmp198, label %if.then200, label %if.else212, !dbg !184

if.then200:                                       ; preds = %land.lhs.true197
  %105 = load i32, i32* %usartdiv, align 4, !dbg !185
  %and201 = and i32 %105, 65520, !dbg !186
  %conv202 = trunc i32 %and201 to i16, !dbg !187
  store i16 %conv202, i16* %brrtemp, align 2, !dbg !188
  %106 = load i32, i32* %usartdiv, align 4, !dbg !189
  %and203 = and i32 %106, 15, !dbg !190
  %shr = lshr i32 %and203, 1, !dbg !191
  %conv204 = trunc i32 %shr to i16, !dbg !192
  %conv205 = zext i16 %conv204 to i32, !dbg !192
  %107 = load i16, i16* %brrtemp, align 2, !dbg !193
  %conv206 = zext i16 %107 to i32, !dbg !193
  %or207 = or i32 %conv206, %conv205, !dbg !193
  %conv208 = trunc i32 %or207 to i16, !dbg !193
  store i16 %conv208, i16* %brrtemp, align 2, !dbg !193
  %108 = load i16, i16* %brrtemp, align 2, !dbg !194
  %conv209 = zext i16 %108 to i32, !dbg !194
  %109 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !195
  %Instance210 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %109, i32 0, i32 0, !dbg !196
  %110 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance210, align 4, !dbg !196
  %BRR211 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %110, i32 0, i32 3, !dbg !197
  store volatile i32 %conv209, i32* %BRR211, align 4, !dbg !198
  br label %if.end213, !dbg !199

if.else212:                                       ; preds = %land.lhs.true197, %if.then179
  store i8 1, i8* %ret, align 1, !dbg !200
  br label %if.end213

if.end213:                                        ; preds = %if.else212, %if.then200
  br label %if.end214, !dbg !201

if.end214:                                        ; preds = %if.end213, %sw.epilog176
  br label %if.end255, !dbg !202

if.else215:                                       ; preds = %if.else160
  %111 = load i8, i8* %clocksource, align 1, !dbg !203
  %conv216 = zext i8 %111 to i32, !dbg !203
  switch i32 %conv216, label %sw.default225 [
    i32 0, label %sw.bb217
    i32 1, label %sw.bb219
    i32 2, label %sw.bb221
    i32 4, label %sw.bb222
    i32 8, label %sw.bb224
  ], !dbg !204

sw.bb217:                                         ; preds = %if.else215
  %call218 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq(), !dbg !205
  store i32 %call218, i32* %pclk, align 4, !dbg !206
  br label %sw.epilog226, !dbg !207

sw.bb219:                                         ; preds = %if.else215
  %call220 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq(), !dbg !208
  store i32 %call220, i32* %pclk, align 4, !dbg !209
  br label %sw.epilog226, !dbg !210

sw.bb221:                                         ; preds = %if.else215
  store i32 16000000, i32* %pclk, align 4, !dbg !211
  br label %sw.epilog226, !dbg !212

sw.bb222:                                         ; preds = %if.else215
  %call223 = call arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq(), !dbg !213
  store i32 %call223, i32* %pclk, align 4, !dbg !214
  br label %sw.epilog226, !dbg !215

sw.bb224:                                         ; preds = %if.else215
  store i32 32768, i32* %pclk, align 4, !dbg !216
  br label %sw.epilog226, !dbg !217

sw.default225:                                    ; preds = %if.else215
  store i32 0, i32* %pclk, align 4, !dbg !218
  store i8 1, i8* %ret, align 1, !dbg !219
  br label %sw.epilog226, !dbg !220

sw.epilog226:                                     ; preds = %sw.default225, %sw.bb224, %sw.bb222, %sw.bb221, %sw.bb219, %sw.bb217
  %112 = load i32, i32* %pclk, align 4, !dbg !221
  %cmp227 = icmp ne i32 %112, 0, !dbg !222
  br i1 %cmp227, label %if.then229, label %if.end254, !dbg !221

if.then229:                                       ; preds = %sw.epilog226
  %113 = load i32, i32* %pclk, align 4, !dbg !223
  %114 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !223
  %Init230 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %114, i32 0, i32 1, !dbg !223
  %ClockPrescaler231 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init230, i32 0, i32 8, !dbg !223
  %115 = load i32, i32* %ClockPrescaler231, align 4, !dbg !223
  %arrayidx232 = getelementptr inbounds [12 x i16], [12 x i16]* @UARTPrescTable, i32 0, i32 %115, !dbg !223
  %116 = load i16, i16* %arrayidx232, align 2, !dbg !223
  %conv233 = zext i16 %116 to i32, !dbg !223
  %div234 = udiv i32 %113, %conv233, !dbg !223
  %117 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !223
  %Init235 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %117, i32 0, i32 1, !dbg !223
  %BaudRate236 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init235, i32 0, i32 0, !dbg !223
  %118 = load i32, i32* %BaudRate236, align 4, !dbg !223
  %div237 = udiv i32 %118, 2, !dbg !223
  %add238 = add i32 %div234, %div237, !dbg !223
  %119 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !223
  %Init239 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %119, i32 0, i32 1, !dbg !223
  %BaudRate240 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init239, i32 0, i32 0, !dbg !223
  %120 = load i32, i32* %BaudRate240, align 4, !dbg !223
  %div241 = udiv i32 %add238, %120, !dbg !223
  %conv242 = trunc i32 %div241 to i16, !dbg !224
  %conv243 = zext i16 %conv242 to i32, !dbg !224
  store i32 %conv243, i32* %usartdiv, align 4, !dbg !225
  %121 = load i32, i32* %usartdiv, align 4, !dbg !226
  %cmp244 = icmp uge i32 %121, 16, !dbg !227
  br i1 %cmp244, label %land.lhs.true246, label %if.else252, !dbg !228

land.lhs.true246:                                 ; preds = %if.then229
  %122 = load i32, i32* %usartdiv, align 4, !dbg !229
  %cmp247 = icmp ule i32 %122, 65535, !dbg !230
  br i1 %cmp247, label %if.then249, label %if.else252, !dbg !231

if.then249:                                       ; preds = %land.lhs.true246
  %123 = load i32, i32* %usartdiv, align 4, !dbg !232
  %124 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !233
  %Instance250 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %124, i32 0, i32 0, !dbg !234
  %125 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance250, align 4, !dbg !234
  %BRR251 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %125, i32 0, i32 3, !dbg !235
  store volatile i32 %123, i32* %BRR251, align 4, !dbg !236
  br label %if.end253, !dbg !237

if.else252:                                       ; preds = %land.lhs.true246, %if.then229
  store i8 1, i8* %ret, align 1, !dbg !238
  br label %if.end253

if.end253:                                        ; preds = %if.else252, %if.then249
  br label %if.end254, !dbg !239

if.end254:                                        ; preds = %if.end253, %sw.epilog226
  br label %if.end255

if.end255:                                        ; preds = %if.end254, %if.end214
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %if.end159
  %126 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !240
  %NbTxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %126, i32 0, i32 12, !dbg !241
  store i16 1, i16* %NbTxDataToProcess, align 2, !dbg !242
  %127 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !243
  %NbRxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %127, i32 0, i32 11, !dbg !244
  store i16 1, i16* %NbRxDataToProcess, align 4, !dbg !245
  %128 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !246
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %128, i32 0, i32 14, !dbg !247
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !248
  %129 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !249
  %TxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %129, i32 0, i32 15, !dbg !250
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %TxISR, align 4, !dbg !251
  %130 = load i8, i8* %ret, align 1, !dbg !252
  ret i8 %130, !dbg !253
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @UART_AdvFeatureConfig(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !254 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !255
  %AdvancedInit = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 2, !dbg !255
  %AdvFeatureInit = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit, i32 0, i32 0, !dbg !255
  %1 = load i32, i32* %AdvFeatureInit, align 4, !dbg !255
  %and = and i32 %1, 1, !dbg !255
  %cmp = icmp eq i32 %and, 1, !dbg !255
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !256
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 0, !dbg !256
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !256
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 1, !dbg !256
  %4 = load volatile i32, i32* %CR2, align 4, !dbg !256
  %and1 = and i32 %4, -131073, !dbg !256
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !256
  %AdvancedInit2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 2, !dbg !256
  %TxPinLevelInvert = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit2, i32 0, i32 1, !dbg !256
  %6 = load i32, i32* %TxPinLevelInvert, align 4, !dbg !256
  %or = or i32 %and1, %6, !dbg !256
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !256
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !256
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !256
  %CR24 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 1, !dbg !256
  store volatile i32 %or, i32* %CR24, align 4, !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !258
  %AdvancedInit5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 2, !dbg !258
  %AdvFeatureInit6 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit5, i32 0, i32 0, !dbg !258
  %10 = load i32, i32* %AdvFeatureInit6, align 4, !dbg !258
  %and7 = and i32 %10, 2, !dbg !258
  %cmp8 = icmp eq i32 %and7, 2, !dbg !258
  br i1 %cmp8, label %if.then9, label %if.end17, !dbg !258

if.then9:                                         ; preds = %if.end
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !259
  %Instance10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !259
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance10, align 4, !dbg !259
  %CR211 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 1, !dbg !259
  %13 = load volatile i32, i32* %CR211, align 4, !dbg !259
  %and12 = and i32 %13, -65537, !dbg !259
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !259
  %AdvancedInit13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 2, !dbg !259
  %RxPinLevelInvert = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit13, i32 0, i32 2, !dbg !259
  %15 = load i32, i32* %RxPinLevelInvert, align 4, !dbg !259
  %or14 = or i32 %and12, %15, !dbg !259
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !259
  %Instance15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 0, !dbg !259
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance15, align 4, !dbg !259
  %CR216 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 1, !dbg !259
  store volatile i32 %or14, i32* %CR216, align 4, !dbg !259
  br label %if.end17, !dbg !260

if.end17:                                         ; preds = %if.then9, %if.end
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !261
  %AdvancedInit18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 2, !dbg !261
  %AdvFeatureInit19 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit18, i32 0, i32 0, !dbg !261
  %19 = load i32, i32* %AdvFeatureInit19, align 4, !dbg !261
  %and20 = and i32 %19, 4, !dbg !261
  %cmp21 = icmp eq i32 %and20, 4, !dbg !261
  br i1 %cmp21, label %if.then22, label %if.end30, !dbg !261

if.then22:                                        ; preds = %if.end17
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !262
  %Instance23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 0, !dbg !262
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance23, align 4, !dbg !262
  %CR224 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 1, !dbg !262
  %22 = load volatile i32, i32* %CR224, align 4, !dbg !262
  %and25 = and i32 %22, -262145, !dbg !262
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !262
  %AdvancedInit26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 2, !dbg !262
  %DataInvert = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit26, i32 0, i32 3, !dbg !262
  %24 = load i32, i32* %DataInvert, align 4, !dbg !262
  %or27 = or i32 %and25, %24, !dbg !262
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !262
  %Instance28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 0, !dbg !262
  %26 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance28, align 4, !dbg !262
  %CR229 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %26, i32 0, i32 1, !dbg !262
  store volatile i32 %or27, i32* %CR229, align 4, !dbg !262
  br label %if.end30, !dbg !263

if.end30:                                         ; preds = %if.then22, %if.end17
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !264
  %AdvancedInit31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 2, !dbg !264
  %AdvFeatureInit32 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit31, i32 0, i32 0, !dbg !264
  %28 = load i32, i32* %AdvFeatureInit32, align 4, !dbg !264
  %and33 = and i32 %28, 8, !dbg !264
  %cmp34 = icmp eq i32 %and33, 8, !dbg !264
  br i1 %cmp34, label %if.then35, label %if.end43, !dbg !264

if.then35:                                        ; preds = %if.end30
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !265
  %Instance36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !265
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance36, align 4, !dbg !265
  %CR237 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 1, !dbg !265
  %31 = load volatile i32, i32* %CR237, align 4, !dbg !265
  %and38 = and i32 %31, -32769, !dbg !265
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !265
  %AdvancedInit39 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 2, !dbg !265
  %Swap = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit39, i32 0, i32 4, !dbg !265
  %33 = load i32, i32* %Swap, align 4, !dbg !265
  %or40 = or i32 %and38, %33, !dbg !265
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !265
  %Instance41 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 0, !dbg !265
  %35 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance41, align 4, !dbg !265
  %CR242 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %35, i32 0, i32 1, !dbg !265
  store volatile i32 %or40, i32* %CR242, align 4, !dbg !265
  br label %if.end43, !dbg !266

if.end43:                                         ; preds = %if.then35, %if.end30
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !267
  %AdvancedInit44 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 2, !dbg !267
  %AdvFeatureInit45 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit44, i32 0, i32 0, !dbg !267
  %37 = load i32, i32* %AdvFeatureInit45, align 4, !dbg !267
  %and46 = and i32 %37, 16, !dbg !267
  %cmp47 = icmp eq i32 %and46, 16, !dbg !267
  br i1 %cmp47, label %if.then48, label %if.end55, !dbg !267

if.then48:                                        ; preds = %if.end43
  %38 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !268
  %Instance49 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %38, i32 0, i32 0, !dbg !268
  %39 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance49, align 4, !dbg !268
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %39, i32 0, i32 2, !dbg !268
  %40 = load volatile i32, i32* %CR3, align 4, !dbg !268
  %and50 = and i32 %40, -4097, !dbg !268
  %41 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !268
  %AdvancedInit51 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %41, i32 0, i32 2, !dbg !268
  %OverrunDisable = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit51, i32 0, i32 5, !dbg !268
  %42 = load i32, i32* %OverrunDisable, align 4, !dbg !268
  %or52 = or i32 %and50, %42, !dbg !268
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !268
  %Instance53 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 0, !dbg !268
  %44 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance53, align 4, !dbg !268
  %CR354 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %44, i32 0, i32 2, !dbg !268
  store volatile i32 %or52, i32* %CR354, align 4, !dbg !268
  br label %if.end55, !dbg !269

if.end55:                                         ; preds = %if.then48, %if.end43
  %45 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !270
  %AdvancedInit56 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %45, i32 0, i32 2, !dbg !270
  %AdvFeatureInit57 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit56, i32 0, i32 0, !dbg !270
  %46 = load i32, i32* %AdvFeatureInit57, align 4, !dbg !270
  %and58 = and i32 %46, 32, !dbg !270
  %cmp59 = icmp eq i32 %and58, 32, !dbg !270
  br i1 %cmp59, label %if.then60, label %if.end68, !dbg !270

if.then60:                                        ; preds = %if.end55
  %47 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !271
  %Instance61 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %47, i32 0, i32 0, !dbg !271
  %48 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance61, align 4, !dbg !271
  %CR362 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %48, i32 0, i32 2, !dbg !271
  %49 = load volatile i32, i32* %CR362, align 4, !dbg !271
  %and63 = and i32 %49, -8193, !dbg !271
  %50 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !271
  %AdvancedInit64 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %50, i32 0, i32 2, !dbg !271
  %DMADisableonRxError = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit64, i32 0, i32 6, !dbg !271
  %51 = load i32, i32* %DMADisableonRxError, align 4, !dbg !271
  %or65 = or i32 %and63, %51, !dbg !271
  %52 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !271
  %Instance66 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %52, i32 0, i32 0, !dbg !271
  %53 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance66, align 4, !dbg !271
  %CR367 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %53, i32 0, i32 2, !dbg !271
  store volatile i32 %or65, i32* %CR367, align 4, !dbg !271
  br label %if.end68, !dbg !272

if.end68:                                         ; preds = %if.then60, %if.end55
  %54 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !273
  %AdvancedInit69 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %54, i32 0, i32 2, !dbg !273
  %AdvFeatureInit70 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit69, i32 0, i32 0, !dbg !273
  %55 = load i32, i32* %AdvFeatureInit70, align 4, !dbg !273
  %and71 = and i32 %55, 64, !dbg !273
  %cmp72 = icmp eq i32 %and71, 64, !dbg !273
  br i1 %cmp72, label %if.then73, label %if.end93, !dbg !273

if.then73:                                        ; preds = %if.end68
  %56 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !274
  %Instance74 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %56, i32 0, i32 0, !dbg !274
  %57 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance74, align 4, !dbg !274
  %CR275 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %57, i32 0, i32 1, !dbg !274
  %58 = load volatile i32, i32* %CR275, align 4, !dbg !274
  %and76 = and i32 %58, -1048577, !dbg !274
  %59 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !274
  %AdvancedInit77 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %59, i32 0, i32 2, !dbg !274
  %AutoBaudRateEnable = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit77, i32 0, i32 7, !dbg !274
  %60 = load i32, i32* %AutoBaudRateEnable, align 4, !dbg !274
  %or78 = or i32 %and76, %60, !dbg !274
  %61 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !274
  %Instance79 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %61, i32 0, i32 0, !dbg !274
  %62 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance79, align 4, !dbg !274
  %CR280 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %62, i32 0, i32 1, !dbg !274
  store volatile i32 %or78, i32* %CR280, align 4, !dbg !274
  %63 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !275
  %AdvancedInit81 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %63, i32 0, i32 2, !dbg !276
  %AutoBaudRateEnable82 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit81, i32 0, i32 7, !dbg !277
  %64 = load i32, i32* %AutoBaudRateEnable82, align 4, !dbg !277
  %cmp83 = icmp eq i32 %64, 1048576, !dbg !278
  br i1 %cmp83, label %if.then84, label %if.end92, !dbg !275

if.then84:                                        ; preds = %if.then73
  %65 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !279
  %Instance85 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %65, i32 0, i32 0, !dbg !279
  %66 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance85, align 4, !dbg !279
  %CR286 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %66, i32 0, i32 1, !dbg !279
  %67 = load volatile i32, i32* %CR286, align 4, !dbg !279
  %and87 = and i32 %67, -6291457, !dbg !279
  %68 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !279
  %AdvancedInit88 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %68, i32 0, i32 2, !dbg !279
  %AutoBaudRateMode = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit88, i32 0, i32 8, !dbg !279
  %69 = load i32, i32* %AutoBaudRateMode, align 4, !dbg !279
  %or89 = or i32 %and87, %69, !dbg !279
  %70 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !279
  %Instance90 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %70, i32 0, i32 0, !dbg !279
  %71 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance90, align 4, !dbg !279
  %CR291 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %71, i32 0, i32 1, !dbg !279
  store volatile i32 %or89, i32* %CR291, align 4, !dbg !279
  br label %if.end92, !dbg !280

if.end92:                                         ; preds = %if.then84, %if.then73
  br label %if.end93, !dbg !281

if.end93:                                         ; preds = %if.end92, %if.end68
  %72 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !282
  %AdvancedInit94 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %72, i32 0, i32 2, !dbg !282
  %AdvFeatureInit95 = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit94, i32 0, i32 0, !dbg !282
  %73 = load i32, i32* %AdvFeatureInit95, align 4, !dbg !282
  %and96 = and i32 %73, 128, !dbg !282
  %cmp97 = icmp eq i32 %and96, 128, !dbg !282
  br i1 %cmp97, label %if.then98, label %if.end106, !dbg !282

if.then98:                                        ; preds = %if.end93
  %74 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !283
  %Instance99 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %74, i32 0, i32 0, !dbg !283
  %75 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance99, align 4, !dbg !283
  %CR2100 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %75, i32 0, i32 1, !dbg !283
  %76 = load volatile i32, i32* %CR2100, align 4, !dbg !283
  %and101 = and i32 %76, -524289, !dbg !283
  %77 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !283
  %AdvancedInit102 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %77, i32 0, i32 2, !dbg !283
  %MSBFirst = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit102, i32 0, i32 9, !dbg !283
  %78 = load i32, i32* %MSBFirst, align 4, !dbg !283
  %or103 = or i32 %and101, %78, !dbg !283
  %79 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !283
  %Instance104 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %79, i32 0, i32 0, !dbg !283
  %80 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance104, align 4, !dbg !283
  %CR2105 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %80, i32 0, i32 1, !dbg !283
  store volatile i32 %or103, i32* %CR2105, align 4, !dbg !283
  br label %if.end106, !dbg !284

if.end106:                                        ; preds = %if.then98, %if.end93
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !286 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tickstart = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !287
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 21, !dbg !288
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !289
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !290
  store i32 %call, i32* %tickstart, align 4, !dbg !291
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !292
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 0, !dbg !293
  %2 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !293
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %2, i32 0, i32 0, !dbg !294
  %3 = load volatile i32, i32* %CR1, align 4, !dbg !294
  %and = and i32 %3, 8, !dbg !295
  %cmp = icmp eq i32 %and, 8, !dbg !296
  br i1 %cmp, label %if.then, label %if.end5, !dbg !297

if.then:                                          ; preds = %entry
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !298
  %5 = load i32, i32* %tickstart, align 4, !dbg !299
  %call1 = call arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* %4, i32 2097152, i8 zeroext 0, i32 %5, i32 33554431), !dbg !300
  %conv = zext i8 %call1 to i32, !dbg !300
  %cmp2 = icmp ne i32 %conv, 0, !dbg !301
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !300

if.then4:                                         ; preds = %if.then
  store i8 3, i8* %retval, align 1, !dbg !302
  br label %return, !dbg !302

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !303

if.end5:                                          ; preds = %if.end, %entry
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !304
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !305
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !305
  %CR17 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 0, !dbg !306
  %8 = load volatile i32, i32* %CR17, align 4, !dbg !306
  %and8 = and i32 %8, 4, !dbg !307
  %cmp9 = icmp eq i32 %and8, 4, !dbg !308
  br i1 %cmp9, label %if.then11, label %if.end18, !dbg !309

if.then11:                                        ; preds = %if.end5
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !310
  %10 = load i32, i32* %tickstart, align 4, !dbg !311
  %call12 = call arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* %9, i32 4194304, i8 zeroext 0, i32 %10, i32 33554431), !dbg !312
  %conv13 = zext i8 %call12 to i32, !dbg !312
  %cmp14 = icmp ne i32 %conv13, 0, !dbg !313
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !312

if.then16:                                        ; preds = %if.then11
  store i8 3, i8* %retval, align 1, !dbg !314
  br label %return, !dbg !314

if.end17:                                         ; preds = %if.then11
  br label %if.end18, !dbg !315

if.end18:                                         ; preds = %if.end17, %if.end5
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !316
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 19, !dbg !317
  store volatile i32 32, i32* %gState, align 4, !dbg !318
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !319
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 20, !dbg !320
  store volatile i32 32, i32* %RxState, align 4, !dbg !321
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !322
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 13, !dbg !323
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !324
  br label %do.body, !dbg !325

do.body:                                          ; preds = %if.end18
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !325
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 18, !dbg !325
  store i8 0, i8* %Lock, align 4, !dbg !325
  br label %do.end, !dbg !325

do.end:                                           ; preds = %do.body
  store i8 0, i8* %retval, align 1, !dbg !326
  br label %return, !dbg !326

return:                                           ; preds = %do.end, %if.then16, %if.then4
  %15 = load i8, i8* %retval, align 1, !dbg !327
  ret i8 %15, !dbg !327
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_HalfDuplex_Init(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !328 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !329
  %cmp = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !330
  br i1 %cmp, label %if.then, label %if.end, !dbg !329

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !331
  br label %return, !dbg !331

if.end:                                           ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !332
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 19, !dbg !333
  %2 = load volatile i32, i32* %gState, align 4, !dbg !333
  %cmp1 = icmp eq i32 %2, 0, !dbg !334
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !332

if.then2:                                         ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !335
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 18, !dbg !336
  store i8 0, i8* %Lock, align 4, !dbg !337
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !338
  call arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* %4), !dbg !339
  br label %if.end3, !dbg !340

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !341
  %gState4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 19, !dbg !342
  store volatile i32 36, i32* %gState4, align 4, !dbg !343
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !344
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !344
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !344
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 0, !dbg !344
  %8 = load volatile i32, i32* %CR1, align 4, !dbg !344
  %and = and i32 %8, -2, !dbg !344
  store volatile i32 %and, i32* %CR1, align 4, !dbg !344
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !345
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_SetConfig(%struct.__UART_HandleTypeDef* %9), !dbg !346
  %conv = zext i8 %call to i32, !dbg !346
  %cmp5 = icmp eq i32 %conv, 1, !dbg !347
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !346

if.then7:                                         ; preds = %if.end3
  store i8 1, i8* %retval, align 1, !dbg !348
  br label %return, !dbg !348

if.end8:                                          ; preds = %if.end3
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !349
  %AdvancedInit = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 2, !dbg !350
  %AdvFeatureInit = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit, i32 0, i32 0, !dbg !351
  %11 = load i32, i32* %AdvFeatureInit, align 4, !dbg !351
  %cmp9 = icmp ne i32 %11, 0, !dbg !352
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !349

if.then11:                                        ; preds = %if.end8
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !353
  call arm_aapcs_vfpcc void @UART_AdvFeatureConfig(%struct.__UART_HandleTypeDef* %12), !dbg !354
  br label %if.end12, !dbg !355

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !356
  %Instance13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !356
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance13, align 4, !dbg !356
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 1, !dbg !356
  %15 = load volatile i32, i32* %CR2, align 4, !dbg !356
  %and14 = and i32 %15, -18433, !dbg !356
  store volatile i32 %and14, i32* %CR2, align 4, !dbg !356
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !357
  %Instance15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 0, !dbg !357
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance15, align 4, !dbg !357
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 2, !dbg !357
  %18 = load volatile i32, i32* %CR3, align 4, !dbg !357
  %and16 = and i32 %18, -35, !dbg !357
  store volatile i32 %and16, i32* %CR3, align 4, !dbg !357
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !358
  %Instance17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 0, !dbg !358
  %20 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance17, align 4, !dbg !358
  %CR318 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %20, i32 0, i32 2, !dbg !358
  %21 = load volatile i32, i32* %CR318, align 4, !dbg !358
  %or = or i32 %21, 8, !dbg !358
  store volatile i32 %or, i32* %CR318, align 4, !dbg !358
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !359
  %Instance19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 0, !dbg !359
  %23 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance19, align 4, !dbg !359
  %CR120 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 0, !dbg !359
  %24 = load volatile i32, i32* %CR120, align 4, !dbg !359
  %or21 = or i32 %24, 1, !dbg !359
  store volatile i32 %or21, i32* %CR120, align 4, !dbg !359
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !360
  %call22 = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %25), !dbg !361
  store i8 %call22, i8* %retval, align 1, !dbg !362
  br label %return, !dbg !362

return:                                           ; preds = %if.end12, %if.then7, %if.then
  %26 = load i8, i8* %retval, align 1, !dbg !363
  ret i8 %26, !dbg !363
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_LIN_Init(%struct.__UART_HandleTypeDef* %huart, i32 %BreakDetectLength) #0 !dbg !364 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %BreakDetectLength.addr = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 %BreakDetectLength, i32* %BreakDetectLength.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !365
  %cmp = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !366
  br i1 %cmp, label %if.then, label %if.end, !dbg !365

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !367
  br label %return, !dbg !367

if.end:                                           ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !368
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 1, !dbg !369
  %OverSampling = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 6, !dbg !370
  %2 = load i32, i32* %OverSampling, align 4, !dbg !370
  %cmp1 = icmp eq i32 %2, 32768, !dbg !371
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !368

if.then2:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !372
  br label %return, !dbg !372

if.end3:                                          ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !373
  %Init4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 1, !dbg !374
  %WordLength = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init4, i32 0, i32 1, !dbg !375
  %4 = load i32, i32* %WordLength, align 4, !dbg !375
  %cmp5 = icmp ne i32 %4, 0, !dbg !376
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !373

if.then6:                                         ; preds = %if.end3
  store i8 1, i8* %retval, align 1, !dbg !377
  br label %return, !dbg !377

if.end7:                                          ; preds = %if.end3
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !378
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 19, !dbg !379
  %6 = load volatile i32, i32* %gState, align 4, !dbg !379
  %cmp8 = icmp eq i32 %6, 0, !dbg !380
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !378

if.then9:                                         ; preds = %if.end7
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !381
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 18, !dbg !382
  store i8 0, i8* %Lock, align 4, !dbg !383
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !384
  call arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* %8), !dbg !385
  br label %if.end10, !dbg !386

if.end10:                                         ; preds = %if.then9, %if.end7
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !387
  %gState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 19, !dbg !388
  store volatile i32 36, i32* %gState11, align 4, !dbg !389
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !390
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !390
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !390
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 0, !dbg !390
  %12 = load volatile i32, i32* %CR1, align 4, !dbg !390
  %and = and i32 %12, -2, !dbg !390
  store volatile i32 %and, i32* %CR1, align 4, !dbg !390
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !391
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_SetConfig(%struct.__UART_HandleTypeDef* %13), !dbg !392
  %conv = zext i8 %call to i32, !dbg !392
  %cmp12 = icmp eq i32 %conv, 1, !dbg !393
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !392

if.then14:                                        ; preds = %if.end10
  store i8 1, i8* %retval, align 1, !dbg !394
  br label %return, !dbg !394

if.end15:                                         ; preds = %if.end10
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !395
  %AdvancedInit = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 2, !dbg !396
  %AdvFeatureInit = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit, i32 0, i32 0, !dbg !397
  %15 = load i32, i32* %AdvFeatureInit, align 4, !dbg !397
  %cmp16 = icmp ne i32 %15, 0, !dbg !398
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !395

if.then18:                                        ; preds = %if.end15
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !399
  call arm_aapcs_vfpcc void @UART_AdvFeatureConfig(%struct.__UART_HandleTypeDef* %16), !dbg !400
  br label %if.end19, !dbg !401

if.end19:                                         ; preds = %if.then18, %if.end15
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !402
  %Instance20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 0, !dbg !402
  %18 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance20, align 4, !dbg !402
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %18, i32 0, i32 1, !dbg !402
  %19 = load volatile i32, i32* %CR2, align 4, !dbg !402
  %and21 = and i32 %19, -2049, !dbg !402
  store volatile i32 %and21, i32* %CR2, align 4, !dbg !402
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !403
  %Instance22 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 0, !dbg !403
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance22, align 4, !dbg !403
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 2, !dbg !403
  %22 = load volatile i32, i32* %CR3, align 4, !dbg !403
  %and23 = and i32 %22, -43, !dbg !403
  store volatile i32 %and23, i32* %CR3, align 4, !dbg !403
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !404
  %Instance24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 0, !dbg !404
  %24 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance24, align 4, !dbg !404
  %CR225 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %24, i32 0, i32 1, !dbg !404
  %25 = load volatile i32, i32* %CR225, align 4, !dbg !404
  %or = or i32 %25, 16384, !dbg !404
  store volatile i32 %or, i32* %CR225, align 4, !dbg !404
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !405
  %Instance26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 0, !dbg !405
  %27 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance26, align 4, !dbg !405
  %CR227 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %27, i32 0, i32 1, !dbg !405
  %28 = load volatile i32, i32* %CR227, align 4, !dbg !405
  %and28 = and i32 %28, -33, !dbg !405
  %29 = load i32, i32* %BreakDetectLength.addr, align 4, !dbg !405
  %or29 = or i32 %and28, %29, !dbg !405
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !405
  %Instance30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 0, !dbg !405
  %31 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance30, align 4, !dbg !405
  %CR231 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %31, i32 0, i32 1, !dbg !405
  store volatile i32 %or29, i32* %CR231, align 4, !dbg !405
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !406
  %Instance32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 0, !dbg !406
  %33 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance32, align 4, !dbg !406
  %CR133 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 0, !dbg !406
  %34 = load volatile i32, i32* %CR133, align 4, !dbg !406
  %or34 = or i32 %34, 1, !dbg !406
  store volatile i32 %or34, i32* %CR133, align 4, !dbg !406
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !407
  %call35 = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %35), !dbg !408
  store i8 %call35, i8* %retval, align 1, !dbg !409
  br label %return, !dbg !409

return:                                           ; preds = %if.end19, %if.then14, %if.then6, %if.then2, %if.then
  %36 = load i8, i8* %retval, align 1, !dbg !410
  ret i8 %36, !dbg !410
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_MultiProcessor_Init(%struct.__UART_HandleTypeDef* %huart, i8 zeroext %Address, i32 %WakeUpMethod) #0 !dbg !411 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %Address.addr = alloca i8, align 1
  %WakeUpMethod.addr = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8 %Address, i8* %Address.addr, align 1
  store i32 %WakeUpMethod, i32* %WakeUpMethod.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !412
  %cmp = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !413
  br i1 %cmp, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !414
  br label %return, !dbg !414

if.end:                                           ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !415
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 19, !dbg !416
  %2 = load volatile i32, i32* %gState, align 4, !dbg !416
  %cmp1 = icmp eq i32 %2, 0, !dbg !417
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !415

if.then2:                                         ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !418
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 18, !dbg !419
  store i8 0, i8* %Lock, align 4, !dbg !420
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !421
  call arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* %4), !dbg !422
  br label %if.end3, !dbg !423

if.end3:                                          ; preds = %if.then2, %if.end
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !424
  %gState4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 19, !dbg !425
  store volatile i32 36, i32* %gState4, align 4, !dbg !426
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !427
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !427
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !427
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 0, !dbg !427
  %8 = load volatile i32, i32* %CR1, align 4, !dbg !427
  %and = and i32 %8, -2, !dbg !427
  store volatile i32 %and, i32* %CR1, align 4, !dbg !427
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !428
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_SetConfig(%struct.__UART_HandleTypeDef* %9), !dbg !429
  %conv = zext i8 %call to i32, !dbg !429
  %cmp5 = icmp eq i32 %conv, 1, !dbg !430
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !429

if.then7:                                         ; preds = %if.end3
  store i8 1, i8* %retval, align 1, !dbg !431
  br label %return, !dbg !431

if.end8:                                          ; preds = %if.end3
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !432
  %AdvancedInit = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 2, !dbg !433
  %AdvFeatureInit = getelementptr inbounds %struct.UART_AdvFeatureInitTypeDef, %struct.UART_AdvFeatureInitTypeDef* %AdvancedInit, i32 0, i32 0, !dbg !434
  %11 = load i32, i32* %AdvFeatureInit, align 4, !dbg !434
  %cmp9 = icmp ne i32 %11, 0, !dbg !435
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !432

if.then11:                                        ; preds = %if.end8
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !436
  call arm_aapcs_vfpcc void @UART_AdvFeatureConfig(%struct.__UART_HandleTypeDef* %12), !dbg !437
  br label %if.end12, !dbg !438

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !439
  %Instance13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !439
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance13, align 4, !dbg !439
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 1, !dbg !439
  %15 = load volatile i32, i32* %CR2, align 4, !dbg !439
  %and14 = and i32 %15, -18433, !dbg !439
  store volatile i32 %and14, i32* %CR2, align 4, !dbg !439
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !440
  %Instance15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 0, !dbg !440
  %17 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance15, align 4, !dbg !440
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %17, i32 0, i32 2, !dbg !440
  %18 = load volatile i32, i32* %CR3, align 4, !dbg !440
  %and16 = and i32 %18, -43, !dbg !440
  store volatile i32 %and16, i32* %CR3, align 4, !dbg !440
  %19 = load i32, i32* %WakeUpMethod.addr, align 4, !dbg !441
  %cmp17 = icmp eq i32 %19, 2048, !dbg !442
  br i1 %cmp17, label %if.then19, label %if.end26, !dbg !441

if.then19:                                        ; preds = %if.end12
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !443
  %Instance20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 0, !dbg !443
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance20, align 4, !dbg !443
  %CR221 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 1, !dbg !443
  %22 = load volatile i32, i32* %CR221, align 4, !dbg !443
  %and22 = and i32 %22, 16777215, !dbg !443
  %23 = load i8, i8* %Address.addr, align 1, !dbg !443
  %conv23 = zext i8 %23 to i32, !dbg !443
  %shl = shl i32 %conv23, 24, !dbg !443
  %or = or i32 %and22, %shl, !dbg !443
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !443
  %Instance24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 0, !dbg !443
  %25 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance24, align 4, !dbg !443
  %CR225 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %25, i32 0, i32 1, !dbg !443
  store volatile i32 %or, i32* %CR225, align 4, !dbg !443
  br label %if.end26, !dbg !444

if.end26:                                         ; preds = %if.then19, %if.end12
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !445
  %Instance27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 0, !dbg !445
  %27 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance27, align 4, !dbg !445
  %CR128 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %27, i32 0, i32 0, !dbg !445
  %28 = load volatile i32, i32* %CR128, align 4, !dbg !445
  %and29 = and i32 %28, -2049, !dbg !445
  %29 = load i32, i32* %WakeUpMethod.addr, align 4, !dbg !445
  %or30 = or i32 %and29, %29, !dbg !445
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !445
  %Instance31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 0, !dbg !445
  %31 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance31, align 4, !dbg !445
  %CR132 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %31, i32 0, i32 0, !dbg !445
  store volatile i32 %or30, i32* %CR132, align 4, !dbg !445
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !446
  %Instance33 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 0, !dbg !446
  %33 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance33, align 4, !dbg !446
  %CR134 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 0, !dbg !446
  %34 = load volatile i32, i32* %CR134, align 4, !dbg !446
  %or35 = or i32 %34, 1, !dbg !446
  store volatile i32 %or35, i32* %CR134, align 4, !dbg !446
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !447
  %call36 = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %35), !dbg !448
  store i8 %call36, i8* %retval, align 1, !dbg !449
  br label %return, !dbg !449

return:                                           ; preds = %if.end26, %if.then7, %if.then
  %36 = load i8, i8* %retval, align 1, !dbg !450
  ret i8 %36, !dbg !450
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_DeInit(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !451 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !452
  %cmp = icmp eq %struct.__UART_HandleTypeDef* %0, null, !dbg !453
  br i1 %cmp, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !454
  br label %return, !dbg !454

if.end:                                           ; preds = %entry
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !455
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 19, !dbg !456
  store volatile i32 36, i32* %gState, align 4, !dbg !457
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !458
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 0, !dbg !458
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !458
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 0, !dbg !458
  %4 = load volatile i32, i32* %CR1, align 4, !dbg !458
  %and = and i32 %4, -2, !dbg !458
  store volatile i32 %and, i32* %CR1, align 4, !dbg !458
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !459
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 0, !dbg !460
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !460
  %CR12 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 0, !dbg !461
  store volatile i32 0, i32* %CR12, align 4, !dbg !462
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !463
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !464
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !464
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 1, !dbg !465
  store volatile i32 0, i32* %CR2, align 4, !dbg !466
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !467
  %Instance4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 0, !dbg !468
  %10 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance4, align 4, !dbg !468
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %10, i32 0, i32 2, !dbg !469
  store volatile i32 0, i32* %CR3, align 4, !dbg !470
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !471
  call arm_aapcs_vfpcc void @HAL_UART_MspDeInit(%struct.__UART_HandleTypeDef* %11), !dbg !472
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !473
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 21, !dbg !474
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !475
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !476
  %gState5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 19, !dbg !477
  store volatile i32 0, i32* %gState5, align 4, !dbg !478
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !479
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 20, !dbg !480
  store volatile i32 0, i32* %RxState, align 4, !dbg !481
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !482
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 13, !dbg !483
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !484
  br label %do.body, !dbg !485

do.body:                                          ; preds = %if.end
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !485
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 18, !dbg !485
  store i8 0, i8* %Lock, align 4, !dbg !485
  br label %do.end, !dbg !485

do.end:                                           ; preds = %do.body
  store i8 0, i8* %retval, align 1, !dbg !486
  br label %return, !dbg !486

return:                                           ; preds = %do.end, %if.then
  %17 = load i8, i8* %retval, align 1, !dbg !487
  ret i8 %17, !dbg !487
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_MspDeInit(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !488 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !489
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Transmit(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size, i32 %Timeout) #0 !dbg !491 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  %Timeout.addr = alloca i32, align 4
  %pdata8bits = alloca i8*, align 4
  %pdata16bits = alloca i16*, align 4
  %tickstart = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  store i32 %Timeout, i32* %Timeout.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !492
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !493
  %1 = load volatile i32, i32* %gState, align 4, !dbg !493
  %cmp = icmp eq i32 %1, 32, !dbg !494
  br i1 %cmp, label %if.then, label %if.else56, !dbg !492

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !495
  %cmp1 = icmp eq i8* %2, null, !dbg !496
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !497

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !498
  %conv = zext i16 %3 to i32, !dbg !498
  %cmp2 = icmp eq i32 %conv, 0, !dbg !499
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !500

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !501
  br label %return, !dbg !501

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !502

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !502
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !502
  %5 = load i8, i8* %Lock, align 4, !dbg !502
  %conv5 = zext i8 %5 to i32, !dbg !502
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !502
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !502

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !502
  br label %return, !dbg !502

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !502
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !502
  store i8 1, i8* %Lock9, align 4, !dbg !502
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !502

do.end:                                           ; preds = %if.end10
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !503
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 21, !dbg !504
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !505
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !506
  %gState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 19, !dbg !507
  store volatile i32 33, i32* %gState11, align 4, !dbg !508
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !509
  store i32 %call, i32* %tickstart, align 4, !dbg !510
  %9 = load i16, i16* %Size.addr, align 2, !dbg !511
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !512
  %TxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 4, !dbg !513
  store i16 %9, i16* %TxXferSize, align 4, !dbg !514
  %11 = load i16, i16* %Size.addr, align 2, !dbg !515
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !516
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 5, !dbg !517
  store volatile i16 %11, i16* %TxXferCount, align 2, !dbg !518
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !519
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 1, !dbg !520
  %WordLength = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 1, !dbg !521
  %14 = load i32, i32* %WordLength, align 4, !dbg !521
  %cmp12 = icmp eq i32 %14, 4096, !dbg !522
  br i1 %cmp12, label %land.lhs.true, label %if.else18, !dbg !523

land.lhs.true:                                    ; preds = %do.end
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !524
  %Init14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 1, !dbg !525
  %Parity = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init14, i32 0, i32 3, !dbg !526
  %16 = load i32, i32* %Parity, align 4, !dbg !526
  %cmp15 = icmp eq i32 %16, 0, !dbg !527
  br i1 %cmp15, label %if.then17, label %if.else18, !dbg !528

if.then17:                                        ; preds = %land.lhs.true
  store i8* null, i8** %pdata8bits, align 4, !dbg !529
  %17 = load i8*, i8** %pData.addr, align 4, !dbg !530
  %18 = bitcast i8* %17 to i16*, !dbg !531
  store i16* %18, i16** %pdata16bits, align 4, !dbg !532
  br label %if.end19, !dbg !533

if.else18:                                        ; preds = %land.lhs.true, %do.end
  %19 = load i8*, i8** %pData.addr, align 4, !dbg !534
  store i8* %19, i8** %pdata8bits, align 4, !dbg !535
  store i16* null, i16** %pdata16bits, align 4, !dbg !536
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  br label %do.body20, !dbg !537

do.body20:                                        ; preds = %if.end19
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !537
  %Lock21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 18, !dbg !537
  store i8 0, i8* %Lock21, align 4, !dbg !537
  br label %do.end22, !dbg !537

do.end22:                                         ; preds = %do.body20
  br label %while.cond, !dbg !538

while.cond:                                       ; preds = %if.end47, %do.end22
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !539
  %TxXferCount23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 5, !dbg !540
  %22 = load volatile i16, i16* %TxXferCount23, align 2, !dbg !540
  %conv24 = zext i16 %22 to i32, !dbg !539
  %cmp25 = icmp ugt i32 %conv24, 0, !dbg !541
  br i1 %cmp25, label %while.body, label %while.end, !dbg !538

while.body:                                       ; preds = %while.cond
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !542
  %24 = load i32, i32* %tickstart, align 4, !dbg !543
  %25 = load i32, i32* %Timeout.addr, align 4, !dbg !544
  %call27 = call arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* %23, i32 128, i8 zeroext 0, i32 %24, i32 %25), !dbg !545
  %conv28 = zext i8 %call27 to i32, !dbg !545
  %cmp29 = icmp ne i32 %conv28, 0, !dbg !546
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !545

if.then31:                                        ; preds = %while.body
  store i8 3, i8* %retval, align 1, !dbg !547
  br label %return, !dbg !547

if.end32:                                         ; preds = %while.body
  %26 = load i8*, i8** %pdata8bits, align 4, !dbg !548
  %cmp33 = icmp eq i8* %26, null, !dbg !549
  br i1 %cmp33, label %if.then35, label %if.else39, !dbg !548

if.then35:                                        ; preds = %if.end32
  %27 = load i16*, i16** %pdata16bits, align 4, !dbg !550
  %28 = load i16, i16* %27, align 2, !dbg !551
  %conv36 = zext i16 %28 to i32, !dbg !551
  %and = and i32 %conv36, 511, !dbg !552
  %conv37 = trunc i32 %and to i16, !dbg !553
  %conv38 = zext i16 %conv37 to i32, !dbg !553
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !554
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !555
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !555
  %TDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 10, !dbg !556
  store volatile i32 %conv38, i32* %TDR, align 4, !dbg !557
  %31 = load i16*, i16** %pdata16bits, align 4, !dbg !558
  %incdec.ptr = getelementptr inbounds i16, i16* %31, i32 1, !dbg !558
  store i16* %incdec.ptr, i16** %pdata16bits, align 4, !dbg !558
  br label %if.end47, !dbg !559

if.else39:                                        ; preds = %if.end32
  %32 = load i8*, i8** %pdata8bits, align 4, !dbg !560
  %33 = load i8, i8* %32, align 1, !dbg !561
  %conv40 = zext i8 %33 to i32, !dbg !561
  %and41 = and i32 %conv40, 255, !dbg !562
  %conv42 = trunc i32 %and41 to i8, !dbg !563
  %conv43 = zext i8 %conv42 to i32, !dbg !563
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !564
  %Instance44 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 0, !dbg !565
  %35 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance44, align 4, !dbg !565
  %TDR45 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %35, i32 0, i32 10, !dbg !566
  store volatile i32 %conv43, i32* %TDR45, align 4, !dbg !567
  %36 = load i8*, i8** %pdata8bits, align 4, !dbg !568
  %incdec.ptr46 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !568
  store i8* %incdec.ptr46, i8** %pdata8bits, align 4, !dbg !568
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.then35
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !569
  %TxXferCount48 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 5, !dbg !570
  %38 = load volatile i16, i16* %TxXferCount48, align 2, !dbg !571
  %dec = add i16 %38, -1, !dbg !571
  store volatile i16 %dec, i16* %TxXferCount48, align 2, !dbg !571
  br label %while.cond, !dbg !538, !llvm.loop !572

while.end:                                        ; preds = %while.cond
  %39 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !574
  %40 = load i32, i32* %tickstart, align 4, !dbg !575
  %41 = load i32, i32* %Timeout.addr, align 4, !dbg !576
  %call49 = call arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* %39, i32 64, i8 zeroext 0, i32 %40, i32 %41), !dbg !577
  %conv50 = zext i8 %call49 to i32, !dbg !577
  %cmp51 = icmp ne i32 %conv50, 0, !dbg !578
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !577

if.then53:                                        ; preds = %while.end
  store i8 3, i8* %retval, align 1, !dbg !579
  br label %return, !dbg !579

if.end54:                                         ; preds = %while.end
  %42 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !580
  %gState55 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %42, i32 0, i32 19, !dbg !581
  store volatile i32 32, i32* %gState55, align 4, !dbg !582
  store i8 0, i8* %retval, align 1, !dbg !583
  br label %return, !dbg !583

if.else56:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !584
  br label %return, !dbg !584

return:                                           ; preds = %if.else56, %if.end54, %if.then53, %if.then31, %if.then8, %if.then4
  %43 = load i8, i8* %retval, align 1, !dbg !585
  ret i8 %43, !dbg !585
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* %huart, i32 %Flag, i8 zeroext %Status, i32 %Tickstart, i32 %Timeout) #0 !dbg !586 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %Flag.addr = alloca i32, align 4
  %Status.addr = alloca i8, align 1
  %Tickstart.addr = alloca i32, align 4
  %Timeout.addr = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  store i8 %Status, i8* %Status.addr, align 1
  store i32 %Tickstart, i32* %Tickstart.addr, align 4
  store i32 %Timeout, i32* %Timeout.addr, align 4
  br label %while.cond, !dbg !587

while.cond:                                       ; preds = %if.end42, %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !588
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !588
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !588
  %ISR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 7, !dbg !588
  %2 = load volatile i32, i32* %ISR, align 4, !dbg !588
  %3 = load i32, i32* %Flag.addr, align 4, !dbg !588
  %and = and i32 %2, %3, !dbg !588
  %4 = load i32, i32* %Flag.addr, align 4, !dbg !588
  %cmp = icmp eq i32 %and, %4, !dbg !588
  %5 = zext i1 %cmp to i64, !dbg !588
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !588
  %6 = load i8, i8* %Status.addr, align 1, !dbg !589
  %conv = zext i8 %6 to i32, !dbg !589
  %cmp1 = icmp eq i32 %cond, %conv, !dbg !590
  br i1 %cmp1, label %while.body, label %while.end, !dbg !587

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %Timeout.addr, align 4, !dbg !591
  %cmp3 = icmp ne i32 %7, -1, !dbg !592
  br i1 %cmp3, label %if.then, label %if.end42, !dbg !591

if.then:                                          ; preds = %while.body
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !593
  %8 = load i32, i32* %Tickstart.addr, align 4, !dbg !594
  %sub = sub i32 %call, %8, !dbg !595
  %9 = load i32, i32* %Timeout.addr, align 4, !dbg !596
  %cmp5 = icmp ugt i32 %sub, %9, !dbg !597
  br i1 %cmp5, label %if.then9, label %lor.lhs.false, !dbg !598

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %Timeout.addr, align 4, !dbg !599
  %cmp7 = icmp eq i32 %10, 0, !dbg !600
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !601

if.then9:                                         ; preds = %lor.lhs.false, %if.then
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !602
  %Instance10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !602
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance10, align 4, !dbg !602
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 0, !dbg !602
  %13 = load volatile i32, i32* %CR1, align 4, !dbg !602
  %and11 = and i32 %13, -417, !dbg !602
  store volatile i32 %and11, i32* %CR1, align 4, !dbg !602
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !603
  %Instance12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !603
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance12, align 4, !dbg !603
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 2, !dbg !603
  %16 = load volatile i32, i32* %CR3, align 4, !dbg !603
  %and13 = and i32 %16, -2, !dbg !603
  store volatile i32 %and13, i32* %CR3, align 4, !dbg !603
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !604
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 19, !dbg !605
  store volatile i32 32, i32* %gState, align 4, !dbg !606
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !607
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 20, !dbg !608
  store volatile i32 32, i32* %RxState, align 4, !dbg !609
  br label %do.body, !dbg !610

do.body:                                          ; preds = %if.then9
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !610
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 18, !dbg !610
  store i8 0, i8* %Lock, align 4, !dbg !610
  br label %do.end, !dbg !610

do.end:                                           ; preds = %do.body
  store i8 3, i8* %retval, align 1, !dbg !611
  br label %return, !dbg !611

if.end:                                           ; preds = %lor.lhs.false
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !612
  %Instance14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 0, !dbg !612
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance14, align 4, !dbg !612
  %CR115 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 0, !dbg !612
  %22 = load volatile i32, i32* %CR115, align 4, !dbg !612
  %and16 = and i32 %22, 4, !dbg !612
  %cmp17 = icmp ne i32 %and16, 0, !dbg !613
  br i1 %cmp17, label %if.then19, label %if.end41, !dbg !612

if.then19:                                        ; preds = %if.end
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !614
  %Instance20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 0, !dbg !614
  %24 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance20, align 4, !dbg !614
  %ISR21 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %24, i32 0, i32 7, !dbg !614
  %25 = load volatile i32, i32* %ISR21, align 4, !dbg !614
  %and22 = and i32 %25, 2048, !dbg !614
  %cmp23 = icmp eq i32 %and22, 2048, !dbg !614
  %conv24 = zext i1 %cmp23 to i32, !dbg !614
  %cmp25 = icmp eq i32 %conv24, 1, !dbg !615
  br i1 %cmp25, label %if.then27, label %if.end40, !dbg !614

if.then27:                                        ; preds = %if.then19
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !616
  %Instance28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 0, !dbg !616
  %27 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance28, align 4, !dbg !616
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %27, i32 0, i32 8, !dbg !616
  store volatile i32 2048, i32* %ICR, align 4, !dbg !616
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !617
  %Instance29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 0, !dbg !617
  %29 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance29, align 4, !dbg !617
  %CR130 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %29, i32 0, i32 0, !dbg !617
  %30 = load volatile i32, i32* %CR130, align 4, !dbg !617
  %and31 = and i32 %30, -417, !dbg !617
  store volatile i32 %and31, i32* %CR130, align 4, !dbg !617
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !618
  %Instance32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 0, !dbg !618
  %32 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance32, align 4, !dbg !618
  %CR333 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %32, i32 0, i32 2, !dbg !618
  %33 = load volatile i32, i32* %CR333, align 4, !dbg !618
  %and34 = and i32 %33, -2, !dbg !618
  store volatile i32 %and34, i32* %CR333, align 4, !dbg !618
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !619
  %gState35 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 19, !dbg !620
  store volatile i32 32, i32* %gState35, align 4, !dbg !621
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !622
  %RxState36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 20, !dbg !623
  store volatile i32 32, i32* %RxState36, align 4, !dbg !624
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !625
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 21, !dbg !626
  store volatile i32 32, i32* %ErrorCode, align 4, !dbg !627
  br label %do.body37, !dbg !628

do.body37:                                        ; preds = %if.then27
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !628
  %Lock38 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 18, !dbg !628
  store i8 0, i8* %Lock38, align 4, !dbg !628
  br label %do.end39, !dbg !628

do.end39:                                         ; preds = %do.body37
  store i8 3, i8* %retval, align 1, !dbg !629
  br label %return, !dbg !629

if.end40:                                         ; preds = %if.then19
  br label %if.end41, !dbg !630

if.end41:                                         ; preds = %if.end40, %if.end
  br label %if.end42, !dbg !631

if.end42:                                         ; preds = %if.end41, %while.body
  br label %while.cond, !dbg !587, !llvm.loop !632

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %retval, align 1, !dbg !634
  br label %return, !dbg !634

return:                                           ; preds = %while.end, %do.end39, %do.end
  %38 = load i8, i8* %retval, align 1, !dbg !635
  ret i8 %38, !dbg !635
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Receive(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size, i32 %Timeout) #0 !dbg !636 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  %Timeout.addr = alloca i32, align 4
  %pdata8bits = alloca i8*, align 4
  %pdata16bits = alloca i16*, align 4
  %uhMask = alloca i16, align 2
  %tickstart = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  store i32 %Timeout, i32* %Timeout.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !637
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 20, !dbg !638
  %1 = load volatile i32, i32* %RxState, align 4, !dbg !638
  %cmp = icmp eq i32 %1, 32, !dbg !639
  br i1 %cmp, label %if.then, label %if.else100, !dbg !637

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !640
  %cmp1 = icmp eq i8* %2, null, !dbg !641
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !642

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !643
  %conv = zext i16 %3 to i32, !dbg !643
  %cmp2 = icmp eq i32 %conv, 0, !dbg !644
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !645

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !646
  br label %return, !dbg !646

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !647

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !647
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !647
  %5 = load i8, i8* %Lock, align 4, !dbg !647
  %conv5 = zext i8 %5 to i32, !dbg !647
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !647
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !647

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !647
  br label %return, !dbg !647

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !647
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !647
  store i8 1, i8* %Lock9, align 4, !dbg !647
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !647

do.end:                                           ; preds = %if.end10
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !648
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 21, !dbg !649
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !650
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !651
  %RxState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 20, !dbg !652
  store volatile i32 34, i32* %RxState11, align 4, !dbg !653
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !654
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 13, !dbg !655
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !656
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !657
  store i32 %call, i32* %tickstart, align 4, !dbg !658
  %10 = load i16, i16* %Size.addr, align 2, !dbg !659
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !660
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 7, !dbg !661
  store i16 %10, i16* %RxXferSize, align 4, !dbg !662
  %12 = load i16, i16* %Size.addr, align 2, !dbg !663
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !664
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 8, !dbg !665
  store volatile i16 %12, i16* %RxXferCount, align 2, !dbg !666
  br label %do.body12, !dbg !667

do.body12:                                        ; preds = %do.end
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 1, !dbg !667
  %WordLength = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 1, !dbg !667
  %15 = load i32, i32* %WordLength, align 4, !dbg !667
  %cmp13 = icmp eq i32 %15, 4096, !dbg !667
  br i1 %cmp13, label %if.then15, label %if.else23, !dbg !667

if.then15:                                        ; preds = %do.body12
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Init16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 1, !dbg !667
  %Parity = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init16, i32 0, i32 3, !dbg !667
  %17 = load i32, i32* %Parity, align 4, !dbg !667
  %cmp17 = icmp eq i32 %17, 0, !dbg !667
  br i1 %cmp17, label %if.then19, label %if.else20, !dbg !667

if.then19:                                        ; preds = %if.then15
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Mask = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 9, !dbg !667
  store i16 511, i16* %Mask, align 4, !dbg !667
  br label %if.end22, !dbg !667

if.else20:                                        ; preds = %if.then15
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Mask21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 9, !dbg !667
  store i16 255, i16* %Mask21, align 4, !dbg !667
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then19
  br label %if.end57, !dbg !667

if.else23:                                        ; preds = %do.body12
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Init24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 1, !dbg !667
  %WordLength25 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init24, i32 0, i32 1, !dbg !667
  %21 = load i32, i32* %WordLength25, align 4, !dbg !667
  %cmp26 = icmp eq i32 %21, 0, !dbg !667
  br i1 %cmp26, label %if.then28, label %if.else38, !dbg !667

if.then28:                                        ; preds = %if.else23
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Init29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 1, !dbg !667
  %Parity30 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init29, i32 0, i32 3, !dbg !667
  %23 = load i32, i32* %Parity30, align 4, !dbg !667
  %cmp31 = icmp eq i32 %23, 0, !dbg !667
  br i1 %cmp31, label %if.then33, label %if.else35, !dbg !667

if.then33:                                        ; preds = %if.then28
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Mask34 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 9, !dbg !667
  store i16 255, i16* %Mask34, align 4, !dbg !667
  br label %if.end37, !dbg !667

if.else35:                                        ; preds = %if.then28
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Mask36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 9, !dbg !667
  store i16 127, i16* %Mask36, align 4, !dbg !667
  br label %if.end37

if.end37:                                         ; preds = %if.else35, %if.then33
  br label %if.end56, !dbg !667

if.else38:                                        ; preds = %if.else23
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Init39 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 1, !dbg !667
  %WordLength40 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init39, i32 0, i32 1, !dbg !667
  %27 = load i32, i32* %WordLength40, align 4, !dbg !667
  %cmp41 = icmp eq i32 %27, 268435456, !dbg !667
  br i1 %cmp41, label %if.then43, label %if.else53, !dbg !667

if.then43:                                        ; preds = %if.else38
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Init44 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 1, !dbg !667
  %Parity45 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init44, i32 0, i32 3, !dbg !667
  %29 = load i32, i32* %Parity45, align 4, !dbg !667
  %cmp46 = icmp eq i32 %29, 0, !dbg !667
  br i1 %cmp46, label %if.then48, label %if.else50, !dbg !667

if.then48:                                        ; preds = %if.then43
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Mask49 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 9, !dbg !667
  store i16 127, i16* %Mask49, align 4, !dbg !667
  br label %if.end52, !dbg !667

if.else50:                                        ; preds = %if.then43
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Mask51 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 9, !dbg !667
  store i16 63, i16* %Mask51, align 4, !dbg !667
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  br label %if.end55, !dbg !667

if.else53:                                        ; preds = %if.else38
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !667
  %Mask54 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 9, !dbg !667
  store i16 0, i16* %Mask54, align 4, !dbg !667
  br label %if.end55

if.end55:                                         ; preds = %if.else53, %if.end52
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.end37
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.end22
  br label %do.end58, !dbg !667

do.end58:                                         ; preds = %if.end57
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !668
  %Mask59 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %33, i32 0, i32 9, !dbg !669
  %34 = load i16, i16* %Mask59, align 4, !dbg !669
  store i16 %34, i16* %uhMask, align 2, !dbg !670
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !671
  %Init60 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 1, !dbg !672
  %WordLength61 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init60, i32 0, i32 1, !dbg !673
  %36 = load i32, i32* %WordLength61, align 4, !dbg !673
  %cmp62 = icmp eq i32 %36, 4096, !dbg !674
  br i1 %cmp62, label %land.lhs.true, label %if.else69, !dbg !675

land.lhs.true:                                    ; preds = %do.end58
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !676
  %Init64 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 1, !dbg !677
  %Parity65 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init64, i32 0, i32 3, !dbg !678
  %38 = load i32, i32* %Parity65, align 4, !dbg !678
  %cmp66 = icmp eq i32 %38, 0, !dbg !679
  br i1 %cmp66, label %if.then68, label %if.else69, !dbg !680

if.then68:                                        ; preds = %land.lhs.true
  store i8* null, i8** %pdata8bits, align 4, !dbg !681
  %39 = load i8*, i8** %pData.addr, align 4, !dbg !682
  %40 = bitcast i8* %39 to i16*, !dbg !683
  store i16* %40, i16** %pdata16bits, align 4, !dbg !684
  br label %if.end70, !dbg !685

if.else69:                                        ; preds = %land.lhs.true, %do.end58
  %41 = load i8*, i8** %pData.addr, align 4, !dbg !686
  store i8* %41, i8** %pdata8bits, align 4, !dbg !687
  store i16* null, i16** %pdata16bits, align 4, !dbg !688
  br label %if.end70

if.end70:                                         ; preds = %if.else69, %if.then68
  br label %do.body71, !dbg !689

do.body71:                                        ; preds = %if.end70
  %42 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !689
  %Lock72 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %42, i32 0, i32 18, !dbg !689
  store i8 0, i8* %Lock72, align 4, !dbg !689
  br label %do.end73, !dbg !689

do.end73:                                         ; preds = %do.body71
  br label %while.cond, !dbg !690

while.cond:                                       ; preds = %if.end97, %do.end73
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !691
  %RxXferCount74 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 8, !dbg !692
  %44 = load volatile i16, i16* %RxXferCount74, align 2, !dbg !692
  %conv75 = zext i16 %44 to i32, !dbg !691
  %cmp76 = icmp ugt i32 %conv75, 0, !dbg !693
  br i1 %cmp76, label %while.body, label %while.end, !dbg !690

while.body:                                       ; preds = %while.cond
  %45 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !694
  %46 = load i32, i32* %tickstart, align 4, !dbg !695
  %47 = load i32, i32* %Timeout.addr, align 4, !dbg !696
  %call78 = call arm_aapcs_vfpcc zeroext i8 @UART_WaitOnFlagUntilTimeout(%struct.__UART_HandleTypeDef* %45, i32 32, i8 zeroext 0, i32 %46, i32 %47), !dbg !697
  %conv79 = zext i8 %call78 to i32, !dbg !697
  %cmp80 = icmp ne i32 %conv79, 0, !dbg !698
  br i1 %cmp80, label %if.then82, label %if.end83, !dbg !697

if.then82:                                        ; preds = %while.body
  store i8 3, i8* %retval, align 1, !dbg !699
  br label %return, !dbg !699

if.end83:                                         ; preds = %while.body
  %48 = load i8*, i8** %pdata8bits, align 4, !dbg !700
  %cmp84 = icmp eq i8* %48, null, !dbg !701
  br i1 %cmp84, label %if.then86, label %if.else89, !dbg !700

if.then86:                                        ; preds = %if.end83
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !702
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 0, !dbg !703
  %50 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !703
  %RDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %50, i32 0, i32 9, !dbg !704
  %51 = load volatile i32, i32* %RDR, align 4, !dbg !704
  %52 = load i16, i16* %uhMask, align 2, !dbg !705
  %conv87 = zext i16 %52 to i32, !dbg !705
  %and = and i32 %51, %conv87, !dbg !706
  %conv88 = trunc i32 %and to i16, !dbg !707
  %53 = load i16*, i16** %pdata16bits, align 4, !dbg !708
  store i16 %conv88, i16* %53, align 2, !dbg !709
  %54 = load i16*, i16** %pdata16bits, align 4, !dbg !710
  %incdec.ptr = getelementptr inbounds i16, i16* %54, i32 1, !dbg !710
  store i16* %incdec.ptr, i16** %pdata16bits, align 4, !dbg !710
  br label %if.end97, !dbg !711

if.else89:                                        ; preds = %if.end83
  %55 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !712
  %Instance90 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %55, i32 0, i32 0, !dbg !713
  %56 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance90, align 4, !dbg !713
  %RDR91 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %56, i32 0, i32 9, !dbg !714
  %57 = load volatile i32, i32* %RDR91, align 4, !dbg !714
  %58 = load i16, i16* %uhMask, align 2, !dbg !715
  %conv92 = trunc i16 %58 to i8, !dbg !716
  %conv93 = zext i8 %conv92 to i32, !dbg !716
  %and94 = and i32 %57, %conv93, !dbg !717
  %conv95 = trunc i32 %and94 to i8, !dbg !718
  %59 = load i8*, i8** %pdata8bits, align 4, !dbg !719
  store i8 %conv95, i8* %59, align 1, !dbg !720
  %60 = load i8*, i8** %pdata8bits, align 4, !dbg !721
  %incdec.ptr96 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !721
  store i8* %incdec.ptr96, i8** %pdata8bits, align 4, !dbg !721
  br label %if.end97

if.end97:                                         ; preds = %if.else89, %if.then86
  %61 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !722
  %RxXferCount98 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %61, i32 0, i32 8, !dbg !723
  %62 = load volatile i16, i16* %RxXferCount98, align 2, !dbg !724
  %dec = add i16 %62, -1, !dbg !724
  store volatile i16 %dec, i16* %RxXferCount98, align 2, !dbg !724
  br label %while.cond, !dbg !690, !llvm.loop !725

while.end:                                        ; preds = %while.cond
  %63 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !727
  %RxState99 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %63, i32 0, i32 20, !dbg !728
  store volatile i32 32, i32* %RxState99, align 4, !dbg !729
  store i8 0, i8* %retval, align 1, !dbg !730
  br label %return, !dbg !730

if.else100:                                       ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !731
  br label %return, !dbg !731

return:                                           ; preds = %if.else100, %while.end, %if.then82, %if.then8, %if.then4
  %64 = load i8, i8* %retval, align 1, !dbg !732
  ret i8 %64, !dbg !732
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Transmit_IT(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !733 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !734
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !735
  %1 = load volatile i32, i32* %gState, align 4, !dbg !735
  %cmp = icmp eq i32 %1, 32, !dbg !736
  br i1 %cmp, label %if.then, label %if.else49, !dbg !734

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !737
  %cmp1 = icmp eq i8* %2, null, !dbg !738
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !739

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !740
  %conv = zext i16 %3 to i32, !dbg !740
  %cmp2 = icmp eq i32 %conv, 0, !dbg !741
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !742

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !743
  br label %return, !dbg !743

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !744

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !744
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !744
  %5 = load i8, i8* %Lock, align 4, !dbg !744
  %conv5 = zext i8 %5 to i32, !dbg !744
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !744
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !744

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !744
  br label %return, !dbg !744

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !744
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !744
  store i8 1, i8* %Lock9, align 4, !dbg !744
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !744

do.end:                                           ; preds = %if.end10
  %7 = load i8*, i8** %pData.addr, align 4, !dbg !745
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !746
  %pTxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 3, !dbg !747
  store i8* %7, i8** %pTxBuffPtr, align 4, !dbg !748
  %9 = load i16, i16* %Size.addr, align 2, !dbg !749
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !750
  %TxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 4, !dbg !751
  store i16 %9, i16* %TxXferSize, align 4, !dbg !752
  %11 = load i16, i16* %Size.addr, align 2, !dbg !753
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !754
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 5, !dbg !755
  store volatile i16 %11, i16* %TxXferCount, align 2, !dbg !756
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !757
  %TxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 15, !dbg !758
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %TxISR, align 4, !dbg !759
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !760
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 21, !dbg !761
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !762
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !763
  %gState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 19, !dbg !764
  store volatile i32 33, i32* %gState11, align 4, !dbg !765
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !766
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 10, !dbg !767
  %17 = load i32, i32* %FifoMode, align 4, !dbg !767
  %cmp12 = icmp eq i32 %17, 536870912, !dbg !768
  br i1 %cmp12, label %if.then14, label %if.else28, !dbg !766

if.then14:                                        ; preds = %do.end
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !769
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 1, !dbg !770
  %WordLength = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 1, !dbg !771
  %19 = load i32, i32* %WordLength, align 4, !dbg !771
  %cmp15 = icmp eq i32 %19, 4096, !dbg !772
  br i1 %cmp15, label %land.lhs.true, label %if.else22, !dbg !773

land.lhs.true:                                    ; preds = %if.then14
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !774
  %Init17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 1, !dbg !775
  %Parity = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init17, i32 0, i32 3, !dbg !776
  %21 = load i32, i32* %Parity, align 4, !dbg !776
  %cmp18 = icmp eq i32 %21, 0, !dbg !777
  br i1 %cmp18, label %if.then20, label %if.else22, !dbg !778

if.then20:                                        ; preds = %land.lhs.true
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !779
  %TxISR21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 15, !dbg !780
  store void (%struct.__UART_HandleTypeDef*)* @UART_TxISR_16BIT_FIFOEN, void (%struct.__UART_HandleTypeDef*)** %TxISR21, align 4, !dbg !781
  br label %if.end24, !dbg !782

if.else22:                                        ; preds = %land.lhs.true, %if.then14
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !783
  %TxISR23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 15, !dbg !784
  store void (%struct.__UART_HandleTypeDef*)* @UART_TxISR_8BIT_FIFOEN, void (%struct.__UART_HandleTypeDef*)** %TxISR23, align 4, !dbg !785
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then20
  br label %do.body25, !dbg !786

do.body25:                                        ; preds = %if.end24
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !786
  %Lock26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 18, !dbg !786
  store i8 0, i8* %Lock26, align 4, !dbg !786
  br label %do.end27, !dbg !786

do.end27:                                         ; preds = %do.body25
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !787
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 0, !dbg !787
  %26 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !787
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %26, i32 0, i32 2, !dbg !787
  %27 = load volatile i32, i32* %CR3, align 4, !dbg !787
  %or = or i32 %27, 8388608, !dbg !787
  store volatile i32 %or, i32* %CR3, align 4, !dbg !787
  br label %if.end48, !dbg !788

if.else28:                                        ; preds = %do.end
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !789
  %Init29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 1, !dbg !790
  %WordLength30 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init29, i32 0, i32 1, !dbg !791
  %29 = load i32, i32* %WordLength30, align 4, !dbg !791
  %cmp31 = icmp eq i32 %29, 4096, !dbg !792
  br i1 %cmp31, label %land.lhs.true33, label %if.else40, !dbg !793

land.lhs.true33:                                  ; preds = %if.else28
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !794
  %Init34 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 1, !dbg !795
  %Parity35 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init34, i32 0, i32 3, !dbg !796
  %31 = load i32, i32* %Parity35, align 4, !dbg !796
  %cmp36 = icmp eq i32 %31, 0, !dbg !797
  br i1 %cmp36, label %if.then38, label %if.else40, !dbg !798

if.then38:                                        ; preds = %land.lhs.true33
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !799
  %TxISR39 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 15, !dbg !800
  store void (%struct.__UART_HandleTypeDef*)* @UART_TxISR_16BIT, void (%struct.__UART_HandleTypeDef*)** %TxISR39, align 4, !dbg !801
  br label %if.end42, !dbg !802

if.else40:                                        ; preds = %land.lhs.true33, %if.else28
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !803
  %TxISR41 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %33, i32 0, i32 15, !dbg !804
  store void (%struct.__UART_HandleTypeDef*)* @UART_TxISR_8BIT, void (%struct.__UART_HandleTypeDef*)** %TxISR41, align 4, !dbg !805
  br label %if.end42

if.end42:                                         ; preds = %if.else40, %if.then38
  br label %do.body43, !dbg !806

do.body43:                                        ; preds = %if.end42
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !806
  %Lock44 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 18, !dbg !806
  store i8 0, i8* %Lock44, align 4, !dbg !806
  br label %do.end45, !dbg !806

do.end45:                                         ; preds = %do.body43
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !807
  %Instance46 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 0, !dbg !807
  %36 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance46, align 4, !dbg !807
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %36, i32 0, i32 0, !dbg !807
  %37 = load volatile i32, i32* %CR1, align 4, !dbg !807
  %or47 = or i32 %37, 128, !dbg !807
  store volatile i32 %or47, i32* %CR1, align 4, !dbg !807
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %do.end27
  store i8 0, i8* %retval, align 1, !dbg !808
  br label %return, !dbg !808

if.else49:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !809
  br label %return, !dbg !809

return:                                           ; preds = %if.else49, %if.end48, %if.then8, %if.then4
  %38 = load i8, i8* %retval, align 1, !dbg !810
  ret i8 %38, !dbg !810
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_TxISR_16BIT_FIFOEN(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !811 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tmp = alloca i16*, align 4
  %nb_tx_data = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !812
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !813
  %1 = load volatile i32, i32* %gState, align 4, !dbg !813
  %cmp = icmp eq i32 %1, 33, !dbg !814
  br i1 %cmp, label %if.then, label %if.end21, !dbg !812

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !815
  %NbTxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 12, !dbg !816
  %3 = load i16, i16* %NbTxDataToProcess, align 2, !dbg !816
  store i16 %3, i16* %nb_tx_data, align 2, !dbg !817
  br label %for.cond, !dbg !818

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i16, i16* %nb_tx_data, align 2, !dbg !819
  %conv = zext i16 %4 to i32, !dbg !819
  %cmp1 = icmp ugt i32 %conv, 0, !dbg !820
  br i1 %cmp1, label %for.body, label %for.end, !dbg !821

for.body:                                         ; preds = %for.cond
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !822
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 5, !dbg !823
  %6 = load volatile i16, i16* %TxXferCount, align 2, !dbg !823
  %conv3 = zext i16 %6 to i32, !dbg !822
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !824
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !822

if.then6:                                         ; preds = %for.body
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !825
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !825
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !825
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 2, !dbg !825
  %9 = load volatile i32, i32* %CR3, align 4, !dbg !825
  %and = and i32 %9, -8388609, !dbg !825
  store volatile i32 %and, i32* %CR3, align 4, !dbg !825
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !826
  %Instance7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !826
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance7, align 4, !dbg !826
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 0, !dbg !826
  %12 = load volatile i32, i32* %CR1, align 4, !dbg !826
  %or = or i32 %12, 64, !dbg !826
  store volatile i32 %or, i32* %CR1, align 4, !dbg !826
  br label %for.end, !dbg !827

if.else:                                          ; preds = %for.body
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !828
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !828
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !828
  %ISR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 7, !dbg !828
  %15 = load volatile i32, i32* %ISR, align 4, !dbg !828
  %and9 = and i32 %15, 128, !dbg !828
  %cmp10 = icmp ne i32 %and9, 0, !dbg !829
  br i1 %cmp10, label %if.then12, label %if.else18, !dbg !828

if.then12:                                        ; preds = %if.else
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !830
  %pTxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 3, !dbg !831
  %17 = load i8*, i8** %pTxBuffPtr, align 4, !dbg !831
  %18 = bitcast i8* %17 to i16*, !dbg !832
  store i16* %18, i16** %tmp, align 4, !dbg !833
  %19 = load i16*, i16** %tmp, align 4, !dbg !834
  %20 = load i16, i16* %19, align 2, !dbg !835
  %conv13 = zext i16 %20 to i32, !dbg !836
  %and14 = and i32 %conv13, 511, !dbg !837
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !838
  %Instance15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 0, !dbg !839
  %22 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance15, align 4, !dbg !839
  %TDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %22, i32 0, i32 10, !dbg !840
  store volatile i32 %and14, i32* %TDR, align 4, !dbg !841
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !842
  %pTxBuffPtr16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 3, !dbg !843
  %24 = load i8*, i8** %pTxBuffPtr16, align 4, !dbg !844
  %add.ptr = getelementptr inbounds i8, i8* %24, i32 2, !dbg !844
  store i8* %add.ptr, i8** %pTxBuffPtr16, align 4, !dbg !844
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !845
  %TxXferCount17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 5, !dbg !846
  %26 = load volatile i16, i16* %TxXferCount17, align 2, !dbg !847
  %dec = add i16 %26, -1, !dbg !847
  store volatile i16 %dec, i16* %TxXferCount17, align 2, !dbg !847
  br label %if.end, !dbg !848

if.else18:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else18, %if.then12
  br label %if.end19

if.end19:                                         ; preds = %if.end
  br label %for.inc, !dbg !849

for.inc:                                          ; preds = %if.end19
  %27 = load i16, i16* %nb_tx_data, align 2, !dbg !850
  %dec20 = add i16 %27, -1, !dbg !850
  store i16 %dec20, i16* %nb_tx_data, align 2, !dbg !850
  br label %for.cond, !dbg !821, !llvm.loop !851

for.end:                                          ; preds = %if.then6, %for.cond
  br label %if.end21, !dbg !852

if.end21:                                         ; preds = %for.end, %entry
  ret void, !dbg !853
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_TxISR_8BIT_FIFOEN(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !854 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %nb_tx_data = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !855
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !856
  %1 = load volatile i32, i32* %gState, align 4, !dbg !856
  %cmp = icmp eq i32 %1, 33, !dbg !857
  br i1 %cmp, label %if.then, label %if.end23, !dbg !855

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !858
  %NbTxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 12, !dbg !859
  %3 = load i16, i16* %NbTxDataToProcess, align 2, !dbg !859
  store i16 %3, i16* %nb_tx_data, align 2, !dbg !860
  br label %for.cond, !dbg !861

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i16, i16* %nb_tx_data, align 2, !dbg !862
  %conv = zext i16 %4 to i32, !dbg !862
  %cmp1 = icmp ugt i32 %conv, 0, !dbg !863
  br i1 %cmp1, label %for.body, label %for.end, !dbg !864

for.body:                                         ; preds = %for.cond
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !865
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 5, !dbg !866
  %6 = load volatile i16, i16* %TxXferCount, align 2, !dbg !866
  %conv3 = zext i16 %6 to i32, !dbg !865
  %cmp4 = icmp eq i32 %conv3, 0, !dbg !867
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !865

if.then6:                                         ; preds = %for.body
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !868
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !868
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !868
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 2, !dbg !868
  %9 = load volatile i32, i32* %CR3, align 4, !dbg !868
  %and = and i32 %9, -8388609, !dbg !868
  store volatile i32 %and, i32* %CR3, align 4, !dbg !868
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !869
  %Instance7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !869
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance7, align 4, !dbg !869
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 0, !dbg !869
  %12 = load volatile i32, i32* %CR1, align 4, !dbg !869
  %or = or i32 %12, 64, !dbg !869
  store volatile i32 %or, i32* %CR1, align 4, !dbg !869
  br label %for.end, !dbg !870

if.else:                                          ; preds = %for.body
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !871
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !871
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !871
  %ISR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 7, !dbg !871
  %15 = load volatile i32, i32* %ISR, align 4, !dbg !871
  %and9 = and i32 %15, 128, !dbg !871
  %cmp10 = icmp ne i32 %and9, 0, !dbg !872
  br i1 %cmp10, label %if.then12, label %if.else20, !dbg !871

if.then12:                                        ; preds = %if.else
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !873
  %pTxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 3, !dbg !874
  %17 = load i8*, i8** %pTxBuffPtr, align 4, !dbg !874
  %18 = load i8, i8* %17, align 1, !dbg !875
  %conv13 = zext i8 %18 to i32, !dbg !875
  %and14 = and i32 %conv13, 255, !dbg !876
  %conv15 = trunc i32 %and14 to i8, !dbg !877
  %conv16 = zext i8 %conv15 to i32, !dbg !877
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !878
  %Instance17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 0, !dbg !879
  %20 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance17, align 4, !dbg !879
  %TDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %20, i32 0, i32 10, !dbg !880
  store volatile i32 %conv16, i32* %TDR, align 4, !dbg !881
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !882
  %pTxBuffPtr18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 3, !dbg !883
  %22 = load i8*, i8** %pTxBuffPtr18, align 4, !dbg !884
  %incdec.ptr = getelementptr inbounds i8, i8* %22, i32 1, !dbg !884
  store i8* %incdec.ptr, i8** %pTxBuffPtr18, align 4, !dbg !884
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !885
  %TxXferCount19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 5, !dbg !886
  %24 = load volatile i16, i16* %TxXferCount19, align 2, !dbg !887
  %dec = add i16 %24, -1, !dbg !887
  store volatile i16 %dec, i16* %TxXferCount19, align 2, !dbg !887
  br label %if.end, !dbg !888

if.else20:                                        ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else20, %if.then12
  br label %if.end21

if.end21:                                         ; preds = %if.end
  br label %for.inc, !dbg !889

for.inc:                                          ; preds = %if.end21
  %25 = load i16, i16* %nb_tx_data, align 2, !dbg !890
  %dec22 = add i16 %25, -1, !dbg !890
  store i16 %dec22, i16* %nb_tx_data, align 2, !dbg !890
  br label %for.cond, !dbg !864, !llvm.loop !891

for.end:                                          ; preds = %if.then6, %for.cond
  br label %if.end23, !dbg !892

if.end23:                                         ; preds = %for.end, %entry
  ret void, !dbg !893
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_TxISR_16BIT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !894 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tmp = alloca i16*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !895
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !896
  %1 = load volatile i32, i32* %gState, align 4, !dbg !896
  %cmp = icmp eq i32 %1, 33, !dbg !897
  br i1 %cmp, label %if.then, label %if.end11, !dbg !895

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !898
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 5, !dbg !899
  %3 = load volatile i16, i16* %TxXferCount, align 2, !dbg !899
  %conv = zext i16 %3 to i32, !dbg !898
  %cmp1 = icmp eq i32 %conv, 0, !dbg !900
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !898

if.then3:                                         ; preds = %if.then
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !901
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !901
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !901
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !901
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !901
  %and = and i32 %6, -129, !dbg !901
  store volatile i32 %and, i32* %CR1, align 4, !dbg !901
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !902
  %Instance4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !902
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance4, align 4, !dbg !902
  %CR15 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !902
  %9 = load volatile i32, i32* %CR15, align 4, !dbg !902
  %or = or i32 %9, 64, !dbg !902
  store volatile i32 %or, i32* %CR15, align 4, !dbg !902
  br label %if.end, !dbg !903

if.else:                                          ; preds = %if.then
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !904
  %pTxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 3, !dbg !905
  %11 = load i8*, i8** %pTxBuffPtr, align 4, !dbg !905
  %12 = bitcast i8* %11 to i16*, !dbg !906
  store i16* %12, i16** %tmp, align 4, !dbg !907
  %13 = load i16*, i16** %tmp, align 4, !dbg !908
  %14 = load i16, i16* %13, align 2, !dbg !909
  %conv6 = zext i16 %14 to i32, !dbg !910
  %and7 = and i32 %conv6, 511, !dbg !911
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !912
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 0, !dbg !913
  %16 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !913
  %TDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %16, i32 0, i32 10, !dbg !914
  store volatile i32 %and7, i32* %TDR, align 4, !dbg !915
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !916
  %pTxBuffPtr9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 3, !dbg !917
  %18 = load i8*, i8** %pTxBuffPtr9, align 4, !dbg !918
  %add.ptr = getelementptr inbounds i8, i8* %18, i32 2, !dbg !918
  store i8* %add.ptr, i8** %pTxBuffPtr9, align 4, !dbg !918
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !919
  %TxXferCount10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 5, !dbg !920
  %20 = load volatile i16, i16* %TxXferCount10, align 2, !dbg !921
  %dec = add i16 %20, -1, !dbg !921
  store volatile i16 %dec, i16* %TxXferCount10, align 2, !dbg !921
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end11, !dbg !922

if.end11:                                         ; preds = %if.end, %entry
  ret void, !dbg !923
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_TxISR_8BIT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !924 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !925
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !926
  %1 = load volatile i32, i32* %gState, align 4, !dbg !926
  %cmp = icmp eq i32 %1, 33, !dbg !927
  br i1 %cmp, label %if.then, label %if.end13, !dbg !925

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !928
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 5, !dbg !929
  %3 = load volatile i16, i16* %TxXferCount, align 2, !dbg !929
  %conv = zext i16 %3 to i32, !dbg !928
  %cmp1 = icmp eq i32 %conv, 0, !dbg !930
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !928

if.then3:                                         ; preds = %if.then
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !931
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !931
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !931
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !931
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !931
  %and = and i32 %6, -129, !dbg !931
  store volatile i32 %and, i32* %CR1, align 4, !dbg !931
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !932
  %Instance4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !932
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance4, align 4, !dbg !932
  %CR15 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !932
  %9 = load volatile i32, i32* %CR15, align 4, !dbg !932
  %or = or i32 %9, 64, !dbg !932
  store volatile i32 %or, i32* %CR15, align 4, !dbg !932
  br label %if.end, !dbg !933

if.else:                                          ; preds = %if.then
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !934
  %pTxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 3, !dbg !935
  %11 = load i8*, i8** %pTxBuffPtr, align 4, !dbg !935
  %12 = load i8, i8* %11, align 1, !dbg !936
  %conv6 = zext i8 %12 to i32, !dbg !936
  %and7 = and i32 %conv6, 255, !dbg !937
  %conv8 = trunc i32 %and7 to i8, !dbg !938
  %conv9 = zext i8 %conv8 to i32, !dbg !938
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !939
  %Instance10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !940
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance10, align 4, !dbg !940
  %TDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 10, !dbg !941
  store volatile i32 %conv9, i32* %TDR, align 4, !dbg !942
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !943
  %pTxBuffPtr11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 3, !dbg !944
  %16 = load i8*, i8** %pTxBuffPtr11, align 4, !dbg !945
  %incdec.ptr = getelementptr inbounds i8, i8* %16, i32 1, !dbg !945
  store i8* %incdec.ptr, i8** %pTxBuffPtr11, align 4, !dbg !945
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !946
  %TxXferCount12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 5, !dbg !947
  %18 = load volatile i16, i16* %TxXferCount12, align 2, !dbg !948
  %dec = add i16 %18, -1, !dbg !948
  store volatile i16 %dec, i16* %TxXferCount12, align 2, !dbg !948
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end13, !dbg !949

if.end13:                                         ; preds = %if.end, %entry
  ret void, !dbg !950
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Receive_IT(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !951 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !952
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 20, !dbg !953
  %1 = load volatile i32, i32* %RxState, align 4, !dbg !953
  %cmp = icmp eq i32 %1, 32, !dbg !954
  br i1 %cmp, label %if.then, label %if.else11, !dbg !952

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !955
  %cmp1 = icmp eq i8* %2, null, !dbg !956
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !957

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !958
  %conv = zext i16 %3 to i32, !dbg !958
  %cmp2 = icmp eq i32 %conv, 0, !dbg !959
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !960

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !961
  br label %return, !dbg !961

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !962

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !962
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !962
  %5 = load i8, i8* %Lock, align 4, !dbg !962
  %conv5 = zext i8 %5 to i32, !dbg !962
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !962
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !962

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !962
  br label %return, !dbg !962

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !962
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !962
  store i8 1, i8* %Lock9, align 4, !dbg !962
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !962

do.end:                                           ; preds = %if.end10
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !963
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 13, !dbg !964
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !965
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !966
  %9 = load i8*, i8** %pData.addr, align 4, !dbg !967
  %10 = load i16, i16* %Size.addr, align 2, !dbg !968
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_IT(%struct.__UART_HandleTypeDef* %8, i8* %9, i16 zeroext %10), !dbg !969
  store i8 %call, i8* %retval, align 1, !dbg !970
  br label %return, !dbg !970

if.else11:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !971
  br label %return, !dbg !971

return:                                           ; preds = %if.else11, %do.end, %if.then8, %if.then4
  %11 = load i8, i8* %retval, align 1, !dbg !972
  ret i8 %11, !dbg !972
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_IT(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !973 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load i8*, i8** %pData.addr, align 4, !dbg !974
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !975
  %pRxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 6, !dbg !976
  store i8* %0, i8** %pRxBuffPtr, align 4, !dbg !977
  %2 = load i16, i16* %Size.addr, align 2, !dbg !978
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !979
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 7, !dbg !980
  store i16 %2, i16* %RxXferSize, align 4, !dbg !981
  %4 = load i16, i16* %Size.addr, align 2, !dbg !982
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !983
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 8, !dbg !984
  store volatile i16 %4, i16* %RxXferCount, align 2, !dbg !985
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !986
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 14, !dbg !987
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !988
  br label %do.body, !dbg !989

do.body:                                          ; preds = %entry
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Init = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 1, !dbg !989
  %WordLength = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init, i32 0, i32 1, !dbg !989
  %8 = load i32, i32* %WordLength, align 4, !dbg !989
  %cmp = icmp eq i32 %8, 4096, !dbg !989
  br i1 %cmp, label %if.then, label %if.else5, !dbg !989

if.then:                                          ; preds = %do.body
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Init1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 1, !dbg !989
  %Parity = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init1, i32 0, i32 3, !dbg !989
  %10 = load i32, i32* %Parity, align 4, !dbg !989
  %cmp2 = icmp eq i32 %10, 0, !dbg !989
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !989

if.then3:                                         ; preds = %if.then
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Mask = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 9, !dbg !989
  store i16 511, i16* %Mask, align 4, !dbg !989
  br label %if.end, !dbg !989

if.else:                                          ; preds = %if.then
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Mask4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 9, !dbg !989
  store i16 255, i16* %Mask4, align 4, !dbg !989
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end35, !dbg !989

if.else5:                                         ; preds = %do.body
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Init6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 1, !dbg !989
  %WordLength7 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init6, i32 0, i32 1, !dbg !989
  %14 = load i32, i32* %WordLength7, align 4, !dbg !989
  %cmp8 = icmp eq i32 %14, 0, !dbg !989
  br i1 %cmp8, label %if.then9, label %if.else18, !dbg !989

if.then9:                                         ; preds = %if.else5
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Init10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 1, !dbg !989
  %Parity11 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init10, i32 0, i32 3, !dbg !989
  %16 = load i32, i32* %Parity11, align 4, !dbg !989
  %cmp12 = icmp eq i32 %16, 0, !dbg !989
  br i1 %cmp12, label %if.then13, label %if.else15, !dbg !989

if.then13:                                        ; preds = %if.then9
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Mask14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 9, !dbg !989
  store i16 255, i16* %Mask14, align 4, !dbg !989
  br label %if.end17, !dbg !989

if.else15:                                        ; preds = %if.then9
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Mask16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 9, !dbg !989
  store i16 127, i16* %Mask16, align 4, !dbg !989
  br label %if.end17

if.end17:                                         ; preds = %if.else15, %if.then13
  br label %if.end34, !dbg !989

if.else18:                                        ; preds = %if.else5
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Init19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 1, !dbg !989
  %WordLength20 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init19, i32 0, i32 1, !dbg !989
  %20 = load i32, i32* %WordLength20, align 4, !dbg !989
  %cmp21 = icmp eq i32 %20, 268435456, !dbg !989
  br i1 %cmp21, label %if.then22, label %if.else31, !dbg !989

if.then22:                                        ; preds = %if.else18
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Init23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 1, !dbg !989
  %Parity24 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init23, i32 0, i32 3, !dbg !989
  %22 = load i32, i32* %Parity24, align 4, !dbg !989
  %cmp25 = icmp eq i32 %22, 0, !dbg !989
  br i1 %cmp25, label %if.then26, label %if.else28, !dbg !989

if.then26:                                        ; preds = %if.then22
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Mask27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 9, !dbg !989
  store i16 127, i16* %Mask27, align 4, !dbg !989
  br label %if.end30, !dbg !989

if.else28:                                        ; preds = %if.then22
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Mask29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 9, !dbg !989
  store i16 63, i16* %Mask29, align 4, !dbg !989
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  br label %if.end33, !dbg !989

if.else31:                                        ; preds = %if.else18
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !989
  %Mask32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 9, !dbg !989
  store i16 0, i16* %Mask32, align 4, !dbg !989
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.end30
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end17
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  br label %do.end, !dbg !989

do.end:                                           ; preds = %if.end35
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !990
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 21, !dbg !991
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !992
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !993
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 20, !dbg !994
  store volatile i32 34, i32* %RxState, align 4, !dbg !995
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !996
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 0, !dbg !996
  %29 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !996
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %29, i32 0, i32 2, !dbg !996
  %30 = load volatile i32, i32* %CR3, align 4, !dbg !996
  %or = or i32 %30, 1, !dbg !996
  store volatile i32 %or, i32* %CR3, align 4, !dbg !996
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !997
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 10, !dbg !998
  %32 = load i32, i32* %FifoMode, align 4, !dbg !998
  %cmp36 = icmp eq i32 %32, 536870912, !dbg !999
  br i1 %cmp36, label %land.lhs.true, label %if.else62, !dbg !1000

land.lhs.true:                                    ; preds = %do.end
  %33 = load i16, i16* %Size.addr, align 2, !dbg !1001
  %conv = zext i16 %33 to i32, !dbg !1001
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1002
  %NbRxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 11, !dbg !1003
  %35 = load i16, i16* %NbRxDataToProcess, align 4, !dbg !1003
  %conv37 = zext i16 %35 to i32, !dbg !1002
  %cmp38 = icmp sge i32 %conv, %conv37, !dbg !1004
  br i1 %cmp38, label %if.then40, label %if.else62, !dbg !1005

if.then40:                                        ; preds = %land.lhs.true
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1006
  %Init41 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 1, !dbg !1007
  %WordLength42 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init41, i32 0, i32 1, !dbg !1008
  %37 = load i32, i32* %WordLength42, align 4, !dbg !1008
  %cmp43 = icmp eq i32 %37, 4096, !dbg !1009
  br i1 %cmp43, label %land.lhs.true45, label %if.else52, !dbg !1010

land.lhs.true45:                                  ; preds = %if.then40
  %38 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1011
  %Init46 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %38, i32 0, i32 1, !dbg !1012
  %Parity47 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init46, i32 0, i32 3, !dbg !1013
  %39 = load i32, i32* %Parity47, align 4, !dbg !1013
  %cmp48 = icmp eq i32 %39, 0, !dbg !1014
  br i1 %cmp48, label %if.then50, label %if.else52, !dbg !1015

if.then50:                                        ; preds = %land.lhs.true45
  %40 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1016
  %RxISR51 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %40, i32 0, i32 14, !dbg !1017
  store void (%struct.__UART_HandleTypeDef*)* @UART_RxISR_16BIT_FIFOEN, void (%struct.__UART_HandleTypeDef*)** %RxISR51, align 4, !dbg !1018
  br label %if.end54, !dbg !1019

if.else52:                                        ; preds = %land.lhs.true45, %if.then40
  %41 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1020
  %RxISR53 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %41, i32 0, i32 14, !dbg !1021
  store void (%struct.__UART_HandleTypeDef*)* @UART_RxISR_8BIT_FIFOEN, void (%struct.__UART_HandleTypeDef*)** %RxISR53, align 4, !dbg !1022
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then50
  br label %do.body55, !dbg !1023

do.body55:                                        ; preds = %if.end54
  %42 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1023
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %42, i32 0, i32 18, !dbg !1023
  store i8 0, i8* %Lock, align 4, !dbg !1023
  br label %do.end56, !dbg !1023

do.end56:                                         ; preds = %do.body55
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1024
  %Instance57 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 0, !dbg !1024
  %44 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance57, align 4, !dbg !1024
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %44, i32 0, i32 0, !dbg !1024
  %45 = load volatile i32, i32* %CR1, align 4, !dbg !1024
  %or58 = or i32 %45, 256, !dbg !1024
  store volatile i32 %or58, i32* %CR1, align 4, !dbg !1024
  %46 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1025
  %Instance59 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %46, i32 0, i32 0, !dbg !1025
  %47 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance59, align 4, !dbg !1025
  %CR360 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %47, i32 0, i32 2, !dbg !1025
  %48 = load volatile i32, i32* %CR360, align 4, !dbg !1025
  %or61 = or i32 %48, 268435456, !dbg !1025
  store volatile i32 %or61, i32* %CR360, align 4, !dbg !1025
  br label %if.end83, !dbg !1026

if.else62:                                        ; preds = %land.lhs.true, %do.end
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1027
  %Init63 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 1, !dbg !1028
  %WordLength64 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init63, i32 0, i32 1, !dbg !1029
  %50 = load i32, i32* %WordLength64, align 4, !dbg !1029
  %cmp65 = icmp eq i32 %50, 4096, !dbg !1030
  br i1 %cmp65, label %land.lhs.true67, label %if.else74, !dbg !1031

land.lhs.true67:                                  ; preds = %if.else62
  %51 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1032
  %Init68 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %51, i32 0, i32 1, !dbg !1033
  %Parity69 = getelementptr inbounds %struct.UART_InitTypeDef, %struct.UART_InitTypeDef* %Init68, i32 0, i32 3, !dbg !1034
  %52 = load i32, i32* %Parity69, align 4, !dbg !1034
  %cmp70 = icmp eq i32 %52, 0, !dbg !1035
  br i1 %cmp70, label %if.then72, label %if.else74, !dbg !1036

if.then72:                                        ; preds = %land.lhs.true67
  %53 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1037
  %RxISR73 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %53, i32 0, i32 14, !dbg !1038
  store void (%struct.__UART_HandleTypeDef*)* @UART_RxISR_16BIT, void (%struct.__UART_HandleTypeDef*)** %RxISR73, align 4, !dbg !1039
  br label %if.end76, !dbg !1040

if.else74:                                        ; preds = %land.lhs.true67, %if.else62
  %54 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1041
  %RxISR75 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %54, i32 0, i32 14, !dbg !1042
  store void (%struct.__UART_HandleTypeDef*)* @UART_RxISR_8BIT, void (%struct.__UART_HandleTypeDef*)** %RxISR75, align 4, !dbg !1043
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then72
  br label %do.body77, !dbg !1044

do.body77:                                        ; preds = %if.end76
  %55 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1044
  %Lock78 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %55, i32 0, i32 18, !dbg !1044
  store i8 0, i8* %Lock78, align 4, !dbg !1044
  br label %do.end79, !dbg !1044

do.end79:                                         ; preds = %do.body77
  %56 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1045
  %Instance80 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %56, i32 0, i32 0, !dbg !1045
  %57 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance80, align 4, !dbg !1045
  %CR181 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %57, i32 0, i32 0, !dbg !1045
  %58 = load volatile i32, i32* %CR181, align 4, !dbg !1045
  %or82 = or i32 %58, 288, !dbg !1045
  store volatile i32 %or82, i32* %CR181, align 4, !dbg !1045
  br label %if.end83

if.end83:                                         ; preds = %do.end79, %do.end56
  ret i8 0, !dbg !1046
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Transmit_DMA(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !1047 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1048
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !1049
  %1 = load volatile i32, i32* %gState, align 4, !dbg !1049
  %cmp = icmp eq i32 %1, 32, !dbg !1050
  br i1 %cmp, label %if.then, label %if.else38, !dbg !1048

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !1051
  %cmp1 = icmp eq i8* %2, null, !dbg !1052
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !1053

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !1054
  %conv = zext i16 %3 to i32, !dbg !1054
  %cmp2 = icmp eq i32 %conv, 0, !dbg !1055
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !1056

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !1057
  br label %return, !dbg !1057

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !1058

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1058
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !1058
  %5 = load i8, i8* %Lock, align 4, !dbg !1058
  %conv5 = zext i8 %5 to i32, !dbg !1058
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !1058
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !1058

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !1058
  br label %return, !dbg !1058

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1058
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !1058
  store i8 1, i8* %Lock9, align 4, !dbg !1058
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !1058

do.end:                                           ; preds = %if.end10
  %7 = load i8*, i8** %pData.addr, align 4, !dbg !1059
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1060
  %pTxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 3, !dbg !1061
  store i8* %7, i8** %pTxBuffPtr, align 4, !dbg !1062
  %9 = load i16, i16* %Size.addr, align 2, !dbg !1063
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1064
  %TxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 4, !dbg !1065
  store i16 %9, i16* %TxXferSize, align 4, !dbg !1066
  %11 = load i16, i16* %Size.addr, align 2, !dbg !1067
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1068
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 5, !dbg !1069
  store volatile i16 %11, i16* %TxXferCount, align 2, !dbg !1070
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1071
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 21, !dbg !1072
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !1073
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1074
  %gState11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 19, !dbg !1075
  store volatile i32 33, i32* %gState11, align 4, !dbg !1076
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1077
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 16, !dbg !1078
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1078
  %cmp12 = icmp ne %struct.__DMA_HandleTypeDef* %16, null, !dbg !1079
  br i1 %cmp12, label %if.then14, label %if.end32, !dbg !1077

if.then14:                                        ; preds = %do.end
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1080
  %hdmatx15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 16, !dbg !1081
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx15, align 4, !dbg !1081
  %XferCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %18, i32 0, i32 5, !dbg !1082
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMATransmitCplt, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback, align 4, !dbg !1083
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1084
  %hdmatx16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 16, !dbg !1085
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx16, align 4, !dbg !1085
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 6, !dbg !1086
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMATxHalfCplt, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !1087
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1088
  %hdmatx17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 16, !dbg !1089
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx17, align 4, !dbg !1089
  %XferErrorCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 9, !dbg !1090
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAError, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback, align 4, !dbg !1091
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1092
  %hdmatx18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 16, !dbg !1093
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx18, align 4, !dbg !1093
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %24, i32 0, i32 10, !dbg !1094
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1095
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1096
  %hdmatx19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 16, !dbg !1097
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx19, align 4, !dbg !1097
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1098
  %pTxBuffPtr20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 3, !dbg !1099
  %28 = load i8*, i8** %pTxBuffPtr20, align 4, !dbg !1099
  %29 = ptrtoint i8* %28 to i32, !dbg !1100
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1101
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 0, !dbg !1102
  %31 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1102
  %TDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %31, i32 0, i32 10, !dbg !1103
  %32 = ptrtoint i32* %TDR to i32, !dbg !1104
  %33 = load i16, i16* %Size.addr, align 2, !dbg !1105
  %conv21 = zext i16 %33 to i32, !dbg !1105
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Start_IT(%struct.__DMA_HandleTypeDef* %26, i32 %29, i32 %32, i32 %conv21), !dbg !1106
  %conv22 = zext i8 %call to i32, !dbg !1106
  %cmp23 = icmp ne i32 %conv22, 0, !dbg !1107
  br i1 %cmp23, label %if.then25, label %if.end31, !dbg !1106

if.then25:                                        ; preds = %if.then14
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1108
  %ErrorCode26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 21, !dbg !1109
  store volatile i32 16, i32* %ErrorCode26, align 4, !dbg !1110
  br label %do.body27, !dbg !1111

do.body27:                                        ; preds = %if.then25
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1111
  %Lock28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 18, !dbg !1111
  store i8 0, i8* %Lock28, align 4, !dbg !1111
  br label %do.end29, !dbg !1111

do.end29:                                         ; preds = %do.body27
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1112
  %gState30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 19, !dbg !1113
  store volatile i32 32, i32* %gState30, align 4, !dbg !1114
  store i8 1, i8* %retval, align 1, !dbg !1115
  br label %return, !dbg !1115

if.end31:                                         ; preds = %if.then14
  br label %if.end32, !dbg !1116

if.end32:                                         ; preds = %if.end31, %do.end
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1117
  %Instance33 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 0, !dbg !1117
  %38 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance33, align 4, !dbg !1117
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %38, i32 0, i32 8, !dbg !1117
  store volatile i32 64, i32* %ICR, align 4, !dbg !1117
  br label %do.body34, !dbg !1118

do.body34:                                        ; preds = %if.end32
  %39 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1118
  %Lock35 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %39, i32 0, i32 18, !dbg !1118
  store i8 0, i8* %Lock35, align 4, !dbg !1118
  br label %do.end36, !dbg !1118

do.end36:                                         ; preds = %do.body34
  %40 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1119
  %Instance37 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %40, i32 0, i32 0, !dbg !1119
  %41 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance37, align 4, !dbg !1119
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %41, i32 0, i32 2, !dbg !1119
  %42 = load volatile i32, i32* %CR3, align 4, !dbg !1119
  %or = or i32 %42, 128, !dbg !1119
  store volatile i32 %or, i32* %CR3, align 4, !dbg !1119
  store i8 0, i8* %retval, align 1, !dbg !1120
  br label %return, !dbg !1120

if.else38:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !1121
  br label %return, !dbg !1121

return:                                           ; preds = %if.else38, %do.end36, %do.end29, %if.then8, %if.then4
  %43 = load i8, i8* %retval, align 1, !dbg !1122
  ret i8 %43, !dbg !1122
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMATransmitCplt(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1123 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1124
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !1125
  %1 = load i8*, i8** %Parent, align 4, !dbg !1125
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !1126
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1127
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1128
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 0, !dbg !1128
  %4 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !1128
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 0, !dbg !1128
  %5 = load volatile i32, i32* %CCR, align 4, !dbg !1128
  %and = and i32 %5, 32, !dbg !1128
  %cmp = icmp eq i32 %and, 0, !dbg !1128
  br i1 %cmp, label %if.then, label %if.else, !dbg !1128

if.then:                                          ; preds = %entry
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1129
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 5, !dbg !1130
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1131
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1132
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !1132
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1132
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 2, !dbg !1132
  %9 = load volatile i32, i32* %CR3, align 4, !dbg !1132
  %and2 = and i32 %9, -129, !dbg !1132
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1132
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1133
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !1133
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1133
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 0, !dbg !1133
  %12 = load volatile i32, i32* %CR1, align 4, !dbg !1133
  %or = or i32 %12, 64, !dbg !1133
  store volatile i32 %or, i32* %CR1, align 4, !dbg !1133
  br label %if.end, !dbg !1134

if.else:                                          ; preds = %entry
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1135
  call arm_aapcs_vfpcc void @HAL_UART_TxCpltCallback(%struct.__UART_HandleTypeDef* %13), !dbg !1136
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1137
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMATxHalfCplt(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1138 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1139
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !1140
  %1 = load i8*, i8** %Parent, align 4, !dbg !1140
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !1141
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1142
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1143
  call arm_aapcs_vfpcc void @HAL_UART_TxHalfCpltCallback(%struct.__UART_HandleTypeDef* %3), !dbg !1144
  ret void, !dbg !1145
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMAError(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1146 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  %gstate = alloca i32, align 4
  %rxstate = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1147
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !1148
  %1 = load i8*, i8** %Parent, align 4, !dbg !1148
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !1149
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1150
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1151
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !1152
  %4 = load volatile i32, i32* %gState, align 4, !dbg !1152
  store i32 %4, i32* %gstate, align 4, !dbg !1153
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1154
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 20, !dbg !1155
  %6 = load volatile i32, i32* %RxState, align 4, !dbg !1155
  store i32 %6, i32* %rxstate, align 4, !dbg !1156
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1157
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !1157
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1157
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 2, !dbg !1157
  %9 = load volatile i32, i32* %CR3, align 4, !dbg !1157
  %and = and i32 %9, 128, !dbg !1157
  %cmp = icmp eq i32 %and, 128, !dbg !1157
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1158

land.lhs.true:                                    ; preds = %entry
  %10 = load i32, i32* %gstate, align 4, !dbg !1159
  %cmp1 = icmp eq i32 %10, 33, !dbg !1160
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1161

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1162
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 5, !dbg !1163
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1164
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1165
  call arm_aapcs_vfpcc void @UART_EndTxTransfer(%struct.__UART_HandleTypeDef* %12), !dbg !1166
  br label %if.end, !dbg !1167

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1168
  %Instance2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !1168
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance2, align 4, !dbg !1168
  %CR33 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 2, !dbg !1168
  %15 = load volatile i32, i32* %CR33, align 4, !dbg !1168
  %and4 = and i32 %15, 64, !dbg !1168
  %cmp5 = icmp eq i32 %and4, 64, !dbg !1168
  br i1 %cmp5, label %land.lhs.true6, label %if.end9, !dbg !1169

land.lhs.true6:                                   ; preds = %if.end
  %16 = load i32, i32* %rxstate, align 4, !dbg !1170
  %cmp7 = icmp eq i32 %16, 34, !dbg !1171
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !1172

if.then8:                                         ; preds = %land.lhs.true6
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1173
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 8, !dbg !1174
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1175
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1176
  call arm_aapcs_vfpcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* %18), !dbg !1177
  br label %if.end9, !dbg !1178

if.end9:                                          ; preds = %if.then8, %land.lhs.true6, %if.end
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1179
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 21, !dbg !1180
  %20 = load volatile i32, i32* %ErrorCode, align 4, !dbg !1181
  %or = or i32 %20, 16, !dbg !1181
  store volatile i32 %or, i32* %ErrorCode, align 4, !dbg !1181
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1182
  call arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %21), !dbg !1183
  ret void, !dbg !1184
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Start_IT(%struct.__DMA_HandleTypeDef*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Receive_DMA(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !1185 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1186
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 20, !dbg !1187
  %1 = load volatile i32, i32* %RxState, align 4, !dbg !1187
  %cmp = icmp eq i32 %1, 32, !dbg !1188
  br i1 %cmp, label %if.then, label %if.else11, !dbg !1186

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %pData.addr, align 4, !dbg !1189
  %cmp1 = icmp eq i8* %2, null, !dbg !1190
  br i1 %cmp1, label %if.then4, label %lor.lhs.false, !dbg !1191

lor.lhs.false:                                    ; preds = %if.then
  %3 = load i16, i16* %Size.addr, align 2, !dbg !1192
  %conv = zext i16 %3 to i32, !dbg !1192
  %cmp2 = icmp eq i32 %conv, 0, !dbg !1193
  br i1 %cmp2, label %if.then4, label %if.end, !dbg !1194

if.then4:                                         ; preds = %lor.lhs.false, %if.then
  store i8 1, i8* %retval, align 1, !dbg !1195
  br label %return, !dbg !1195

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !1196

do.body:                                          ; preds = %if.end
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1196
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !1196
  %5 = load i8, i8* %Lock, align 4, !dbg !1196
  %conv5 = zext i8 %5 to i32, !dbg !1196
  %cmp6 = icmp eq i32 %conv5, 1, !dbg !1196
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !1196

if.then8:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !1196
  br label %return, !dbg !1196

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1196
  %Lock9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !1196
  store i8 1, i8* %Lock9, align 4, !dbg !1196
  br label %if.end10

if.end10:                                         ; preds = %if.else
  br label %do.end, !dbg !1196

do.end:                                           ; preds = %if.end10
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1197
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 13, !dbg !1198
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !1199
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1200
  %9 = load i8*, i8** %pData.addr, align 4, !dbg !1201
  %10 = load i16, i16* %Size.addr, align 2, !dbg !1202
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_DMA(%struct.__UART_HandleTypeDef* %8, i8* %9, i16 zeroext %10), !dbg !1203
  store i8 %call, i8* %retval, align 1, !dbg !1204
  br label %return, !dbg !1204

if.else11:                                        ; preds = %entry
  store i8 2, i8* %retval, align 1, !dbg !1205
  br label %return, !dbg !1205

return:                                           ; preds = %if.else11, %do.end, %if.then8, %if.then4
  %11 = load i8, i8* %retval, align 1, !dbg !1206
  ret i8 %11, !dbg !1206
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @UART_Start_Receive_DMA(%struct.__UART_HandleTypeDef* %huart, i8* %pData, i16 zeroext %Size) #0 !dbg !1207 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %pData.addr = alloca i8*, align 4
  %Size.addr = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i8* %pData, i8** %pData.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load i8*, i8** %pData.addr, align 4, !dbg !1208
  %1 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1209
  %pRxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %1, i32 0, i32 6, !dbg !1210
  store i8* %0, i8** %pRxBuffPtr, align 4, !dbg !1211
  %2 = load i16, i16* %Size.addr, align 2, !dbg !1212
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1213
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 7, !dbg !1214
  store i16 %2, i16* %RxXferSize, align 4, !dbg !1215
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1216
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 21, !dbg !1217
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !1218
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1219
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 20, !dbg !1220
  store volatile i32 34, i32* %RxState, align 4, !dbg !1221
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1222
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 17, !dbg !1223
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1223
  %cmp = icmp ne %struct.__DMA_HandleTypeDef* %7, null, !dbg !1224
  br i1 %cmp, label %if.then, label %if.end12, !dbg !1222

if.then:                                          ; preds = %entry
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1225
  %hdmarx1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 17, !dbg !1226
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx1, align 4, !dbg !1226
  %XferCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 5, !dbg !1227
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAReceiveCplt, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback, align 4, !dbg !1228
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1229
  %hdmarx2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 17, !dbg !1230
  %11 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx2, align 4, !dbg !1230
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %11, i32 0, i32 6, !dbg !1231
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMARxHalfCplt, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !1232
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1233
  %hdmarx3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 17, !dbg !1234
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx3, align 4, !dbg !1234
  %XferErrorCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 9, !dbg !1235
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAError, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback, align 4, !dbg !1236
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1237
  %hdmarx4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 17, !dbg !1238
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx4, align 4, !dbg !1238
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 10, !dbg !1239
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1240
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1241
  %hdmarx5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 17, !dbg !1242
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx5, align 4, !dbg !1242
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1243
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !1244
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1244
  %RDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 9, !dbg !1245
  %20 = ptrtoint i32* %RDR to i32, !dbg !1246
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1247
  %pRxBuffPtr6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 6, !dbg !1248
  %22 = load i8*, i8** %pRxBuffPtr6, align 4, !dbg !1248
  %23 = ptrtoint i8* %22 to i32, !dbg !1249
  %24 = load i16, i16* %Size.addr, align 2, !dbg !1250
  %conv = zext i16 %24 to i32, !dbg !1250
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Start_IT(%struct.__DMA_HandleTypeDef* %17, i32 %20, i32 %23, i32 %conv), !dbg !1251
  %conv7 = zext i8 %call to i32, !dbg !1251
  %cmp8 = icmp ne i32 %conv7, 0, !dbg !1252
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !1251

if.then10:                                        ; preds = %if.then
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1253
  %ErrorCode11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 21, !dbg !1254
  store volatile i32 16, i32* %ErrorCode11, align 4, !dbg !1255
  br label %do.body, !dbg !1256

do.body:                                          ; preds = %if.then10
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1256
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 18, !dbg !1256
  store i8 0, i8* %Lock, align 4, !dbg !1256
  br label %do.end, !dbg !1256

do.end:                                           ; preds = %do.body
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1257
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 19, !dbg !1258
  store volatile i32 32, i32* %gState, align 4, !dbg !1259
  store i8 1, i8* %retval, align 1, !dbg !1260
  br label %return, !dbg !1260

if.end:                                           ; preds = %if.then
  br label %if.end12, !dbg !1261

if.end12:                                         ; preds = %if.end, %entry
  br label %do.body13, !dbg !1262

do.body13:                                        ; preds = %if.end12
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1262
  %Lock14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 18, !dbg !1262
  store i8 0, i8* %Lock14, align 4, !dbg !1262
  br label %do.end15, !dbg !1262

do.end15:                                         ; preds = %do.body13
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1263
  %Instance16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !1263
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance16, align 4, !dbg !1263
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 0, !dbg !1263
  %31 = load volatile i32, i32* %CR1, align 4, !dbg !1263
  %or = or i32 %31, 256, !dbg !1263
  store volatile i32 %or, i32* %CR1, align 4, !dbg !1263
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1264
  %Instance17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 0, !dbg !1264
  %33 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance17, align 4, !dbg !1264
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 2, !dbg !1264
  %34 = load volatile i32, i32* %CR3, align 4, !dbg !1264
  %or18 = or i32 %34, 1, !dbg !1264
  store volatile i32 %or18, i32* %CR3, align 4, !dbg !1264
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1265
  %Instance19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 0, !dbg !1265
  %36 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance19, align 4, !dbg !1265
  %CR320 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %36, i32 0, i32 2, !dbg !1265
  %37 = load volatile i32, i32* %CR320, align 4, !dbg !1265
  %or21 = or i32 %37, 64, !dbg !1265
  store volatile i32 %or21, i32* %CR320, align 4, !dbg !1265
  store i8 0, i8* %retval, align 1, !dbg !1266
  br label %return, !dbg !1266

return:                                           ; preds = %do.end15, %do.end
  %38 = load i8, i8* %retval, align 1, !dbg !1267
  ret i8 %38, !dbg !1267
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_DMAPause(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1268 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %gstate = alloca i32, align 4
  %rxstate = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1269
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !1270
  %1 = load volatile i32, i32* %gState, align 4, !dbg !1270
  store i32 %1, i32* %gstate, align 4, !dbg !1271
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1272
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 20, !dbg !1273
  %3 = load volatile i32, i32* %RxState, align 4, !dbg !1273
  store i32 %3, i32* %rxstate, align 4, !dbg !1274
  br label %do.body, !dbg !1275

do.body:                                          ; preds = %entry
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1275
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !1275
  %5 = load i8, i8* %Lock, align 4, !dbg !1275
  %conv = zext i8 %5 to i32, !dbg !1275
  %cmp = icmp eq i32 %conv, 1, !dbg !1275
  br i1 %cmp, label %if.then, label %if.else, !dbg !1275

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !1275
  br label %return, !dbg !1275

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1275
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !1275
  store i8 1, i8* %Lock2, align 4, !dbg !1275
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !1275

do.end:                                           ; preds = %if.end
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1276
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !1276
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1276
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 2, !dbg !1276
  %9 = load volatile i32, i32* %CR3, align 4, !dbg !1276
  %and = and i32 %9, 128, !dbg !1276
  %cmp3 = icmp eq i32 %and, 128, !dbg !1276
  br i1 %cmp3, label %land.lhs.true, label %if.end11, !dbg !1277

land.lhs.true:                                    ; preds = %do.end
  %10 = load i32, i32* %gstate, align 4, !dbg !1278
  %cmp5 = icmp eq i32 %10, 33, !dbg !1279
  br i1 %cmp5, label %if.then7, label %if.end11, !dbg !1280

if.then7:                                         ; preds = %land.lhs.true
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1281
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !1281
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !1281
  %CR39 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 2, !dbg !1281
  %13 = load volatile i32, i32* %CR39, align 4, !dbg !1281
  %and10 = and i32 %13, -129, !dbg !1281
  store volatile i32 %and10, i32* %CR39, align 4, !dbg !1281
  br label %if.end11, !dbg !1282

if.end11:                                         ; preds = %if.then7, %land.lhs.true, %do.end
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1283
  %Instance12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !1283
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance12, align 4, !dbg !1283
  %CR313 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 2, !dbg !1283
  %16 = load volatile i32, i32* %CR313, align 4, !dbg !1283
  %and14 = and i32 %16, 64, !dbg !1283
  %cmp15 = icmp eq i32 %and14, 64, !dbg !1283
  br i1 %cmp15, label %land.lhs.true17, label %if.end29, !dbg !1284

land.lhs.true17:                                  ; preds = %if.end11
  %17 = load i32, i32* %rxstate, align 4, !dbg !1285
  %cmp18 = icmp eq i32 %17, 34, !dbg !1286
  br i1 %cmp18, label %if.then20, label %if.end29, !dbg !1287

if.then20:                                        ; preds = %land.lhs.true17
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1288
  %Instance21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !1288
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance21, align 4, !dbg !1288
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 0, !dbg !1288
  %20 = load volatile i32, i32* %CR1, align 4, !dbg !1288
  %and22 = and i32 %20, -257, !dbg !1288
  store volatile i32 %and22, i32* %CR1, align 4, !dbg !1288
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1289
  %Instance23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 0, !dbg !1289
  %22 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance23, align 4, !dbg !1289
  %CR324 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %22, i32 0, i32 2, !dbg !1289
  %23 = load volatile i32, i32* %CR324, align 4, !dbg !1289
  %and25 = and i32 %23, -2, !dbg !1289
  store volatile i32 %and25, i32* %CR324, align 4, !dbg !1289
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1290
  %Instance26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 0, !dbg !1290
  %25 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance26, align 4, !dbg !1290
  %CR327 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %25, i32 0, i32 2, !dbg !1290
  %26 = load volatile i32, i32* %CR327, align 4, !dbg !1290
  %and28 = and i32 %26, -65, !dbg !1290
  store volatile i32 %and28, i32* %CR327, align 4, !dbg !1290
  br label %if.end29, !dbg !1291

if.end29:                                         ; preds = %if.then20, %land.lhs.true17, %if.end11
  br label %do.body30, !dbg !1292

do.body30:                                        ; preds = %if.end29
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1292
  %Lock31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 18, !dbg !1292
  store i8 0, i8* %Lock31, align 4, !dbg !1292
  br label %do.end32, !dbg !1292

do.end32:                                         ; preds = %do.body30
  store i8 0, i8* %retval, align 1, !dbg !1293
  br label %return, !dbg !1293

return:                                           ; preds = %do.end32, %if.then
  %28 = load i8, i8* %retval, align 1, !dbg !1294
  ret i8 %28, !dbg !1294
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_DMAResume(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1295 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !1296

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1296
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !1296
  %1 = load i8, i8* %Lock, align 4, !dbg !1296
  %conv = zext i8 %1 to i32, !dbg !1296
  %cmp = icmp eq i32 %conv, 1, !dbg !1296
  br i1 %cmp, label %if.then, label %if.else, !dbg !1296

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !1296
  br label %return, !dbg !1296

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1296
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !1296
  store i8 1, i8* %Lock2, align 4, !dbg !1296
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !1296

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1297
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !1298
  %4 = load volatile i32, i32* %gState, align 4, !dbg !1298
  %cmp3 = icmp eq i32 %4, 33, !dbg !1299
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !1297

if.then5:                                         ; preds = %do.end
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1300
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 0, !dbg !1300
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1300
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 2, !dbg !1300
  %7 = load volatile i32, i32* %CR3, align 4, !dbg !1300
  %or = or i32 %7, 128, !dbg !1300
  store volatile i32 %or, i32* %CR3, align 4, !dbg !1300
  br label %if.end6, !dbg !1301

if.end6:                                          ; preds = %if.then5, %do.end
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1302
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 20, !dbg !1303
  %9 = load volatile i32, i32* %RxState, align 4, !dbg !1303
  %cmp7 = icmp eq i32 %9, 34, !dbg !1304
  br i1 %cmp7, label %if.then9, label %if.end19, !dbg !1302

if.then9:                                         ; preds = %if.end6
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1305
  %Instance10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !1305
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance10, align 4, !dbg !1305
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 8, !dbg !1305
  store volatile i32 8, i32* %ICR, align 4, !dbg !1305
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1306
  %Instance11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 0, !dbg !1306
  %13 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance11, align 4, !dbg !1306
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %13, i32 0, i32 0, !dbg !1306
  %14 = load volatile i32, i32* %CR1, align 4, !dbg !1306
  %or12 = or i32 %14, 256, !dbg !1306
  store volatile i32 %or12, i32* %CR1, align 4, !dbg !1306
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1307
  %Instance13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 0, !dbg !1307
  %16 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance13, align 4, !dbg !1307
  %CR314 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %16, i32 0, i32 2, !dbg !1307
  %17 = load volatile i32, i32* %CR314, align 4, !dbg !1307
  %or15 = or i32 %17, 1, !dbg !1307
  store volatile i32 %or15, i32* %CR314, align 4, !dbg !1307
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1308
  %Instance16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !1308
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance16, align 4, !dbg !1308
  %CR317 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 2, !dbg !1308
  %20 = load volatile i32, i32* %CR317, align 4, !dbg !1308
  %or18 = or i32 %20, 64, !dbg !1308
  store volatile i32 %or18, i32* %CR317, align 4, !dbg !1308
  br label %if.end19, !dbg !1309

if.end19:                                         ; preds = %if.then9, %if.end6
  br label %do.body20, !dbg !1310

do.body20:                                        ; preds = %if.end19
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1310
  %Lock21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 18, !dbg !1310
  store i8 0, i8* %Lock21, align 4, !dbg !1310
  br label %do.end22, !dbg !1310

do.end22:                                         ; preds = %do.body20
  store i8 0, i8* %retval, align 1, !dbg !1311
  br label %return, !dbg !1311

return:                                           ; preds = %do.end22, %if.then
  %22 = load i8, i8* %retval, align 1, !dbg !1312
  ret i8 %22, !dbg !1312
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_DMAStop(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1313 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %gstate = alloca i32, align 4
  %rxstate = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1314
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !1315
  %1 = load volatile i32, i32* %gState, align 4, !dbg !1315
  store i32 %1, i32* %gstate, align 4, !dbg !1316
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1317
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 20, !dbg !1318
  %3 = load volatile i32, i32* %RxState, align 4, !dbg !1318
  store i32 %3, i32* %rxstate, align 4, !dbg !1319
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1320
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !1320
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1320
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 2, !dbg !1320
  %6 = load volatile i32, i32* %CR3, align 4, !dbg !1320
  %and = and i32 %6, 128, !dbg !1320
  %cmp = icmp eq i32 %and, 128, !dbg !1320
  br i1 %cmp, label %land.lhs.true, label %if.end18, !dbg !1321

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %gstate, align 4, !dbg !1322
  %cmp1 = icmp eq i32 %7, 33, !dbg !1323
  br i1 %cmp1, label %if.then, label %if.end18, !dbg !1324

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1325
  %Instance2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !1325
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance2, align 4, !dbg !1325
  %CR33 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 2, !dbg !1325
  %10 = load volatile i32, i32* %CR33, align 4, !dbg !1325
  %and4 = and i32 %10, -129, !dbg !1325
  store volatile i32 %and4, i32* %CR33, align 4, !dbg !1325
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1326
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 16, !dbg !1327
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1327
  %cmp5 = icmp ne %struct.__DMA_HandleTypeDef* %12, null, !dbg !1328
  br i1 %cmp5, label %if.then6, label %if.end17, !dbg !1326

if.then6:                                         ; preds = %if.then
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1329
  %hdmatx7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 16, !dbg !1330
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx7, align 4, !dbg !1330
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %14), !dbg !1331
  %conv = zext i8 %call to i32, !dbg !1331
  %cmp8 = icmp ne i32 %conv, 0, !dbg !1332
  br i1 %cmp8, label %if.then10, label %if.end16, !dbg !1331

if.then10:                                        ; preds = %if.then6
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1333
  %hdmatx11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 16, !dbg !1334
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx11, align 4, !dbg !1334
  %call12 = call arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* %16), !dbg !1335
  %cmp13 = icmp eq i32 %call12, 32, !dbg !1336
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !1335

if.then15:                                        ; preds = %if.then10
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1337
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 21, !dbg !1338
  store volatile i32 16, i32* %ErrorCode, align 4, !dbg !1339
  store i8 3, i8* %retval, align 1, !dbg !1340
  br label %return, !dbg !1340

if.end:                                           ; preds = %if.then10
  br label %if.end16, !dbg !1341

if.end16:                                         ; preds = %if.end, %if.then6
  br label %if.end17, !dbg !1342

if.end17:                                         ; preds = %if.end16, %if.then
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1343
  call arm_aapcs_vfpcc void @UART_EndTxTransfer(%struct.__UART_HandleTypeDef* %18), !dbg !1344
  br label %if.end18, !dbg !1345

if.end18:                                         ; preds = %if.end17, %land.lhs.true, %entry
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1346
  %Instance19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 0, !dbg !1346
  %20 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance19, align 4, !dbg !1346
  %CR320 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %20, i32 0, i32 2, !dbg !1346
  %21 = load volatile i32, i32* %CR320, align 4, !dbg !1346
  %and21 = and i32 %21, 64, !dbg !1346
  %cmp22 = icmp eq i32 %and21, 64, !dbg !1346
  br i1 %cmp22, label %land.lhs.true24, label %if.end49, !dbg !1347

land.lhs.true24:                                  ; preds = %if.end18
  %22 = load i32, i32* %rxstate, align 4, !dbg !1348
  %cmp25 = icmp eq i32 %22, 34, !dbg !1349
  br i1 %cmp25, label %if.then27, label %if.end49, !dbg !1350

if.then27:                                        ; preds = %land.lhs.true24
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1351
  %Instance28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 0, !dbg !1351
  %24 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance28, align 4, !dbg !1351
  %CR329 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %24, i32 0, i32 2, !dbg !1351
  %25 = load volatile i32, i32* %CR329, align 4, !dbg !1351
  %and30 = and i32 %25, -65, !dbg !1351
  store volatile i32 %and30, i32* %CR329, align 4, !dbg !1351
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1352
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 17, !dbg !1353
  %27 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1353
  %cmp31 = icmp ne %struct.__DMA_HandleTypeDef* %27, null, !dbg !1354
  br i1 %cmp31, label %if.then33, label %if.end48, !dbg !1352

if.then33:                                        ; preds = %if.then27
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1355
  %hdmarx34 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 17, !dbg !1356
  %29 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx34, align 4, !dbg !1356
  %call35 = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %29), !dbg !1357
  %conv36 = zext i8 %call35 to i32, !dbg !1357
  %cmp37 = icmp ne i32 %conv36, 0, !dbg !1358
  br i1 %cmp37, label %if.then39, label %if.end47, !dbg !1357

if.then39:                                        ; preds = %if.then33
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1359
  %hdmarx40 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 17, !dbg !1360
  %31 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx40, align 4, !dbg !1360
  %call41 = call arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* %31), !dbg !1361
  %cmp42 = icmp eq i32 %call41, 32, !dbg !1362
  br i1 %cmp42, label %if.then44, label %if.end46, !dbg !1361

if.then44:                                        ; preds = %if.then39
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1363
  %ErrorCode45 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 21, !dbg !1364
  store volatile i32 16, i32* %ErrorCode45, align 4, !dbg !1365
  store i8 3, i8* %retval, align 1, !dbg !1366
  br label %return, !dbg !1366

if.end46:                                         ; preds = %if.then39
  br label %if.end47, !dbg !1367

if.end47:                                         ; preds = %if.end46, %if.then33
  br label %if.end48, !dbg !1368

if.end48:                                         ; preds = %if.end47, %if.then27
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1369
  call arm_aapcs_vfpcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* %33), !dbg !1370
  br label %if.end49, !dbg !1371

if.end49:                                         ; preds = %if.end48, %land.lhs.true24, %if.end18
  store i8 0, i8* %retval, align 1, !dbg !1372
  br label %return, !dbg !1372

return:                                           ; preds = %if.end49, %if.then44, %if.then15
  %34 = load i8, i8* %retval, align 1, !dbg !1373
  ret i8 %34, !dbg !1373
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef*) #1

declare dso_local arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef*) #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_EndTxTransfer(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1374 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1375
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1375
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1375
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1375
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1375
  %and = and i32 %2, -193, !dbg !1375
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1375
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1376
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1376
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1376
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1376
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1376
  %and2 = and i32 %5, -8388609, !dbg !1376
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1376
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1377
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 19, !dbg !1378
  store volatile i32 32, i32* %gState, align 4, !dbg !1379
  ret void, !dbg !1380
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1381 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1382
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1382
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1382
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1382
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1382
  %and = and i32 %2, -289, !dbg !1382
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1382
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1383
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1383
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1383
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1383
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1383
  %and2 = and i32 %5, -268435458, !dbg !1383
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1383
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1384
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 13, !dbg !1385
  %7 = load volatile i32, i32* %ReceptionType, align 4, !dbg !1385
  %cmp = icmp eq i32 %7, 1, !dbg !1386
  br i1 %cmp, label %if.then, label %if.end, !dbg !1384

if.then:                                          ; preds = %entry
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1387
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !1387
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1387
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 0, !dbg !1387
  %10 = load volatile i32, i32* %CR14, align 4, !dbg !1387
  %and5 = and i32 %10, -17, !dbg !1387
  store volatile i32 %and5, i32* %CR14, align 4, !dbg !1387
  br label %if.end, !dbg !1388

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1389
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 20, !dbg !1390
  store volatile i32 32, i32* %RxState, align 4, !dbg !1391
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1392
  %ReceptionType6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 13, !dbg !1393
  store volatile i32 0, i32* %ReceptionType6, align 4, !dbg !1394
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1395
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 14, !dbg !1396
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !1397
  ret void, !dbg !1398
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Abort(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1399 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1400
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1400
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1400
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1400
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1400
  %and = and i32 %2, -481, !dbg !1400
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1400
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1401
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1401
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1401
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1401
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1401
  %and2 = and i32 %5, -276824066, !dbg !1401
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1401
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1402
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 13, !dbg !1403
  %7 = load volatile i32, i32* %ReceptionType, align 4, !dbg !1403
  %cmp = icmp eq i32 %7, 1, !dbg !1404
  br i1 %cmp, label %if.then, label %if.end, !dbg !1402

if.then:                                          ; preds = %entry
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1405
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !1405
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1405
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 0, !dbg !1405
  %10 = load volatile i32, i32* %CR14, align 4, !dbg !1405
  %and5 = and i32 %10, -17, !dbg !1405
  store volatile i32 %and5, i32* %CR14, align 4, !dbg !1405
  br label %if.end, !dbg !1406

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1407
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !1407
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !1407
  %CR37 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 2, !dbg !1407
  %13 = load volatile i32, i32* %CR37, align 4, !dbg !1407
  %and8 = and i32 %13, 128, !dbg !1407
  %cmp9 = icmp eq i32 %and8, 128, !dbg !1407
  br i1 %cmp9, label %if.then10, label %if.end29, !dbg !1407

if.then10:                                        ; preds = %if.end
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1408
  %Instance11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !1408
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance11, align 4, !dbg !1408
  %CR312 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 2, !dbg !1408
  %16 = load volatile i32, i32* %CR312, align 4, !dbg !1408
  %and13 = and i32 %16, -129, !dbg !1408
  store volatile i32 %and13, i32* %CR312, align 4, !dbg !1408
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1409
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 16, !dbg !1410
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1410
  %cmp14 = icmp ne %struct.__DMA_HandleTypeDef* %18, null, !dbg !1411
  br i1 %cmp14, label %if.then15, label %if.end28, !dbg !1409

if.then15:                                        ; preds = %if.then10
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1412
  %hdmatx16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 16, !dbg !1413
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx16, align 4, !dbg !1413
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 10, !dbg !1414
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1415
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1416
  %hdmatx17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 16, !dbg !1417
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx17, align 4, !dbg !1417
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %22), !dbg !1418
  %conv = zext i8 %call to i32, !dbg !1418
  %cmp18 = icmp ne i32 %conv, 0, !dbg !1419
  br i1 %cmp18, label %if.then20, label %if.end27, !dbg !1418

if.then20:                                        ; preds = %if.then15
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1420
  %hdmatx21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 16, !dbg !1421
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx21, align 4, !dbg !1421
  %call22 = call arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* %24), !dbg !1422
  %cmp23 = icmp eq i32 %call22, 32, !dbg !1423
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1422

if.then25:                                        ; preds = %if.then20
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1424
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 21, !dbg !1425
  store volatile i32 16, i32* %ErrorCode, align 4, !dbg !1426
  store i8 3, i8* %retval, align 1, !dbg !1427
  br label %return, !dbg !1427

if.end26:                                         ; preds = %if.then20
  br label %if.end27, !dbg !1428

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end28, !dbg !1429

if.end28:                                         ; preds = %if.end27, %if.then10
  br label %if.end29, !dbg !1430

if.end29:                                         ; preds = %if.end28, %if.end
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1431
  %Instance30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 0, !dbg !1431
  %27 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance30, align 4, !dbg !1431
  %CR331 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %27, i32 0, i32 2, !dbg !1431
  %28 = load volatile i32, i32* %CR331, align 4, !dbg !1431
  %and32 = and i32 %28, 64, !dbg !1431
  %cmp33 = icmp eq i32 %and32, 64, !dbg !1431
  br i1 %cmp33, label %if.then35, label %if.end59, !dbg !1431

if.then35:                                        ; preds = %if.end29
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1432
  %Instance36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !1432
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance36, align 4, !dbg !1432
  %CR337 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 2, !dbg !1432
  %31 = load volatile i32, i32* %CR337, align 4, !dbg !1432
  %and38 = and i32 %31, -65, !dbg !1432
  store volatile i32 %and38, i32* %CR337, align 4, !dbg !1432
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1433
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 17, !dbg !1434
  %33 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1434
  %cmp39 = icmp ne %struct.__DMA_HandleTypeDef* %33, null, !dbg !1435
  br i1 %cmp39, label %if.then41, label %if.end58, !dbg !1433

if.then41:                                        ; preds = %if.then35
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1436
  %hdmarx42 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 17, !dbg !1437
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx42, align 4, !dbg !1437
  %XferAbortCallback43 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %35, i32 0, i32 10, !dbg !1438
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback43, align 4, !dbg !1439
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1440
  %hdmarx44 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 17, !dbg !1441
  %37 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx44, align 4, !dbg !1441
  %call45 = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %37), !dbg !1442
  %conv46 = zext i8 %call45 to i32, !dbg !1442
  %cmp47 = icmp ne i32 %conv46, 0, !dbg !1443
  br i1 %cmp47, label %if.then49, label %if.end57, !dbg !1442

if.then49:                                        ; preds = %if.then41
  %38 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1444
  %hdmarx50 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %38, i32 0, i32 17, !dbg !1445
  %39 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx50, align 4, !dbg !1445
  %call51 = call arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* %39), !dbg !1446
  %cmp52 = icmp eq i32 %call51, 32, !dbg !1447
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !1446

if.then54:                                        ; preds = %if.then49
  %40 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1448
  %ErrorCode55 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %40, i32 0, i32 21, !dbg !1449
  store volatile i32 16, i32* %ErrorCode55, align 4, !dbg !1450
  store i8 3, i8* %retval, align 1, !dbg !1451
  br label %return, !dbg !1451

if.end56:                                         ; preds = %if.then49
  br label %if.end57, !dbg !1452

if.end57:                                         ; preds = %if.end56, %if.then41
  br label %if.end58, !dbg !1453

if.end58:                                         ; preds = %if.end57, %if.then35
  br label %if.end59, !dbg !1454

if.end59:                                         ; preds = %if.end58, %if.end29
  %41 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1455
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %41, i32 0, i32 5, !dbg !1456
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1457
  %42 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1458
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %42, i32 0, i32 8, !dbg !1459
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1460
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1461
  %Instance60 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 0, !dbg !1461
  %44 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance60, align 4, !dbg !1461
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %44, i32 0, i32 8, !dbg !1461
  store volatile i32 15, i32* %ICR, align 4, !dbg !1461
  %45 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1462
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %45, i32 0, i32 10, !dbg !1463
  %46 = load i32, i32* %FifoMode, align 4, !dbg !1463
  %cmp61 = icmp eq i32 %46, 536870912, !dbg !1464
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !1462

if.then63:                                        ; preds = %if.end59
  %47 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1465
  %Instance64 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %47, i32 0, i32 0, !dbg !1465
  %48 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance64, align 4, !dbg !1465
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %48, i32 0, i32 6, !dbg !1465
  %49 = load volatile i32, i32* %RQR, align 4, !dbg !1465
  %or = or i32 %49, 16, !dbg !1465
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1465
  br label %if.end65, !dbg !1466

if.end65:                                         ; preds = %if.then63, %if.end59
  %50 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1467
  %Instance66 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %50, i32 0, i32 0, !dbg !1467
  %51 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance66, align 4, !dbg !1467
  %RQR67 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %51, i32 0, i32 6, !dbg !1467
  %52 = load volatile i32, i32* %RQR67, align 4, !dbg !1467
  %or68 = or i32 %52, 8, !dbg !1467
  store volatile i32 %or68, i32* %RQR67, align 4, !dbg !1467
  %53 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1468
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %53, i32 0, i32 19, !dbg !1469
  store volatile i32 32, i32* %gState, align 4, !dbg !1470
  %54 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1471
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %54, i32 0, i32 20, !dbg !1472
  store volatile i32 32, i32* %RxState, align 4, !dbg !1473
  %55 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1474
  %ReceptionType69 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %55, i32 0, i32 13, !dbg !1475
  store volatile i32 0, i32* %ReceptionType69, align 4, !dbg !1476
  %56 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1477
  %ErrorCode70 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %56, i32 0, i32 21, !dbg !1478
  store volatile i32 0, i32* %ErrorCode70, align 4, !dbg !1479
  store i8 0, i8* %retval, align 1, !dbg !1480
  br label %return, !dbg !1480

return:                                           ; preds = %if.end65, %if.then54, %if.then25
  %57 = load i8, i8* %retval, align 1, !dbg !1481
  ret i8 %57, !dbg !1481
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_AbortTransmit(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1482 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1483
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1483
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1483
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1483
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1483
  %and = and i32 %2, -193, !dbg !1483
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1483
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1484
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1484
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1484
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1484
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1484
  %and2 = and i32 %5, -8388609, !dbg !1484
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1484
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1485
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !1485
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1485
  %CR34 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 2, !dbg !1485
  %8 = load volatile i32, i32* %CR34, align 4, !dbg !1485
  %and5 = and i32 %8, 128, !dbg !1485
  %cmp = icmp eq i32 %and5, 128, !dbg !1485
  br i1 %cmp, label %if.then, label %if.end23, !dbg !1485

if.then:                                          ; preds = %entry
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1486
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 0, !dbg !1486
  %10 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !1486
  %CR37 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %10, i32 0, i32 2, !dbg !1486
  %11 = load volatile i32, i32* %CR37, align 4, !dbg !1486
  %and8 = and i32 %11, -129, !dbg !1486
  store volatile i32 %and8, i32* %CR37, align 4, !dbg !1486
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1487
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 16, !dbg !1488
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1488
  %cmp9 = icmp ne %struct.__DMA_HandleTypeDef* %13, null, !dbg !1489
  br i1 %cmp9, label %if.then10, label %if.end22, !dbg !1487

if.then10:                                        ; preds = %if.then
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1490
  %hdmatx11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 16, !dbg !1491
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx11, align 4, !dbg !1491
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 10, !dbg !1492
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1493
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1494
  %hdmatx12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 16, !dbg !1495
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx12, align 4, !dbg !1495
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %17), !dbg !1496
  %conv = zext i8 %call to i32, !dbg !1496
  %cmp13 = icmp ne i32 %conv, 0, !dbg !1497
  br i1 %cmp13, label %if.then15, label %if.end21, !dbg !1496

if.then15:                                        ; preds = %if.then10
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1498
  %hdmatx16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 16, !dbg !1499
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx16, align 4, !dbg !1499
  %call17 = call arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* %19), !dbg !1500
  %cmp18 = icmp eq i32 %call17, 32, !dbg !1501
  br i1 %cmp18, label %if.then20, label %if.end, !dbg !1500

if.then20:                                        ; preds = %if.then15
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1502
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 21, !dbg !1503
  store volatile i32 16, i32* %ErrorCode, align 4, !dbg !1504
  store i8 3, i8* %retval, align 1, !dbg !1505
  br label %return, !dbg !1505

if.end:                                           ; preds = %if.then15
  br label %if.end21, !dbg !1506

if.end21:                                         ; preds = %if.end, %if.then10
  br label %if.end22, !dbg !1507

if.end22:                                         ; preds = %if.end21, %if.then
  br label %if.end23, !dbg !1508

if.end23:                                         ; preds = %if.end22, %entry
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1509
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 5, !dbg !1510
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1511
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1512
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 10, !dbg !1513
  %23 = load i32, i32* %FifoMode, align 4, !dbg !1513
  %cmp24 = icmp eq i32 %23, 536870912, !dbg !1514
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !1512

if.then26:                                        ; preds = %if.end23
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1515
  %Instance27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 0, !dbg !1515
  %25 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance27, align 4, !dbg !1515
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %25, i32 0, i32 6, !dbg !1515
  %26 = load volatile i32, i32* %RQR, align 4, !dbg !1515
  %or = or i32 %26, 16, !dbg !1515
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1515
  br label %if.end28, !dbg !1516

if.end28:                                         ; preds = %if.then26, %if.end23
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1517
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 19, !dbg !1518
  store volatile i32 32, i32* %gState, align 4, !dbg !1519
  store i8 0, i8* %retval, align 1, !dbg !1520
  br label %return, !dbg !1520

return:                                           ; preds = %if.end28, %if.then20
  %28 = load i8, i8* %retval, align 1, !dbg !1521
  ret i8 %28, !dbg !1521
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_AbortReceive(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1522 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1523
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1523
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1523
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1523
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1523
  %and = and i32 %2, -289, !dbg !1523
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1523
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1524
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1524
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1524
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1524
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1524
  %and2 = and i32 %5, -268435458, !dbg !1524
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1524
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1525
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 13, !dbg !1526
  %7 = load volatile i32, i32* %ReceptionType, align 4, !dbg !1526
  %cmp = icmp eq i32 %7, 1, !dbg !1527
  br i1 %cmp, label %if.then, label %if.end, !dbg !1525

if.then:                                          ; preds = %entry
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1528
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !1528
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1528
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 0, !dbg !1528
  %10 = load volatile i32, i32* %CR14, align 4, !dbg !1528
  %and5 = and i32 %10, -17, !dbg !1528
  store volatile i32 %and5, i32* %CR14, align 4, !dbg !1528
  br label %if.end, !dbg !1529

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1530
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !1530
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !1530
  %CR37 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 2, !dbg !1530
  %13 = load volatile i32, i32* %CR37, align 4, !dbg !1530
  %and8 = and i32 %13, 64, !dbg !1530
  %cmp9 = icmp eq i32 %and8, 64, !dbg !1530
  br i1 %cmp9, label %if.then10, label %if.end29, !dbg !1530

if.then10:                                        ; preds = %if.end
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1531
  %Instance11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !1531
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance11, align 4, !dbg !1531
  %CR312 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 2, !dbg !1531
  %16 = load volatile i32, i32* %CR312, align 4, !dbg !1531
  %and13 = and i32 %16, -65, !dbg !1531
  store volatile i32 %and13, i32* %CR312, align 4, !dbg !1531
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1532
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 17, !dbg !1533
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1533
  %cmp14 = icmp ne %struct.__DMA_HandleTypeDef* %18, null, !dbg !1534
  br i1 %cmp14, label %if.then15, label %if.end28, !dbg !1532

if.then15:                                        ; preds = %if.then10
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1535
  %hdmarx16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 17, !dbg !1536
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx16, align 4, !dbg !1536
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 10, !dbg !1537
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1538
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1539
  %hdmarx17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 17, !dbg !1540
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx17, align 4, !dbg !1540
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %22), !dbg !1541
  %conv = zext i8 %call to i32, !dbg !1541
  %cmp18 = icmp ne i32 %conv, 0, !dbg !1542
  br i1 %cmp18, label %if.then20, label %if.end27, !dbg !1541

if.then20:                                        ; preds = %if.then15
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1543
  %hdmarx21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 17, !dbg !1544
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx21, align 4, !dbg !1544
  %call22 = call arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* %24), !dbg !1545
  %cmp23 = icmp eq i32 %call22, 32, !dbg !1546
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !1545

if.then25:                                        ; preds = %if.then20
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1547
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 21, !dbg !1548
  store volatile i32 16, i32* %ErrorCode, align 4, !dbg !1549
  store i8 3, i8* %retval, align 1, !dbg !1550
  br label %return, !dbg !1550

if.end26:                                         ; preds = %if.then20
  br label %if.end27, !dbg !1551

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end28, !dbg !1552

if.end28:                                         ; preds = %if.end27, %if.then10
  br label %if.end29, !dbg !1553

if.end29:                                         ; preds = %if.end28, %if.end
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1554
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 8, !dbg !1555
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1556
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1557
  %Instance30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 0, !dbg !1557
  %28 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance30, align 4, !dbg !1557
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %28, i32 0, i32 8, !dbg !1557
  store volatile i32 15, i32* %ICR, align 4, !dbg !1557
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1558
  %Instance31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !1558
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance31, align 4, !dbg !1558
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 6, !dbg !1558
  %31 = load volatile i32, i32* %RQR, align 4, !dbg !1558
  %or = or i32 %31, 8, !dbg !1558
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1558
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1559
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 20, !dbg !1560
  store volatile i32 32, i32* %RxState, align 4, !dbg !1561
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1562
  %ReceptionType32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %33, i32 0, i32 13, !dbg !1563
  store volatile i32 0, i32* %ReceptionType32, align 4, !dbg !1564
  store i8 0, i8* %retval, align 1, !dbg !1565
  br label %return, !dbg !1565

return:                                           ; preds = %if.end29, %if.then25
  %34 = load i8, i8* %retval, align 1, !dbg !1566
  ret i8 %34, !dbg !1566
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_Abort_IT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1567 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %abortcplt = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 1, i32* %abortcplt, align 4, !dbg !1568
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1569
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1569
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1569
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1569
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1569
  %and = and i32 %2, -481, !dbg !1569
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1569
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1570
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1570
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1570
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1570
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1570
  %and2 = and i32 %5, -276824066, !dbg !1570
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1570
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1571
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 13, !dbg !1572
  %7 = load volatile i32, i32* %ReceptionType, align 4, !dbg !1572
  %cmp = icmp eq i32 %7, 1, !dbg !1573
  br i1 %cmp, label %if.then, label %if.end, !dbg !1571

if.then:                                          ; preds = %entry
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1574
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !1574
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1574
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 0, !dbg !1574
  %10 = load volatile i32, i32* %CR14, align 4, !dbg !1574
  %and5 = and i32 %10, -17, !dbg !1574
  store volatile i32 %and5, i32* %CR14, align 4, !dbg !1574
  br label %if.end, !dbg !1575

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1576
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 16, !dbg !1577
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1577
  %cmp6 = icmp ne %struct.__DMA_HandleTypeDef* %12, null, !dbg !1578
  br i1 %cmp6, label %if.then7, label %if.end17, !dbg !1576

if.then7:                                         ; preds = %if.end
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1579
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !1579
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !1579
  %CR39 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 2, !dbg !1579
  %15 = load volatile i32, i32* %CR39, align 4, !dbg !1579
  %and10 = and i32 %15, 128, !dbg !1579
  %cmp11 = icmp eq i32 %and10, 128, !dbg !1579
  br i1 %cmp11, label %if.then12, label %if.else, !dbg !1579

if.then12:                                        ; preds = %if.then7
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1580
  %hdmatx13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 16, !dbg !1581
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx13, align 4, !dbg !1581
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 10, !dbg !1582
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMATxAbortCallback, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1583
  br label %if.end16, !dbg !1584

if.else:                                          ; preds = %if.then7
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1585
  %hdmatx14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 16, !dbg !1586
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx14, align 4, !dbg !1586
  %XferAbortCallback15 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %19, i32 0, i32 10, !dbg !1587
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback15, align 4, !dbg !1588
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then12
  br label %if.end17, !dbg !1589

if.end17:                                         ; preds = %if.end16, %if.end
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1590
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 17, !dbg !1591
  %21 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1591
  %cmp18 = icmp ne %struct.__DMA_HandleTypeDef* %21, null, !dbg !1592
  br i1 %cmp18, label %if.then19, label %if.end31, !dbg !1590

if.then19:                                        ; preds = %if.end17
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1593
  %Instance20 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 0, !dbg !1593
  %23 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance20, align 4, !dbg !1593
  %CR321 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 2, !dbg !1593
  %24 = load volatile i32, i32* %CR321, align 4, !dbg !1593
  %and22 = and i32 %24, 64, !dbg !1593
  %cmp23 = icmp eq i32 %and22, 64, !dbg !1593
  br i1 %cmp23, label %if.then24, label %if.else27, !dbg !1593

if.then24:                                        ; preds = %if.then19
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1594
  %hdmarx25 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 17, !dbg !1595
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx25, align 4, !dbg !1595
  %XferAbortCallback26 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %26, i32 0, i32 10, !dbg !1596
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMARxAbortCallback, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback26, align 4, !dbg !1597
  br label %if.end30, !dbg !1598

if.else27:                                        ; preds = %if.then19
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1599
  %hdmarx28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 17, !dbg !1600
  %28 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx28, align 4, !dbg !1600
  %XferAbortCallback29 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %28, i32 0, i32 10, !dbg !1601
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback29, align 4, !dbg !1602
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then24
  br label %if.end31, !dbg !1603

if.end31:                                         ; preds = %if.end30, %if.end17
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1604
  %Instance32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !1604
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance32, align 4, !dbg !1604
  %CR333 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 2, !dbg !1604
  %31 = load volatile i32, i32* %CR333, align 4, !dbg !1604
  %and34 = and i32 %31, 128, !dbg !1604
  %cmp35 = icmp eq i32 %and34, 128, !dbg !1604
  br i1 %cmp35, label %if.then36, label %if.end52, !dbg !1604

if.then36:                                        ; preds = %if.end31
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1605
  %Instance37 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 0, !dbg !1605
  %33 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance37, align 4, !dbg !1605
  %CR338 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 2, !dbg !1605
  %34 = load volatile i32, i32* %CR338, align 4, !dbg !1605
  %and39 = and i32 %34, -129, !dbg !1605
  store volatile i32 %and39, i32* %CR338, align 4, !dbg !1605
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1606
  %hdmatx40 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 16, !dbg !1607
  %36 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx40, align 4, !dbg !1607
  %cmp41 = icmp ne %struct.__DMA_HandleTypeDef* %36, null, !dbg !1608
  br i1 %cmp41, label %if.then42, label %if.end51, !dbg !1606

if.then42:                                        ; preds = %if.then36
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1609
  %hdmatx43 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 16, !dbg !1610
  %38 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx43, align 4, !dbg !1610
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* %38), !dbg !1611
  %conv = zext i8 %call to i32, !dbg !1611
  %cmp44 = icmp ne i32 %conv, 0, !dbg !1612
  br i1 %cmp44, label %if.then46, label %if.else49, !dbg !1611

if.then46:                                        ; preds = %if.then42
  %39 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1613
  %hdmatx47 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %39, i32 0, i32 16, !dbg !1614
  %40 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx47, align 4, !dbg !1614
  %XferAbortCallback48 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %40, i32 0, i32 10, !dbg !1615
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback48, align 4, !dbg !1616
  br label %if.end50, !dbg !1617

if.else49:                                        ; preds = %if.then42
  store i32 0, i32* %abortcplt, align 4, !dbg !1618
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then46
  br label %if.end51, !dbg !1619

if.end51:                                         ; preds = %if.end50, %if.then36
  br label %if.end52, !dbg !1620

if.end52:                                         ; preds = %if.end51, %if.end31
  %41 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1621
  %Instance53 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %41, i32 0, i32 0, !dbg !1621
  %42 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance53, align 4, !dbg !1621
  %CR354 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %42, i32 0, i32 2, !dbg !1621
  %43 = load volatile i32, i32* %CR354, align 4, !dbg !1621
  %and55 = and i32 %43, 64, !dbg !1621
  %cmp56 = icmp eq i32 %and55, 64, !dbg !1621
  br i1 %cmp56, label %if.then58, label %if.end77, !dbg !1621

if.then58:                                        ; preds = %if.end52
  %44 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1622
  %Instance59 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %44, i32 0, i32 0, !dbg !1622
  %45 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance59, align 4, !dbg !1622
  %CR360 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %45, i32 0, i32 2, !dbg !1622
  %46 = load volatile i32, i32* %CR360, align 4, !dbg !1622
  %and61 = and i32 %46, -65, !dbg !1622
  store volatile i32 %and61, i32* %CR360, align 4, !dbg !1622
  %47 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1623
  %hdmarx62 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %47, i32 0, i32 17, !dbg !1624
  %48 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx62, align 4, !dbg !1624
  %cmp63 = icmp ne %struct.__DMA_HandleTypeDef* %48, null, !dbg !1625
  br i1 %cmp63, label %if.then65, label %if.end76, !dbg !1623

if.then65:                                        ; preds = %if.then58
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1626
  %hdmarx66 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 17, !dbg !1627
  %50 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx66, align 4, !dbg !1627
  %call67 = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* %50), !dbg !1628
  %conv68 = zext i8 %call67 to i32, !dbg !1628
  %cmp69 = icmp ne i32 %conv68, 0, !dbg !1629
  br i1 %cmp69, label %if.then71, label %if.else74, !dbg !1628

if.then71:                                        ; preds = %if.then65
  %51 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1630
  %hdmarx72 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %51, i32 0, i32 17, !dbg !1631
  %52 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx72, align 4, !dbg !1631
  %XferAbortCallback73 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %52, i32 0, i32 10, !dbg !1632
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback73, align 4, !dbg !1633
  store i32 1, i32* %abortcplt, align 4, !dbg !1634
  br label %if.end75, !dbg !1635

if.else74:                                        ; preds = %if.then65
  store i32 0, i32* %abortcplt, align 4, !dbg !1636
  br label %if.end75

if.end75:                                         ; preds = %if.else74, %if.then71
  br label %if.end76, !dbg !1637

if.end76:                                         ; preds = %if.end75, %if.then58
  br label %if.end77, !dbg !1638

if.end77:                                         ; preds = %if.end76, %if.end52
  %53 = load i32, i32* %abortcplt, align 4, !dbg !1639
  %cmp78 = icmp eq i32 %53, 1, !dbg !1640
  br i1 %cmp78, label %if.then80, label %if.end91, !dbg !1639

if.then80:                                        ; preds = %if.end77
  %54 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1641
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %54, i32 0, i32 5, !dbg !1642
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1643
  %55 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1644
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %55, i32 0, i32 8, !dbg !1645
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1646
  %56 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1647
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %56, i32 0, i32 14, !dbg !1648
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !1649
  %57 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1650
  %TxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %57, i32 0, i32 15, !dbg !1651
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %TxISR, align 4, !dbg !1652
  %58 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1653
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %58, i32 0, i32 21, !dbg !1654
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !1655
  %59 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1656
  %Instance81 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %59, i32 0, i32 0, !dbg !1656
  %60 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance81, align 4, !dbg !1656
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %60, i32 0, i32 8, !dbg !1656
  store volatile i32 15, i32* %ICR, align 4, !dbg !1656
  %61 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1657
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %61, i32 0, i32 10, !dbg !1658
  %62 = load i32, i32* %FifoMode, align 4, !dbg !1658
  %cmp82 = icmp eq i32 %62, 536870912, !dbg !1659
  br i1 %cmp82, label %if.then84, label %if.end86, !dbg !1657

if.then84:                                        ; preds = %if.then80
  %63 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1660
  %Instance85 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %63, i32 0, i32 0, !dbg !1660
  %64 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance85, align 4, !dbg !1660
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %64, i32 0, i32 6, !dbg !1660
  %65 = load volatile i32, i32* %RQR, align 4, !dbg !1660
  %or = or i32 %65, 16, !dbg !1660
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1660
  br label %if.end86, !dbg !1661

if.end86:                                         ; preds = %if.then84, %if.then80
  %66 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1662
  %Instance87 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %66, i32 0, i32 0, !dbg !1662
  %67 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance87, align 4, !dbg !1662
  %RQR88 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %67, i32 0, i32 6, !dbg !1662
  %68 = load volatile i32, i32* %RQR88, align 4, !dbg !1662
  %or89 = or i32 %68, 8, !dbg !1662
  store volatile i32 %or89, i32* %RQR88, align 4, !dbg !1662
  %69 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1663
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %69, i32 0, i32 19, !dbg !1664
  store volatile i32 32, i32* %gState, align 4, !dbg !1665
  %70 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1666
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %70, i32 0, i32 20, !dbg !1667
  store volatile i32 32, i32* %RxState, align 4, !dbg !1668
  %71 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1669
  %ReceptionType90 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %71, i32 0, i32 13, !dbg !1670
  store volatile i32 0, i32* %ReceptionType90, align 4, !dbg !1671
  %72 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1672
  call arm_aapcs_vfpcc void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* %72), !dbg !1673
  br label %if.end91, !dbg !1674

if.end91:                                         ; preds = %if.end86, %if.end77
  ret i8 0, !dbg !1675
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMATxAbortCallback(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1676 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1677
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !1678
  %1 = load i8*, i8** %Parent, align 4, !dbg !1678
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !1679
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1680
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1681
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 16, !dbg !1682
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1682
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 10, !dbg !1683
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1684
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1685
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 17, !dbg !1686
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1686
  %cmp = icmp ne %struct.__DMA_HandleTypeDef* %6, null, !dbg !1687
  br i1 %cmp, label %if.then, label %if.end5, !dbg !1685

if.then:                                          ; preds = %entry
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1688
  %hdmarx1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 17, !dbg !1689
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx1, align 4, !dbg !1689
  %XferAbortCallback2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 10, !dbg !1690
  %9 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback2, align 4, !dbg !1690
  %cmp3 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %9, null, !dbg !1691
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1688

if.then4:                                         ; preds = %if.then
  br label %return, !dbg !1692

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !1693

if.end5:                                          ; preds = %if.end, %entry
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1694
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 5, !dbg !1695
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1696
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1697
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 8, !dbg !1698
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1699
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1700
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 21, !dbg !1701
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !1702
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1703
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !1703
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1703
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 8, !dbg !1703
  store volatile i32 15, i32* %ICR, align 4, !dbg !1703
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1704
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 10, !dbg !1705
  %16 = load i32, i32* %FifoMode, align 4, !dbg !1705
  %cmp6 = icmp eq i32 %16, 536870912, !dbg !1706
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1704

if.then7:                                         ; preds = %if.end5
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1707
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 0, !dbg !1707
  %18 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !1707
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %18, i32 0, i32 6, !dbg !1707
  %19 = load volatile i32, i32* %RQR, align 4, !dbg !1707
  %or = or i32 %19, 16, !dbg !1707
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1707
  br label %if.end9, !dbg !1708

if.end9:                                          ; preds = %if.then7, %if.end5
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1709
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 19, !dbg !1710
  store volatile i32 32, i32* %gState, align 4, !dbg !1711
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1712
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 20, !dbg !1713
  store volatile i32 32, i32* %RxState, align 4, !dbg !1714
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1715
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 13, !dbg !1716
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !1717
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1718
  call arm_aapcs_vfpcc void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* %23), !dbg !1719
  br label %return, !dbg !1720

return:                                           ; preds = %if.end9, %if.then4
  ret void, !dbg !1720
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMARxAbortCallback(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1721 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1722
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !1723
  %1 = load i8*, i8** %Parent, align 4, !dbg !1723
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !1724
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1725
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1726
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 17, !dbg !1727
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1727
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 10, !dbg !1728
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1729
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1730
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 16, !dbg !1731
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1731
  %cmp = icmp ne %struct.__DMA_HandleTypeDef* %6, null, !dbg !1732
  br i1 %cmp, label %if.then, label %if.end5, !dbg !1730

if.then:                                          ; preds = %entry
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1733
  %hdmatx1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 16, !dbg !1734
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx1, align 4, !dbg !1734
  %XferAbortCallback2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 10, !dbg !1735
  %9 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback2, align 4, !dbg !1735
  %cmp3 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %9, null, !dbg !1736
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !1733

if.then4:                                         ; preds = %if.then
  br label %return, !dbg !1737

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !1738

if.end5:                                          ; preds = %if.end, %entry
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1739
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 5, !dbg !1740
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1741
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1742
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 8, !dbg !1743
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1744
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1745
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 21, !dbg !1746
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !1747
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1748
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !1748
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1748
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 8, !dbg !1748
  store volatile i32 15, i32* %ICR, align 4, !dbg !1748
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1749
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 0, !dbg !1749
  %16 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !1749
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %16, i32 0, i32 6, !dbg !1749
  %17 = load volatile i32, i32* %RQR, align 4, !dbg !1749
  %or = or i32 %17, 8, !dbg !1749
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1749
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1750
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 19, !dbg !1751
  store volatile i32 32, i32* %gState, align 4, !dbg !1752
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1753
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 20, !dbg !1754
  store volatile i32 32, i32* %RxState, align 4, !dbg !1755
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1756
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 13, !dbg !1757
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !1758
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1759
  call arm_aapcs_vfpcc void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* %21), !dbg !1760
  br label %return, !dbg !1761

return:                                           ; preds = %if.end5, %if.then4
  ret void, !dbg !1761
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef*) #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_AbortCpltCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1762 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1763
  ret void, !dbg !1764
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_AbortTransmit_IT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1765 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1766
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1766
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1766
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1766
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1766
  %and = and i32 %2, -193, !dbg !1766
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1766
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1767
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1767
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1767
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1767
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1767
  %and2 = and i32 %5, -8388609, !dbg !1767
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1767
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1768
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !1768
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1768
  %CR34 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 2, !dbg !1768
  %8 = load volatile i32, i32* %CR34, align 4, !dbg !1768
  %and5 = and i32 %8, 128, !dbg !1768
  %cmp = icmp eq i32 %and5, 128, !dbg !1768
  br i1 %cmp, label %if.then, label %if.else20, !dbg !1768

if.then:                                          ; preds = %entry
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1769
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 0, !dbg !1769
  %10 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !1769
  %CR37 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %10, i32 0, i32 2, !dbg !1769
  %11 = load volatile i32, i32* %CR37, align 4, !dbg !1769
  %and8 = and i32 %11, -129, !dbg !1769
  store volatile i32 %and8, i32* %CR37, align 4, !dbg !1769
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1770
  %hdmatx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 16, !dbg !1771
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx, align 4, !dbg !1771
  %cmp9 = icmp ne %struct.__DMA_HandleTypeDef* %13, null, !dbg !1772
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !1770

if.then10:                                        ; preds = %if.then
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1773
  %hdmatx11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 16, !dbg !1774
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx11, align 4, !dbg !1774
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 10, !dbg !1775
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMATxOnlyAbortCallback, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1776
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1777
  %hdmatx12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 16, !dbg !1778
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx12, align 4, !dbg !1778
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* %17), !dbg !1779
  %conv = zext i8 %call to i32, !dbg !1779
  %cmp13 = icmp ne i32 %conv, 0, !dbg !1780
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !1779

if.then15:                                        ; preds = %if.then10
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1781
  %hdmatx16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 16, !dbg !1782
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx16, align 4, !dbg !1782
  %XferAbortCallback17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %19, i32 0, i32 10, !dbg !1783
  %20 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback17, align 4, !dbg !1783
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1784
  %hdmatx18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 16, !dbg !1785
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmatx18, align 4, !dbg !1785
  call arm_aapcs_vfpcc void %20(%struct.__DMA_HandleTypeDef* %22), !dbg !1781
  br label %if.end, !dbg !1786

if.end:                                           ; preds = %if.then15, %if.then10
  br label %if.end19, !dbg !1787

if.else:                                          ; preds = %if.then
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1788
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 5, !dbg !1789
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1790
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1791
  %TxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 15, !dbg !1792
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %TxISR, align 4, !dbg !1793
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1794
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 19, !dbg !1795
  store volatile i32 32, i32* %gState, align 4, !dbg !1796
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1797
  call arm_aapcs_vfpcc void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* %26), !dbg !1798
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end29, !dbg !1799

if.else20:                                        ; preds = %entry
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1800
  %TxXferCount21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 5, !dbg !1801
  store volatile i16 0, i16* %TxXferCount21, align 2, !dbg !1802
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1803
  %TxISR22 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 15, !dbg !1804
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %TxISR22, align 4, !dbg !1805
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1806
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 10, !dbg !1807
  %30 = load i32, i32* %FifoMode, align 4, !dbg !1807
  %cmp23 = icmp eq i32 %30, 536870912, !dbg !1808
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !1806

if.then25:                                        ; preds = %if.else20
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1809
  %Instance26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 0, !dbg !1809
  %32 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance26, align 4, !dbg !1809
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %32, i32 0, i32 6, !dbg !1809
  %33 = load volatile i32, i32* %RQR, align 4, !dbg !1809
  %or = or i32 %33, 16, !dbg !1809
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1809
  br label %if.end27, !dbg !1810

if.end27:                                         ; preds = %if.then25, %if.else20
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1811
  %gState28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 19, !dbg !1812
  store volatile i32 32, i32* %gState28, align 4, !dbg !1813
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1814
  call arm_aapcs_vfpcc void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* %35), !dbg !1815
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end19
  ret i8 0, !dbg !1816
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMATxOnlyAbortCallback(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1817 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1818
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !1819
  %1 = load i8*, i8** %Parent, align 4, !dbg !1819
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !1820
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1821
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1822
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 5, !dbg !1823
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !1824
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1825
  %FifoMode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 10, !dbg !1826
  %5 = load i32, i32* %FifoMode, align 4, !dbg !1826
  %cmp = icmp eq i32 %5, 536870912, !dbg !1827
  br i1 %cmp, label %if.then, label %if.end, !dbg !1825

if.then:                                          ; preds = %entry
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1828
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !1828
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1828
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 6, !dbg !1828
  %8 = load volatile i32, i32* %RQR, align 4, !dbg !1828
  %or = or i32 %8, 16, !dbg !1828
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1828
  br label %if.end, !dbg !1829

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1830
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 19, !dbg !1831
  store volatile i32 32, i32* %gState, align 4, !dbg !1832
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1833
  call arm_aapcs_vfpcc void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* %10), !dbg !1834
  ret void, !dbg !1835
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_AbortTransmitCpltCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1836 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1837
  ret void, !dbg !1838
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_AbortReceive_IT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1839 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1840
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1840
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1840
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !1840
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !1840
  %and = and i32 %2, -289, !dbg !1840
  store volatile i32 %and, i32* %CR1, align 4, !dbg !1840
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1841
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1841
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1841
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 2, !dbg !1841
  %5 = load volatile i32, i32* %CR3, align 4, !dbg !1841
  %and2 = and i32 %5, -268435458, !dbg !1841
  store volatile i32 %and2, i32* %CR3, align 4, !dbg !1841
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1842
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 13, !dbg !1843
  %7 = load volatile i32, i32* %ReceptionType, align 4, !dbg !1843
  %cmp = icmp eq i32 %7, 1, !dbg !1844
  br i1 %cmp, label %if.then, label %if.end, !dbg !1842

if.then:                                          ; preds = %entry
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1845
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !1845
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !1845
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 0, !dbg !1845
  %10 = load volatile i32, i32* %CR14, align 4, !dbg !1845
  %and5 = and i32 %10, -17, !dbg !1845
  store volatile i32 %and5, i32* %CR14, align 4, !dbg !1845
  br label %if.end, !dbg !1846

if.end:                                           ; preds = %if.then, %entry
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1847
  %Instance6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 0, !dbg !1847
  %12 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance6, align 4, !dbg !1847
  %CR37 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %12, i32 0, i32 2, !dbg !1847
  %13 = load volatile i32, i32* %CR37, align 4, !dbg !1847
  %and8 = and i32 %13, 64, !dbg !1847
  %cmp9 = icmp eq i32 %and8, 64, !dbg !1847
  br i1 %cmp9, label %if.then10, label %if.else29, !dbg !1847

if.then10:                                        ; preds = %if.end
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1848
  %Instance11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 0, !dbg !1848
  %15 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance11, align 4, !dbg !1848
  %CR312 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %15, i32 0, i32 2, !dbg !1848
  %16 = load volatile i32, i32* %CR312, align 4, !dbg !1848
  %and13 = and i32 %16, -65, !dbg !1848
  store volatile i32 %and13, i32* %CR312, align 4, !dbg !1848
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1849
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 17, !dbg !1850
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !1850
  %cmp14 = icmp ne %struct.__DMA_HandleTypeDef* %18, null, !dbg !1851
  br i1 %cmp14, label %if.then15, label %if.else, !dbg !1849

if.then15:                                        ; preds = %if.then10
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1852
  %hdmarx16 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 17, !dbg !1853
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx16, align 4, !dbg !1853
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 10, !dbg !1854
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMARxOnlyAbortCallback, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1855
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1856
  %hdmarx17 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 17, !dbg !1857
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx17, align 4, !dbg !1857
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* %22), !dbg !1858
  %conv = zext i8 %call to i32, !dbg !1858
  %cmp18 = icmp ne i32 %conv, 0, !dbg !1859
  br i1 %cmp18, label %if.then20, label %if.end24, !dbg !1858

if.then20:                                        ; preds = %if.then15
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1860
  %hdmarx21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 17, !dbg !1861
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx21, align 4, !dbg !1861
  %XferAbortCallback22 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %24, i32 0, i32 10, !dbg !1862
  %25 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback22, align 4, !dbg !1862
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1863
  %hdmarx23 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 17, !dbg !1864
  %27 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx23, align 4, !dbg !1864
  call arm_aapcs_vfpcc void %25(%struct.__DMA_HandleTypeDef* %27), !dbg !1860
  br label %if.end24, !dbg !1865

if.end24:                                         ; preds = %if.then20, %if.then15
  br label %if.end28, !dbg !1866

if.else:                                          ; preds = %if.then10
  %28 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1867
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %28, i32 0, i32 8, !dbg !1868
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1869
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1870
  %pRxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 6, !dbg !1871
  store i8* null, i8** %pRxBuffPtr, align 4, !dbg !1872
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1873
  %Instance25 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 0, !dbg !1873
  %31 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance25, align 4, !dbg !1873
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %31, i32 0, i32 8, !dbg !1873
  store volatile i32 15, i32* %ICR, align 4, !dbg !1873
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1874
  %Instance26 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 0, !dbg !1874
  %33 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance26, align 4, !dbg !1874
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %33, i32 0, i32 6, !dbg !1874
  %34 = load volatile i32, i32* %RQR, align 4, !dbg !1874
  %or = or i32 %34, 8, !dbg !1874
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1874
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1875
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 20, !dbg !1876
  store volatile i32 32, i32* %RxState, align 4, !dbg !1877
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1878
  %ReceptionType27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 13, !dbg !1879
  store volatile i32 0, i32* %ReceptionType27, align 4, !dbg !1880
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1881
  call arm_aapcs_vfpcc void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* %37), !dbg !1882
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.end24
  br label %if.end36, !dbg !1883

if.else29:                                        ; preds = %if.end
  %38 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1884
  %RxXferCount30 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %38, i32 0, i32 8, !dbg !1885
  store volatile i16 0, i16* %RxXferCount30, align 2, !dbg !1886
  %39 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1887
  %pRxBuffPtr31 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %39, i32 0, i32 6, !dbg !1888
  store i8* null, i8** %pRxBuffPtr31, align 4, !dbg !1889
  %40 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1890
  %Instance32 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %40, i32 0, i32 0, !dbg !1890
  %41 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance32, align 4, !dbg !1890
  %ICR33 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %41, i32 0, i32 8, !dbg !1890
  store volatile i32 15, i32* %ICR33, align 4, !dbg !1890
  %42 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1891
  %RxState34 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %42, i32 0, i32 20, !dbg !1892
  store volatile i32 32, i32* %RxState34, align 4, !dbg !1893
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1894
  %ReceptionType35 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 13, !dbg !1895
  store volatile i32 0, i32* %ReceptionType35, align 4, !dbg !1896
  %44 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1897
  call arm_aapcs_vfpcc void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* %44), !dbg !1898
  br label %if.end36

if.end36:                                         ; preds = %if.else29, %if.end28
  ret i8 0, !dbg !1899
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMARxOnlyAbortCallback(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1900 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1901
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !1902
  %1 = load i8*, i8** %Parent, align 4, !dbg !1902
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !1903
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1904
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1905
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 8, !dbg !1906
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !1907
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1908
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !1908
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1908
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 8, !dbg !1908
  store volatile i32 15, i32* %ICR, align 4, !dbg !1908
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1909
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !1909
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1909
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 6, !dbg !1909
  %8 = load volatile i32, i32* %RQR, align 4, !dbg !1909
  %or = or i32 %8, 8, !dbg !1909
  store volatile i32 %or, i32* %RQR, align 4, !dbg !1909
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1910
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 20, !dbg !1911
  store volatile i32 32, i32* %RxState, align 4, !dbg !1912
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1913
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 13, !dbg !1914
  store volatile i32 0, i32* %ReceptionType, align 4, !dbg !1915
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !1916
  call arm_aapcs_vfpcc void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* %11), !dbg !1917
  ret void, !dbg !1918
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_AbortReceiveCpltCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1919 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1920
  ret void, !dbg !1921
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_UART_IRQHandler(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !1922 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %isrflags = alloca i32, align 4
  %cr1its = alloca i32, align 4
  %cr3its = alloca i32, align 4
  %errorflags = alloca i32, align 4
  %errorcode = alloca i32, align 4
  %nb_remaining_rx_data = alloca i16, align 2
  %nb_rx_data = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1923
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !1923
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !1923
  %ISR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 7, !dbg !1923
  %2 = load volatile i32, i32* %ISR, align 4, !dbg !1923
  store i32 %2, i32* %isrflags, align 4, !dbg !1924
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1925
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 0, !dbg !1925
  %4 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !1925
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %4, i32 0, i32 0, !dbg !1925
  %5 = load volatile i32, i32* %CR1, align 4, !dbg !1925
  store i32 %5, i32* %cr1its, align 4, !dbg !1926
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1927
  %Instance2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !1927
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance2, align 4, !dbg !1927
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 2, !dbg !1927
  %8 = load volatile i32, i32* %CR3, align 4, !dbg !1927
  store i32 %8, i32* %cr3its, align 4, !dbg !1928
  %9 = load i32, i32* %isrflags, align 4, !dbg !1929
  %and = and i32 %9, 2063, !dbg !1930
  store i32 %and, i32* %errorflags, align 4, !dbg !1931
  %10 = load i32, i32* %errorflags, align 4, !dbg !1932
  %cmp = icmp eq i32 %10, 0, !dbg !1933
  br i1 %cmp, label %if.then, label %if.end14, !dbg !1932

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %isrflags, align 4, !dbg !1934
  %and3 = and i32 %11, 32, !dbg !1935
  %cmp4 = icmp ne i32 %and3, 0, !dbg !1936
  br i1 %cmp4, label %land.lhs.true, label %if.end13, !dbg !1937

land.lhs.true:                                    ; preds = %if.then
  %12 = load i32, i32* %cr1its, align 4, !dbg !1938
  %and5 = and i32 %12, 32, !dbg !1939
  %cmp6 = icmp ne i32 %and5, 0, !dbg !1940
  br i1 %cmp6, label %if.then9, label %lor.lhs.false, !dbg !1941

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load i32, i32* %cr3its, align 4, !dbg !1942
  %and7 = and i32 %13, 268435456, !dbg !1943
  %cmp8 = icmp ne i32 %and7, 0, !dbg !1944
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !1945

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1946
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %14, i32 0, i32 14, !dbg !1947
  %15 = load void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !1947
  %cmp10 = icmp ne void (%struct.__UART_HandleTypeDef*)* %15, null, !dbg !1948
  br i1 %cmp10, label %if.then11, label %if.end, !dbg !1946

if.then11:                                        ; preds = %if.then9
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1949
  %RxISR12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 14, !dbg !1950
  %17 = load void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)** %RxISR12, align 4, !dbg !1950
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1951
  call arm_aapcs_vfpcc void %17(%struct.__UART_HandleTypeDef* %18), !dbg !1949
  br label %if.end, !dbg !1952

if.end:                                           ; preds = %if.then11, %if.then9
  br label %if.end276, !dbg !1953

if.end13:                                         ; preds = %lor.lhs.false, %if.then
  br label %if.end14, !dbg !1954

if.end14:                                         ; preds = %if.end13, %entry
  %19 = load i32, i32* %errorflags, align 4, !dbg !1955
  %cmp15 = icmp ne i32 %19, 0, !dbg !1956
  br i1 %cmp15, label %land.lhs.true16, label %if.end131, !dbg !1957

land.lhs.true16:                                  ; preds = %if.end14
  %20 = load i32, i32* %cr3its, align 4, !dbg !1958
  %and17 = and i32 %20, 268435457, !dbg !1959
  %cmp18 = icmp ne i32 %and17, 0, !dbg !1960
  br i1 %cmp18, label %if.then22, label %lor.lhs.false19, !dbg !1961

lor.lhs.false19:                                  ; preds = %land.lhs.true16
  %21 = load i32, i32* %cr1its, align 4, !dbg !1962
  %and20 = and i32 %21, 67109152, !dbg !1963
  %cmp21 = icmp ne i32 %and20, 0, !dbg !1964
  br i1 %cmp21, label %if.then22, label %if.end131, !dbg !1965

if.then22:                                        ; preds = %lor.lhs.false19, %land.lhs.true16
  %22 = load i32, i32* %isrflags, align 4, !dbg !1966
  %and23 = and i32 %22, 1, !dbg !1967
  %cmp24 = icmp ne i32 %and23, 0, !dbg !1968
  br i1 %cmp24, label %land.lhs.true25, label %if.end30, !dbg !1969

land.lhs.true25:                                  ; preds = %if.then22
  %23 = load i32, i32* %cr1its, align 4, !dbg !1970
  %and26 = and i32 %23, 256, !dbg !1971
  %cmp27 = icmp ne i32 %and26, 0, !dbg !1972
  br i1 %cmp27, label %if.then28, label %if.end30, !dbg !1973

if.then28:                                        ; preds = %land.lhs.true25
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1974
  %Instance29 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 0, !dbg !1974
  %25 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance29, align 4, !dbg !1974
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %25, i32 0, i32 8, !dbg !1974
  store volatile i32 1, i32* %ICR, align 4, !dbg !1974
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1975
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 21, !dbg !1976
  %27 = load volatile i32, i32* %ErrorCode, align 4, !dbg !1977
  %or = or i32 %27, 1, !dbg !1977
  store volatile i32 %or, i32* %ErrorCode, align 4, !dbg !1977
  br label %if.end30, !dbg !1978

if.end30:                                         ; preds = %if.then28, %land.lhs.true25, %if.then22
  %28 = load i32, i32* %isrflags, align 4, !dbg !1979
  %and31 = and i32 %28, 2, !dbg !1980
  %cmp32 = icmp ne i32 %and31, 0, !dbg !1981
  br i1 %cmp32, label %land.lhs.true33, label %if.end41, !dbg !1982

land.lhs.true33:                                  ; preds = %if.end30
  %29 = load i32, i32* %cr3its, align 4, !dbg !1983
  %and34 = and i32 %29, 1, !dbg !1984
  %cmp35 = icmp ne i32 %and34, 0, !dbg !1985
  br i1 %cmp35, label %if.then36, label %if.end41, !dbg !1986

if.then36:                                        ; preds = %land.lhs.true33
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1987
  %Instance37 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %30, i32 0, i32 0, !dbg !1987
  %31 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance37, align 4, !dbg !1987
  %ICR38 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %31, i32 0, i32 8, !dbg !1987
  store volatile i32 2, i32* %ICR38, align 4, !dbg !1987
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !1988
  %ErrorCode39 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %32, i32 0, i32 21, !dbg !1989
  %33 = load volatile i32, i32* %ErrorCode39, align 4, !dbg !1990
  %or40 = or i32 %33, 4, !dbg !1990
  store volatile i32 %or40, i32* %ErrorCode39, align 4, !dbg !1990
  br label %if.end41, !dbg !1991

if.end41:                                         ; preds = %if.then36, %land.lhs.true33, %if.end30
  %34 = load i32, i32* %isrflags, align 4, !dbg !1992
  %and42 = and i32 %34, 4, !dbg !1993
  %cmp43 = icmp ne i32 %and42, 0, !dbg !1994
  br i1 %cmp43, label %land.lhs.true44, label %if.end52, !dbg !1995

land.lhs.true44:                                  ; preds = %if.end41
  %35 = load i32, i32* %cr3its, align 4, !dbg !1996
  %and45 = and i32 %35, 1, !dbg !1997
  %cmp46 = icmp ne i32 %and45, 0, !dbg !1998
  br i1 %cmp46, label %if.then47, label %if.end52, !dbg !1999

if.then47:                                        ; preds = %land.lhs.true44
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2000
  %Instance48 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 0, !dbg !2000
  %37 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance48, align 4, !dbg !2000
  %ICR49 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %37, i32 0, i32 8, !dbg !2000
  store volatile i32 4, i32* %ICR49, align 4, !dbg !2000
  %38 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2001
  %ErrorCode50 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %38, i32 0, i32 21, !dbg !2002
  %39 = load volatile i32, i32* %ErrorCode50, align 4, !dbg !2003
  %or51 = or i32 %39, 2, !dbg !2003
  store volatile i32 %or51, i32* %ErrorCode50, align 4, !dbg !2003
  br label %if.end52, !dbg !2004

if.end52:                                         ; preds = %if.then47, %land.lhs.true44, %if.end41
  %40 = load i32, i32* %isrflags, align 4, !dbg !2005
  %and53 = and i32 %40, 8, !dbg !2006
  %cmp54 = icmp ne i32 %and53, 0, !dbg !2007
  br i1 %cmp54, label %land.lhs.true55, label %if.end66, !dbg !2008

land.lhs.true55:                                  ; preds = %if.end52
  %41 = load i32, i32* %cr1its, align 4, !dbg !2009
  %and56 = and i32 %41, 32, !dbg !2010
  %cmp57 = icmp ne i32 %and56, 0, !dbg !2011
  br i1 %cmp57, label %if.then61, label %lor.lhs.false58, !dbg !2012

lor.lhs.false58:                                  ; preds = %land.lhs.true55
  %42 = load i32, i32* %cr3its, align 4, !dbg !2013
  %and59 = and i32 %42, 268435457, !dbg !2014
  %cmp60 = icmp ne i32 %and59, 0, !dbg !2015
  br i1 %cmp60, label %if.then61, label %if.end66, !dbg !2016

if.then61:                                        ; preds = %lor.lhs.false58, %land.lhs.true55
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2017
  %Instance62 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 0, !dbg !2017
  %44 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance62, align 4, !dbg !2017
  %ICR63 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %44, i32 0, i32 8, !dbg !2017
  store volatile i32 8, i32* %ICR63, align 4, !dbg !2017
  %45 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2018
  %ErrorCode64 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %45, i32 0, i32 21, !dbg !2019
  %46 = load volatile i32, i32* %ErrorCode64, align 4, !dbg !2020
  %or65 = or i32 %46, 8, !dbg !2020
  store volatile i32 %or65, i32* %ErrorCode64, align 4, !dbg !2020
  br label %if.end66, !dbg !2021

if.end66:                                         ; preds = %if.then61, %lor.lhs.false58, %if.end52
  %47 = load i32, i32* %isrflags, align 4, !dbg !2022
  %and67 = and i32 %47, 2048, !dbg !2023
  %cmp68 = icmp ne i32 %and67, 0, !dbg !2024
  br i1 %cmp68, label %land.lhs.true69, label %if.end77, !dbg !2025

land.lhs.true69:                                  ; preds = %if.end66
  %48 = load i32, i32* %cr1its, align 4, !dbg !2026
  %and70 = and i32 %48, 67108864, !dbg !2027
  %cmp71 = icmp ne i32 %and70, 0, !dbg !2028
  br i1 %cmp71, label %if.then72, label %if.end77, !dbg !2029

if.then72:                                        ; preds = %land.lhs.true69
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2030
  %Instance73 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 0, !dbg !2030
  %50 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance73, align 4, !dbg !2030
  %ICR74 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %50, i32 0, i32 8, !dbg !2030
  store volatile i32 2048, i32* %ICR74, align 4, !dbg !2030
  %51 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2031
  %ErrorCode75 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %51, i32 0, i32 21, !dbg !2032
  %52 = load volatile i32, i32* %ErrorCode75, align 4, !dbg !2033
  %or76 = or i32 %52, 32, !dbg !2033
  store volatile i32 %or76, i32* %ErrorCode75, align 4, !dbg !2033
  br label %if.end77, !dbg !2034

if.end77:                                         ; preds = %if.then72, %land.lhs.true69, %if.end66
  %53 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2035
  %ErrorCode78 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %53, i32 0, i32 21, !dbg !2036
  %54 = load volatile i32, i32* %ErrorCode78, align 4, !dbg !2036
  %cmp79 = icmp ne i32 %54, 0, !dbg !2037
  br i1 %cmp79, label %if.then80, label %if.end130, !dbg !2035

if.then80:                                        ; preds = %if.end77
  %55 = load i32, i32* %isrflags, align 4, !dbg !2038
  %and81 = and i32 %55, 32, !dbg !2039
  %cmp82 = icmp ne i32 %and81, 0, !dbg !2040
  br i1 %cmp82, label %land.lhs.true83, label %if.end95, !dbg !2041

land.lhs.true83:                                  ; preds = %if.then80
  %56 = load i32, i32* %cr1its, align 4, !dbg !2042
  %and84 = and i32 %56, 32, !dbg !2043
  %cmp85 = icmp ne i32 %and84, 0, !dbg !2044
  br i1 %cmp85, label %if.then89, label %lor.lhs.false86, !dbg !2045

lor.lhs.false86:                                  ; preds = %land.lhs.true83
  %57 = load i32, i32* %cr3its, align 4, !dbg !2046
  %and87 = and i32 %57, 268435456, !dbg !2047
  %cmp88 = icmp ne i32 %and87, 0, !dbg !2048
  br i1 %cmp88, label %if.then89, label %if.end95, !dbg !2049

if.then89:                                        ; preds = %lor.lhs.false86, %land.lhs.true83
  %58 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2050
  %RxISR90 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %58, i32 0, i32 14, !dbg !2051
  %59 = load void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)** %RxISR90, align 4, !dbg !2051
  %cmp91 = icmp ne void (%struct.__UART_HandleTypeDef*)* %59, null, !dbg !2052
  br i1 %cmp91, label %if.then92, label %if.end94, !dbg !2050

if.then92:                                        ; preds = %if.then89
  %60 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2053
  %RxISR93 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %60, i32 0, i32 14, !dbg !2054
  %61 = load void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)** %RxISR93, align 4, !dbg !2054
  %62 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2055
  call arm_aapcs_vfpcc void %61(%struct.__UART_HandleTypeDef* %62), !dbg !2053
  br label %if.end94, !dbg !2056

if.end94:                                         ; preds = %if.then92, %if.then89
  br label %if.end95, !dbg !2057

if.end95:                                         ; preds = %if.end94, %lor.lhs.false86, %if.then80
  %63 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2058
  %ErrorCode96 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %63, i32 0, i32 21, !dbg !2059
  %64 = load volatile i32, i32* %ErrorCode96, align 4, !dbg !2059
  store i32 %64, i32* %errorcode, align 4, !dbg !2060
  %65 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2061
  %Instance97 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %65, i32 0, i32 0, !dbg !2061
  %66 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance97, align 4, !dbg !2061
  %CR398 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %66, i32 0, i32 2, !dbg !2061
  %67 = load volatile i32, i32* %CR398, align 4, !dbg !2061
  %and99 = and i32 %67, 64, !dbg !2061
  %cmp100 = icmp eq i32 %and99, 64, !dbg !2061
  br i1 %cmp100, label %if.then104, label %lor.lhs.false101, !dbg !2062

lor.lhs.false101:                                 ; preds = %if.end95
  %68 = load i32, i32* %errorcode, align 4, !dbg !2063
  %and102 = and i32 %68, 40, !dbg !2064
  %cmp103 = icmp ne i32 %and102, 0, !dbg !2065
  br i1 %cmp103, label %if.then104, label %if.else127, !dbg !2066

if.then104:                                       ; preds = %lor.lhs.false101, %if.end95
  %69 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2067
  call arm_aapcs_vfpcc void @UART_EndRxTransfer(%struct.__UART_HandleTypeDef* %69), !dbg !2068
  %70 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2069
  %Instance105 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %70, i32 0, i32 0, !dbg !2069
  %71 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance105, align 4, !dbg !2069
  %CR3106 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %71, i32 0, i32 2, !dbg !2069
  %72 = load volatile i32, i32* %CR3106, align 4, !dbg !2069
  %and107 = and i32 %72, 64, !dbg !2069
  %cmp108 = icmp eq i32 %and107, 64, !dbg !2069
  br i1 %cmp108, label %if.then109, label %if.else125, !dbg !2069

if.then109:                                       ; preds = %if.then104
  %73 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2070
  %Instance110 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %73, i32 0, i32 0, !dbg !2070
  %74 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance110, align 4, !dbg !2070
  %CR3111 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %74, i32 0, i32 2, !dbg !2070
  %75 = load volatile i32, i32* %CR3111, align 4, !dbg !2070
  %and112 = and i32 %75, -65, !dbg !2070
  store volatile i32 %and112, i32* %CR3111, align 4, !dbg !2070
  %76 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2071
  %hdmarx = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %76, i32 0, i32 17, !dbg !2072
  %77 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx, align 4, !dbg !2072
  %cmp113 = icmp ne %struct.__DMA_HandleTypeDef* %77, null, !dbg !2073
  br i1 %cmp113, label %if.then114, label %if.else, !dbg !2071

if.then114:                                       ; preds = %if.then109
  %78 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2074
  %hdmarx115 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %78, i32 0, i32 17, !dbg !2075
  %79 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx115, align 4, !dbg !2075
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %79, i32 0, i32 10, !dbg !2076
  store void (%struct.__DMA_HandleTypeDef*)* @UART_DMAAbortOnError, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !2077
  %80 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2078
  %hdmarx116 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %80, i32 0, i32 17, !dbg !2079
  %81 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx116, align 4, !dbg !2079
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* %81), !dbg !2080
  %conv = zext i8 %call to i32, !dbg !2080
  %cmp117 = icmp ne i32 %conv, 0, !dbg !2081
  br i1 %cmp117, label %if.then119, label %if.end123, !dbg !2080

if.then119:                                       ; preds = %if.then114
  %82 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2082
  %hdmarx120 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %82, i32 0, i32 17, !dbg !2083
  %83 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx120, align 4, !dbg !2083
  %XferAbortCallback121 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %83, i32 0, i32 10, !dbg !2084
  %84 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback121, align 4, !dbg !2084
  %85 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2085
  %hdmarx122 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %85, i32 0, i32 17, !dbg !2086
  %86 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx122, align 4, !dbg !2086
  call arm_aapcs_vfpcc void %84(%struct.__DMA_HandleTypeDef* %86), !dbg !2082
  br label %if.end123, !dbg !2087

if.end123:                                        ; preds = %if.then119, %if.then114
  br label %if.end124, !dbg !2088

if.else:                                          ; preds = %if.then109
  %87 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2089
  call arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %87), !dbg !2090
  br label %if.end124

if.end124:                                        ; preds = %if.else, %if.end123
  br label %if.end126, !dbg !2091

if.else125:                                       ; preds = %if.then104
  %88 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2092
  call arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %88), !dbg !2093
  br label %if.end126

if.end126:                                        ; preds = %if.else125, %if.end124
  br label %if.end129, !dbg !2094

if.else127:                                       ; preds = %lor.lhs.false101
  %89 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2095
  call arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %89), !dbg !2096
  %90 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2097
  %ErrorCode128 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %90, i32 0, i32 21, !dbg !2098
  store volatile i32 0, i32* %ErrorCode128, align 4, !dbg !2099
  br label %if.end129

if.end129:                                        ; preds = %if.else127, %if.end126
  br label %if.end130, !dbg !2100

if.end130:                                        ; preds = %if.end129, %if.end77
  br label %if.end276, !dbg !2101

if.end131:                                        ; preds = %lor.lhs.false19, %if.end14
  %91 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2102
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %91, i32 0, i32 13, !dbg !2103
  %92 = load volatile i32, i32* %ReceptionType, align 4, !dbg !2103
  %cmp132 = icmp eq i32 %92, 1, !dbg !2104
  br i1 %cmp132, label %land.lhs.true134, label %if.end220, !dbg !2105

land.lhs.true134:                                 ; preds = %if.end131
  %93 = load i32, i32* %isrflags, align 4, !dbg !2106
  %and135 = and i32 %93, 16, !dbg !2107
  %cmp136 = icmp ne i32 %and135, 0, !dbg !2108
  br i1 %cmp136, label %land.lhs.true138, label %if.end220, !dbg !2109

land.lhs.true138:                                 ; preds = %land.lhs.true134
  %94 = load i32, i32* %cr1its, align 4, !dbg !2110
  %and139 = and i32 %94, 16, !dbg !2111
  %cmp140 = icmp ne i32 %and139, 0, !dbg !2112
  br i1 %cmp140, label %if.then142, label %if.end220, !dbg !2113

if.then142:                                       ; preds = %land.lhs.true138
  %95 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2114
  %Instance143 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %95, i32 0, i32 0, !dbg !2114
  %96 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance143, align 4, !dbg !2114
  %ICR144 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %96, i32 0, i32 8, !dbg !2114
  store volatile i32 16, i32* %ICR144, align 4, !dbg !2114
  %97 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2115
  %Instance145 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %97, i32 0, i32 0, !dbg !2115
  %98 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance145, align 4, !dbg !2115
  %CR3146 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %98, i32 0, i32 2, !dbg !2115
  %99 = load volatile i32, i32* %CR3146, align 4, !dbg !2115
  %and147 = and i32 %99, 64, !dbg !2115
  %cmp148 = icmp eq i32 %and147, 64, !dbg !2115
  br i1 %cmp148, label %if.then150, label %if.else191, !dbg !2115

if.then150:                                       ; preds = %if.then142
  %100 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2116
  %hdmarx151 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %100, i32 0, i32 17, !dbg !2116
  %101 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx151, align 4, !dbg !2116
  %Instance152 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %101, i32 0, i32 0, !dbg !2116
  %102 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance152, align 4, !dbg !2116
  %CNDTR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %102, i32 0, i32 1, !dbg !2116
  %103 = load volatile i32, i32* %CNDTR, align 4, !dbg !2116
  %conv153 = trunc i32 %103 to i16, !dbg !2117
  store i16 %conv153, i16* %nb_remaining_rx_data, align 2, !dbg !2118
  %104 = load i16, i16* %nb_remaining_rx_data, align 2, !dbg !2119
  %conv154 = zext i16 %104 to i32, !dbg !2119
  %cmp155 = icmp ugt i32 %conv154, 0, !dbg !2120
  br i1 %cmp155, label %land.lhs.true157, label %if.end190, !dbg !2121

land.lhs.true157:                                 ; preds = %if.then150
  %105 = load i16, i16* %nb_remaining_rx_data, align 2, !dbg !2122
  %conv158 = zext i16 %105 to i32, !dbg !2122
  %106 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2123
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %106, i32 0, i32 7, !dbg !2124
  %107 = load i16, i16* %RxXferSize, align 4, !dbg !2124
  %conv159 = zext i16 %107 to i32, !dbg !2123
  %cmp160 = icmp slt i32 %conv158, %conv159, !dbg !2125
  br i1 %cmp160, label %if.then162, label %if.end190, !dbg !2126

if.then162:                                       ; preds = %land.lhs.true157
  %108 = load i16, i16* %nb_remaining_rx_data, align 2, !dbg !2127
  %109 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2128
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %109, i32 0, i32 8, !dbg !2129
  store volatile i16 %108, i16* %RxXferCount, align 2, !dbg !2130
  %110 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2131
  %hdmarx163 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %110, i32 0, i32 17, !dbg !2131
  %111 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx163, align 4, !dbg !2131
  %Instance164 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %111, i32 0, i32 0, !dbg !2131
  %112 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance164, align 4, !dbg !2131
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %112, i32 0, i32 0, !dbg !2131
  %113 = load volatile i32, i32* %CCR, align 4, !dbg !2131
  %and165 = and i32 %113, 32, !dbg !2131
  %cmp166 = icmp eq i32 %and165, 0, !dbg !2131
  br i1 %cmp166, label %if.then168, label %if.end184, !dbg !2131

if.then168:                                       ; preds = %if.then162
  %114 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2132
  %Instance169 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %114, i32 0, i32 0, !dbg !2132
  %115 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance169, align 4, !dbg !2132
  %CR1170 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %115, i32 0, i32 0, !dbg !2132
  %116 = load volatile i32, i32* %CR1170, align 4, !dbg !2132
  %and171 = and i32 %116, -257, !dbg !2132
  store volatile i32 %and171, i32* %CR1170, align 4, !dbg !2132
  %117 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2133
  %Instance172 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %117, i32 0, i32 0, !dbg !2133
  %118 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance172, align 4, !dbg !2133
  %CR3173 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %118, i32 0, i32 2, !dbg !2133
  %119 = load volatile i32, i32* %CR3173, align 4, !dbg !2133
  %and174 = and i32 %119, -2, !dbg !2133
  store volatile i32 %and174, i32* %CR3173, align 4, !dbg !2133
  %120 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2134
  %Instance175 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %120, i32 0, i32 0, !dbg !2134
  %121 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance175, align 4, !dbg !2134
  %CR3176 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %121, i32 0, i32 2, !dbg !2134
  %122 = load volatile i32, i32* %CR3176, align 4, !dbg !2134
  %and177 = and i32 %122, -65, !dbg !2134
  store volatile i32 %and177, i32* %CR3176, align 4, !dbg !2134
  %123 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2135
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %123, i32 0, i32 20, !dbg !2136
  store volatile i32 32, i32* %RxState, align 4, !dbg !2137
  %124 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2138
  %ReceptionType178 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %124, i32 0, i32 13, !dbg !2139
  store volatile i32 0, i32* %ReceptionType178, align 4, !dbg !2140
  %125 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2141
  %Instance179 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %125, i32 0, i32 0, !dbg !2141
  %126 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance179, align 4, !dbg !2141
  %CR1180 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %126, i32 0, i32 0, !dbg !2141
  %127 = load volatile i32, i32* %CR1180, align 4, !dbg !2141
  %and181 = and i32 %127, -17, !dbg !2141
  store volatile i32 %and181, i32* %CR1180, align 4, !dbg !2141
  %128 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2142
  %hdmarx182 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %128, i32 0, i32 17, !dbg !2143
  %129 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdmarx182, align 4, !dbg !2143
  %call183 = call arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %129), !dbg !2144
  br label %if.end184, !dbg !2145

if.end184:                                        ; preds = %if.then168, %if.then162
  %130 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2146
  %131 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2147
  %RxXferSize185 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %131, i32 0, i32 7, !dbg !2148
  %132 = load i16, i16* %RxXferSize185, align 4, !dbg !2148
  %conv186 = zext i16 %132 to i32, !dbg !2147
  %133 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2149
  %RxXferCount187 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %133, i32 0, i32 8, !dbg !2150
  %134 = load volatile i16, i16* %RxXferCount187, align 2, !dbg !2150
  %conv188 = zext i16 %134 to i32, !dbg !2149
  %sub = sub nsw i32 %conv186, %conv188, !dbg !2151
  %conv189 = trunc i32 %sub to i16, !dbg !2152
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %130, i16 zeroext %conv189), !dbg !2153
  br label %if.end190, !dbg !2154

if.end190:                                        ; preds = %if.end184, %land.lhs.true157, %if.then150
  br label %if.end276, !dbg !2155

if.else191:                                       ; preds = %if.then142
  %135 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2156
  %RxXferSize192 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %135, i32 0, i32 7, !dbg !2157
  %136 = load i16, i16* %RxXferSize192, align 4, !dbg !2157
  %conv193 = zext i16 %136 to i32, !dbg !2156
  %137 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2158
  %RxXferCount194 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %137, i32 0, i32 8, !dbg !2159
  %138 = load volatile i16, i16* %RxXferCount194, align 2, !dbg !2159
  %conv195 = zext i16 %138 to i32, !dbg !2158
  %sub196 = sub nsw i32 %conv193, %conv195, !dbg !2160
  %conv197 = trunc i32 %sub196 to i16, !dbg !2156
  store i16 %conv197, i16* %nb_rx_data, align 2, !dbg !2161
  %139 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2162
  %RxXferCount198 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %139, i32 0, i32 8, !dbg !2163
  %140 = load volatile i16, i16* %RxXferCount198, align 2, !dbg !2163
  %conv199 = zext i16 %140 to i32, !dbg !2162
  %cmp200 = icmp ugt i32 %conv199, 0, !dbg !2164
  br i1 %cmp200, label %land.lhs.true202, label %if.end219, !dbg !2165

land.lhs.true202:                                 ; preds = %if.else191
  %141 = load i16, i16* %nb_rx_data, align 2, !dbg !2166
  %conv203 = zext i16 %141 to i32, !dbg !2166
  %cmp204 = icmp ugt i32 %conv203, 0, !dbg !2167
  br i1 %cmp204, label %if.then206, label %if.end219, !dbg !2168

if.then206:                                       ; preds = %land.lhs.true202
  %142 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2169
  %Instance207 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %142, i32 0, i32 0, !dbg !2169
  %143 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance207, align 4, !dbg !2169
  %CR1208 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %143, i32 0, i32 0, !dbg !2169
  %144 = load volatile i32, i32* %CR1208, align 4, !dbg !2169
  %and209 = and i32 %144, -289, !dbg !2169
  store volatile i32 %and209, i32* %CR1208, align 4, !dbg !2169
  %145 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2170
  %Instance210 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %145, i32 0, i32 0, !dbg !2170
  %146 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance210, align 4, !dbg !2170
  %CR3211 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %146, i32 0, i32 2, !dbg !2170
  %147 = load volatile i32, i32* %CR3211, align 4, !dbg !2170
  %and212 = and i32 %147, -268435458, !dbg !2170
  store volatile i32 %and212, i32* %CR3211, align 4, !dbg !2170
  %148 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2171
  %RxState213 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %148, i32 0, i32 20, !dbg !2172
  store volatile i32 32, i32* %RxState213, align 4, !dbg !2173
  %149 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2174
  %ReceptionType214 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %149, i32 0, i32 13, !dbg !2175
  store volatile i32 0, i32* %ReceptionType214, align 4, !dbg !2176
  %150 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2177
  %RxISR215 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %150, i32 0, i32 14, !dbg !2178
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR215, align 4, !dbg !2179
  %151 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2180
  %Instance216 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %151, i32 0, i32 0, !dbg !2180
  %152 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance216, align 4, !dbg !2180
  %CR1217 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %152, i32 0, i32 0, !dbg !2180
  %153 = load volatile i32, i32* %CR1217, align 4, !dbg !2180
  %and218 = and i32 %153, -17, !dbg !2180
  store volatile i32 %and218, i32* %CR1217, align 4, !dbg !2180
  %154 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2181
  %155 = load i16, i16* %nb_rx_data, align 2, !dbg !2182
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %154, i16 zeroext %155), !dbg !2183
  br label %if.end219, !dbg !2184

if.end219:                                        ; preds = %if.then206, %land.lhs.true202, %if.else191
  br label %if.end276, !dbg !2185

if.end220:                                        ; preds = %land.lhs.true138, %land.lhs.true134, %if.end131
  %156 = load i32, i32* %isrflags, align 4, !dbg !2186
  %and221 = and i32 %156, 1048576, !dbg !2187
  %cmp222 = icmp ne i32 %and221, 0, !dbg !2188
  br i1 %cmp222, label %land.lhs.true224, label %if.end231, !dbg !2189

land.lhs.true224:                                 ; preds = %if.end220
  %157 = load i32, i32* %cr3its, align 4, !dbg !2190
  %and225 = and i32 %157, 4194304, !dbg !2191
  %cmp226 = icmp ne i32 %and225, 0, !dbg !2192
  br i1 %cmp226, label %if.then228, label %if.end231, !dbg !2193

if.then228:                                       ; preds = %land.lhs.true224
  %158 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2194
  %Instance229 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %158, i32 0, i32 0, !dbg !2194
  %159 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance229, align 4, !dbg !2194
  %ICR230 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %159, i32 0, i32 8, !dbg !2194
  store volatile i32 1048576, i32* %ICR230, align 4, !dbg !2194
  %160 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2195
  call arm_aapcs_vfpcc void @HAL_UARTEx_WakeupCallback(%struct.__UART_HandleTypeDef* %160), !dbg !2196
  br label %if.end276, !dbg !2197

if.end231:                                        ; preds = %land.lhs.true224, %if.end220
  %161 = load i32, i32* %isrflags, align 4, !dbg !2198
  %and232 = and i32 %161, 128, !dbg !2199
  %cmp233 = icmp ne i32 %and232, 0, !dbg !2200
  br i1 %cmp233, label %land.lhs.true235, label %if.end249, !dbg !2201

land.lhs.true235:                                 ; preds = %if.end231
  %162 = load i32, i32* %cr1its, align 4, !dbg !2202
  %and236 = and i32 %162, 128, !dbg !2203
  %cmp237 = icmp ne i32 %and236, 0, !dbg !2204
  br i1 %cmp237, label %if.then243, label %lor.lhs.false239, !dbg !2205

lor.lhs.false239:                                 ; preds = %land.lhs.true235
  %163 = load i32, i32* %cr3its, align 4, !dbg !2206
  %and240 = and i32 %163, 8388608, !dbg !2207
  %cmp241 = icmp ne i32 %and240, 0, !dbg !2208
  br i1 %cmp241, label %if.then243, label %if.end249, !dbg !2209

if.then243:                                       ; preds = %lor.lhs.false239, %land.lhs.true235
  %164 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2210
  %TxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %164, i32 0, i32 15, !dbg !2211
  %165 = load void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)** %TxISR, align 4, !dbg !2211
  %cmp244 = icmp ne void (%struct.__UART_HandleTypeDef*)* %165, null, !dbg !2212
  br i1 %cmp244, label %if.then246, label %if.end248, !dbg !2210

if.then246:                                       ; preds = %if.then243
  %166 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2213
  %TxISR247 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %166, i32 0, i32 15, !dbg !2214
  %167 = load void (%struct.__UART_HandleTypeDef*)*, void (%struct.__UART_HandleTypeDef*)** %TxISR247, align 4, !dbg !2214
  %168 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2215
  call arm_aapcs_vfpcc void %167(%struct.__UART_HandleTypeDef* %168), !dbg !2213
  br label %if.end248, !dbg !2216

if.end248:                                        ; preds = %if.then246, %if.then243
  br label %if.end276, !dbg !2217

if.end249:                                        ; preds = %lor.lhs.false239, %if.end231
  %169 = load i32, i32* %isrflags, align 4, !dbg !2218
  %and250 = and i32 %169, 64, !dbg !2219
  %cmp251 = icmp ne i32 %and250, 0, !dbg !2220
  br i1 %cmp251, label %land.lhs.true253, label %if.end258, !dbg !2221

land.lhs.true253:                                 ; preds = %if.end249
  %170 = load i32, i32* %cr1its, align 4, !dbg !2222
  %and254 = and i32 %170, 64, !dbg !2223
  %cmp255 = icmp ne i32 %and254, 0, !dbg !2224
  br i1 %cmp255, label %if.then257, label %if.end258, !dbg !2225

if.then257:                                       ; preds = %land.lhs.true253
  %171 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2226
  call arm_aapcs_vfpcc void @UART_EndTransmit_IT(%struct.__UART_HandleTypeDef* %171), !dbg !2227
  br label %if.end276, !dbg !2228

if.end258:                                        ; preds = %land.lhs.true253, %if.end249
  %172 = load i32, i32* %isrflags, align 4, !dbg !2229
  %and259 = and i32 %172, 8388608, !dbg !2230
  %cmp260 = icmp ne i32 %and259, 0, !dbg !2231
  br i1 %cmp260, label %land.lhs.true262, label %if.end267, !dbg !2232

land.lhs.true262:                                 ; preds = %if.end258
  %173 = load i32, i32* %cr1its, align 4, !dbg !2233
  %and263 = and i32 %173, 1073741824, !dbg !2234
  %cmp264 = icmp ne i32 %and263, 0, !dbg !2235
  br i1 %cmp264, label %if.then266, label %if.end267, !dbg !2236

if.then266:                                       ; preds = %land.lhs.true262
  %174 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2237
  call arm_aapcs_vfpcc void @HAL_UARTEx_TxFifoEmptyCallback(%struct.__UART_HandleTypeDef* %174), !dbg !2238
  br label %if.end276, !dbg !2239

if.end267:                                        ; preds = %land.lhs.true262, %if.end258
  %175 = load i32, i32* %isrflags, align 4, !dbg !2240
  %and268 = and i32 %175, 16777216, !dbg !2241
  %cmp269 = icmp ne i32 %and268, 0, !dbg !2242
  br i1 %cmp269, label %land.lhs.true271, label %if.end276, !dbg !2243

land.lhs.true271:                                 ; preds = %if.end267
  %176 = load i32, i32* %cr1its, align 4, !dbg !2244
  %and272 = and i32 %176, -2147483648, !dbg !2245
  %cmp273 = icmp ne i32 %and272, 0, !dbg !2246
  br i1 %cmp273, label %if.then275, label %if.end276, !dbg !2247

if.then275:                                       ; preds = %land.lhs.true271
  %177 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2248
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxFifoFullCallback(%struct.__UART_HandleTypeDef* %177), !dbg !2249
  br label %if.end276, !dbg !2250

if.end276:                                        ; preds = %if.end, %if.end130, %if.end190, %if.end219, %if.then228, %if.end248, %if.then257, %if.then266, %if.then275, %land.lhs.true271, %if.end267
  ret void, !dbg !2251
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMAAbortOnError(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !2252 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !2253
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !2254
  %1 = load i8*, i8** %Parent, align 4, !dbg !2254
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !2255
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2256
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2257
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 8, !dbg !2258
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !2259
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2260
  %TxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 5, !dbg !2261
  store volatile i16 0, i16* %TxXferCount, align 2, !dbg !2262
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2263
  call arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %5), !dbg !2264
  ret void, !dbg !2265
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2266 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2267
  ret void, !dbg !2268
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %huart, i16 zeroext %Size) #0 !dbg !2269 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %Size.addr = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i16 %Size, i16* %Size.addr, align 2
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2270
  %1 = load i16, i16* %Size.addr, align 2, !dbg !2271
  ret void, !dbg !2272
}

declare dso_local arm_aapcs_vfpcc void @HAL_UARTEx_WakeupCallback(%struct.__UART_HandleTypeDef*) #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_EndTransmit_IT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2273 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2274
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !2274
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2274
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 0, !dbg !2274
  %2 = load volatile i32, i32* %CR1, align 4, !dbg !2274
  %and = and i32 %2, -65, !dbg !2274
  store volatile i32 %and, i32* %CR1, align 4, !dbg !2274
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2275
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !2276
  store volatile i32 32, i32* %gState, align 4, !dbg !2277
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2278
  %TxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 15, !dbg !2279
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %TxISR, align 4, !dbg !2280
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2281
  call arm_aapcs_vfpcc void @HAL_UART_TxCpltCallback(%struct.__UART_HandleTypeDef* %5), !dbg !2282
  ret void, !dbg !2283
}

declare dso_local arm_aapcs_vfpcc void @HAL_UARTEx_TxFifoEmptyCallback(%struct.__UART_HandleTypeDef*) #1

declare dso_local arm_aapcs_vfpcc void @HAL_UARTEx_RxFifoFullCallback(%struct.__UART_HandleTypeDef*) #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_TxCpltCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2284 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2285
  ret void, !dbg !2286
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_TxHalfCpltCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2287 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2288
  ret void, !dbg !2289
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2290 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2291
  ret void, !dbg !2292
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_UART_RxHalfCpltCallback(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2293 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2294
  ret void, !dbg !2295
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_UART_ReceiverTimeout_Config(%struct.__UART_HandleTypeDef* %huart, i32 %TimeoutValue) #0 !dbg !2296 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %TimeoutValue.addr = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  store i32 %TimeoutValue, i32* %TimeoutValue.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2297
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !2297
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2297
  %cmp = icmp eq %struct.USART_TypeDef* %1, inttoptr (i32 1073774592 to %struct.USART_TypeDef*), !dbg !2297
  br i1 %cmp, label %if.end, label %if.then, !dbg !2298

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2299
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 0, !dbg !2299
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !2299
  %RTOR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 5, !dbg !2299
  %4 = load volatile i32, i32* %RTOR, align 4, !dbg !2299
  %and = and i32 %4, -16777216, !dbg !2299
  %5 = load i32, i32* %TimeoutValue.addr, align 4, !dbg !2299
  %or = or i32 %and, %5, !dbg !2299
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2299
  %Instance2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 0, !dbg !2299
  %7 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance2, align 4, !dbg !2299
  %RTOR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %7, i32 0, i32 5, !dbg !2299
  store volatile i32 %or, i32* %RTOR3, align 4, !dbg !2299
  br label %if.end, !dbg !2300

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2301
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_EnableReceiverTimeout(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2302 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2303
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !2303
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2303
  %cmp = icmp eq %struct.USART_TypeDef* %1, inttoptr (i32 1073774592 to %struct.USART_TypeDef*), !dbg !2303
  br i1 %cmp, label %if.else14, label %if.then, !dbg !2304

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2305
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 19, !dbg !2306
  %3 = load volatile i32, i32* %gState, align 4, !dbg !2306
  %cmp1 = icmp eq i32 %3, 32, !dbg !2307
  br i1 %cmp1, label %if.then2, label %if.else13, !dbg !2305

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !2308

do.body:                                          ; preds = %if.then2
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2308
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !2308
  %5 = load i8, i8* %Lock, align 4, !dbg !2308
  %conv = zext i8 %5 to i32, !dbg !2308
  %cmp3 = icmp eq i32 %conv, 1, !dbg !2308
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !2308

if.then5:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !2308
  br label %return, !dbg !2308

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2308
  %Lock6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !2308
  store i8 1, i8* %Lock6, align 4, !dbg !2308
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !2308

do.end:                                           ; preds = %if.end
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2309
  %gState7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 19, !dbg !2310
  store volatile i32 36, i32* %gState7, align 4, !dbg !2311
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2312
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !2312
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !2312
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 1, !dbg !2312
  %10 = load volatile i32, i32* %CR2, align 4, !dbg !2312
  %or = or i32 %10, 8388608, !dbg !2312
  store volatile i32 %or, i32* %CR2, align 4, !dbg !2312
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2313
  %gState9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 19, !dbg !2314
  store volatile i32 32, i32* %gState9, align 4, !dbg !2315
  br label %do.body10, !dbg !2316

do.body10:                                        ; preds = %do.end
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2316
  %Lock11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 18, !dbg !2316
  store i8 0, i8* %Lock11, align 4, !dbg !2316
  br label %do.end12, !dbg !2316

do.end12:                                         ; preds = %do.body10
  store i8 0, i8* %retval, align 1, !dbg !2317
  br label %return, !dbg !2317

if.else13:                                        ; preds = %if.then
  store i8 2, i8* %retval, align 1, !dbg !2318
  br label %return, !dbg !2318

if.else14:                                        ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !2319
  br label %return, !dbg !2319

return:                                           ; preds = %if.else14, %if.else13, %do.end12, %if.then5
  %13 = load i8, i8* %retval, align 1, !dbg !2320
  ret i8 %13, !dbg !2320
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_UART_DisableReceiverTimeout(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2321 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2322
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !2322
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2322
  %cmp = icmp eq %struct.USART_TypeDef* %1, inttoptr (i32 1073774592 to %struct.USART_TypeDef*), !dbg !2322
  br i1 %cmp, label %if.else14, label %if.then, !dbg !2323

if.then:                                          ; preds = %entry
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2324
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 19, !dbg !2325
  %3 = load volatile i32, i32* %gState, align 4, !dbg !2325
  %cmp1 = icmp eq i32 %3, 32, !dbg !2326
  br i1 %cmp1, label %if.then2, label %if.else13, !dbg !2324

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !2327

do.body:                                          ; preds = %if.then2
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2327
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 18, !dbg !2327
  %5 = load i8, i8* %Lock, align 4, !dbg !2327
  %conv = zext i8 %5 to i32, !dbg !2327
  %cmp3 = icmp eq i32 %conv, 1, !dbg !2327
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !2327

if.then5:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !2327
  br label %return, !dbg !2327

if.else:                                          ; preds = %do.body
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2327
  %Lock6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 18, !dbg !2327
  store i8 1, i8* %Lock6, align 4, !dbg !2327
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !2327

do.end:                                           ; preds = %if.end
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2328
  %gState7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 19, !dbg !2329
  store volatile i32 36, i32* %gState7, align 4, !dbg !2330
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2331
  %Instance8 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !2331
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance8, align 4, !dbg !2331
  %CR2 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 1, !dbg !2331
  %10 = load volatile i32, i32* %CR2, align 4, !dbg !2331
  %and = and i32 %10, -8388609, !dbg !2331
  store volatile i32 %and, i32* %CR2, align 4, !dbg !2331
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2332
  %gState9 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 19, !dbg !2333
  store volatile i32 32, i32* %gState9, align 4, !dbg !2334
  br label %do.body10, !dbg !2335

do.body10:                                        ; preds = %do.end
  %12 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2335
  %Lock11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %12, i32 0, i32 18, !dbg !2335
  store i8 0, i8* %Lock11, align 4, !dbg !2335
  br label %do.end12, !dbg !2335

do.end12:                                         ; preds = %do.body10
  store i8 0, i8* %retval, align 1, !dbg !2336
  br label %return, !dbg !2336

if.else13:                                        ; preds = %if.then
  store i8 2, i8* %retval, align 1, !dbg !2337
  br label %return, !dbg !2337

if.else14:                                        ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !2338
  br label %return, !dbg !2338

return:                                           ; preds = %if.else14, %if.else13, %do.end12, %if.then5
  %13 = load i8, i8* %retval, align 1, !dbg !2339
  ret i8 %13, !dbg !2339
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_MultiProcessor_EnableMuteMode(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2340 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !2341

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2341
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !2341
  %1 = load i8, i8* %Lock, align 4, !dbg !2341
  %conv = zext i8 %1 to i32, !dbg !2341
  %cmp = icmp eq i32 %conv, 1, !dbg !2341
  br i1 %cmp, label %if.then, label %if.else, !dbg !2341

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !2341
  br label %return, !dbg !2341

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2341
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !2341
  store i8 1, i8* %Lock2, align 4, !dbg !2341
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !2341

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2342
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !2343
  store volatile i32 36, i32* %gState, align 4, !dbg !2344
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2345
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !2345
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2345
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !2345
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !2345
  %or = or i32 %6, 8192, !dbg !2345
  store volatile i32 %or, i32* %CR1, align 4, !dbg !2345
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2346
  %gState3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 19, !dbg !2347
  store volatile i32 32, i32* %gState3, align 4, !dbg !2348
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2349
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %8), !dbg !2350
  store i8 %call, i8* %retval, align 1, !dbg !2351
  br label %return, !dbg !2351

return:                                           ; preds = %do.end, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !2352
  ret i8 %9, !dbg !2352
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_MultiProcessor_DisableMuteMode(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2353 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !2354

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2354
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !2354
  %1 = load i8, i8* %Lock, align 4, !dbg !2354
  %conv = zext i8 %1 to i32, !dbg !2354
  %cmp = icmp eq i32 %conv, 1, !dbg !2354
  br i1 %cmp, label %if.then, label %if.else, !dbg !2354

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !2354
  br label %return, !dbg !2354

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2354
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !2354
  store i8 1, i8* %Lock2, align 4, !dbg !2354
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !2354

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2355
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !2356
  store volatile i32 36, i32* %gState, align 4, !dbg !2357
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2358
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !2358
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2358
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !2358
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !2358
  %and = and i32 %6, -8193, !dbg !2358
  store volatile i32 %and, i32* %CR1, align 4, !dbg !2358
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2359
  %gState3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 19, !dbg !2360
  store volatile i32 32, i32* %gState3, align 4, !dbg !2361
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2362
  %call = call arm_aapcs_vfpcc zeroext i8 @UART_CheckIdleState(%struct.__UART_HandleTypeDef* %8), !dbg !2363
  store i8 %call, i8* %retval, align 1, !dbg !2364
  br label %return, !dbg !2364

return:                                           ; preds = %do.end, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !2365
  ret i8 %9, !dbg !2365
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_MultiProcessor_EnterMuteMode(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2366 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2367
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !2367
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2367
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %1, i32 0, i32 6, !dbg !2367
  %2 = load volatile i32, i32* %RQR, align 4, !dbg !2367
  %or = or i32 %2, 4, !dbg !2367
  store volatile i32 %or, i32* %RQR, align 4, !dbg !2367
  ret void, !dbg !2368
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_HalfDuplex_EnableTransmitter(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2369 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !2370

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2370
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !2370
  %1 = load i8, i8* %Lock, align 4, !dbg !2370
  %conv = zext i8 %1 to i32, !dbg !2370
  %cmp = icmp eq i32 %conv, 1, !dbg !2370
  br i1 %cmp, label %if.then, label %if.else, !dbg !2370

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !2370
  br label %return, !dbg !2370

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2370
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !2370
  store i8 1, i8* %Lock2, align 4, !dbg !2370
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !2370

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2371
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !2372
  store volatile i32 36, i32* %gState, align 4, !dbg !2373
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2374
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !2374
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2374
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !2374
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !2374
  %and = and i32 %6, -13, !dbg !2374
  store volatile i32 %and, i32* %CR1, align 4, !dbg !2374
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2375
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !2375
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !2375
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !2375
  %9 = load volatile i32, i32* %CR14, align 4, !dbg !2375
  %or = or i32 %9, 8, !dbg !2375
  store volatile i32 %or, i32* %CR14, align 4, !dbg !2375
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2376
  %gState5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 19, !dbg !2377
  store volatile i32 32, i32* %gState5, align 4, !dbg !2378
  br label %do.body6, !dbg !2379

do.body6:                                         ; preds = %do.end
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2379
  %Lock7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 18, !dbg !2379
  store i8 0, i8* %Lock7, align 4, !dbg !2379
  br label %do.end8, !dbg !2379

do.end8:                                          ; preds = %do.body6
  store i8 0, i8* %retval, align 1, !dbg !2380
  br label %return, !dbg !2380

return:                                           ; preds = %do.end8, %if.then
  %12 = load i8, i8* %retval, align 1, !dbg !2381
  ret i8 %12, !dbg !2381
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_HalfDuplex_EnableReceiver(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2382 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !2383

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2383
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !2383
  %1 = load i8, i8* %Lock, align 4, !dbg !2383
  %conv = zext i8 %1 to i32, !dbg !2383
  %cmp = icmp eq i32 %conv, 1, !dbg !2383
  br i1 %cmp, label %if.then, label %if.else, !dbg !2383

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !2383
  br label %return, !dbg !2383

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2383
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !2383
  store i8 1, i8* %Lock2, align 4, !dbg !2383
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !2383

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2384
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !2385
  store volatile i32 36, i32* %gState, align 4, !dbg !2386
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2387
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !2387
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2387
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 0, !dbg !2387
  %6 = load volatile i32, i32* %CR1, align 4, !dbg !2387
  %and = and i32 %6, -13, !dbg !2387
  store volatile i32 %and, i32* %CR1, align 4, !dbg !2387
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2388
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !2388
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !2388
  %CR14 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !2388
  %9 = load volatile i32, i32* %CR14, align 4, !dbg !2388
  %or = or i32 %9, 4, !dbg !2388
  store volatile i32 %or, i32* %CR14, align 4, !dbg !2388
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2389
  %gState5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 19, !dbg !2390
  store volatile i32 32, i32* %gState5, align 4, !dbg !2391
  br label %do.body6, !dbg !2392

do.body6:                                         ; preds = %do.end
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2392
  %Lock7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 18, !dbg !2392
  store i8 0, i8* %Lock7, align 4, !dbg !2392
  br label %do.end8, !dbg !2392

do.end8:                                          ; preds = %do.body6
  store i8 0, i8* %retval, align 1, !dbg !2393
  br label %return, !dbg !2393

return:                                           ; preds = %do.end8, %if.then
  %12 = load i8, i8* %retval, align 1, !dbg !2394
  ret i8 %12, !dbg !2394
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_LIN_SendBreak(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2395 {
entry:
  %retval = alloca i8, align 1
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  br label %do.body, !dbg !2396

do.body:                                          ; preds = %entry
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2396
  %Lock = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 18, !dbg !2396
  %1 = load i8, i8* %Lock, align 4, !dbg !2396
  %conv = zext i8 %1 to i32, !dbg !2396
  %cmp = icmp eq i32 %conv, 1, !dbg !2396
  br i1 %cmp, label %if.then, label %if.else, !dbg !2396

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !2396
  br label %return, !dbg !2396

if.else:                                          ; preds = %do.body
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2396
  %Lock2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 18, !dbg !2396
  store i8 1, i8* %Lock2, align 4, !dbg !2396
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !2396

do.end:                                           ; preds = %if.end
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2397
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 19, !dbg !2398
  store volatile i32 36, i32* %gState, align 4, !dbg !2399
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2400
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !2400
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2400
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 6, !dbg !2400
  %6 = load volatile i32, i32* %RQR, align 4, !dbg !2400
  %or = or i32 %6, 2, !dbg !2400
  store volatile i32 %or, i32* %RQR, align 4, !dbg !2400
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2401
  %gState3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 19, !dbg !2402
  store volatile i32 32, i32* %gState3, align 4, !dbg !2403
  br label %do.body4, !dbg !2404

do.body4:                                         ; preds = %do.end
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2404
  %Lock5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 18, !dbg !2404
  store i8 0, i8* %Lock5, align 4, !dbg !2404
  br label %do.end6, !dbg !2404

do.end6:                                          ; preds = %do.body4
  store i8 0, i8* %retval, align 1, !dbg !2405
  br label %return, !dbg !2405

return:                                           ; preds = %do.end6, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !2406
  ret i8 %9, !dbg !2406
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_UART_GetState(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2407 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2408
  %gState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 19, !dbg !2409
  %1 = load volatile i32, i32* %gState, align 4, !dbg !2409
  store i32 %1, i32* %temp1, align 4, !dbg !2410
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2411
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 20, !dbg !2412
  %3 = load volatile i32, i32* %RxState, align 4, !dbg !2412
  store i32 %3, i32* %temp2, align 4, !dbg !2413
  %4 = load i32, i32* %temp1, align 4, !dbg !2414
  %5 = load i32, i32* %temp2, align 4, !dbg !2415
  %or = or i32 %4, %5, !dbg !2416
  ret i32 %or, !dbg !2417
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_UART_GetError(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2418 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2419
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 21, !dbg !2420
  %1 = load volatile i32, i32* %ErrorCode, align 4, !dbg !2420
  ret i32 %1, !dbg !2421
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK1Freq() #1

declare dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetPCLK2Freq() #1

declare dso_local arm_aapcs_vfpcc i32 @HAL_RCC_GetSysClockFreq() #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_RxISR_16BIT_FIFOEN(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2422 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tmp = alloca i16*, align 4
  %uhMask = alloca i16, align 2
  %uhdata = alloca i16, align 2
  %nb_rx_data = alloca i16, align 2
  %rxdatacount = alloca i16, align 2
  %isrflags = alloca i32, align 4
  %cr1its = alloca i32, align 4
  %cr3its = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2423
  %Mask = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !2424
  %1 = load i16, i16* %Mask, align 4, !dbg !2424
  store i16 %1, i16* %uhMask, align 2, !dbg !2425
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2426
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 0, !dbg !2426
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2426
  %ISR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 7, !dbg !2426
  %4 = load volatile i32, i32* %ISR, align 4, !dbg !2426
  store i32 %4, i32* %isrflags, align 4, !dbg !2427
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2428
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 0, !dbg !2428
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !2428
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 0, !dbg !2428
  %7 = load volatile i32, i32* %CR1, align 4, !dbg !2428
  store i32 %7, i32* %cr1its, align 4, !dbg !2429
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2430
  %Instance2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !2430
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance2, align 4, !dbg !2430
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 2, !dbg !2430
  %10 = load volatile i32, i32* %CR3, align 4, !dbg !2430
  store i32 %10, i32* %cr3its, align 4, !dbg !2431
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2432
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 20, !dbg !2433
  %12 = load volatile i32, i32* %RxState, align 4, !dbg !2433
  %cmp = icmp eq i32 %12, 34, !dbg !2434
  br i1 %cmp, label %if.then, label %if.else101, !dbg !2432

if.then:                                          ; preds = %entry
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2435
  %NbRxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 11, !dbg !2436
  %14 = load i16, i16* %NbRxDataToProcess, align 4, !dbg !2436
  store i16 %14, i16* %nb_rx_data, align 2, !dbg !2437
  br label %while.cond, !dbg !2438

while.cond:                                       ; preds = %if.end81, %if.then
  %15 = load i16, i16* %nb_rx_data, align 2, !dbg !2439
  %conv = zext i16 %15 to i32, !dbg !2439
  %cmp3 = icmp ugt i32 %conv, 0, !dbg !2440
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !2441

land.rhs:                                         ; preds = %while.cond
  %16 = load i32, i32* %isrflags, align 4, !dbg !2442
  %and = and i32 %16, 32, !dbg !2443
  %cmp5 = icmp ne i32 %and, 0, !dbg !2444
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ], !dbg !2445
  br i1 %17, label %while.body, label %while.end, !dbg !2438

while.body:                                       ; preds = %land.end
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2446
  %Instance7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !2446
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance7, align 4, !dbg !2446
  %RDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 9, !dbg !2446
  %20 = load volatile i32, i32* %RDR, align 4, !dbg !2446
  %conv8 = trunc i32 %20 to i16, !dbg !2447
  store i16 %conv8, i16* %uhdata, align 2, !dbg !2448
  %21 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2449
  %pRxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %21, i32 0, i32 6, !dbg !2450
  %22 = load i8*, i8** %pRxBuffPtr, align 4, !dbg !2450
  %23 = bitcast i8* %22 to i16*, !dbg !2451
  store i16* %23, i16** %tmp, align 4, !dbg !2452
  %24 = load i16, i16* %uhdata, align 2, !dbg !2453
  %conv9 = zext i16 %24 to i32, !dbg !2453
  %25 = load i16, i16* %uhMask, align 2, !dbg !2454
  %conv10 = zext i16 %25 to i32, !dbg !2454
  %and11 = and i32 %conv9, %conv10, !dbg !2455
  %conv12 = trunc i32 %and11 to i16, !dbg !2456
  %26 = load i16*, i16** %tmp, align 4, !dbg !2457
  store i16 %conv12, i16* %26, align 2, !dbg !2458
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2459
  %pRxBuffPtr13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 6, !dbg !2460
  %28 = load i8*, i8** %pRxBuffPtr13, align 4, !dbg !2461
  %add.ptr = getelementptr inbounds i8, i8* %28, i32 2, !dbg !2461
  store i8* %add.ptr, i8** %pRxBuffPtr13, align 4, !dbg !2461
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2462
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 8, !dbg !2463
  %30 = load volatile i16, i16* %RxXferCount, align 2, !dbg !2464
  %dec = add i16 %30, -1, !dbg !2464
  store volatile i16 %dec, i16* %RxXferCount, align 2, !dbg !2464
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2465
  %Instance14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 0, !dbg !2465
  %32 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance14, align 4, !dbg !2465
  %ISR15 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %32, i32 0, i32 7, !dbg !2465
  %33 = load volatile i32, i32* %ISR15, align 4, !dbg !2465
  store i32 %33, i32* %isrflags, align 4, !dbg !2466
  %34 = load i32, i32* %isrflags, align 4, !dbg !2467
  %and16 = and i32 %34, 7, !dbg !2468
  %cmp17 = icmp ne i32 %and16, 0, !dbg !2469
  br i1 %cmp17, label %if.then19, label %if.end60, !dbg !2470

if.then19:                                        ; preds = %while.body
  %35 = load i32, i32* %isrflags, align 4, !dbg !2471
  %and20 = and i32 %35, 1, !dbg !2472
  %cmp21 = icmp ne i32 %and20, 0, !dbg !2473
  br i1 %cmp21, label %land.lhs.true, label %if.end, !dbg !2474

land.lhs.true:                                    ; preds = %if.then19
  %36 = load i32, i32* %cr1its, align 4, !dbg !2475
  %and23 = and i32 %36, 256, !dbg !2476
  %cmp24 = icmp ne i32 %and23, 0, !dbg !2477
  br i1 %cmp24, label %if.then26, label %if.end, !dbg !2478

if.then26:                                        ; preds = %land.lhs.true
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2479
  %Instance27 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 0, !dbg !2479
  %38 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance27, align 4, !dbg !2479
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %38, i32 0, i32 8, !dbg !2479
  store volatile i32 1, i32* %ICR, align 4, !dbg !2479
  %39 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2480
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %39, i32 0, i32 21, !dbg !2481
  %40 = load volatile i32, i32* %ErrorCode, align 4, !dbg !2482
  %or = or i32 %40, 1, !dbg !2482
  store volatile i32 %or, i32* %ErrorCode, align 4, !dbg !2482
  br label %if.end, !dbg !2483

if.end:                                           ; preds = %if.then26, %land.lhs.true, %if.then19
  %41 = load i32, i32* %isrflags, align 4, !dbg !2484
  %and28 = and i32 %41, 2, !dbg !2485
  %cmp29 = icmp ne i32 %and28, 0, !dbg !2486
  br i1 %cmp29, label %land.lhs.true31, label %if.end40, !dbg !2487

land.lhs.true31:                                  ; preds = %if.end
  %42 = load i32, i32* %cr3its, align 4, !dbg !2488
  %and32 = and i32 %42, 1, !dbg !2489
  %cmp33 = icmp ne i32 %and32, 0, !dbg !2490
  br i1 %cmp33, label %if.then35, label %if.end40, !dbg !2491

if.then35:                                        ; preds = %land.lhs.true31
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2492
  %Instance36 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 0, !dbg !2492
  %44 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance36, align 4, !dbg !2492
  %ICR37 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %44, i32 0, i32 8, !dbg !2492
  store volatile i32 2, i32* %ICR37, align 4, !dbg !2492
  %45 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2493
  %ErrorCode38 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %45, i32 0, i32 21, !dbg !2494
  %46 = load volatile i32, i32* %ErrorCode38, align 4, !dbg !2495
  %or39 = or i32 %46, 4, !dbg !2495
  store volatile i32 %or39, i32* %ErrorCode38, align 4, !dbg !2495
  br label %if.end40, !dbg !2496

if.end40:                                         ; preds = %if.then35, %land.lhs.true31, %if.end
  %47 = load i32, i32* %isrflags, align 4, !dbg !2497
  %and41 = and i32 %47, 4, !dbg !2498
  %cmp42 = icmp ne i32 %and41, 0, !dbg !2499
  br i1 %cmp42, label %land.lhs.true44, label %if.end53, !dbg !2500

land.lhs.true44:                                  ; preds = %if.end40
  %48 = load i32, i32* %cr3its, align 4, !dbg !2501
  %and45 = and i32 %48, 1, !dbg !2502
  %cmp46 = icmp ne i32 %and45, 0, !dbg !2503
  br i1 %cmp46, label %if.then48, label %if.end53, !dbg !2504

if.then48:                                        ; preds = %land.lhs.true44
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2505
  %Instance49 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 0, !dbg !2505
  %50 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance49, align 4, !dbg !2505
  %ICR50 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %50, i32 0, i32 8, !dbg !2505
  store volatile i32 4, i32* %ICR50, align 4, !dbg !2505
  %51 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2506
  %ErrorCode51 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %51, i32 0, i32 21, !dbg !2507
  %52 = load volatile i32, i32* %ErrorCode51, align 4, !dbg !2508
  %or52 = or i32 %52, 2, !dbg !2508
  store volatile i32 %or52, i32* %ErrorCode51, align 4, !dbg !2508
  br label %if.end53, !dbg !2509

if.end53:                                         ; preds = %if.then48, %land.lhs.true44, %if.end40
  %53 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2510
  %ErrorCode54 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %53, i32 0, i32 21, !dbg !2511
  %54 = load volatile i32, i32* %ErrorCode54, align 4, !dbg !2511
  %cmp55 = icmp ne i32 %54, 0, !dbg !2512
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !2510

if.then57:                                        ; preds = %if.end53
  %55 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2513
  call arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %55), !dbg !2514
  %56 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2515
  %ErrorCode58 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %56, i32 0, i32 21, !dbg !2516
  store volatile i32 0, i32* %ErrorCode58, align 4, !dbg !2517
  br label %if.end59, !dbg !2518

if.end59:                                         ; preds = %if.then57, %if.end53
  br label %if.end60, !dbg !2519

if.end60:                                         ; preds = %if.end59, %while.body
  %57 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2520
  %RxXferCount61 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %57, i32 0, i32 8, !dbg !2521
  %58 = load volatile i16, i16* %RxXferCount61, align 2, !dbg !2521
  %conv62 = zext i16 %58 to i32, !dbg !2520
  %cmp63 = icmp eq i32 %conv62, 0, !dbg !2522
  br i1 %cmp63, label %if.then65, label %if.end81, !dbg !2520

if.then65:                                        ; preds = %if.end60
  %59 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2523
  %Instance66 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %59, i32 0, i32 0, !dbg !2523
  %60 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance66, align 4, !dbg !2523
  %CR167 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %60, i32 0, i32 0, !dbg !2523
  %61 = load volatile i32, i32* %CR167, align 4, !dbg !2523
  %and68 = and i32 %61, -257, !dbg !2523
  store volatile i32 %and68, i32* %CR167, align 4, !dbg !2523
  %62 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2524
  %Instance69 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %62, i32 0, i32 0, !dbg !2524
  %63 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance69, align 4, !dbg !2524
  %CR370 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %63, i32 0, i32 2, !dbg !2524
  %64 = load volatile i32, i32* %CR370, align 4, !dbg !2524
  %and71 = and i32 %64, -268435458, !dbg !2524
  store volatile i32 %and71, i32* %CR370, align 4, !dbg !2524
  %65 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2525
  %RxState72 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %65, i32 0, i32 20, !dbg !2526
  store volatile i32 32, i32* %RxState72, align 4, !dbg !2527
  %66 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2528
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %66, i32 0, i32 14, !dbg !2529
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !2530
  %67 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2531
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %67, i32 0, i32 13, !dbg !2532
  %68 = load volatile i32, i32* %ReceptionType, align 4, !dbg !2532
  %cmp73 = icmp eq i32 %68, 1, !dbg !2533
  br i1 %cmp73, label %if.then75, label %if.else, !dbg !2531

if.then75:                                        ; preds = %if.then65
  %69 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2534
  %Instance76 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %69, i32 0, i32 0, !dbg !2534
  %70 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance76, align 4, !dbg !2534
  %CR177 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %70, i32 0, i32 0, !dbg !2534
  %71 = load volatile i32, i32* %CR177, align 4, !dbg !2534
  %and78 = and i32 %71, -17, !dbg !2534
  store volatile i32 %and78, i32* %CR177, align 4, !dbg !2534
  %72 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2535
  %73 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2536
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %73, i32 0, i32 7, !dbg !2537
  %74 = load i16, i16* %RxXferSize, align 4, !dbg !2537
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %72, i16 zeroext %74), !dbg !2538
  br label %if.end79, !dbg !2539

if.else:                                          ; preds = %if.then65
  %75 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2540
  call arm_aapcs_vfpcc void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* %75), !dbg !2541
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then75
  %76 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2542
  %ReceptionType80 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %76, i32 0, i32 13, !dbg !2543
  store volatile i32 0, i32* %ReceptionType80, align 4, !dbg !2544
  br label %if.end81, !dbg !2545

if.end81:                                         ; preds = %if.end79, %if.end60
  br label %while.cond, !dbg !2438, !llvm.loop !2546

while.end:                                        ; preds = %land.end
  %77 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2548
  %RxXferCount82 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %77, i32 0, i32 8, !dbg !2549
  %78 = load volatile i16, i16* %RxXferCount82, align 2, !dbg !2549
  store i16 %78, i16* %rxdatacount, align 2, !dbg !2550
  %79 = load i16, i16* %rxdatacount, align 2, !dbg !2551
  %conv83 = zext i16 %79 to i32, !dbg !2551
  %cmp84 = icmp ne i32 %conv83, 0, !dbg !2552
  br i1 %cmp84, label %land.lhs.true86, label %if.end100, !dbg !2553

land.lhs.true86:                                  ; preds = %while.end
  %80 = load i16, i16* %rxdatacount, align 2, !dbg !2554
  %conv87 = zext i16 %80 to i32, !dbg !2554
  %81 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2555
  %NbRxDataToProcess88 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %81, i32 0, i32 11, !dbg !2556
  %82 = load i16, i16* %NbRxDataToProcess88, align 4, !dbg !2556
  %conv89 = zext i16 %82 to i32, !dbg !2555
  %cmp90 = icmp slt i32 %conv87, %conv89, !dbg !2557
  br i1 %cmp90, label %if.then92, label %if.end100, !dbg !2558

if.then92:                                        ; preds = %land.lhs.true86
  %83 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2559
  %Instance93 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %83, i32 0, i32 0, !dbg !2559
  %84 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance93, align 4, !dbg !2559
  %CR394 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %84, i32 0, i32 2, !dbg !2559
  %85 = load volatile i32, i32* %CR394, align 4, !dbg !2559
  %and95 = and i32 %85, -268435457, !dbg !2559
  store volatile i32 %and95, i32* %CR394, align 4, !dbg !2559
  %86 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2560
  %RxISR96 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %86, i32 0, i32 14, !dbg !2561
  store void (%struct.__UART_HandleTypeDef*)* @UART_RxISR_16BIT, void (%struct.__UART_HandleTypeDef*)** %RxISR96, align 4, !dbg !2562
  %87 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2563
  %Instance97 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %87, i32 0, i32 0, !dbg !2563
  %88 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance97, align 4, !dbg !2563
  %CR198 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %88, i32 0, i32 0, !dbg !2563
  %89 = load volatile i32, i32* %CR198, align 4, !dbg !2563
  %or99 = or i32 %89, 32, !dbg !2563
  store volatile i32 %or99, i32* %CR198, align 4, !dbg !2563
  br label %if.end100, !dbg !2564

if.end100:                                        ; preds = %if.then92, %land.lhs.true86, %while.end
  br label %if.end104, !dbg !2565

if.else101:                                       ; preds = %entry
  %90 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2566
  %Instance102 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %90, i32 0, i32 0, !dbg !2566
  %91 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance102, align 4, !dbg !2566
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %91, i32 0, i32 6, !dbg !2566
  %92 = load volatile i32, i32* %RQR, align 4, !dbg !2566
  %or103 = or i32 %92, 8, !dbg !2566
  store volatile i32 %or103, i32* %RQR, align 4, !dbg !2566
  br label %if.end104

if.end104:                                        ; preds = %if.else101, %if.end100
  ret void, !dbg !2567
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_RxISR_8BIT_FIFOEN(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2568 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %uhMask = alloca i16, align 2
  %uhdata = alloca i16, align 2
  %nb_rx_data = alloca i16, align 2
  %rxdatacount = alloca i16, align 2
  %isrflags = alloca i32, align 4
  %cr1its = alloca i32, align 4
  %cr3its = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2569
  %Mask = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !2570
  %1 = load i16, i16* %Mask, align 4, !dbg !2570
  store i16 %1, i16* %uhMask, align 2, !dbg !2571
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2572
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 0, !dbg !2572
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2572
  %ISR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %3, i32 0, i32 7, !dbg !2572
  %4 = load volatile i32, i32* %ISR, align 4, !dbg !2572
  store i32 %4, i32* %isrflags, align 4, !dbg !2573
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2574
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %5, i32 0, i32 0, !dbg !2574
  %6 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !2574
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %6, i32 0, i32 0, !dbg !2574
  %7 = load volatile i32, i32* %CR1, align 4, !dbg !2574
  store i32 %7, i32* %cr1its, align 4, !dbg !2575
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2576
  %Instance2 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %8, i32 0, i32 0, !dbg !2576
  %9 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance2, align 4, !dbg !2576
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %9, i32 0, i32 2, !dbg !2576
  %10 = load volatile i32, i32* %CR3, align 4, !dbg !2576
  store i32 %10, i32* %cr3its, align 4, !dbg !2577
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2578
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 20, !dbg !2579
  %12 = load volatile i32, i32* %RxState, align 4, !dbg !2579
  %cmp = icmp eq i32 %12, 34, !dbg !2580
  br i1 %cmp, label %if.then, label %if.else102, !dbg !2578

if.then:                                          ; preds = %entry
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2581
  %NbRxDataToProcess = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 11, !dbg !2582
  %14 = load i16, i16* %NbRxDataToProcess, align 4, !dbg !2582
  store i16 %14, i16* %nb_rx_data, align 2, !dbg !2583
  br label %while.cond, !dbg !2584

while.cond:                                       ; preds = %if.end82, %if.then
  %15 = load i16, i16* %nb_rx_data, align 2, !dbg !2585
  %conv = zext i16 %15 to i32, !dbg !2585
  %cmp3 = icmp ugt i32 %conv, 0, !dbg !2586
  br i1 %cmp3, label %land.rhs, label %land.end, !dbg !2587

land.rhs:                                         ; preds = %while.cond
  %16 = load i32, i32* %isrflags, align 4, !dbg !2588
  %and = and i32 %16, 32, !dbg !2589
  %cmp5 = icmp ne i32 %and, 0, !dbg !2590
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ], !dbg !2591
  br i1 %17, label %while.body, label %while.end, !dbg !2584

while.body:                                       ; preds = %land.end
  %18 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2592
  %Instance7 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %18, i32 0, i32 0, !dbg !2592
  %19 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance7, align 4, !dbg !2592
  %RDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %19, i32 0, i32 9, !dbg !2592
  %20 = load volatile i32, i32* %RDR, align 4, !dbg !2592
  %conv8 = trunc i32 %20 to i16, !dbg !2593
  store i16 %conv8, i16* %uhdata, align 2, !dbg !2594
  %21 = load i16, i16* %uhdata, align 2, !dbg !2595
  %conv9 = zext i16 %21 to i32, !dbg !2595
  %22 = load i16, i16* %uhMask, align 2, !dbg !2596
  %conv10 = trunc i16 %22 to i8, !dbg !2597
  %conv11 = zext i8 %conv10 to i32, !dbg !2597
  %and12 = and i32 %conv9, %conv11, !dbg !2598
  %conv13 = trunc i32 %and12 to i8, !dbg !2599
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2600
  %pRxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 6, !dbg !2601
  %24 = load i8*, i8** %pRxBuffPtr, align 4, !dbg !2601
  store i8 %conv13, i8* %24, align 1, !dbg !2602
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2603
  %pRxBuffPtr14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 6, !dbg !2604
  %26 = load i8*, i8** %pRxBuffPtr14, align 4, !dbg !2605
  %incdec.ptr = getelementptr inbounds i8, i8* %26, i32 1, !dbg !2605
  store i8* %incdec.ptr, i8** %pRxBuffPtr14, align 4, !dbg !2605
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2606
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 8, !dbg !2607
  %28 = load volatile i16, i16* %RxXferCount, align 2, !dbg !2608
  %dec = add i16 %28, -1, !dbg !2608
  store volatile i16 %dec, i16* %RxXferCount, align 2, !dbg !2608
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2609
  %Instance15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !2609
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance15, align 4, !dbg !2609
  %ISR16 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 7, !dbg !2609
  %31 = load volatile i32, i32* %ISR16, align 4, !dbg !2609
  store i32 %31, i32* %isrflags, align 4, !dbg !2610
  %32 = load i32, i32* %isrflags, align 4, !dbg !2611
  %and17 = and i32 %32, 7, !dbg !2612
  %cmp18 = icmp ne i32 %and17, 0, !dbg !2613
  br i1 %cmp18, label %if.then20, label %if.end61, !dbg !2614

if.then20:                                        ; preds = %while.body
  %33 = load i32, i32* %isrflags, align 4, !dbg !2615
  %and21 = and i32 %33, 1, !dbg !2616
  %cmp22 = icmp ne i32 %and21, 0, !dbg !2617
  br i1 %cmp22, label %land.lhs.true, label %if.end, !dbg !2618

land.lhs.true:                                    ; preds = %if.then20
  %34 = load i32, i32* %cr1its, align 4, !dbg !2619
  %and24 = and i32 %34, 256, !dbg !2620
  %cmp25 = icmp ne i32 %and24, 0, !dbg !2621
  br i1 %cmp25, label %if.then27, label %if.end, !dbg !2622

if.then27:                                        ; preds = %land.lhs.true
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2623
  %Instance28 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 0, !dbg !2623
  %36 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance28, align 4, !dbg !2623
  %ICR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %36, i32 0, i32 8, !dbg !2623
  store volatile i32 1, i32* %ICR, align 4, !dbg !2623
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2624
  %ErrorCode = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 21, !dbg !2625
  %38 = load volatile i32, i32* %ErrorCode, align 4, !dbg !2626
  %or = or i32 %38, 1, !dbg !2626
  store volatile i32 %or, i32* %ErrorCode, align 4, !dbg !2626
  br label %if.end, !dbg !2627

if.end:                                           ; preds = %if.then27, %land.lhs.true, %if.then20
  %39 = load i32, i32* %isrflags, align 4, !dbg !2628
  %and29 = and i32 %39, 2, !dbg !2629
  %cmp30 = icmp ne i32 %and29, 0, !dbg !2630
  br i1 %cmp30, label %land.lhs.true32, label %if.end41, !dbg !2631

land.lhs.true32:                                  ; preds = %if.end
  %40 = load i32, i32* %cr3its, align 4, !dbg !2632
  %and33 = and i32 %40, 1, !dbg !2633
  %cmp34 = icmp ne i32 %and33, 0, !dbg !2634
  br i1 %cmp34, label %if.then36, label %if.end41, !dbg !2635

if.then36:                                        ; preds = %land.lhs.true32
  %41 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2636
  %Instance37 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %41, i32 0, i32 0, !dbg !2636
  %42 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance37, align 4, !dbg !2636
  %ICR38 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %42, i32 0, i32 8, !dbg !2636
  store volatile i32 2, i32* %ICR38, align 4, !dbg !2636
  %43 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2637
  %ErrorCode39 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %43, i32 0, i32 21, !dbg !2638
  %44 = load volatile i32, i32* %ErrorCode39, align 4, !dbg !2639
  %or40 = or i32 %44, 4, !dbg !2639
  store volatile i32 %or40, i32* %ErrorCode39, align 4, !dbg !2639
  br label %if.end41, !dbg !2640

if.end41:                                         ; preds = %if.then36, %land.lhs.true32, %if.end
  %45 = load i32, i32* %isrflags, align 4, !dbg !2641
  %and42 = and i32 %45, 4, !dbg !2642
  %cmp43 = icmp ne i32 %and42, 0, !dbg !2643
  br i1 %cmp43, label %land.lhs.true45, label %if.end54, !dbg !2644

land.lhs.true45:                                  ; preds = %if.end41
  %46 = load i32, i32* %cr3its, align 4, !dbg !2645
  %and46 = and i32 %46, 1, !dbg !2646
  %cmp47 = icmp ne i32 %and46, 0, !dbg !2647
  br i1 %cmp47, label %if.then49, label %if.end54, !dbg !2648

if.then49:                                        ; preds = %land.lhs.true45
  %47 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2649
  %Instance50 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %47, i32 0, i32 0, !dbg !2649
  %48 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance50, align 4, !dbg !2649
  %ICR51 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %48, i32 0, i32 8, !dbg !2649
  store volatile i32 4, i32* %ICR51, align 4, !dbg !2649
  %49 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2650
  %ErrorCode52 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %49, i32 0, i32 21, !dbg !2651
  %50 = load volatile i32, i32* %ErrorCode52, align 4, !dbg !2652
  %or53 = or i32 %50, 2, !dbg !2652
  store volatile i32 %or53, i32* %ErrorCode52, align 4, !dbg !2652
  br label %if.end54, !dbg !2653

if.end54:                                         ; preds = %if.then49, %land.lhs.true45, %if.end41
  %51 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2654
  %ErrorCode55 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %51, i32 0, i32 21, !dbg !2655
  %52 = load volatile i32, i32* %ErrorCode55, align 4, !dbg !2655
  %cmp56 = icmp ne i32 %52, 0, !dbg !2656
  br i1 %cmp56, label %if.then58, label %if.end60, !dbg !2654

if.then58:                                        ; preds = %if.end54
  %53 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2657
  call arm_aapcs_vfpcc void @HAL_UART_ErrorCallback(%struct.__UART_HandleTypeDef* %53), !dbg !2658
  %54 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2659
  %ErrorCode59 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %54, i32 0, i32 21, !dbg !2660
  store volatile i32 0, i32* %ErrorCode59, align 4, !dbg !2661
  br label %if.end60, !dbg !2662

if.end60:                                         ; preds = %if.then58, %if.end54
  br label %if.end61, !dbg !2663

if.end61:                                         ; preds = %if.end60, %while.body
  %55 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2664
  %RxXferCount62 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %55, i32 0, i32 8, !dbg !2665
  %56 = load volatile i16, i16* %RxXferCount62, align 2, !dbg !2665
  %conv63 = zext i16 %56 to i32, !dbg !2664
  %cmp64 = icmp eq i32 %conv63, 0, !dbg !2666
  br i1 %cmp64, label %if.then66, label %if.end82, !dbg !2664

if.then66:                                        ; preds = %if.end61
  %57 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2667
  %Instance67 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %57, i32 0, i32 0, !dbg !2667
  %58 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance67, align 4, !dbg !2667
  %CR168 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %58, i32 0, i32 0, !dbg !2667
  %59 = load volatile i32, i32* %CR168, align 4, !dbg !2667
  %and69 = and i32 %59, -257, !dbg !2667
  store volatile i32 %and69, i32* %CR168, align 4, !dbg !2667
  %60 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2668
  %Instance70 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %60, i32 0, i32 0, !dbg !2668
  %61 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance70, align 4, !dbg !2668
  %CR371 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %61, i32 0, i32 2, !dbg !2668
  %62 = load volatile i32, i32* %CR371, align 4, !dbg !2668
  %and72 = and i32 %62, -268435458, !dbg !2668
  store volatile i32 %and72, i32* %CR371, align 4, !dbg !2668
  %63 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2669
  %RxState73 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %63, i32 0, i32 20, !dbg !2670
  store volatile i32 32, i32* %RxState73, align 4, !dbg !2671
  %64 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2672
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %64, i32 0, i32 14, !dbg !2673
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !2674
  %65 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2675
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %65, i32 0, i32 13, !dbg !2676
  %66 = load volatile i32, i32* %ReceptionType, align 4, !dbg !2676
  %cmp74 = icmp eq i32 %66, 1, !dbg !2677
  br i1 %cmp74, label %if.then76, label %if.else, !dbg !2675

if.then76:                                        ; preds = %if.then66
  %67 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2678
  %Instance77 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %67, i32 0, i32 0, !dbg !2678
  %68 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance77, align 4, !dbg !2678
  %CR178 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %68, i32 0, i32 0, !dbg !2678
  %69 = load volatile i32, i32* %CR178, align 4, !dbg !2678
  %and79 = and i32 %69, -17, !dbg !2678
  store volatile i32 %and79, i32* %CR178, align 4, !dbg !2678
  %70 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2679
  %71 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2680
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %71, i32 0, i32 7, !dbg !2681
  %72 = load i16, i16* %RxXferSize, align 4, !dbg !2681
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %70, i16 zeroext %72), !dbg !2682
  br label %if.end80, !dbg !2683

if.else:                                          ; preds = %if.then66
  %73 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2684
  call arm_aapcs_vfpcc void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* %73), !dbg !2685
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then76
  %74 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2686
  %ReceptionType81 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %74, i32 0, i32 13, !dbg !2687
  store volatile i32 0, i32* %ReceptionType81, align 4, !dbg !2688
  br label %if.end82, !dbg !2689

if.end82:                                         ; preds = %if.end80, %if.end61
  br label %while.cond, !dbg !2584, !llvm.loop !2690

while.end:                                        ; preds = %land.end
  %75 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2692
  %RxXferCount83 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %75, i32 0, i32 8, !dbg !2693
  %76 = load volatile i16, i16* %RxXferCount83, align 2, !dbg !2693
  store i16 %76, i16* %rxdatacount, align 2, !dbg !2694
  %77 = load i16, i16* %rxdatacount, align 2, !dbg !2695
  %conv84 = zext i16 %77 to i32, !dbg !2695
  %cmp85 = icmp ne i32 %conv84, 0, !dbg !2696
  br i1 %cmp85, label %land.lhs.true87, label %if.end101, !dbg !2697

land.lhs.true87:                                  ; preds = %while.end
  %78 = load i16, i16* %rxdatacount, align 2, !dbg !2698
  %conv88 = zext i16 %78 to i32, !dbg !2698
  %79 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2699
  %NbRxDataToProcess89 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %79, i32 0, i32 11, !dbg !2700
  %80 = load i16, i16* %NbRxDataToProcess89, align 4, !dbg !2700
  %conv90 = zext i16 %80 to i32, !dbg !2699
  %cmp91 = icmp slt i32 %conv88, %conv90, !dbg !2701
  br i1 %cmp91, label %if.then93, label %if.end101, !dbg !2702

if.then93:                                        ; preds = %land.lhs.true87
  %81 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2703
  %Instance94 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %81, i32 0, i32 0, !dbg !2703
  %82 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance94, align 4, !dbg !2703
  %CR395 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %82, i32 0, i32 2, !dbg !2703
  %83 = load volatile i32, i32* %CR395, align 4, !dbg !2703
  %and96 = and i32 %83, -268435457, !dbg !2703
  store volatile i32 %and96, i32* %CR395, align 4, !dbg !2703
  %84 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2704
  %RxISR97 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %84, i32 0, i32 14, !dbg !2705
  store void (%struct.__UART_HandleTypeDef*)* @UART_RxISR_8BIT, void (%struct.__UART_HandleTypeDef*)** %RxISR97, align 4, !dbg !2706
  %85 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2707
  %Instance98 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %85, i32 0, i32 0, !dbg !2707
  %86 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance98, align 4, !dbg !2707
  %CR199 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %86, i32 0, i32 0, !dbg !2707
  %87 = load volatile i32, i32* %CR199, align 4, !dbg !2707
  %or100 = or i32 %87, 32, !dbg !2707
  store volatile i32 %or100, i32* %CR199, align 4, !dbg !2707
  br label %if.end101, !dbg !2708

if.end101:                                        ; preds = %if.then93, %land.lhs.true87, %while.end
  br label %if.end105, !dbg !2709

if.else102:                                       ; preds = %entry
  %88 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2710
  %Instance103 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %88, i32 0, i32 0, !dbg !2710
  %89 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance103, align 4, !dbg !2710
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %89, i32 0, i32 6, !dbg !2710
  %90 = load volatile i32, i32* %RQR, align 4, !dbg !2710
  %or104 = or i32 %90, 8, !dbg !2710
  store volatile i32 %or104, i32* %RQR, align 4, !dbg !2710
  br label %if.end105

if.end105:                                        ; preds = %if.else102, %if.end101
  ret void, !dbg !2711
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_RxISR_16BIT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2712 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %tmp = alloca i16*, align 4
  %uhMask = alloca i16, align 2
  %uhdata = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2713
  %Mask = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !2714
  %1 = load i16, i16* %Mask, align 4, !dbg !2714
  store i16 %1, i16* %uhMask, align 2, !dbg !2715
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2716
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 20, !dbg !2717
  %3 = load volatile i32, i32* %RxState, align 4, !dbg !2717
  %cmp = icmp eq i32 %3, 34, !dbg !2718
  br i1 %cmp, label %if.then, label %if.else23, !dbg !2716

if.then:                                          ; preds = %entry
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2719
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !2719
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2719
  %RDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 9, !dbg !2719
  %6 = load volatile i32, i32* %RDR, align 4, !dbg !2719
  %conv = trunc i32 %6 to i16, !dbg !2720
  store i16 %conv, i16* %uhdata, align 2, !dbg !2721
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2722
  %pRxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 6, !dbg !2723
  %8 = load i8*, i8** %pRxBuffPtr, align 4, !dbg !2723
  %9 = bitcast i8* %8 to i16*, !dbg !2724
  store i16* %9, i16** %tmp, align 4, !dbg !2725
  %10 = load i16, i16* %uhdata, align 2, !dbg !2726
  %conv1 = zext i16 %10 to i32, !dbg !2726
  %11 = load i16, i16* %uhMask, align 2, !dbg !2727
  %conv2 = zext i16 %11 to i32, !dbg !2727
  %and = and i32 %conv1, %conv2, !dbg !2728
  %conv3 = trunc i32 %and to i16, !dbg !2729
  %12 = load i16*, i16** %tmp, align 4, !dbg !2730
  store i16 %conv3, i16* %12, align 2, !dbg !2731
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2732
  %pRxBuffPtr4 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 6, !dbg !2733
  %14 = load i8*, i8** %pRxBuffPtr4, align 4, !dbg !2734
  %add.ptr = getelementptr inbounds i8, i8* %14, i32 2, !dbg !2734
  store i8* %add.ptr, i8** %pRxBuffPtr4, align 4, !dbg !2734
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2735
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 8, !dbg !2736
  %16 = load volatile i16, i16* %RxXferCount, align 2, !dbg !2737
  %dec = add i16 %16, -1, !dbg !2737
  store volatile i16 %dec, i16* %RxXferCount, align 2, !dbg !2737
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2738
  %RxXferCount5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 8, !dbg !2739
  %18 = load volatile i16, i16* %RxXferCount5, align 2, !dbg !2739
  %conv6 = zext i16 %18 to i32, !dbg !2738
  %cmp7 = icmp eq i32 %conv6, 0, !dbg !2740
  br i1 %cmp7, label %if.then9, label %if.end22, !dbg !2738

if.then9:                                         ; preds = %if.then
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2741
  %Instance10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 0, !dbg !2741
  %20 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance10, align 4, !dbg !2741
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %20, i32 0, i32 0, !dbg !2741
  %21 = load volatile i32, i32* %CR1, align 4, !dbg !2741
  %and11 = and i32 %21, -289, !dbg !2741
  store volatile i32 %and11, i32* %CR1, align 4, !dbg !2741
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2742
  %Instance12 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 0, !dbg !2742
  %23 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance12, align 4, !dbg !2742
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %23, i32 0, i32 2, !dbg !2742
  %24 = load volatile i32, i32* %CR3, align 4, !dbg !2742
  %and13 = and i32 %24, -2, !dbg !2742
  store volatile i32 %and13, i32* %CR3, align 4, !dbg !2742
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2743
  %RxState14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 20, !dbg !2744
  store volatile i32 32, i32* %RxState14, align 4, !dbg !2745
  %26 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2746
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %26, i32 0, i32 14, !dbg !2747
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !2748
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2749
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 13, !dbg !2750
  %28 = load volatile i32, i32* %ReceptionType, align 4, !dbg !2750
  %cmp15 = icmp eq i32 %28, 1, !dbg !2751
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !2749

if.then17:                                        ; preds = %if.then9
  %29 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2752
  %Instance18 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %29, i32 0, i32 0, !dbg !2752
  %30 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance18, align 4, !dbg !2752
  %CR119 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %30, i32 0, i32 0, !dbg !2752
  %31 = load volatile i32, i32* %CR119, align 4, !dbg !2752
  %and20 = and i32 %31, -17, !dbg !2752
  store volatile i32 %and20, i32* %CR119, align 4, !dbg !2752
  %32 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2753
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2754
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %33, i32 0, i32 7, !dbg !2755
  %34 = load i16, i16* %RxXferSize, align 4, !dbg !2755
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %32, i16 zeroext %34), !dbg !2756
  br label %if.end, !dbg !2757

if.else:                                          ; preds = %if.then9
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2758
  call arm_aapcs_vfpcc void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* %35), !dbg !2759
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then17
  %36 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2760
  %ReceptionType21 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %36, i32 0, i32 13, !dbg !2761
  store volatile i32 0, i32* %ReceptionType21, align 4, !dbg !2762
  br label %if.end22, !dbg !2763

if.end22:                                         ; preds = %if.end, %if.then
  br label %if.end25, !dbg !2764

if.else23:                                        ; preds = %entry
  %37 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2765
  %Instance24 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %37, i32 0, i32 0, !dbg !2765
  %38 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance24, align 4, !dbg !2765
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %38, i32 0, i32 6, !dbg !2765
  %39 = load volatile i32, i32* %RQR, align 4, !dbg !2765
  %or = or i32 %39, 8, !dbg !2765
  store volatile i32 %or, i32* %RQR, align 4, !dbg !2765
  br label %if.end25

if.end25:                                         ; preds = %if.else23, %if.end22
  ret void, !dbg !2766
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_RxISR_8BIT(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !2767 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %uhMask = alloca i16, align 2
  %uhdata = alloca i16, align 2
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2768
  %Mask = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 9, !dbg !2769
  %1 = load i16, i16* %Mask, align 4, !dbg !2769
  store i16 %1, i16* %uhMask, align 2, !dbg !2770
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2771
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 20, !dbg !2772
  %3 = load volatile i32, i32* %RxState, align 4, !dbg !2772
  %cmp = icmp eq i32 %3, 34, !dbg !2773
  br i1 %cmp, label %if.then, label %if.else24, !dbg !2771

if.then:                                          ; preds = %entry
  %4 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2774
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %4, i32 0, i32 0, !dbg !2774
  %5 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !2774
  %RDR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %5, i32 0, i32 9, !dbg !2774
  %6 = load volatile i32, i32* %RDR, align 4, !dbg !2774
  %conv = trunc i32 %6 to i16, !dbg !2775
  store i16 %conv, i16* %uhdata, align 2, !dbg !2776
  %7 = load i16, i16* %uhdata, align 2, !dbg !2777
  %conv1 = zext i16 %7 to i32, !dbg !2777
  %8 = load i16, i16* %uhMask, align 2, !dbg !2778
  %conv2 = trunc i16 %8 to i8, !dbg !2779
  %conv3 = zext i8 %conv2 to i32, !dbg !2779
  %and = and i32 %conv1, %conv3, !dbg !2780
  %conv4 = trunc i32 %and to i8, !dbg !2781
  %9 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2782
  %pRxBuffPtr = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %9, i32 0, i32 6, !dbg !2783
  %10 = load i8*, i8** %pRxBuffPtr, align 4, !dbg !2783
  store i8 %conv4, i8* %10, align 1, !dbg !2784
  %11 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2785
  %pRxBuffPtr5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %11, i32 0, i32 6, !dbg !2786
  %12 = load i8*, i8** %pRxBuffPtr5, align 4, !dbg !2787
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1, !dbg !2787
  store i8* %incdec.ptr, i8** %pRxBuffPtr5, align 4, !dbg !2787
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2788
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 8, !dbg !2789
  %14 = load volatile i16, i16* %RxXferCount, align 2, !dbg !2790
  %dec = add i16 %14, -1, !dbg !2790
  store volatile i16 %dec, i16* %RxXferCount, align 2, !dbg !2790
  %15 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2791
  %RxXferCount6 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %15, i32 0, i32 8, !dbg !2792
  %16 = load volatile i16, i16* %RxXferCount6, align 2, !dbg !2792
  %conv7 = zext i16 %16 to i32, !dbg !2791
  %cmp8 = icmp eq i32 %conv7, 0, !dbg !2793
  br i1 %cmp8, label %if.then10, label %if.end23, !dbg !2791

if.then10:                                        ; preds = %if.then
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2794
  %Instance11 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 0, !dbg !2794
  %18 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance11, align 4, !dbg !2794
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %18, i32 0, i32 0, !dbg !2794
  %19 = load volatile i32, i32* %CR1, align 4, !dbg !2794
  %and12 = and i32 %19, -289, !dbg !2794
  store volatile i32 %and12, i32* %CR1, align 4, !dbg !2794
  %20 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2795
  %Instance13 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %20, i32 0, i32 0, !dbg !2795
  %21 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance13, align 4, !dbg !2795
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %21, i32 0, i32 2, !dbg !2795
  %22 = load volatile i32, i32* %CR3, align 4, !dbg !2795
  %and14 = and i32 %22, -2, !dbg !2795
  store volatile i32 %and14, i32* %CR3, align 4, !dbg !2795
  %23 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2796
  %RxState15 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %23, i32 0, i32 20, !dbg !2797
  store volatile i32 32, i32* %RxState15, align 4, !dbg !2798
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2799
  %RxISR = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %24, i32 0, i32 14, !dbg !2800
  store void (%struct.__UART_HandleTypeDef*)* null, void (%struct.__UART_HandleTypeDef*)** %RxISR, align 4, !dbg !2801
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2802
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 13, !dbg !2803
  %26 = load volatile i32, i32* %ReceptionType, align 4, !dbg !2803
  %cmp16 = icmp eq i32 %26, 1, !dbg !2804
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !2802

if.then18:                                        ; preds = %if.then10
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2805
  %Instance19 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %27, i32 0, i32 0, !dbg !2805
  %28 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance19, align 4, !dbg !2805
  %CR120 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %28, i32 0, i32 0, !dbg !2805
  %29 = load volatile i32, i32* %CR120, align 4, !dbg !2805
  %and21 = and i32 %29, -17, !dbg !2805
  store volatile i32 %and21, i32* %CR120, align 4, !dbg !2805
  %30 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2806
  %31 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2807
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %31, i32 0, i32 7, !dbg !2808
  %32 = load i16, i16* %RxXferSize, align 4, !dbg !2808
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %30, i16 zeroext %32), !dbg !2809
  br label %if.end, !dbg !2810

if.else:                                          ; preds = %if.then10
  %33 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2811
  call arm_aapcs_vfpcc void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* %33), !dbg !2812
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then18
  %34 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2813
  %ReceptionType22 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %34, i32 0, i32 13, !dbg !2814
  store volatile i32 0, i32* %ReceptionType22, align 4, !dbg !2815
  br label %if.end23, !dbg !2816

if.end23:                                         ; preds = %if.end, %if.then
  br label %if.end26, !dbg !2817

if.else24:                                        ; preds = %entry
  %35 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !2818
  %Instance25 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %35, i32 0, i32 0, !dbg !2818
  %36 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance25, align 4, !dbg !2818
  %RQR = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %36, i32 0, i32 6, !dbg !2818
  %37 = load volatile i32, i32* %RQR, align 4, !dbg !2818
  %or = or i32 %37, 8, !dbg !2818
  store volatile i32 %or, i32* %RQR, align 4, !dbg !2818
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.end23
  ret void, !dbg !2819
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMAReceiveCplt(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !2820 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !2821
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !2822
  %1 = load i8*, i8** %Parent, align 4, !dbg !2822
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !2823
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2824
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !2825
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 0, !dbg !2825
  %4 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !2825
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 0, !dbg !2825
  %5 = load volatile i32, i32* %CCR, align 4, !dbg !2825
  %and = and i32 %5, 32, !dbg !2825
  %cmp = icmp eq i32 %and, 0, !dbg !2825
  br i1 %cmp, label %if.then, label %if.end13, !dbg !2825

if.then:                                          ; preds = %entry
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2826
  %RxXferCount = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 8, !dbg !2827
  store volatile i16 0, i16* %RxXferCount, align 2, !dbg !2828
  %7 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2829
  %Instance1 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %7, i32 0, i32 0, !dbg !2829
  %8 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance1, align 4, !dbg !2829
  %CR1 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %8, i32 0, i32 0, !dbg !2829
  %9 = load volatile i32, i32* %CR1, align 4, !dbg !2829
  %and2 = and i32 %9, -257, !dbg !2829
  store volatile i32 %and2, i32* %CR1, align 4, !dbg !2829
  %10 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2830
  %Instance3 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %10, i32 0, i32 0, !dbg !2830
  %11 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance3, align 4, !dbg !2830
  %CR3 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %11, i32 0, i32 2, !dbg !2830
  %12 = load volatile i32, i32* %CR3, align 4, !dbg !2830
  %and4 = and i32 %12, -2, !dbg !2830
  store volatile i32 %and4, i32* %CR3, align 4, !dbg !2830
  %13 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2831
  %Instance5 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %13, i32 0, i32 0, !dbg !2831
  %14 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance5, align 4, !dbg !2831
  %CR36 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %14, i32 0, i32 2, !dbg !2831
  %15 = load volatile i32, i32* %CR36, align 4, !dbg !2831
  %and7 = and i32 %15, -65, !dbg !2831
  store volatile i32 %and7, i32* %CR36, align 4, !dbg !2831
  %16 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2832
  %RxState = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %16, i32 0, i32 20, !dbg !2833
  store volatile i32 32, i32* %RxState, align 4, !dbg !2834
  %17 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2835
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %17, i32 0, i32 13, !dbg !2836
  %18 = load volatile i32, i32* %ReceptionType, align 4, !dbg !2836
  %cmp8 = icmp eq i32 %18, 1, !dbg !2837
  br i1 %cmp8, label %if.then9, label %if.end, !dbg !2835

if.then9:                                         ; preds = %if.then
  %19 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2838
  %Instance10 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %19, i32 0, i32 0, !dbg !2838
  %20 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance10, align 4, !dbg !2838
  %CR111 = getelementptr inbounds %struct.USART_TypeDef, %struct.USART_TypeDef* %20, i32 0, i32 0, !dbg !2838
  %21 = load volatile i32, i32* %CR111, align 4, !dbg !2838
  %and12 = and i32 %21, -17, !dbg !2838
  store volatile i32 %and12, i32* %CR111, align 4, !dbg !2838
  br label %if.end, !dbg !2839

if.end:                                           ; preds = %if.then9, %if.then
  br label %if.end13, !dbg !2840

if.end13:                                         ; preds = %if.end, %entry
  %22 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2841
  %ReceptionType14 = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %22, i32 0, i32 13, !dbg !2842
  %23 = load volatile i32, i32* %ReceptionType14, align 4, !dbg !2842
  %cmp15 = icmp eq i32 %23, 1, !dbg !2843
  br i1 %cmp15, label %if.then16, label %if.else, !dbg !2841

if.then16:                                        ; preds = %if.end13
  %24 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2844
  %25 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2845
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %25, i32 0, i32 7, !dbg !2846
  %26 = load i16, i16* %RxXferSize, align 4, !dbg !2846
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %24, i16 zeroext %26), !dbg !2847
  br label %if.end17, !dbg !2848

if.else:                                          ; preds = %if.end13
  %27 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2849
  call arm_aapcs_vfpcc void @HAL_UART_RxCpltCallback(%struct.__UART_HandleTypeDef* %27), !dbg !2850
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  ret void, !dbg !2851
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @UART_DMARxHalfCplt(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !2852 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %huart = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !2853
  %Parent = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 4, !dbg !2854
  %1 = load i8*, i8** %Parent, align 4, !dbg !2854
  %2 = bitcast i8* %1 to %struct.__UART_HandleTypeDef*, !dbg !2855
  store %struct.__UART_HandleTypeDef* %2, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2856
  %3 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2857
  %ReceptionType = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %3, i32 0, i32 13, !dbg !2858
  %4 = load volatile i32, i32* %ReceptionType, align 4, !dbg !2858
  %cmp = icmp eq i32 %4, 1, !dbg !2859
  br i1 %cmp, label %if.then, label %if.else, !dbg !2857

if.then:                                          ; preds = %entry
  %5 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2860
  %6 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2861
  %RxXferSize = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %6, i32 0, i32 7, !dbg !2862
  %7 = load i16, i16* %RxXferSize, align 4, !dbg !2862
  %conv = zext i16 %7 to i32, !dbg !2861
  %div = udiv i32 %conv, 2, !dbg !2863
  %conv1 = trunc i32 %div to i16, !dbg !2861
  call arm_aapcs_vfpcc void @HAL_UARTEx_RxEventCallback(%struct.__UART_HandleTypeDef* %5, i16 zeroext %conv1), !dbg !2864
  br label %if.end, !dbg !2865

if.else:                                          ; preds = %entry
  %8 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart, align 4, !dbg !2866
  call arm_aapcs_vfpcc void @HAL_UART_RxHalfCpltCallback(%struct.__UART_HandleTypeDef* %8), !dbg !2867
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2868
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_uart.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_UART_Init", scope: !1, file: !1, line: 301, type: !9, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 304, column: 7, scope: !8)
!11 = !DILocation(line: 304, column: 13, scope: !8)
!12 = !DILocation(line: 306, column: 5, scope: !8)
!13 = !DILocation(line: 309, column: 7, scope: !8)
!14 = !DILocation(line: 309, column: 14, scope: !8)
!15 = !DILocation(line: 309, column: 19, scope: !8)
!16 = !DILocation(line: 309, column: 29, scope: !8)
!17 = !DILocation(line: 313, column: 3, scope: !8)
!18 = !DILocation(line: 320, column: 7, scope: !8)
!19 = !DILocation(line: 320, column: 14, scope: !8)
!20 = !DILocation(line: 320, column: 21, scope: !8)
!21 = !DILocation(line: 323, column: 5, scope: !8)
!22 = !DILocation(line: 323, column: 12, scope: !8)
!23 = !DILocation(line: 323, column: 17, scope: !8)
!24 = !DILocation(line: 337, column: 22, scope: !8)
!25 = !DILocation(line: 337, column: 5, scope: !8)
!26 = !DILocation(line: 339, column: 3, scope: !8)
!27 = !DILocation(line: 341, column: 3, scope: !8)
!28 = !DILocation(line: 341, column: 10, scope: !8)
!29 = !DILocation(line: 341, column: 17, scope: !8)
!30 = !DILocation(line: 343, column: 3, scope: !8)
!31 = !DILocation(line: 346, column: 22, scope: !8)
!32 = !DILocation(line: 346, column: 7, scope: !8)
!33 = !DILocation(line: 346, column: 29, scope: !8)
!34 = !DILocation(line: 348, column: 5, scope: !8)
!35 = !DILocation(line: 351, column: 7, scope: !8)
!36 = !DILocation(line: 351, column: 14, scope: !8)
!37 = !DILocation(line: 351, column: 27, scope: !8)
!38 = !DILocation(line: 351, column: 42, scope: !8)
!39 = !DILocation(line: 353, column: 27, scope: !8)
!40 = !DILocation(line: 353, column: 5, scope: !8)
!41 = !DILocation(line: 354, column: 3, scope: !8)
!42 = !DILocation(line: 359, column: 3, scope: !8)
!43 = !DILocation(line: 360, column: 3, scope: !8)
!44 = !DILocation(line: 362, column: 3, scope: !8)
!45 = !DILocation(line: 365, column: 31, scope: !8)
!46 = !DILocation(line: 365, column: 11, scope: !8)
!47 = !DILocation(line: 365, column: 3, scope: !8)
!48 = !DILocation(line: 366, column: 1, scope: !8)
!49 = distinct !DISubprogram(name: "HAL_UART_MspInit", scope: !1, file: !1, line: 664, type: !9, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DILocation(line: 667, column: 3, scope: !49)
!51 = !DILocation(line: 672, column: 1, scope: !49)
!52 = distinct !DISubprogram(name: "UART_SetConfig", scope: !1, file: !1, line: 2978, type: !9, scopeLine: 2979, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!53 = !DILocation(line: 2984, column: 21, scope: !52)
!54 = !DILocation(line: 2991, column: 7, scope: !52)
!55 = !DILocation(line: 2994, column: 3, scope: !52)
!56 = !DILocation(line: 3014, column: 22, scope: !52)
!57 = !DILocation(line: 3014, column: 29, scope: !52)
!58 = !DILocation(line: 3014, column: 34, scope: !52)
!59 = !DILocation(line: 3014, column: 47, scope: !52)
!60 = !DILocation(line: 3014, column: 54, scope: !52)
!61 = !DILocation(line: 3014, column: 59, scope: !52)
!62 = !DILocation(line: 3014, column: 45, scope: !52)
!63 = !DILocation(line: 3014, column: 68, scope: !52)
!64 = !DILocation(line: 3014, column: 75, scope: !52)
!65 = !DILocation(line: 3014, column: 80, scope: !52)
!66 = !DILocation(line: 3014, column: 66, scope: !52)
!67 = !DILocation(line: 3014, column: 87, scope: !52)
!68 = !DILocation(line: 3014, column: 94, scope: !52)
!69 = !DILocation(line: 3014, column: 99, scope: !52)
!70 = !DILocation(line: 3014, column: 85, scope: !52)
!71 = !DILocation(line: 3014, column: 10, scope: !52)
!72 = !DILocation(line: 3015, column: 23, scope: !52)
!73 = !DILocation(line: 3015, column: 30, scope: !52)
!74 = !DILocation(line: 3015, column: 10, scope: !52)
!75 = !DILocation(line: 3016, column: 3, scope: !52)
!76 = !DILocation(line: 3021, column: 3, scope: !52)
!77 = !DILocation(line: 3029, column: 22, scope: !52)
!78 = !DILocation(line: 3029, column: 29, scope: !52)
!79 = !DILocation(line: 3029, column: 34, scope: !52)
!80 = !DILocation(line: 3029, column: 10, scope: !52)
!81 = !DILocation(line: 3031, column: 9, scope: !52)
!82 = !DILocation(line: 3031, column: 7, scope: !52)
!83 = !DILocation(line: 3033, column: 15, scope: !52)
!84 = !DILocation(line: 3033, column: 22, scope: !52)
!85 = !DILocation(line: 3033, column: 27, scope: !52)
!86 = !DILocation(line: 3033, column: 12, scope: !52)
!87 = !DILocation(line: 3034, column: 3, scope: !52)
!88 = !DILocation(line: 3035, column: 3, scope: !52)
!89 = !DILocation(line: 3040, column: 3, scope: !52)
!90 = !DILocation(line: 3043, column: 3, scope: !52)
!91 = !DILocation(line: 3046, column: 7, scope: !52)
!92 = !DILocation(line: 3049, column: 13, scope: !52)
!93 = !DILocation(line: 3049, column: 5, scope: !52)
!94 = !DILocation(line: 3052, column: 16, scope: !52)
!95 = !DILocation(line: 3052, column: 14, scope: !52)
!96 = !DILocation(line: 3053, column: 9, scope: !52)
!97 = !DILocation(line: 3055, column: 16, scope: !52)
!98 = !DILocation(line: 3055, column: 14, scope: !52)
!99 = !DILocation(line: 3056, column: 9, scope: !52)
!100 = !DILocation(line: 3058, column: 14, scope: !52)
!101 = !DILocation(line: 3059, column: 9, scope: !52)
!102 = !DILocation(line: 3061, column: 16, scope: !52)
!103 = !DILocation(line: 3061, column: 14, scope: !52)
!104 = !DILocation(line: 3062, column: 9, scope: !52)
!105 = !DILocation(line: 3064, column: 14, scope: !52)
!106 = !DILocation(line: 3065, column: 9, scope: !52)
!107 = !DILocation(line: 3067, column: 14, scope: !52)
!108 = !DILocation(line: 3068, column: 13, scope: !52)
!109 = !DILocation(line: 3069, column: 9, scope: !52)
!110 = !DILocation(line: 3073, column: 9, scope: !52)
!111 = !DILocation(line: 3073, column: 14, scope: !52)
!112 = !DILocation(line: 3076, column: 29, scope: !52)
!113 = !DILocation(line: 3076, column: 51, scope: !52)
!114 = !DILocation(line: 3076, column: 58, scope: !52)
!115 = !DILocation(line: 3076, column: 63, scope: !52)
!116 = !DILocation(line: 3076, column: 36, scope: !52)
!117 = !DILocation(line: 3076, column: 34, scope: !52)
!118 = !DILocation(line: 3076, column: 26, scope: !52)
!119 = !DILocation(line: 3079, column: 12, scope: !52)
!120 = !DILocation(line: 3079, column: 39, scope: !52)
!121 = !DILocation(line: 3079, column: 46, scope: !52)
!122 = !DILocation(line: 3079, column: 51, scope: !52)
!123 = !DILocation(line: 3079, column: 37, scope: !52)
!124 = !DILocation(line: 3079, column: 31, scope: !52)
!125 = !DILocation(line: 3079, column: 62, scope: !52)
!126 = !DILocation(line: 3080, column: 12, scope: !52)
!127 = !DILocation(line: 3080, column: 42, scope: !52)
!128 = !DILocation(line: 3080, column: 49, scope: !52)
!129 = !DILocation(line: 3080, column: 54, scope: !52)
!130 = !DILocation(line: 3080, column: 40, scope: !52)
!131 = !DILocation(line: 3080, column: 31, scope: !52)
!132 = !DILocation(line: 3079, column: 11, scope: !52)
!133 = !DILocation(line: 3082, column: 13, scope: !52)
!134 = !DILocation(line: 3083, column: 7, scope: !52)
!135 = !DILocation(line: 3088, column: 31, scope: !52)
!136 = !DILocation(line: 3088, column: 18, scope: !52)
!137 = !DILocation(line: 3089, column: 14, scope: !52)
!138 = !DILocation(line: 3089, column: 23, scope: !52)
!139 = !DILocation(line: 3089, column: 42, scope: !52)
!140 = !DILocation(line: 3089, column: 46, scope: !52)
!141 = !DILocation(line: 3089, column: 55, scope: !52)
!142 = !DILocation(line: 3089, column: 13, scope: !52)
!143 = !DILocation(line: 3091, column: 34, scope: !52)
!144 = !DILocation(line: 3091, column: 11, scope: !52)
!145 = !DILocation(line: 3091, column: 18, scope: !52)
!146 = !DILocation(line: 3091, column: 28, scope: !52)
!147 = !DILocation(line: 3091, column: 32, scope: !52)
!148 = !DILocation(line: 3092, column: 9, scope: !52)
!149 = !DILocation(line: 3095, column: 15, scope: !52)
!150 = !DILocation(line: 3098, column: 5, scope: !52)
!151 = !DILocation(line: 3099, column: 3, scope: !52)
!152 = !DILocation(line: 3101, column: 12, scope: !52)
!153 = !DILocation(line: 3101, column: 19, scope: !52)
!154 = !DILocation(line: 3101, column: 24, scope: !52)
!155 = !DILocation(line: 3101, column: 37, scope: !52)
!156 = !DILocation(line: 3103, column: 13, scope: !52)
!157 = !DILocation(line: 3103, column: 5, scope: !52)
!158 = !DILocation(line: 3106, column: 16, scope: !52)
!159 = !DILocation(line: 3106, column: 14, scope: !52)
!160 = !DILocation(line: 3107, column: 9, scope: !52)
!161 = !DILocation(line: 3109, column: 16, scope: !52)
!162 = !DILocation(line: 3109, column: 14, scope: !52)
!163 = !DILocation(line: 3110, column: 9, scope: !52)
!164 = !DILocation(line: 3112, column: 14, scope: !52)
!165 = !DILocation(line: 3113, column: 9, scope: !52)
!166 = !DILocation(line: 3115, column: 16, scope: !52)
!167 = !DILocation(line: 3115, column: 14, scope: !52)
!168 = !DILocation(line: 3116, column: 9, scope: !52)
!169 = !DILocation(line: 3118, column: 14, scope: !52)
!170 = !DILocation(line: 3119, column: 9, scope: !52)
!171 = !DILocation(line: 3121, column: 14, scope: !52)
!172 = !DILocation(line: 3122, column: 13, scope: !52)
!173 = !DILocation(line: 3123, column: 9, scope: !52)
!174 = !DILocation(line: 3127, column: 9, scope: !52)
!175 = !DILocation(line: 3127, column: 14, scope: !52)
!176 = !DILocation(line: 3129, column: 29, scope: !52)
!177 = !DILocation(line: 3129, column: 18, scope: !52)
!178 = !DILocation(line: 3129, column: 16, scope: !52)
!179 = !DILocation(line: 3130, column: 12, scope: !52)
!180 = !DILocation(line: 3130, column: 21, scope: !52)
!181 = !DILocation(line: 3130, column: 38, scope: !52)
!182 = !DILocation(line: 3130, column: 42, scope: !52)
!183 = !DILocation(line: 3130, column: 51, scope: !52)
!184 = !DILocation(line: 3130, column: 11, scope: !52)
!185 = !DILocation(line: 3132, column: 30, scope: !52)
!186 = !DILocation(line: 3132, column: 39, scope: !52)
!187 = !DILocation(line: 3132, column: 19, scope: !52)
!188 = !DILocation(line: 3132, column: 17, scope: !52)
!189 = !DILocation(line: 3133, column: 32, scope: !52)
!190 = !DILocation(line: 3133, column: 41, scope: !52)
!191 = !DILocation(line: 3133, column: 62, scope: !52)
!192 = !DILocation(line: 3133, column: 20, scope: !52)
!193 = !DILocation(line: 3133, column: 17, scope: !52)
!194 = !DILocation(line: 3134, column: 32, scope: !52)
!195 = !DILocation(line: 3134, column: 9, scope: !52)
!196 = !DILocation(line: 3134, column: 16, scope: !52)
!197 = !DILocation(line: 3134, column: 26, scope: !52)
!198 = !DILocation(line: 3134, column: 30, scope: !52)
!199 = !DILocation(line: 3135, column: 7, scope: !52)
!200 = !DILocation(line: 3138, column: 13, scope: !52)
!201 = !DILocation(line: 3140, column: 5, scope: !52)
!202 = !DILocation(line: 3141, column: 3, scope: !52)
!203 = !DILocation(line: 3144, column: 13, scope: !52)
!204 = !DILocation(line: 3144, column: 5, scope: !52)
!205 = !DILocation(line: 3147, column: 16, scope: !52)
!206 = !DILocation(line: 3147, column: 14, scope: !52)
!207 = !DILocation(line: 3148, column: 9, scope: !52)
!208 = !DILocation(line: 3150, column: 16, scope: !52)
!209 = !DILocation(line: 3150, column: 14, scope: !52)
!210 = !DILocation(line: 3151, column: 9, scope: !52)
!211 = !DILocation(line: 3153, column: 14, scope: !52)
!212 = !DILocation(line: 3154, column: 9, scope: !52)
!213 = !DILocation(line: 3156, column: 16, scope: !52)
!214 = !DILocation(line: 3156, column: 14, scope: !52)
!215 = !DILocation(line: 3157, column: 9, scope: !52)
!216 = !DILocation(line: 3159, column: 14, scope: !52)
!217 = !DILocation(line: 3160, column: 9, scope: !52)
!218 = !DILocation(line: 3162, column: 14, scope: !52)
!219 = !DILocation(line: 3163, column: 13, scope: !52)
!220 = !DILocation(line: 3164, column: 9, scope: !52)
!221 = !DILocation(line: 3167, column: 9, scope: !52)
!222 = !DILocation(line: 3167, column: 14, scope: !52)
!223 = !DILocation(line: 3170, column: 29, scope: !52)
!224 = !DILocation(line: 3170, column: 18, scope: !52)
!225 = !DILocation(line: 3170, column: 16, scope: !52)
!226 = !DILocation(line: 3171, column: 12, scope: !52)
!227 = !DILocation(line: 3171, column: 21, scope: !52)
!228 = !DILocation(line: 3171, column: 38, scope: !52)
!229 = !DILocation(line: 3171, column: 42, scope: !52)
!230 = !DILocation(line: 3171, column: 51, scope: !52)
!231 = !DILocation(line: 3171, column: 11, scope: !52)
!232 = !DILocation(line: 3173, column: 32, scope: !52)
!233 = !DILocation(line: 3173, column: 9, scope: !52)
!234 = !DILocation(line: 3173, column: 16, scope: !52)
!235 = !DILocation(line: 3173, column: 26, scope: !52)
!236 = !DILocation(line: 3173, column: 30, scope: !52)
!237 = !DILocation(line: 3174, column: 7, scope: !52)
!238 = !DILocation(line: 3177, column: 13, scope: !52)
!239 = !DILocation(line: 3179, column: 5, scope: !52)
!240 = !DILocation(line: 3183, column: 3, scope: !52)
!241 = !DILocation(line: 3183, column: 10, scope: !52)
!242 = !DILocation(line: 3183, column: 28, scope: !52)
!243 = !DILocation(line: 3184, column: 3, scope: !52)
!244 = !DILocation(line: 3184, column: 10, scope: !52)
!245 = !DILocation(line: 3184, column: 28, scope: !52)
!246 = !DILocation(line: 3187, column: 3, scope: !52)
!247 = !DILocation(line: 3187, column: 10, scope: !52)
!248 = !DILocation(line: 3187, column: 16, scope: !52)
!249 = !DILocation(line: 3188, column: 3, scope: !52)
!250 = !DILocation(line: 3188, column: 10, scope: !52)
!251 = !DILocation(line: 3188, column: 16, scope: !52)
!252 = !DILocation(line: 3190, column: 10, scope: !52)
!253 = !DILocation(line: 3190, column: 3, scope: !52)
!254 = distinct !DISubprogram(name: "UART_AdvFeatureConfig", scope: !1, file: !1, line: 3198, type: !9, scopeLine: 3199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!255 = !DILocation(line: 3204, column: 7, scope: !254)
!256 = !DILocation(line: 3207, column: 5, scope: !254)
!257 = !DILocation(line: 3208, column: 3, scope: !254)
!258 = !DILocation(line: 3211, column: 7, scope: !254)
!259 = !DILocation(line: 3214, column: 5, scope: !254)
!260 = !DILocation(line: 3215, column: 3, scope: !254)
!261 = !DILocation(line: 3218, column: 7, scope: !254)
!262 = !DILocation(line: 3221, column: 5, scope: !254)
!263 = !DILocation(line: 3222, column: 3, scope: !254)
!264 = !DILocation(line: 3225, column: 7, scope: !254)
!265 = !DILocation(line: 3228, column: 5, scope: !254)
!266 = !DILocation(line: 3229, column: 3, scope: !254)
!267 = !DILocation(line: 3232, column: 7, scope: !254)
!268 = !DILocation(line: 3235, column: 5, scope: !254)
!269 = !DILocation(line: 3236, column: 3, scope: !254)
!270 = !DILocation(line: 3239, column: 7, scope: !254)
!271 = !DILocation(line: 3242, column: 5, scope: !254)
!272 = !DILocation(line: 3243, column: 3, scope: !254)
!273 = !DILocation(line: 3246, column: 7, scope: !254)
!274 = !DILocation(line: 3250, column: 5, scope: !254)
!275 = !DILocation(line: 3252, column: 9, scope: !254)
!276 = !DILocation(line: 3252, column: 16, scope: !254)
!277 = !DILocation(line: 3252, column: 29, scope: !254)
!278 = !DILocation(line: 3252, column: 48, scope: !254)
!279 = !DILocation(line: 3255, column: 7, scope: !254)
!280 = !DILocation(line: 3256, column: 5, scope: !254)
!281 = !DILocation(line: 3257, column: 3, scope: !254)
!282 = !DILocation(line: 3260, column: 7, scope: !254)
!283 = !DILocation(line: 3263, column: 5, scope: !254)
!284 = !DILocation(line: 3264, column: 3, scope: !254)
!285 = !DILocation(line: 3265, column: 1, scope: !254)
!286 = distinct !DISubprogram(name: "UART_CheckIdleState", scope: !1, file: !1, line: 3272, type: !9, scopeLine: 3273, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!287 = !DILocation(line: 3277, column: 3, scope: !286)
!288 = !DILocation(line: 3277, column: 10, scope: !286)
!289 = !DILocation(line: 3277, column: 20, scope: !286)
!290 = !DILocation(line: 3280, column: 15, scope: !286)
!291 = !DILocation(line: 3280, column: 13, scope: !286)
!292 = !DILocation(line: 3283, column: 8, scope: !286)
!293 = !DILocation(line: 3283, column: 15, scope: !286)
!294 = !DILocation(line: 3283, column: 25, scope: !286)
!295 = !DILocation(line: 3283, column: 29, scope: !286)
!296 = !DILocation(line: 3283, column: 45, scope: !286)
!297 = !DILocation(line: 3283, column: 7, scope: !286)
!298 = !DILocation(line: 3286, column: 37, scope: !286)
!299 = !DILocation(line: 3286, column: 68, scope: !286)
!300 = !DILocation(line: 3286, column: 9, scope: !286)
!301 = !DILocation(line: 3286, column: 103, scope: !286)
!302 = !DILocation(line: 3289, column: 7, scope: !286)
!303 = !DILocation(line: 3291, column: 3, scope: !286)
!304 = !DILocation(line: 3294, column: 8, scope: !286)
!305 = !DILocation(line: 3294, column: 15, scope: !286)
!306 = !DILocation(line: 3294, column: 25, scope: !286)
!307 = !DILocation(line: 3294, column: 29, scope: !286)
!308 = !DILocation(line: 3294, column: 45, scope: !286)
!309 = !DILocation(line: 3294, column: 7, scope: !286)
!310 = !DILocation(line: 3297, column: 37, scope: !286)
!311 = !DILocation(line: 3297, column: 68, scope: !286)
!312 = !DILocation(line: 3297, column: 9, scope: !286)
!313 = !DILocation(line: 3297, column: 103, scope: !286)
!314 = !DILocation(line: 3300, column: 7, scope: !286)
!315 = !DILocation(line: 3302, column: 3, scope: !286)
!316 = !DILocation(line: 3305, column: 3, scope: !286)
!317 = !DILocation(line: 3305, column: 10, scope: !286)
!318 = !DILocation(line: 3305, column: 17, scope: !286)
!319 = !DILocation(line: 3306, column: 3, scope: !286)
!320 = !DILocation(line: 3306, column: 10, scope: !286)
!321 = !DILocation(line: 3306, column: 18, scope: !286)
!322 = !DILocation(line: 3307, column: 3, scope: !286)
!323 = !DILocation(line: 3307, column: 10, scope: !286)
!324 = !DILocation(line: 3307, column: 24, scope: !286)
!325 = !DILocation(line: 3309, column: 3, scope: !286)
!326 = !DILocation(line: 3311, column: 3, scope: !286)
!327 = !DILocation(line: 3312, column: 1, scope: !286)
!328 = distinct !DISubprogram(name: "HAL_HalfDuplex_Init", scope: !1, file: !1, line: 374, type: !9, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!329 = !DILocation(line: 377, column: 7, scope: !328)
!330 = !DILocation(line: 377, column: 13, scope: !328)
!331 = !DILocation(line: 379, column: 5, scope: !328)
!332 = !DILocation(line: 385, column: 7, scope: !328)
!333 = !DILocation(line: 385, column: 14, scope: !328)
!334 = !DILocation(line: 385, column: 21, scope: !328)
!335 = !DILocation(line: 388, column: 5, scope: !328)
!336 = !DILocation(line: 388, column: 12, scope: !328)
!337 = !DILocation(line: 388, column: 17, scope: !328)
!338 = !DILocation(line: 402, column: 22, scope: !328)
!339 = !DILocation(line: 402, column: 5, scope: !328)
!340 = !DILocation(line: 404, column: 3, scope: !328)
!341 = !DILocation(line: 406, column: 3, scope: !328)
!342 = !DILocation(line: 406, column: 10, scope: !328)
!343 = !DILocation(line: 406, column: 17, scope: !328)
!344 = !DILocation(line: 408, column: 3, scope: !328)
!345 = !DILocation(line: 411, column: 22, scope: !328)
!346 = !DILocation(line: 411, column: 7, scope: !328)
!347 = !DILocation(line: 411, column: 29, scope: !328)
!348 = !DILocation(line: 413, column: 5, scope: !328)
!349 = !DILocation(line: 416, column: 7, scope: !328)
!350 = !DILocation(line: 416, column: 14, scope: !328)
!351 = !DILocation(line: 416, column: 27, scope: !328)
!352 = !DILocation(line: 416, column: 42, scope: !328)
!353 = !DILocation(line: 418, column: 27, scope: !328)
!354 = !DILocation(line: 418, column: 5, scope: !328)
!355 = !DILocation(line: 419, column: 3, scope: !328)
!356 = !DILocation(line: 424, column: 3, scope: !328)
!357 = !DILocation(line: 425, column: 3, scope: !328)
!358 = !DILocation(line: 428, column: 3, scope: !328)
!359 = !DILocation(line: 430, column: 3, scope: !328)
!360 = !DILocation(line: 433, column: 31, scope: !328)
!361 = !DILocation(line: 433, column: 11, scope: !328)
!362 = !DILocation(line: 433, column: 3, scope: !328)
!363 = !DILocation(line: 434, column: 1, scope: !328)
!364 = distinct !DISubprogram(name: "HAL_LIN_Init", scope: !1, file: !1, line: 447, type: !9, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!365 = !DILocation(line: 450, column: 7, scope: !364)
!366 = !DILocation(line: 450, column: 13, scope: !364)
!367 = !DILocation(line: 452, column: 5, scope: !364)
!368 = !DILocation(line: 461, column: 7, scope: !364)
!369 = !DILocation(line: 461, column: 14, scope: !364)
!370 = !DILocation(line: 461, column: 19, scope: !364)
!371 = !DILocation(line: 461, column: 32, scope: !364)
!372 = !DILocation(line: 463, column: 5, scope: !364)
!373 = !DILocation(line: 466, column: 7, scope: !364)
!374 = !DILocation(line: 466, column: 14, scope: !364)
!375 = !DILocation(line: 466, column: 19, scope: !364)
!376 = !DILocation(line: 466, column: 30, scope: !364)
!377 = !DILocation(line: 468, column: 5, scope: !364)
!378 = !DILocation(line: 471, column: 7, scope: !364)
!379 = !DILocation(line: 471, column: 14, scope: !364)
!380 = !DILocation(line: 471, column: 21, scope: !364)
!381 = !DILocation(line: 474, column: 5, scope: !364)
!382 = !DILocation(line: 474, column: 12, scope: !364)
!383 = !DILocation(line: 474, column: 17, scope: !364)
!384 = !DILocation(line: 488, column: 22, scope: !364)
!385 = !DILocation(line: 488, column: 5, scope: !364)
!386 = !DILocation(line: 490, column: 3, scope: !364)
!387 = !DILocation(line: 492, column: 3, scope: !364)
!388 = !DILocation(line: 492, column: 10, scope: !364)
!389 = !DILocation(line: 492, column: 17, scope: !364)
!390 = !DILocation(line: 494, column: 3, scope: !364)
!391 = !DILocation(line: 497, column: 22, scope: !364)
!392 = !DILocation(line: 497, column: 7, scope: !364)
!393 = !DILocation(line: 497, column: 29, scope: !364)
!394 = !DILocation(line: 499, column: 5, scope: !364)
!395 = !DILocation(line: 502, column: 7, scope: !364)
!396 = !DILocation(line: 502, column: 14, scope: !364)
!397 = !DILocation(line: 502, column: 27, scope: !364)
!398 = !DILocation(line: 502, column: 42, scope: !364)
!399 = !DILocation(line: 504, column: 27, scope: !364)
!400 = !DILocation(line: 504, column: 5, scope: !364)
!401 = !DILocation(line: 505, column: 3, scope: !364)
!402 = !DILocation(line: 510, column: 3, scope: !364)
!403 = !DILocation(line: 511, column: 3, scope: !364)
!404 = !DILocation(line: 514, column: 3, scope: !364)
!405 = !DILocation(line: 517, column: 3, scope: !364)
!406 = !DILocation(line: 519, column: 3, scope: !364)
!407 = !DILocation(line: 522, column: 31, scope: !364)
!408 = !DILocation(line: 522, column: 11, scope: !364)
!409 = !DILocation(line: 522, column: 3, scope: !364)
!410 = !DILocation(line: 523, column: 1, scope: !364)
!411 = distinct !DISubprogram(name: "HAL_MultiProcessor_Init", scope: !1, file: !1, line: 544, type: !9, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!412 = !DILocation(line: 547, column: 7, scope: !411)
!413 = !DILocation(line: 547, column: 13, scope: !411)
!414 = !DILocation(line: 549, column: 5, scope: !411)
!415 = !DILocation(line: 555, column: 7, scope: !411)
!416 = !DILocation(line: 555, column: 14, scope: !411)
!417 = !DILocation(line: 555, column: 21, scope: !411)
!418 = !DILocation(line: 558, column: 5, scope: !411)
!419 = !DILocation(line: 558, column: 12, scope: !411)
!420 = !DILocation(line: 558, column: 17, scope: !411)
!421 = !DILocation(line: 572, column: 22, scope: !411)
!422 = !DILocation(line: 572, column: 5, scope: !411)
!423 = !DILocation(line: 574, column: 3, scope: !411)
!424 = !DILocation(line: 576, column: 3, scope: !411)
!425 = !DILocation(line: 576, column: 10, scope: !411)
!426 = !DILocation(line: 576, column: 17, scope: !411)
!427 = !DILocation(line: 578, column: 3, scope: !411)
!428 = !DILocation(line: 581, column: 22, scope: !411)
!429 = !DILocation(line: 581, column: 7, scope: !411)
!430 = !DILocation(line: 581, column: 29, scope: !411)
!431 = !DILocation(line: 583, column: 5, scope: !411)
!432 = !DILocation(line: 586, column: 7, scope: !411)
!433 = !DILocation(line: 586, column: 14, scope: !411)
!434 = !DILocation(line: 586, column: 27, scope: !411)
!435 = !DILocation(line: 586, column: 42, scope: !411)
!436 = !DILocation(line: 588, column: 27, scope: !411)
!437 = !DILocation(line: 588, column: 5, scope: !411)
!438 = !DILocation(line: 589, column: 3, scope: !411)
!439 = !DILocation(line: 594, column: 3, scope: !411)
!440 = !DILocation(line: 595, column: 3, scope: !411)
!441 = !DILocation(line: 597, column: 7, scope: !411)
!442 = !DILocation(line: 597, column: 20, scope: !411)
!443 = !DILocation(line: 600, column: 5, scope: !411)
!444 = !DILocation(line: 601, column: 3, scope: !411)
!445 = !DILocation(line: 604, column: 3, scope: !411)
!446 = !DILocation(line: 606, column: 3, scope: !411)
!447 = !DILocation(line: 609, column: 31, scope: !411)
!448 = !DILocation(line: 609, column: 11, scope: !411)
!449 = !DILocation(line: 609, column: 3, scope: !411)
!450 = !DILocation(line: 610, column: 1, scope: !411)
!451 = distinct !DISubprogram(name: "HAL_UART_DeInit", scope: !1, file: !1, line: 618, type: !9, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!452 = !DILocation(line: 621, column: 7, scope: !451)
!453 = !DILocation(line: 621, column: 13, scope: !451)
!454 = !DILocation(line: 623, column: 5, scope: !451)
!455 = !DILocation(line: 629, column: 3, scope: !451)
!456 = !DILocation(line: 629, column: 10, scope: !451)
!457 = !DILocation(line: 629, column: 17, scope: !451)
!458 = !DILocation(line: 631, column: 3, scope: !451)
!459 = !DILocation(line: 633, column: 3, scope: !451)
!460 = !DILocation(line: 633, column: 10, scope: !451)
!461 = !DILocation(line: 633, column: 20, scope: !451)
!462 = !DILocation(line: 633, column: 24, scope: !451)
!463 = !DILocation(line: 634, column: 3, scope: !451)
!464 = !DILocation(line: 634, column: 10, scope: !451)
!465 = !DILocation(line: 634, column: 20, scope: !451)
!466 = !DILocation(line: 634, column: 24, scope: !451)
!467 = !DILocation(line: 635, column: 3, scope: !451)
!468 = !DILocation(line: 635, column: 10, scope: !451)
!469 = !DILocation(line: 635, column: 20, scope: !451)
!470 = !DILocation(line: 635, column: 24, scope: !451)
!471 = !DILocation(line: 646, column: 22, scope: !451)
!472 = !DILocation(line: 646, column: 3, scope: !451)
!473 = !DILocation(line: 649, column: 3, scope: !451)
!474 = !DILocation(line: 649, column: 10, scope: !451)
!475 = !DILocation(line: 649, column: 20, scope: !451)
!476 = !DILocation(line: 650, column: 3, scope: !451)
!477 = !DILocation(line: 650, column: 10, scope: !451)
!478 = !DILocation(line: 650, column: 17, scope: !451)
!479 = !DILocation(line: 651, column: 3, scope: !451)
!480 = !DILocation(line: 651, column: 10, scope: !451)
!481 = !DILocation(line: 651, column: 18, scope: !451)
!482 = !DILocation(line: 652, column: 3, scope: !451)
!483 = !DILocation(line: 652, column: 10, scope: !451)
!484 = !DILocation(line: 652, column: 24, scope: !451)
!485 = !DILocation(line: 654, column: 3, scope: !451)
!486 = !DILocation(line: 656, column: 3, scope: !451)
!487 = !DILocation(line: 657, column: 1, scope: !451)
!488 = distinct !DISubprogram(name: "HAL_UART_MspDeInit", scope: !1, file: !1, line: 679, type: !9, scopeLine: 680, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!489 = !DILocation(line: 682, column: 3, scope: !488)
!490 = !DILocation(line: 687, column: 1, scope: !488)
!491 = distinct !DISubprogram(name: "HAL_UART_Transmit", scope: !1, file: !1, line: 1109, type: !9, scopeLine: 1110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!492 = !DILocation(line: 1116, column: 7, scope: !491)
!493 = !DILocation(line: 1116, column: 14, scope: !491)
!494 = !DILocation(line: 1116, column: 21, scope: !491)
!495 = !DILocation(line: 1118, column: 10, scope: !491)
!496 = !DILocation(line: 1118, column: 16, scope: !491)
!497 = !DILocation(line: 1118, column: 25, scope: !491)
!498 = !DILocation(line: 1118, column: 29, scope: !491)
!499 = !DILocation(line: 1118, column: 34, scope: !491)
!500 = !DILocation(line: 1118, column: 9, scope: !491)
!501 = !DILocation(line: 1120, column: 7, scope: !491)
!502 = !DILocation(line: 1123, column: 5, scope: !491)
!503 = !DILocation(line: 1125, column: 5, scope: !491)
!504 = !DILocation(line: 1125, column: 12, scope: !491)
!505 = !DILocation(line: 1125, column: 22, scope: !491)
!506 = !DILocation(line: 1126, column: 5, scope: !491)
!507 = !DILocation(line: 1126, column: 12, scope: !491)
!508 = !DILocation(line: 1126, column: 19, scope: !491)
!509 = !DILocation(line: 1129, column: 17, scope: !491)
!510 = !DILocation(line: 1129, column: 15, scope: !491)
!511 = !DILocation(line: 1131, column: 26, scope: !491)
!512 = !DILocation(line: 1131, column: 5, scope: !491)
!513 = !DILocation(line: 1131, column: 12, scope: !491)
!514 = !DILocation(line: 1131, column: 24, scope: !491)
!515 = !DILocation(line: 1132, column: 26, scope: !491)
!516 = !DILocation(line: 1132, column: 5, scope: !491)
!517 = !DILocation(line: 1132, column: 12, scope: !491)
!518 = !DILocation(line: 1132, column: 24, scope: !491)
!519 = !DILocation(line: 1135, column: 10, scope: !491)
!520 = !DILocation(line: 1135, column: 17, scope: !491)
!521 = !DILocation(line: 1135, column: 22, scope: !491)
!522 = !DILocation(line: 1135, column: 33, scope: !491)
!523 = !DILocation(line: 1135, column: 56, scope: !491)
!524 = !DILocation(line: 1135, column: 60, scope: !491)
!525 = !DILocation(line: 1135, column: 67, scope: !491)
!526 = !DILocation(line: 1135, column: 72, scope: !491)
!527 = !DILocation(line: 1135, column: 79, scope: !491)
!528 = !DILocation(line: 1135, column: 9, scope: !491)
!529 = !DILocation(line: 1137, column: 19, scope: !491)
!530 = !DILocation(line: 1138, column: 34, scope: !491)
!531 = !DILocation(line: 1138, column: 21, scope: !491)
!532 = !DILocation(line: 1138, column: 19, scope: !491)
!533 = !DILocation(line: 1139, column: 5, scope: !491)
!534 = !DILocation(line: 1142, column: 21, scope: !491)
!535 = !DILocation(line: 1142, column: 19, scope: !491)
!536 = !DILocation(line: 1143, column: 19, scope: !491)
!537 = !DILocation(line: 1146, column: 5, scope: !491)
!538 = !DILocation(line: 1148, column: 5, scope: !491)
!539 = !DILocation(line: 1148, column: 12, scope: !491)
!540 = !DILocation(line: 1148, column: 19, scope: !491)
!541 = !DILocation(line: 1148, column: 31, scope: !491)
!542 = !DILocation(line: 1150, column: 39, scope: !491)
!543 = !DILocation(line: 1150, column: 68, scope: !491)
!544 = !DILocation(line: 1150, column: 79, scope: !491)
!545 = !DILocation(line: 1150, column: 11, scope: !491)
!546 = !DILocation(line: 1150, column: 88, scope: !491)
!547 = !DILocation(line: 1152, column: 9, scope: !491)
!548 = !DILocation(line: 1154, column: 11, scope: !491)
!549 = !DILocation(line: 1154, column: 22, scope: !491)
!550 = !DILocation(line: 1156, column: 44, scope: !491)
!551 = !DILocation(line: 1156, column: 43, scope: !491)
!552 = !DILocation(line: 1156, column: 56, scope: !491)
!553 = !DILocation(line: 1156, column: 32, scope: !491)
!554 = !DILocation(line: 1156, column: 9, scope: !491)
!555 = !DILocation(line: 1156, column: 16, scope: !491)
!556 = !DILocation(line: 1156, column: 26, scope: !491)
!557 = !DILocation(line: 1156, column: 30, scope: !491)
!558 = !DILocation(line: 1157, column: 20, scope: !491)
!559 = !DILocation(line: 1158, column: 7, scope: !491)
!560 = !DILocation(line: 1161, column: 43, scope: !491)
!561 = !DILocation(line: 1161, column: 42, scope: !491)
!562 = !DILocation(line: 1161, column: 54, scope: !491)
!563 = !DILocation(line: 1161, column: 32, scope: !491)
!564 = !DILocation(line: 1161, column: 9, scope: !491)
!565 = !DILocation(line: 1161, column: 16, scope: !491)
!566 = !DILocation(line: 1161, column: 26, scope: !491)
!567 = !DILocation(line: 1161, column: 30, scope: !491)
!568 = !DILocation(line: 1162, column: 19, scope: !491)
!569 = !DILocation(line: 1164, column: 7, scope: !491)
!570 = !DILocation(line: 1164, column: 14, scope: !491)
!571 = !DILocation(line: 1164, column: 25, scope: !491)
!572 = distinct !{!572, !538, !573}
!573 = !DILocation(line: 1165, column: 5, scope: !491)
!574 = !DILocation(line: 1167, column: 37, scope: !491)
!575 = !DILocation(line: 1167, column: 65, scope: !491)
!576 = !DILocation(line: 1167, column: 76, scope: !491)
!577 = !DILocation(line: 1167, column: 9, scope: !491)
!578 = !DILocation(line: 1167, column: 85, scope: !491)
!579 = !DILocation(line: 1169, column: 7, scope: !491)
!580 = !DILocation(line: 1173, column: 5, scope: !491)
!581 = !DILocation(line: 1173, column: 12, scope: !491)
!582 = !DILocation(line: 1173, column: 19, scope: !491)
!583 = !DILocation(line: 1175, column: 5, scope: !491)
!584 = !DILocation(line: 1179, column: 5, scope: !491)
!585 = !DILocation(line: 1181, column: 1, scope: !491)
!586 = distinct !DISubprogram(name: "UART_WaitOnFlagUntilTimeout", scope: !1, file: !1, line: 3323, type: !9, scopeLine: 3325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!587 = !DILocation(line: 3327, column: 3, scope: !586)
!588 = !DILocation(line: 3327, column: 11, scope: !586)
!589 = !DILocation(line: 3327, column: 62, scope: !586)
!590 = !DILocation(line: 3327, column: 59, scope: !586)
!591 = !DILocation(line: 3330, column: 9, scope: !586)
!592 = !DILocation(line: 3330, column: 17, scope: !586)
!593 = !DILocation(line: 3332, column: 13, scope: !586)
!594 = !DILocation(line: 3332, column: 29, scope: !586)
!595 = !DILocation(line: 3332, column: 27, scope: !586)
!596 = !DILocation(line: 3332, column: 42, scope: !586)
!597 = !DILocation(line: 3332, column: 40, scope: !586)
!598 = !DILocation(line: 3332, column: 51, scope: !586)
!599 = !DILocation(line: 3332, column: 55, scope: !586)
!600 = !DILocation(line: 3332, column: 63, scope: !586)
!601 = !DILocation(line: 3332, column: 11, scope: !586)
!602 = !DILocation(line: 3335, column: 9, scope: !586)
!603 = !DILocation(line: 3336, column: 9, scope: !586)
!604 = !DILocation(line: 3338, column: 9, scope: !586)
!605 = !DILocation(line: 3338, column: 16, scope: !586)
!606 = !DILocation(line: 3338, column: 23, scope: !586)
!607 = !DILocation(line: 3339, column: 9, scope: !586)
!608 = !DILocation(line: 3339, column: 16, scope: !586)
!609 = !DILocation(line: 3339, column: 24, scope: !586)
!610 = !DILocation(line: 3341, column: 9, scope: !586)
!611 = !DILocation(line: 3343, column: 9, scope: !586)
!612 = !DILocation(line: 3346, column: 11, scope: !586)
!613 = !DILocation(line: 3346, column: 56, scope: !586)
!614 = !DILocation(line: 3348, column: 13, scope: !586)
!615 = !DILocation(line: 3348, column: 56, scope: !586)
!616 = !DILocation(line: 3351, column: 11, scope: !586)
!617 = !DILocation(line: 3354, column: 11, scope: !586)
!618 = !DILocation(line: 3355, column: 11, scope: !586)
!619 = !DILocation(line: 3357, column: 11, scope: !586)
!620 = !DILocation(line: 3357, column: 18, scope: !586)
!621 = !DILocation(line: 3357, column: 25, scope: !586)
!622 = !DILocation(line: 3358, column: 11, scope: !586)
!623 = !DILocation(line: 3358, column: 18, scope: !586)
!624 = !DILocation(line: 3358, column: 26, scope: !586)
!625 = !DILocation(line: 3359, column: 11, scope: !586)
!626 = !DILocation(line: 3359, column: 18, scope: !586)
!627 = !DILocation(line: 3359, column: 28, scope: !586)
!628 = !DILocation(line: 3362, column: 11, scope: !586)
!629 = !DILocation(line: 3364, column: 11, scope: !586)
!630 = !DILocation(line: 3366, column: 7, scope: !586)
!631 = !DILocation(line: 3367, column: 5, scope: !586)
!632 = distinct !{!632, !587, !633}
!633 = !DILocation(line: 3368, column: 3, scope: !586)
!634 = !DILocation(line: 3369, column: 3, scope: !586)
!635 = !DILocation(line: 3370, column: 1, scope: !586)
!636 = distinct !DISubprogram(name: "HAL_UART_Receive", scope: !1, file: !1, line: 1198, type: !9, scopeLine: 1199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!637 = !DILocation(line: 1206, column: 7, scope: !636)
!638 = !DILocation(line: 1206, column: 14, scope: !636)
!639 = !DILocation(line: 1206, column: 22, scope: !636)
!640 = !DILocation(line: 1208, column: 10, scope: !636)
!641 = !DILocation(line: 1208, column: 16, scope: !636)
!642 = !DILocation(line: 1208, column: 25, scope: !636)
!643 = !DILocation(line: 1208, column: 29, scope: !636)
!644 = !DILocation(line: 1208, column: 34, scope: !636)
!645 = !DILocation(line: 1208, column: 9, scope: !636)
!646 = !DILocation(line: 1210, column: 7, scope: !636)
!647 = !DILocation(line: 1213, column: 5, scope: !636)
!648 = !DILocation(line: 1215, column: 5, scope: !636)
!649 = !DILocation(line: 1215, column: 12, scope: !636)
!650 = !DILocation(line: 1215, column: 22, scope: !636)
!651 = !DILocation(line: 1216, column: 5, scope: !636)
!652 = !DILocation(line: 1216, column: 12, scope: !636)
!653 = !DILocation(line: 1216, column: 20, scope: !636)
!654 = !DILocation(line: 1217, column: 5, scope: !636)
!655 = !DILocation(line: 1217, column: 12, scope: !636)
!656 = !DILocation(line: 1217, column: 26, scope: !636)
!657 = !DILocation(line: 1220, column: 17, scope: !636)
!658 = !DILocation(line: 1220, column: 15, scope: !636)
!659 = !DILocation(line: 1222, column: 26, scope: !636)
!660 = !DILocation(line: 1222, column: 5, scope: !636)
!661 = !DILocation(line: 1222, column: 12, scope: !636)
!662 = !DILocation(line: 1222, column: 24, scope: !636)
!663 = !DILocation(line: 1223, column: 26, scope: !636)
!664 = !DILocation(line: 1223, column: 5, scope: !636)
!665 = !DILocation(line: 1223, column: 12, scope: !636)
!666 = !DILocation(line: 1223, column: 24, scope: !636)
!667 = !DILocation(line: 1226, column: 5, scope: !636)
!668 = !DILocation(line: 1227, column: 14, scope: !636)
!669 = !DILocation(line: 1227, column: 21, scope: !636)
!670 = !DILocation(line: 1227, column: 12, scope: !636)
!671 = !DILocation(line: 1230, column: 10, scope: !636)
!672 = !DILocation(line: 1230, column: 17, scope: !636)
!673 = !DILocation(line: 1230, column: 22, scope: !636)
!674 = !DILocation(line: 1230, column: 33, scope: !636)
!675 = !DILocation(line: 1230, column: 56, scope: !636)
!676 = !DILocation(line: 1230, column: 60, scope: !636)
!677 = !DILocation(line: 1230, column: 67, scope: !636)
!678 = !DILocation(line: 1230, column: 72, scope: !636)
!679 = !DILocation(line: 1230, column: 79, scope: !636)
!680 = !DILocation(line: 1230, column: 9, scope: !636)
!681 = !DILocation(line: 1232, column: 19, scope: !636)
!682 = !DILocation(line: 1233, column: 34, scope: !636)
!683 = !DILocation(line: 1233, column: 21, scope: !636)
!684 = !DILocation(line: 1233, column: 19, scope: !636)
!685 = !DILocation(line: 1234, column: 5, scope: !636)
!686 = !DILocation(line: 1237, column: 21, scope: !636)
!687 = !DILocation(line: 1237, column: 19, scope: !636)
!688 = !DILocation(line: 1238, column: 19, scope: !636)
!689 = !DILocation(line: 1241, column: 5, scope: !636)
!690 = !DILocation(line: 1244, column: 5, scope: !636)
!691 = !DILocation(line: 1244, column: 12, scope: !636)
!692 = !DILocation(line: 1244, column: 19, scope: !636)
!693 = !DILocation(line: 1244, column: 31, scope: !636)
!694 = !DILocation(line: 1246, column: 39, scope: !636)
!695 = !DILocation(line: 1246, column: 69, scope: !636)
!696 = !DILocation(line: 1246, column: 80, scope: !636)
!697 = !DILocation(line: 1246, column: 11, scope: !636)
!698 = !DILocation(line: 1246, column: 89, scope: !636)
!699 = !DILocation(line: 1248, column: 9, scope: !636)
!700 = !DILocation(line: 1250, column: 11, scope: !636)
!701 = !DILocation(line: 1250, column: 22, scope: !636)
!702 = !DILocation(line: 1252, column: 35, scope: !636)
!703 = !DILocation(line: 1252, column: 42, scope: !636)
!704 = !DILocation(line: 1252, column: 52, scope: !636)
!705 = !DILocation(line: 1252, column: 58, scope: !636)
!706 = !DILocation(line: 1252, column: 56, scope: !636)
!707 = !DILocation(line: 1252, column: 24, scope: !636)
!708 = !DILocation(line: 1252, column: 10, scope: !636)
!709 = !DILocation(line: 1252, column: 22, scope: !636)
!710 = !DILocation(line: 1253, column: 20, scope: !636)
!711 = !DILocation(line: 1254, column: 7, scope: !636)
!712 = !DILocation(line: 1257, column: 33, scope: !636)
!713 = !DILocation(line: 1257, column: 40, scope: !636)
!714 = !DILocation(line: 1257, column: 50, scope: !636)
!715 = !DILocation(line: 1257, column: 65, scope: !636)
!716 = !DILocation(line: 1257, column: 56, scope: !636)
!717 = !DILocation(line: 1257, column: 54, scope: !636)
!718 = !DILocation(line: 1257, column: 23, scope: !636)
!719 = !DILocation(line: 1257, column: 10, scope: !636)
!720 = !DILocation(line: 1257, column: 21, scope: !636)
!721 = !DILocation(line: 1258, column: 19, scope: !636)
!722 = !DILocation(line: 1260, column: 7, scope: !636)
!723 = !DILocation(line: 1260, column: 14, scope: !636)
!724 = !DILocation(line: 1260, column: 25, scope: !636)
!725 = distinct !{!725, !690, !726}
!726 = !DILocation(line: 1261, column: 5, scope: !636)
!727 = !DILocation(line: 1264, column: 5, scope: !636)
!728 = !DILocation(line: 1264, column: 12, scope: !636)
!729 = !DILocation(line: 1264, column: 20, scope: !636)
!730 = !DILocation(line: 1266, column: 5, scope: !636)
!731 = !DILocation(line: 1270, column: 5, scope: !636)
!732 = !DILocation(line: 1272, column: 1, scope: !636)
!733 = distinct !DISubprogram(name: "HAL_UART_Transmit_IT", scope: !1, file: !1, line: 1284, type: !9, scopeLine: 1285, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!734 = !DILocation(line: 1287, column: 7, scope: !733)
!735 = !DILocation(line: 1287, column: 14, scope: !733)
!736 = !DILocation(line: 1287, column: 21, scope: !733)
!737 = !DILocation(line: 1289, column: 10, scope: !733)
!738 = !DILocation(line: 1289, column: 16, scope: !733)
!739 = !DILocation(line: 1289, column: 25, scope: !733)
!740 = !DILocation(line: 1289, column: 29, scope: !733)
!741 = !DILocation(line: 1289, column: 34, scope: !733)
!742 = !DILocation(line: 1289, column: 9, scope: !733)
!743 = !DILocation(line: 1291, column: 7, scope: !733)
!744 = !DILocation(line: 1294, column: 5, scope: !733)
!745 = !DILocation(line: 1296, column: 26, scope: !733)
!746 = !DILocation(line: 1296, column: 5, scope: !733)
!747 = !DILocation(line: 1296, column: 12, scope: !733)
!748 = !DILocation(line: 1296, column: 24, scope: !733)
!749 = !DILocation(line: 1297, column: 26, scope: !733)
!750 = !DILocation(line: 1297, column: 5, scope: !733)
!751 = !DILocation(line: 1297, column: 12, scope: !733)
!752 = !DILocation(line: 1297, column: 24, scope: !733)
!753 = !DILocation(line: 1298, column: 26, scope: !733)
!754 = !DILocation(line: 1298, column: 5, scope: !733)
!755 = !DILocation(line: 1298, column: 12, scope: !733)
!756 = !DILocation(line: 1298, column: 24, scope: !733)
!757 = !DILocation(line: 1299, column: 5, scope: !733)
!758 = !DILocation(line: 1299, column: 12, scope: !733)
!759 = !DILocation(line: 1299, column: 24, scope: !733)
!760 = !DILocation(line: 1301, column: 5, scope: !733)
!761 = !DILocation(line: 1301, column: 12, scope: !733)
!762 = !DILocation(line: 1301, column: 22, scope: !733)
!763 = !DILocation(line: 1302, column: 5, scope: !733)
!764 = !DILocation(line: 1302, column: 12, scope: !733)
!765 = !DILocation(line: 1302, column: 19, scope: !733)
!766 = !DILocation(line: 1305, column: 9, scope: !733)
!767 = !DILocation(line: 1305, column: 16, scope: !733)
!768 = !DILocation(line: 1305, column: 25, scope: !733)
!769 = !DILocation(line: 1308, column: 12, scope: !733)
!770 = !DILocation(line: 1308, column: 19, scope: !733)
!771 = !DILocation(line: 1308, column: 24, scope: !733)
!772 = !DILocation(line: 1308, column: 35, scope: !733)
!773 = !DILocation(line: 1308, column: 58, scope: !733)
!774 = !DILocation(line: 1308, column: 62, scope: !733)
!775 = !DILocation(line: 1308, column: 69, scope: !733)
!776 = !DILocation(line: 1308, column: 74, scope: !733)
!777 = !DILocation(line: 1308, column: 81, scope: !733)
!778 = !DILocation(line: 1308, column: 11, scope: !733)
!779 = !DILocation(line: 1310, column: 9, scope: !733)
!780 = !DILocation(line: 1310, column: 16, scope: !733)
!781 = !DILocation(line: 1310, column: 22, scope: !733)
!782 = !DILocation(line: 1311, column: 7, scope: !733)
!783 = !DILocation(line: 1314, column: 9, scope: !733)
!784 = !DILocation(line: 1314, column: 16, scope: !733)
!785 = !DILocation(line: 1314, column: 22, scope: !733)
!786 = !DILocation(line: 1317, column: 7, scope: !733)
!787 = !DILocation(line: 1320, column: 7, scope: !733)
!788 = !DILocation(line: 1321, column: 5, scope: !733)
!789 = !DILocation(line: 1325, column: 12, scope: !733)
!790 = !DILocation(line: 1325, column: 19, scope: !733)
!791 = !DILocation(line: 1325, column: 24, scope: !733)
!792 = !DILocation(line: 1325, column: 35, scope: !733)
!793 = !DILocation(line: 1325, column: 58, scope: !733)
!794 = !DILocation(line: 1325, column: 62, scope: !733)
!795 = !DILocation(line: 1325, column: 69, scope: !733)
!796 = !DILocation(line: 1325, column: 74, scope: !733)
!797 = !DILocation(line: 1325, column: 81, scope: !733)
!798 = !DILocation(line: 1325, column: 11, scope: !733)
!799 = !DILocation(line: 1327, column: 9, scope: !733)
!800 = !DILocation(line: 1327, column: 16, scope: !733)
!801 = !DILocation(line: 1327, column: 22, scope: !733)
!802 = !DILocation(line: 1328, column: 7, scope: !733)
!803 = !DILocation(line: 1331, column: 9, scope: !733)
!804 = !DILocation(line: 1331, column: 16, scope: !733)
!805 = !DILocation(line: 1331, column: 22, scope: !733)
!806 = !DILocation(line: 1334, column: 7, scope: !733)
!807 = !DILocation(line: 1337, column: 7, scope: !733)
!808 = !DILocation(line: 1340, column: 5, scope: !733)
!809 = !DILocation(line: 1344, column: 5, scope: !733)
!810 = !DILocation(line: 1346, column: 1, scope: !733)
!811 = distinct !DISubprogram(name: "UART_TxISR_16BIT_FIFOEN", scope: !1, file: !1, line: 4028, type: !9, scopeLine: 4029, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!812 = !DILocation(line: 4034, column: 7, scope: !811)
!813 = !DILocation(line: 4034, column: 14, scope: !811)
!814 = !DILocation(line: 4034, column: 21, scope: !811)
!815 = !DILocation(line: 4036, column: 23, scope: !811)
!816 = !DILocation(line: 4036, column: 30, scope: !811)
!817 = !DILocation(line: 4036, column: 21, scope: !811)
!818 = !DILocation(line: 4036, column: 10, scope: !811)
!819 = !DILocation(line: 4036, column: 50, scope: !811)
!820 = !DILocation(line: 4036, column: 61, scope: !811)
!821 = !DILocation(line: 4036, column: 5, scope: !811)
!822 = !DILocation(line: 4038, column: 11, scope: !811)
!823 = !DILocation(line: 4038, column: 18, scope: !811)
!824 = !DILocation(line: 4038, column: 30, scope: !811)
!825 = !DILocation(line: 4041, column: 9, scope: !811)
!826 = !DILocation(line: 4044, column: 9, scope: !811)
!827 = !DILocation(line: 4046, column: 9, scope: !811)
!828 = !DILocation(line: 4048, column: 16, scope: !811)
!829 = !DILocation(line: 4048, column: 68, scope: !811)
!830 = !DILocation(line: 4050, column: 28, scope: !811)
!831 = !DILocation(line: 4050, column: 35, scope: !811)
!832 = !DILocation(line: 4050, column: 15, scope: !811)
!833 = !DILocation(line: 4050, column: 13, scope: !811)
!834 = !DILocation(line: 4051, column: 46, scope: !811)
!835 = !DILocation(line: 4051, column: 45, scope: !811)
!836 = !DILocation(line: 4051, column: 34, scope: !811)
!837 = !DILocation(line: 4051, column: 52, scope: !811)
!838 = !DILocation(line: 4051, column: 9, scope: !811)
!839 = !DILocation(line: 4051, column: 16, scope: !811)
!840 = !DILocation(line: 4051, column: 26, scope: !811)
!841 = !DILocation(line: 4051, column: 30, scope: !811)
!842 = !DILocation(line: 4052, column: 9, scope: !811)
!843 = !DILocation(line: 4052, column: 16, scope: !811)
!844 = !DILocation(line: 4052, column: 27, scope: !811)
!845 = !DILocation(line: 4053, column: 9, scope: !811)
!846 = !DILocation(line: 4053, column: 16, scope: !811)
!847 = !DILocation(line: 4053, column: 27, scope: !811)
!848 = !DILocation(line: 4054, column: 7, scope: !811)
!849 = !DILocation(line: 4059, column: 5, scope: !811)
!850 = !DILocation(line: 4036, column: 78, scope: !811)
!851 = distinct !{!851, !821, !849}
!852 = !DILocation(line: 4060, column: 3, scope: !811)
!853 = !DILocation(line: 4061, column: 1, scope: !811)
!854 = distinct !DISubprogram(name: "UART_TxISR_8BIT_FIFOEN", scope: !1, file: !1, line: 3988, type: !9, scopeLine: 3989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!855 = !DILocation(line: 3993, column: 7, scope: !854)
!856 = !DILocation(line: 3993, column: 14, scope: !854)
!857 = !DILocation(line: 3993, column: 21, scope: !854)
!858 = !DILocation(line: 3995, column: 23, scope: !854)
!859 = !DILocation(line: 3995, column: 30, scope: !854)
!860 = !DILocation(line: 3995, column: 21, scope: !854)
!861 = !DILocation(line: 3995, column: 10, scope: !854)
!862 = !DILocation(line: 3995, column: 50, scope: !854)
!863 = !DILocation(line: 3995, column: 61, scope: !854)
!864 = !DILocation(line: 3995, column: 5, scope: !854)
!865 = !DILocation(line: 3997, column: 11, scope: !854)
!866 = !DILocation(line: 3997, column: 18, scope: !854)
!867 = !DILocation(line: 3997, column: 30, scope: !854)
!868 = !DILocation(line: 4000, column: 9, scope: !854)
!869 = !DILocation(line: 4003, column: 9, scope: !854)
!870 = !DILocation(line: 4005, column: 9, scope: !854)
!871 = !DILocation(line: 4007, column: 16, scope: !854)
!872 = !DILocation(line: 4007, column: 68, scope: !854)
!873 = !DILocation(line: 4009, column: 43, scope: !854)
!874 = !DILocation(line: 4009, column: 50, scope: !854)
!875 = !DILocation(line: 4009, column: 42, scope: !854)
!876 = !DILocation(line: 4009, column: 61, scope: !854)
!877 = !DILocation(line: 4009, column: 32, scope: !854)
!878 = !DILocation(line: 4009, column: 9, scope: !854)
!879 = !DILocation(line: 4009, column: 16, scope: !854)
!880 = !DILocation(line: 4009, column: 26, scope: !854)
!881 = !DILocation(line: 4009, column: 30, scope: !854)
!882 = !DILocation(line: 4010, column: 9, scope: !854)
!883 = !DILocation(line: 4010, column: 16, scope: !854)
!884 = !DILocation(line: 4010, column: 26, scope: !854)
!885 = !DILocation(line: 4011, column: 9, scope: !854)
!886 = !DILocation(line: 4011, column: 16, scope: !854)
!887 = !DILocation(line: 4011, column: 27, scope: !854)
!888 = !DILocation(line: 4012, column: 7, scope: !854)
!889 = !DILocation(line: 4017, column: 5, scope: !854)
!890 = !DILocation(line: 3995, column: 78, scope: !854)
!891 = distinct !{!891, !864, !889}
!892 = !DILocation(line: 4018, column: 3, scope: !854)
!893 = !DILocation(line: 4019, column: 1, scope: !854)
!894 = distinct !DISubprogram(name: "UART_TxISR_16BIT", scope: !1, file: !1, line: 3956, type: !9, scopeLine: 3957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!895 = !DILocation(line: 3961, column: 7, scope: !894)
!896 = !DILocation(line: 3961, column: 14, scope: !894)
!897 = !DILocation(line: 3961, column: 21, scope: !894)
!898 = !DILocation(line: 3963, column: 9, scope: !894)
!899 = !DILocation(line: 3963, column: 16, scope: !894)
!900 = !DILocation(line: 3963, column: 28, scope: !894)
!901 = !DILocation(line: 3966, column: 7, scope: !894)
!902 = !DILocation(line: 3969, column: 7, scope: !894)
!903 = !DILocation(line: 3970, column: 5, scope: !894)
!904 = !DILocation(line: 3973, column: 26, scope: !894)
!905 = !DILocation(line: 3973, column: 33, scope: !894)
!906 = !DILocation(line: 3973, column: 13, scope: !894)
!907 = !DILocation(line: 3973, column: 11, scope: !894)
!908 = !DILocation(line: 3974, column: 44, scope: !894)
!909 = !DILocation(line: 3974, column: 43, scope: !894)
!910 = !DILocation(line: 3974, column: 32, scope: !894)
!911 = !DILocation(line: 3974, column: 50, scope: !894)
!912 = !DILocation(line: 3974, column: 7, scope: !894)
!913 = !DILocation(line: 3974, column: 14, scope: !894)
!914 = !DILocation(line: 3974, column: 24, scope: !894)
!915 = !DILocation(line: 3974, column: 28, scope: !894)
!916 = !DILocation(line: 3975, column: 7, scope: !894)
!917 = !DILocation(line: 3975, column: 14, scope: !894)
!918 = !DILocation(line: 3975, column: 25, scope: !894)
!919 = !DILocation(line: 3976, column: 7, scope: !894)
!920 = !DILocation(line: 3976, column: 14, scope: !894)
!921 = !DILocation(line: 3976, column: 25, scope: !894)
!922 = !DILocation(line: 3978, column: 3, scope: !894)
!923 = !DILocation(line: 3979, column: 1, scope: !894)
!924 = distinct !DISubprogram(name: "UART_TxISR_8BIT", scope: !1, file: !1, line: 3927, type: !9, scopeLine: 3928, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!925 = !DILocation(line: 3930, column: 7, scope: !924)
!926 = !DILocation(line: 3930, column: 14, scope: !924)
!927 = !DILocation(line: 3930, column: 21, scope: !924)
!928 = !DILocation(line: 3932, column: 9, scope: !924)
!929 = !DILocation(line: 3932, column: 16, scope: !924)
!930 = !DILocation(line: 3932, column: 28, scope: !924)
!931 = !DILocation(line: 3935, column: 7, scope: !924)
!932 = !DILocation(line: 3938, column: 7, scope: !924)
!933 = !DILocation(line: 3939, column: 5, scope: !924)
!934 = !DILocation(line: 3942, column: 41, scope: !924)
!935 = !DILocation(line: 3942, column: 48, scope: !924)
!936 = !DILocation(line: 3942, column: 40, scope: !924)
!937 = !DILocation(line: 3942, column: 59, scope: !924)
!938 = !DILocation(line: 3942, column: 30, scope: !924)
!939 = !DILocation(line: 3942, column: 7, scope: !924)
!940 = !DILocation(line: 3942, column: 14, scope: !924)
!941 = !DILocation(line: 3942, column: 24, scope: !924)
!942 = !DILocation(line: 3942, column: 28, scope: !924)
!943 = !DILocation(line: 3943, column: 7, scope: !924)
!944 = !DILocation(line: 3943, column: 14, scope: !924)
!945 = !DILocation(line: 3943, column: 24, scope: !924)
!946 = !DILocation(line: 3944, column: 7, scope: !924)
!947 = !DILocation(line: 3944, column: 14, scope: !924)
!948 = !DILocation(line: 3944, column: 25, scope: !924)
!949 = !DILocation(line: 3946, column: 3, scope: !924)
!950 = !DILocation(line: 3947, column: 1, scope: !924)
!951 = distinct !DISubprogram(name: "HAL_UART_Receive_IT", scope: !1, file: !1, line: 1358, type: !9, scopeLine: 1359, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!952 = !DILocation(line: 1361, column: 7, scope: !951)
!953 = !DILocation(line: 1361, column: 14, scope: !951)
!954 = !DILocation(line: 1361, column: 22, scope: !951)
!955 = !DILocation(line: 1363, column: 10, scope: !951)
!956 = !DILocation(line: 1363, column: 16, scope: !951)
!957 = !DILocation(line: 1363, column: 25, scope: !951)
!958 = !DILocation(line: 1363, column: 29, scope: !951)
!959 = !DILocation(line: 1363, column: 34, scope: !951)
!960 = !DILocation(line: 1363, column: 9, scope: !951)
!961 = !DILocation(line: 1365, column: 7, scope: !951)
!962 = !DILocation(line: 1368, column: 5, scope: !951)
!963 = !DILocation(line: 1371, column: 5, scope: !951)
!964 = !DILocation(line: 1371, column: 12, scope: !951)
!965 = !DILocation(line: 1371, column: 26, scope: !951)
!966 = !DILocation(line: 1373, column: 34, scope: !951)
!967 = !DILocation(line: 1373, column: 41, scope: !951)
!968 = !DILocation(line: 1373, column: 48, scope: !951)
!969 = !DILocation(line: 1373, column: 12, scope: !951)
!970 = !DILocation(line: 1373, column: 5, scope: !951)
!971 = !DILocation(line: 1377, column: 5, scope: !951)
!972 = !DILocation(line: 1379, column: 1, scope: !951)
!973 = distinct !DISubprogram(name: "UART_Start_Receive_IT", scope: !1, file: !1, line: 3383, type: !9, scopeLine: 3384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!974 = !DILocation(line: 3385, column: 24, scope: !973)
!975 = !DILocation(line: 3385, column: 3, scope: !973)
!976 = !DILocation(line: 3385, column: 10, scope: !973)
!977 = !DILocation(line: 3385, column: 22, scope: !973)
!978 = !DILocation(line: 3386, column: 24, scope: !973)
!979 = !DILocation(line: 3386, column: 3, scope: !973)
!980 = !DILocation(line: 3386, column: 10, scope: !973)
!981 = !DILocation(line: 3386, column: 22, scope: !973)
!982 = !DILocation(line: 3387, column: 24, scope: !973)
!983 = !DILocation(line: 3387, column: 3, scope: !973)
!984 = !DILocation(line: 3387, column: 10, scope: !973)
!985 = !DILocation(line: 3387, column: 22, scope: !973)
!986 = !DILocation(line: 3388, column: 3, scope: !973)
!987 = !DILocation(line: 3388, column: 10, scope: !973)
!988 = !DILocation(line: 3388, column: 22, scope: !973)
!989 = !DILocation(line: 3391, column: 3, scope: !973)
!990 = !DILocation(line: 3393, column: 3, scope: !973)
!991 = !DILocation(line: 3393, column: 10, scope: !973)
!992 = !DILocation(line: 3393, column: 20, scope: !973)
!993 = !DILocation(line: 3394, column: 3, scope: !973)
!994 = !DILocation(line: 3394, column: 10, scope: !973)
!995 = !DILocation(line: 3394, column: 18, scope: !973)
!996 = !DILocation(line: 3397, column: 3, scope: !973)
!997 = !DILocation(line: 3400, column: 8, scope: !973)
!998 = !DILocation(line: 3400, column: 15, scope: !973)
!999 = !DILocation(line: 3400, column: 24, scope: !973)
!1000 = !DILocation(line: 3400, column: 49, scope: !973)
!1001 = !DILocation(line: 3400, column: 53, scope: !973)
!1002 = !DILocation(line: 3400, column: 61, scope: !973)
!1003 = !DILocation(line: 3400, column: 68, scope: !973)
!1004 = !DILocation(line: 3400, column: 58, scope: !973)
!1005 = !DILocation(line: 3400, column: 7, scope: !973)
!1006 = !DILocation(line: 3403, column: 10, scope: !973)
!1007 = !DILocation(line: 3403, column: 17, scope: !973)
!1008 = !DILocation(line: 3403, column: 22, scope: !973)
!1009 = !DILocation(line: 3403, column: 33, scope: !973)
!1010 = !DILocation(line: 3403, column: 56, scope: !973)
!1011 = !DILocation(line: 3403, column: 60, scope: !973)
!1012 = !DILocation(line: 3403, column: 67, scope: !973)
!1013 = !DILocation(line: 3403, column: 72, scope: !973)
!1014 = !DILocation(line: 3403, column: 79, scope: !973)
!1015 = !DILocation(line: 3403, column: 9, scope: !973)
!1016 = !DILocation(line: 3405, column: 7, scope: !973)
!1017 = !DILocation(line: 3405, column: 14, scope: !973)
!1018 = !DILocation(line: 3405, column: 20, scope: !973)
!1019 = !DILocation(line: 3406, column: 5, scope: !973)
!1020 = !DILocation(line: 3409, column: 7, scope: !973)
!1021 = !DILocation(line: 3409, column: 14, scope: !973)
!1022 = !DILocation(line: 3409, column: 20, scope: !973)
!1023 = !DILocation(line: 3412, column: 5, scope: !973)
!1024 = !DILocation(line: 3415, column: 5, scope: !973)
!1025 = !DILocation(line: 3416, column: 5, scope: !973)
!1026 = !DILocation(line: 3417, column: 3, scope: !973)
!1027 = !DILocation(line: 3421, column: 10, scope: !973)
!1028 = !DILocation(line: 3421, column: 17, scope: !973)
!1029 = !DILocation(line: 3421, column: 22, scope: !973)
!1030 = !DILocation(line: 3421, column: 33, scope: !973)
!1031 = !DILocation(line: 3421, column: 56, scope: !973)
!1032 = !DILocation(line: 3421, column: 60, scope: !973)
!1033 = !DILocation(line: 3421, column: 67, scope: !973)
!1034 = !DILocation(line: 3421, column: 72, scope: !973)
!1035 = !DILocation(line: 3421, column: 79, scope: !973)
!1036 = !DILocation(line: 3421, column: 9, scope: !973)
!1037 = !DILocation(line: 3423, column: 7, scope: !973)
!1038 = !DILocation(line: 3423, column: 14, scope: !973)
!1039 = !DILocation(line: 3423, column: 20, scope: !973)
!1040 = !DILocation(line: 3424, column: 5, scope: !973)
!1041 = !DILocation(line: 3427, column: 7, scope: !973)
!1042 = !DILocation(line: 3427, column: 14, scope: !973)
!1043 = !DILocation(line: 3427, column: 20, scope: !973)
!1044 = !DILocation(line: 3430, column: 5, scope: !973)
!1045 = !DILocation(line: 3433, column: 5, scope: !973)
!1046 = !DILocation(line: 3435, column: 3, scope: !973)
!1047 = distinct !DISubprogram(name: "HAL_UART_Transmit_DMA", scope: !1, file: !1, line: 1391, type: !9, scopeLine: 1392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1048 = !DILocation(line: 1394, column: 7, scope: !1047)
!1049 = !DILocation(line: 1394, column: 14, scope: !1047)
!1050 = !DILocation(line: 1394, column: 21, scope: !1047)
!1051 = !DILocation(line: 1396, column: 10, scope: !1047)
!1052 = !DILocation(line: 1396, column: 16, scope: !1047)
!1053 = !DILocation(line: 1396, column: 25, scope: !1047)
!1054 = !DILocation(line: 1396, column: 29, scope: !1047)
!1055 = !DILocation(line: 1396, column: 34, scope: !1047)
!1056 = !DILocation(line: 1396, column: 9, scope: !1047)
!1057 = !DILocation(line: 1398, column: 7, scope: !1047)
!1058 = !DILocation(line: 1401, column: 5, scope: !1047)
!1059 = !DILocation(line: 1403, column: 26, scope: !1047)
!1060 = !DILocation(line: 1403, column: 5, scope: !1047)
!1061 = !DILocation(line: 1403, column: 12, scope: !1047)
!1062 = !DILocation(line: 1403, column: 24, scope: !1047)
!1063 = !DILocation(line: 1404, column: 26, scope: !1047)
!1064 = !DILocation(line: 1404, column: 5, scope: !1047)
!1065 = !DILocation(line: 1404, column: 12, scope: !1047)
!1066 = !DILocation(line: 1404, column: 24, scope: !1047)
!1067 = !DILocation(line: 1405, column: 26, scope: !1047)
!1068 = !DILocation(line: 1405, column: 5, scope: !1047)
!1069 = !DILocation(line: 1405, column: 12, scope: !1047)
!1070 = !DILocation(line: 1405, column: 24, scope: !1047)
!1071 = !DILocation(line: 1407, column: 5, scope: !1047)
!1072 = !DILocation(line: 1407, column: 12, scope: !1047)
!1073 = !DILocation(line: 1407, column: 22, scope: !1047)
!1074 = !DILocation(line: 1408, column: 5, scope: !1047)
!1075 = !DILocation(line: 1408, column: 12, scope: !1047)
!1076 = !DILocation(line: 1408, column: 19, scope: !1047)
!1077 = !DILocation(line: 1410, column: 9, scope: !1047)
!1078 = !DILocation(line: 1410, column: 16, scope: !1047)
!1079 = !DILocation(line: 1410, column: 23, scope: !1047)
!1080 = !DILocation(line: 1413, column: 7, scope: !1047)
!1081 = !DILocation(line: 1413, column: 14, scope: !1047)
!1082 = !DILocation(line: 1413, column: 22, scope: !1047)
!1083 = !DILocation(line: 1413, column: 39, scope: !1047)
!1084 = !DILocation(line: 1416, column: 7, scope: !1047)
!1085 = !DILocation(line: 1416, column: 14, scope: !1047)
!1086 = !DILocation(line: 1416, column: 22, scope: !1047)
!1087 = !DILocation(line: 1416, column: 43, scope: !1047)
!1088 = !DILocation(line: 1419, column: 7, scope: !1047)
!1089 = !DILocation(line: 1419, column: 14, scope: !1047)
!1090 = !DILocation(line: 1419, column: 22, scope: !1047)
!1091 = !DILocation(line: 1419, column: 40, scope: !1047)
!1092 = !DILocation(line: 1422, column: 7, scope: !1047)
!1093 = !DILocation(line: 1422, column: 14, scope: !1047)
!1094 = !DILocation(line: 1422, column: 22, scope: !1047)
!1095 = !DILocation(line: 1422, column: 40, scope: !1047)
!1096 = !DILocation(line: 1425, column: 28, scope: !1047)
!1097 = !DILocation(line: 1425, column: 35, scope: !1047)
!1098 = !DILocation(line: 1425, column: 53, scope: !1047)
!1099 = !DILocation(line: 1425, column: 60, scope: !1047)
!1100 = !DILocation(line: 1425, column: 43, scope: !1047)
!1101 = !DILocation(line: 1425, column: 83, scope: !1047)
!1102 = !DILocation(line: 1425, column: 90, scope: !1047)
!1103 = !DILocation(line: 1425, column: 100, scope: !1047)
!1104 = !DILocation(line: 1425, column: 72, scope: !1047)
!1105 = !DILocation(line: 1425, column: 105, scope: !1047)
!1106 = !DILocation(line: 1425, column: 11, scope: !1047)
!1107 = !DILocation(line: 1425, column: 111, scope: !1047)
!1108 = !DILocation(line: 1428, column: 9, scope: !1047)
!1109 = !DILocation(line: 1428, column: 16, scope: !1047)
!1110 = !DILocation(line: 1428, column: 26, scope: !1047)
!1111 = !DILocation(line: 1430, column: 9, scope: !1047)
!1112 = !DILocation(line: 1433, column: 9, scope: !1047)
!1113 = !DILocation(line: 1433, column: 16, scope: !1047)
!1114 = !DILocation(line: 1433, column: 23, scope: !1047)
!1115 = !DILocation(line: 1435, column: 9, scope: !1047)
!1116 = !DILocation(line: 1437, column: 5, scope: !1047)
!1117 = !DILocation(line: 1439, column: 5, scope: !1047)
!1118 = !DILocation(line: 1441, column: 5, scope: !1047)
!1119 = !DILocation(line: 1445, column: 5, scope: !1047)
!1120 = !DILocation(line: 1447, column: 5, scope: !1047)
!1121 = !DILocation(line: 1451, column: 5, scope: !1047)
!1122 = !DILocation(line: 1453, column: 1, scope: !1047)
!1123 = distinct !DISubprogram(name: "UART_DMATransmitCplt", scope: !1, file: !1, line: 3548, type: !9, scopeLine: 3549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1124 = !DILocation(line: 3550, column: 54, scope: !1123)
!1125 = !DILocation(line: 3550, column: 60, scope: !1123)
!1126 = !DILocation(line: 3550, column: 31, scope: !1123)
!1127 = !DILocation(line: 3550, column: 23, scope: !1123)
!1128 = !DILocation(line: 3553, column: 7, scope: !1123)
!1129 = !DILocation(line: 3555, column: 5, scope: !1123)
!1130 = !DILocation(line: 3555, column: 12, scope: !1123)
!1131 = !DILocation(line: 3555, column: 24, scope: !1123)
!1132 = !DILocation(line: 3559, column: 5, scope: !1123)
!1133 = !DILocation(line: 3562, column: 5, scope: !1123)
!1134 = !DILocation(line: 3563, column: 3, scope: !1123)
!1135 = !DILocation(line: 3572, column: 29, scope: !1123)
!1136 = !DILocation(line: 3572, column: 5, scope: !1123)
!1137 = !DILocation(line: 3575, column: 1, scope: !1123)
!1138 = distinct !DISubprogram(name: "UART_DMATxHalfCplt", scope: !1, file: !1, line: 3582, type: !9, scopeLine: 3583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1139 = !DILocation(line: 3584, column: 54, scope: !1138)
!1140 = !DILocation(line: 3584, column: 60, scope: !1138)
!1141 = !DILocation(line: 3584, column: 31, scope: !1138)
!1142 = !DILocation(line: 3584, column: 23, scope: !1138)
!1143 = !DILocation(line: 3591, column: 31, scope: !1138)
!1144 = !DILocation(line: 3591, column: 3, scope: !1138)
!1145 = !DILocation(line: 3593, column: 1, scope: !1138)
!1146 = distinct !DISubprogram(name: "UART_DMAError", scope: !1, file: !1, line: 3691, type: !9, scopeLine: 3692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1147 = !DILocation(line: 3693, column: 54, scope: !1146)
!1148 = !DILocation(line: 3693, column: 60, scope: !1146)
!1149 = !DILocation(line: 3693, column: 31, scope: !1146)
!1150 = !DILocation(line: 3693, column: 23, scope: !1146)
!1151 = !DILocation(line: 3695, column: 40, scope: !1146)
!1152 = !DILocation(line: 3695, column: 47, scope: !1146)
!1153 = !DILocation(line: 3695, column: 31, scope: !1146)
!1154 = !DILocation(line: 3696, column: 41, scope: !1146)
!1155 = !DILocation(line: 3696, column: 48, scope: !1146)
!1156 = !DILocation(line: 3696, column: 31, scope: !1146)
!1157 = !DILocation(line: 3699, column: 8, scope: !1146)
!1158 = !DILocation(line: 3699, column: 62, scope: !1146)
!1159 = !DILocation(line: 3700, column: 8, scope: !1146)
!1160 = !DILocation(line: 3700, column: 15, scope: !1146)
!1161 = !DILocation(line: 3699, column: 7, scope: !1146)
!1162 = !DILocation(line: 3702, column: 5, scope: !1146)
!1163 = !DILocation(line: 3702, column: 12, scope: !1146)
!1164 = !DILocation(line: 3702, column: 24, scope: !1146)
!1165 = !DILocation(line: 3703, column: 24, scope: !1146)
!1166 = !DILocation(line: 3703, column: 5, scope: !1146)
!1167 = !DILocation(line: 3704, column: 3, scope: !1146)
!1168 = !DILocation(line: 3707, column: 8, scope: !1146)
!1169 = !DILocation(line: 3707, column: 62, scope: !1146)
!1170 = !DILocation(line: 3708, column: 8, scope: !1146)
!1171 = !DILocation(line: 3708, column: 16, scope: !1146)
!1172 = !DILocation(line: 3707, column: 7, scope: !1146)
!1173 = !DILocation(line: 3710, column: 5, scope: !1146)
!1174 = !DILocation(line: 3710, column: 12, scope: !1146)
!1175 = !DILocation(line: 3710, column: 24, scope: !1146)
!1176 = !DILocation(line: 3711, column: 24, scope: !1146)
!1177 = !DILocation(line: 3711, column: 5, scope: !1146)
!1178 = !DILocation(line: 3712, column: 3, scope: !1146)
!1179 = !DILocation(line: 3714, column: 3, scope: !1146)
!1180 = !DILocation(line: 3714, column: 10, scope: !1146)
!1181 = !DILocation(line: 3714, column: 20, scope: !1146)
!1182 = !DILocation(line: 3721, column: 26, scope: !1146)
!1183 = !DILocation(line: 3721, column: 3, scope: !1146)
!1184 = !DILocation(line: 3723, column: 1, scope: !1146)
!1185 = distinct !DISubprogram(name: "HAL_UART_Receive_DMA", scope: !1, file: !1, line: 1467, type: !9, scopeLine: 1468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1186 = !DILocation(line: 1470, column: 7, scope: !1185)
!1187 = !DILocation(line: 1470, column: 14, scope: !1185)
!1188 = !DILocation(line: 1470, column: 22, scope: !1185)
!1189 = !DILocation(line: 1472, column: 10, scope: !1185)
!1190 = !DILocation(line: 1472, column: 16, scope: !1185)
!1191 = !DILocation(line: 1472, column: 25, scope: !1185)
!1192 = !DILocation(line: 1472, column: 29, scope: !1185)
!1193 = !DILocation(line: 1472, column: 34, scope: !1185)
!1194 = !DILocation(line: 1472, column: 9, scope: !1185)
!1195 = !DILocation(line: 1474, column: 7, scope: !1185)
!1196 = !DILocation(line: 1477, column: 5, scope: !1185)
!1197 = !DILocation(line: 1480, column: 5, scope: !1185)
!1198 = !DILocation(line: 1480, column: 12, scope: !1185)
!1199 = !DILocation(line: 1480, column: 26, scope: !1185)
!1200 = !DILocation(line: 1482, column: 35, scope: !1185)
!1201 = !DILocation(line: 1482, column: 42, scope: !1185)
!1202 = !DILocation(line: 1482, column: 49, scope: !1185)
!1203 = !DILocation(line: 1482, column: 12, scope: !1185)
!1204 = !DILocation(line: 1482, column: 5, scope: !1185)
!1205 = !DILocation(line: 1486, column: 5, scope: !1185)
!1206 = !DILocation(line: 1488, column: 1, scope: !1185)
!1207 = distinct !DISubprogram(name: "UART_Start_Receive_DMA", scope: !1, file: !1, line: 3449, type: !9, scopeLine: 3450, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1208 = !DILocation(line: 3451, column: 23, scope: !1207)
!1209 = !DILocation(line: 3451, column: 3, scope: !1207)
!1210 = !DILocation(line: 3451, column: 10, scope: !1207)
!1211 = !DILocation(line: 3451, column: 21, scope: !1207)
!1212 = !DILocation(line: 3452, column: 23, scope: !1207)
!1213 = !DILocation(line: 3452, column: 3, scope: !1207)
!1214 = !DILocation(line: 3452, column: 10, scope: !1207)
!1215 = !DILocation(line: 3452, column: 21, scope: !1207)
!1216 = !DILocation(line: 3454, column: 3, scope: !1207)
!1217 = !DILocation(line: 3454, column: 10, scope: !1207)
!1218 = !DILocation(line: 3454, column: 20, scope: !1207)
!1219 = !DILocation(line: 3455, column: 3, scope: !1207)
!1220 = !DILocation(line: 3455, column: 10, scope: !1207)
!1221 = !DILocation(line: 3455, column: 18, scope: !1207)
!1222 = !DILocation(line: 3457, column: 7, scope: !1207)
!1223 = !DILocation(line: 3457, column: 14, scope: !1207)
!1224 = !DILocation(line: 3457, column: 21, scope: !1207)
!1225 = !DILocation(line: 3460, column: 5, scope: !1207)
!1226 = !DILocation(line: 3460, column: 12, scope: !1207)
!1227 = !DILocation(line: 3460, column: 20, scope: !1207)
!1228 = !DILocation(line: 3460, column: 37, scope: !1207)
!1229 = !DILocation(line: 3463, column: 5, scope: !1207)
!1230 = !DILocation(line: 3463, column: 12, scope: !1207)
!1231 = !DILocation(line: 3463, column: 20, scope: !1207)
!1232 = !DILocation(line: 3463, column: 41, scope: !1207)
!1233 = !DILocation(line: 3466, column: 5, scope: !1207)
!1234 = !DILocation(line: 3466, column: 12, scope: !1207)
!1235 = !DILocation(line: 3466, column: 20, scope: !1207)
!1236 = !DILocation(line: 3466, column: 38, scope: !1207)
!1237 = !DILocation(line: 3469, column: 5, scope: !1207)
!1238 = !DILocation(line: 3469, column: 12, scope: !1207)
!1239 = !DILocation(line: 3469, column: 20, scope: !1207)
!1240 = !DILocation(line: 3469, column: 38, scope: !1207)
!1241 = !DILocation(line: 3472, column: 26, scope: !1207)
!1242 = !DILocation(line: 3472, column: 33, scope: !1207)
!1243 = !DILocation(line: 3472, column: 52, scope: !1207)
!1244 = !DILocation(line: 3472, column: 59, scope: !1207)
!1245 = !DILocation(line: 3472, column: 69, scope: !1207)
!1246 = !DILocation(line: 3472, column: 41, scope: !1207)
!1247 = !DILocation(line: 3472, column: 84, scope: !1207)
!1248 = !DILocation(line: 3472, column: 91, scope: !1207)
!1249 = !DILocation(line: 3472, column: 74, scope: !1207)
!1250 = !DILocation(line: 3472, column: 103, scope: !1207)
!1251 = !DILocation(line: 3472, column: 9, scope: !1207)
!1252 = !DILocation(line: 3472, column: 109, scope: !1207)
!1253 = !DILocation(line: 3475, column: 7, scope: !1207)
!1254 = !DILocation(line: 3475, column: 14, scope: !1207)
!1255 = !DILocation(line: 3475, column: 24, scope: !1207)
!1256 = !DILocation(line: 3477, column: 7, scope: !1207)
!1257 = !DILocation(line: 3480, column: 7, scope: !1207)
!1258 = !DILocation(line: 3480, column: 14, scope: !1207)
!1259 = !DILocation(line: 3480, column: 21, scope: !1207)
!1260 = !DILocation(line: 3482, column: 7, scope: !1207)
!1261 = !DILocation(line: 3484, column: 3, scope: !1207)
!1262 = !DILocation(line: 3485, column: 3, scope: !1207)
!1263 = !DILocation(line: 3488, column: 3, scope: !1207)
!1264 = !DILocation(line: 3491, column: 3, scope: !1207)
!1265 = !DILocation(line: 3495, column: 3, scope: !1207)
!1266 = !DILocation(line: 3497, column: 3, scope: !1207)
!1267 = !DILocation(line: 3498, column: 1, scope: !1207)
!1268 = distinct !DISubprogram(name: "HAL_UART_DMAPause", scope: !1, file: !1, line: 1495, type: !9, scopeLine: 1496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1269 = !DILocation(line: 1497, column: 40, scope: !1268)
!1270 = !DILocation(line: 1497, column: 47, scope: !1268)
!1271 = !DILocation(line: 1497, column: 31, scope: !1268)
!1272 = !DILocation(line: 1498, column: 41, scope: !1268)
!1273 = !DILocation(line: 1498, column: 48, scope: !1268)
!1274 = !DILocation(line: 1498, column: 31, scope: !1268)
!1275 = !DILocation(line: 1500, column: 3, scope: !1268)
!1276 = !DILocation(line: 1502, column: 8, scope: !1268)
!1277 = !DILocation(line: 1502, column: 62, scope: !1268)
!1278 = !DILocation(line: 1503, column: 8, scope: !1268)
!1279 = !DILocation(line: 1503, column: 15, scope: !1268)
!1280 = !DILocation(line: 1502, column: 7, scope: !1268)
!1281 = !DILocation(line: 1506, column: 5, scope: !1268)
!1282 = !DILocation(line: 1507, column: 3, scope: !1268)
!1283 = !DILocation(line: 1508, column: 8, scope: !1268)
!1284 = !DILocation(line: 1508, column: 62, scope: !1268)
!1285 = !DILocation(line: 1509, column: 8, scope: !1268)
!1286 = !DILocation(line: 1509, column: 16, scope: !1268)
!1287 = !DILocation(line: 1508, column: 7, scope: !1268)
!1288 = !DILocation(line: 1512, column: 5, scope: !1268)
!1289 = !DILocation(line: 1513, column: 5, scope: !1268)
!1290 = !DILocation(line: 1516, column: 5, scope: !1268)
!1291 = !DILocation(line: 1517, column: 3, scope: !1268)
!1292 = !DILocation(line: 1519, column: 3, scope: !1268)
!1293 = !DILocation(line: 1521, column: 3, scope: !1268)
!1294 = !DILocation(line: 1522, column: 1, scope: !1268)
!1295 = distinct !DISubprogram(name: "HAL_UART_DMAResume", scope: !1, file: !1, line: 1529, type: !9, scopeLine: 1530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1296 = !DILocation(line: 1531, column: 3, scope: !1295)
!1297 = !DILocation(line: 1533, column: 7, scope: !1295)
!1298 = !DILocation(line: 1533, column: 14, scope: !1295)
!1299 = !DILocation(line: 1533, column: 21, scope: !1295)
!1300 = !DILocation(line: 1536, column: 5, scope: !1295)
!1301 = !DILocation(line: 1537, column: 3, scope: !1295)
!1302 = !DILocation(line: 1538, column: 7, scope: !1295)
!1303 = !DILocation(line: 1538, column: 14, scope: !1295)
!1304 = !DILocation(line: 1538, column: 22, scope: !1295)
!1305 = !DILocation(line: 1541, column: 5, scope: !1295)
!1306 = !DILocation(line: 1544, column: 5, scope: !1295)
!1307 = !DILocation(line: 1545, column: 5, scope: !1295)
!1308 = !DILocation(line: 1548, column: 5, scope: !1295)
!1309 = !DILocation(line: 1549, column: 3, scope: !1295)
!1310 = !DILocation(line: 1551, column: 3, scope: !1295)
!1311 = !DILocation(line: 1553, column: 3, scope: !1295)
!1312 = !DILocation(line: 1554, column: 1, scope: !1295)
!1313 = distinct !DISubprogram(name: "HAL_UART_DMAStop", scope: !1, file: !1, line: 1561, type: !9, scopeLine: 1562, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1314 = !DILocation(line: 1570, column: 40, scope: !1313)
!1315 = !DILocation(line: 1570, column: 47, scope: !1313)
!1316 = !DILocation(line: 1570, column: 31, scope: !1313)
!1317 = !DILocation(line: 1571, column: 41, scope: !1313)
!1318 = !DILocation(line: 1571, column: 48, scope: !1313)
!1319 = !DILocation(line: 1571, column: 31, scope: !1313)
!1320 = !DILocation(line: 1574, column: 8, scope: !1313)
!1321 = !DILocation(line: 1574, column: 62, scope: !1313)
!1322 = !DILocation(line: 1575, column: 8, scope: !1313)
!1323 = !DILocation(line: 1575, column: 15, scope: !1313)
!1324 = !DILocation(line: 1574, column: 7, scope: !1313)
!1325 = !DILocation(line: 1577, column: 5, scope: !1313)
!1326 = !DILocation(line: 1580, column: 9, scope: !1313)
!1327 = !DILocation(line: 1580, column: 16, scope: !1313)
!1328 = !DILocation(line: 1580, column: 23, scope: !1313)
!1329 = !DILocation(line: 1582, column: 25, scope: !1313)
!1330 = !DILocation(line: 1582, column: 32, scope: !1313)
!1331 = !DILocation(line: 1582, column: 11, scope: !1313)
!1332 = !DILocation(line: 1582, column: 40, scope: !1313)
!1333 = !DILocation(line: 1584, column: 30, scope: !1313)
!1334 = !DILocation(line: 1584, column: 37, scope: !1313)
!1335 = !DILocation(line: 1584, column: 13, scope: !1313)
!1336 = !DILocation(line: 1584, column: 45, scope: !1313)
!1337 = !DILocation(line: 1587, column: 11, scope: !1313)
!1338 = !DILocation(line: 1587, column: 18, scope: !1313)
!1339 = !DILocation(line: 1587, column: 28, scope: !1313)
!1340 = !DILocation(line: 1589, column: 11, scope: !1313)
!1341 = !DILocation(line: 1591, column: 7, scope: !1313)
!1342 = !DILocation(line: 1592, column: 5, scope: !1313)
!1343 = !DILocation(line: 1594, column: 24, scope: !1313)
!1344 = !DILocation(line: 1594, column: 5, scope: !1313)
!1345 = !DILocation(line: 1595, column: 3, scope: !1313)
!1346 = !DILocation(line: 1598, column: 8, scope: !1313)
!1347 = !DILocation(line: 1598, column: 62, scope: !1313)
!1348 = !DILocation(line: 1599, column: 8, scope: !1313)
!1349 = !DILocation(line: 1599, column: 16, scope: !1313)
!1350 = !DILocation(line: 1598, column: 7, scope: !1313)
!1351 = !DILocation(line: 1601, column: 5, scope: !1313)
!1352 = !DILocation(line: 1604, column: 9, scope: !1313)
!1353 = !DILocation(line: 1604, column: 16, scope: !1313)
!1354 = !DILocation(line: 1604, column: 23, scope: !1313)
!1355 = !DILocation(line: 1606, column: 25, scope: !1313)
!1356 = !DILocation(line: 1606, column: 32, scope: !1313)
!1357 = !DILocation(line: 1606, column: 11, scope: !1313)
!1358 = !DILocation(line: 1606, column: 40, scope: !1313)
!1359 = !DILocation(line: 1608, column: 30, scope: !1313)
!1360 = !DILocation(line: 1608, column: 37, scope: !1313)
!1361 = !DILocation(line: 1608, column: 13, scope: !1313)
!1362 = !DILocation(line: 1608, column: 45, scope: !1313)
!1363 = !DILocation(line: 1611, column: 11, scope: !1313)
!1364 = !DILocation(line: 1611, column: 18, scope: !1313)
!1365 = !DILocation(line: 1611, column: 28, scope: !1313)
!1366 = !DILocation(line: 1613, column: 11, scope: !1313)
!1367 = !DILocation(line: 1615, column: 7, scope: !1313)
!1368 = !DILocation(line: 1616, column: 5, scope: !1313)
!1369 = !DILocation(line: 1618, column: 24, scope: !1313)
!1370 = !DILocation(line: 1618, column: 5, scope: !1313)
!1371 = !DILocation(line: 1619, column: 3, scope: !1313)
!1372 = !DILocation(line: 1621, column: 3, scope: !1313)
!1373 = !DILocation(line: 1622, column: 1, scope: !1313)
!1374 = distinct !DISubprogram(name: "UART_EndTxTransfer", scope: !1, file: !1, line: 3506, type: !9, scopeLine: 3507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1375 = !DILocation(line: 3509, column: 3, scope: !1374)
!1376 = !DILocation(line: 3510, column: 3, scope: !1374)
!1377 = !DILocation(line: 3513, column: 3, scope: !1374)
!1378 = !DILocation(line: 3513, column: 10, scope: !1374)
!1379 = !DILocation(line: 3513, column: 17, scope: !1374)
!1380 = !DILocation(line: 3514, column: 1, scope: !1374)
!1381 = distinct !DISubprogram(name: "UART_EndRxTransfer", scope: !1, file: !1, line: 3522, type: !9, scopeLine: 3523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1382 = !DILocation(line: 3525, column: 3, scope: !1381)
!1383 = !DILocation(line: 3526, column: 3, scope: !1381)
!1384 = !DILocation(line: 3529, column: 7, scope: !1381)
!1385 = !DILocation(line: 3529, column: 14, scope: !1381)
!1386 = !DILocation(line: 3529, column: 28, scope: !1381)
!1387 = !DILocation(line: 3531, column: 5, scope: !1381)
!1388 = !DILocation(line: 3532, column: 3, scope: !1381)
!1389 = !DILocation(line: 3535, column: 3, scope: !1381)
!1390 = !DILocation(line: 3535, column: 10, scope: !1381)
!1391 = !DILocation(line: 3535, column: 18, scope: !1381)
!1392 = !DILocation(line: 3536, column: 3, scope: !1381)
!1393 = !DILocation(line: 3536, column: 10, scope: !1381)
!1394 = !DILocation(line: 3536, column: 24, scope: !1381)
!1395 = !DILocation(line: 3539, column: 3, scope: !1381)
!1396 = !DILocation(line: 3539, column: 10, scope: !1381)
!1397 = !DILocation(line: 3539, column: 16, scope: !1381)
!1398 = !DILocation(line: 3540, column: 1, scope: !1381)
!1399 = distinct !DISubprogram(name: "HAL_UART_Abort", scope: !1, file: !1, line: 1636, type: !9, scopeLine: 1637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1400 = !DILocation(line: 1639, column: 3, scope: !1399)
!1401 = !DILocation(line: 1640, column: 3, scope: !1399)
!1402 = !DILocation(line: 1643, column: 7, scope: !1399)
!1403 = !DILocation(line: 1643, column: 14, scope: !1399)
!1404 = !DILocation(line: 1643, column: 28, scope: !1399)
!1405 = !DILocation(line: 1645, column: 5, scope: !1399)
!1406 = !DILocation(line: 1646, column: 3, scope: !1399)
!1407 = !DILocation(line: 1649, column: 7, scope: !1399)
!1408 = !DILocation(line: 1651, column: 5, scope: !1399)
!1409 = !DILocation(line: 1654, column: 9, scope: !1399)
!1410 = !DILocation(line: 1654, column: 16, scope: !1399)
!1411 = !DILocation(line: 1654, column: 23, scope: !1399)
!1412 = !DILocation(line: 1658, column: 7, scope: !1399)
!1413 = !DILocation(line: 1658, column: 14, scope: !1399)
!1414 = !DILocation(line: 1658, column: 22, scope: !1399)
!1415 = !DILocation(line: 1658, column: 40, scope: !1399)
!1416 = !DILocation(line: 1660, column: 25, scope: !1399)
!1417 = !DILocation(line: 1660, column: 32, scope: !1399)
!1418 = !DILocation(line: 1660, column: 11, scope: !1399)
!1419 = !DILocation(line: 1660, column: 40, scope: !1399)
!1420 = !DILocation(line: 1662, column: 30, scope: !1399)
!1421 = !DILocation(line: 1662, column: 37, scope: !1399)
!1422 = !DILocation(line: 1662, column: 13, scope: !1399)
!1423 = !DILocation(line: 1662, column: 45, scope: !1399)
!1424 = !DILocation(line: 1665, column: 11, scope: !1399)
!1425 = !DILocation(line: 1665, column: 18, scope: !1399)
!1426 = !DILocation(line: 1665, column: 28, scope: !1399)
!1427 = !DILocation(line: 1667, column: 11, scope: !1399)
!1428 = !DILocation(line: 1669, column: 7, scope: !1399)
!1429 = !DILocation(line: 1670, column: 5, scope: !1399)
!1430 = !DILocation(line: 1671, column: 3, scope: !1399)
!1431 = !DILocation(line: 1674, column: 7, scope: !1399)
!1432 = !DILocation(line: 1676, column: 5, scope: !1399)
!1433 = !DILocation(line: 1679, column: 9, scope: !1399)
!1434 = !DILocation(line: 1679, column: 16, scope: !1399)
!1435 = !DILocation(line: 1679, column: 23, scope: !1399)
!1436 = !DILocation(line: 1683, column: 7, scope: !1399)
!1437 = !DILocation(line: 1683, column: 14, scope: !1399)
!1438 = !DILocation(line: 1683, column: 22, scope: !1399)
!1439 = !DILocation(line: 1683, column: 40, scope: !1399)
!1440 = !DILocation(line: 1685, column: 25, scope: !1399)
!1441 = !DILocation(line: 1685, column: 32, scope: !1399)
!1442 = !DILocation(line: 1685, column: 11, scope: !1399)
!1443 = !DILocation(line: 1685, column: 40, scope: !1399)
!1444 = !DILocation(line: 1687, column: 30, scope: !1399)
!1445 = !DILocation(line: 1687, column: 37, scope: !1399)
!1446 = !DILocation(line: 1687, column: 13, scope: !1399)
!1447 = !DILocation(line: 1687, column: 45, scope: !1399)
!1448 = !DILocation(line: 1690, column: 11, scope: !1399)
!1449 = !DILocation(line: 1690, column: 18, scope: !1399)
!1450 = !DILocation(line: 1690, column: 28, scope: !1399)
!1451 = !DILocation(line: 1692, column: 11, scope: !1399)
!1452 = !DILocation(line: 1694, column: 7, scope: !1399)
!1453 = !DILocation(line: 1695, column: 5, scope: !1399)
!1454 = !DILocation(line: 1696, column: 3, scope: !1399)
!1455 = !DILocation(line: 1699, column: 3, scope: !1399)
!1456 = !DILocation(line: 1699, column: 10, scope: !1399)
!1457 = !DILocation(line: 1699, column: 22, scope: !1399)
!1458 = !DILocation(line: 1700, column: 3, scope: !1399)
!1459 = !DILocation(line: 1700, column: 10, scope: !1399)
!1460 = !DILocation(line: 1700, column: 22, scope: !1399)
!1461 = !DILocation(line: 1703, column: 3, scope: !1399)
!1462 = !DILocation(line: 1706, column: 7, scope: !1399)
!1463 = !DILocation(line: 1706, column: 14, scope: !1399)
!1464 = !DILocation(line: 1706, column: 23, scope: !1399)
!1465 = !DILocation(line: 1708, column: 5, scope: !1399)
!1466 = !DILocation(line: 1709, column: 3, scope: !1399)
!1467 = !DILocation(line: 1712, column: 3, scope: !1399)
!1468 = !DILocation(line: 1715, column: 3, scope: !1399)
!1469 = !DILocation(line: 1715, column: 10, scope: !1399)
!1470 = !DILocation(line: 1715, column: 18, scope: !1399)
!1471 = !DILocation(line: 1716, column: 3, scope: !1399)
!1472 = !DILocation(line: 1716, column: 10, scope: !1399)
!1473 = !DILocation(line: 1716, column: 18, scope: !1399)
!1474 = !DILocation(line: 1717, column: 3, scope: !1399)
!1475 = !DILocation(line: 1717, column: 10, scope: !1399)
!1476 = !DILocation(line: 1717, column: 24, scope: !1399)
!1477 = !DILocation(line: 1719, column: 3, scope: !1399)
!1478 = !DILocation(line: 1719, column: 10, scope: !1399)
!1479 = !DILocation(line: 1719, column: 20, scope: !1399)
!1480 = !DILocation(line: 1721, column: 3, scope: !1399)
!1481 = !DILocation(line: 1722, column: 1, scope: !1399)
!1482 = distinct !DISubprogram(name: "HAL_UART_AbortTransmit", scope: !1, file: !1, line: 1736, type: !9, scopeLine: 1737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1483 = !DILocation(line: 1739, column: 3, scope: !1482)
!1484 = !DILocation(line: 1740, column: 3, scope: !1482)
!1485 = !DILocation(line: 1743, column: 7, scope: !1482)
!1486 = !DILocation(line: 1745, column: 5, scope: !1482)
!1487 = !DILocation(line: 1748, column: 9, scope: !1482)
!1488 = !DILocation(line: 1748, column: 16, scope: !1482)
!1489 = !DILocation(line: 1748, column: 23, scope: !1482)
!1490 = !DILocation(line: 1752, column: 7, scope: !1482)
!1491 = !DILocation(line: 1752, column: 14, scope: !1482)
!1492 = !DILocation(line: 1752, column: 22, scope: !1482)
!1493 = !DILocation(line: 1752, column: 40, scope: !1482)
!1494 = !DILocation(line: 1754, column: 25, scope: !1482)
!1495 = !DILocation(line: 1754, column: 32, scope: !1482)
!1496 = !DILocation(line: 1754, column: 11, scope: !1482)
!1497 = !DILocation(line: 1754, column: 40, scope: !1482)
!1498 = !DILocation(line: 1756, column: 30, scope: !1482)
!1499 = !DILocation(line: 1756, column: 37, scope: !1482)
!1500 = !DILocation(line: 1756, column: 13, scope: !1482)
!1501 = !DILocation(line: 1756, column: 45, scope: !1482)
!1502 = !DILocation(line: 1759, column: 11, scope: !1482)
!1503 = !DILocation(line: 1759, column: 18, scope: !1482)
!1504 = !DILocation(line: 1759, column: 28, scope: !1482)
!1505 = !DILocation(line: 1761, column: 11, scope: !1482)
!1506 = !DILocation(line: 1763, column: 7, scope: !1482)
!1507 = !DILocation(line: 1764, column: 5, scope: !1482)
!1508 = !DILocation(line: 1765, column: 3, scope: !1482)
!1509 = !DILocation(line: 1768, column: 3, scope: !1482)
!1510 = !DILocation(line: 1768, column: 10, scope: !1482)
!1511 = !DILocation(line: 1768, column: 22, scope: !1482)
!1512 = !DILocation(line: 1771, column: 7, scope: !1482)
!1513 = !DILocation(line: 1771, column: 14, scope: !1482)
!1514 = !DILocation(line: 1771, column: 23, scope: !1482)
!1515 = !DILocation(line: 1773, column: 5, scope: !1482)
!1516 = !DILocation(line: 1774, column: 3, scope: !1482)
!1517 = !DILocation(line: 1777, column: 3, scope: !1482)
!1518 = !DILocation(line: 1777, column: 10, scope: !1482)
!1519 = !DILocation(line: 1777, column: 17, scope: !1482)
!1520 = !DILocation(line: 1779, column: 3, scope: !1482)
!1521 = !DILocation(line: 1780, column: 1, scope: !1482)
!1522 = distinct !DISubprogram(name: "HAL_UART_AbortReceive", scope: !1, file: !1, line: 1794, type: !9, scopeLine: 1795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1523 = !DILocation(line: 1797, column: 3, scope: !1522)
!1524 = !DILocation(line: 1798, column: 3, scope: !1522)
!1525 = !DILocation(line: 1801, column: 7, scope: !1522)
!1526 = !DILocation(line: 1801, column: 14, scope: !1522)
!1527 = !DILocation(line: 1801, column: 28, scope: !1522)
!1528 = !DILocation(line: 1803, column: 5, scope: !1522)
!1529 = !DILocation(line: 1804, column: 3, scope: !1522)
!1530 = !DILocation(line: 1807, column: 7, scope: !1522)
!1531 = !DILocation(line: 1809, column: 5, scope: !1522)
!1532 = !DILocation(line: 1812, column: 9, scope: !1522)
!1533 = !DILocation(line: 1812, column: 16, scope: !1522)
!1534 = !DILocation(line: 1812, column: 23, scope: !1522)
!1535 = !DILocation(line: 1816, column: 7, scope: !1522)
!1536 = !DILocation(line: 1816, column: 14, scope: !1522)
!1537 = !DILocation(line: 1816, column: 22, scope: !1522)
!1538 = !DILocation(line: 1816, column: 40, scope: !1522)
!1539 = !DILocation(line: 1818, column: 25, scope: !1522)
!1540 = !DILocation(line: 1818, column: 32, scope: !1522)
!1541 = !DILocation(line: 1818, column: 11, scope: !1522)
!1542 = !DILocation(line: 1818, column: 40, scope: !1522)
!1543 = !DILocation(line: 1820, column: 30, scope: !1522)
!1544 = !DILocation(line: 1820, column: 37, scope: !1522)
!1545 = !DILocation(line: 1820, column: 13, scope: !1522)
!1546 = !DILocation(line: 1820, column: 45, scope: !1522)
!1547 = !DILocation(line: 1823, column: 11, scope: !1522)
!1548 = !DILocation(line: 1823, column: 18, scope: !1522)
!1549 = !DILocation(line: 1823, column: 28, scope: !1522)
!1550 = !DILocation(line: 1825, column: 11, scope: !1522)
!1551 = !DILocation(line: 1827, column: 7, scope: !1522)
!1552 = !DILocation(line: 1828, column: 5, scope: !1522)
!1553 = !DILocation(line: 1829, column: 3, scope: !1522)
!1554 = !DILocation(line: 1832, column: 3, scope: !1522)
!1555 = !DILocation(line: 1832, column: 10, scope: !1522)
!1556 = !DILocation(line: 1832, column: 22, scope: !1522)
!1557 = !DILocation(line: 1835, column: 3, scope: !1522)
!1558 = !DILocation(line: 1838, column: 3, scope: !1522)
!1559 = !DILocation(line: 1841, column: 3, scope: !1522)
!1560 = !DILocation(line: 1841, column: 10, scope: !1522)
!1561 = !DILocation(line: 1841, column: 18, scope: !1522)
!1562 = !DILocation(line: 1842, column: 3, scope: !1522)
!1563 = !DILocation(line: 1842, column: 10, scope: !1522)
!1564 = !DILocation(line: 1842, column: 24, scope: !1522)
!1565 = !DILocation(line: 1844, column: 3, scope: !1522)
!1566 = !DILocation(line: 1845, column: 1, scope: !1522)
!1567 = distinct !DISubprogram(name: "HAL_UART_Abort_IT", scope: !1, file: !1, line: 1861, type: !9, scopeLine: 1862, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1568 = !DILocation(line: 1863, column: 12, scope: !1567)
!1569 = !DILocation(line: 1866, column: 3, scope: !1567)
!1570 = !DILocation(line: 1867, column: 3, scope: !1567)
!1571 = !DILocation(line: 1870, column: 7, scope: !1567)
!1572 = !DILocation(line: 1870, column: 14, scope: !1567)
!1573 = !DILocation(line: 1870, column: 28, scope: !1567)
!1574 = !DILocation(line: 1872, column: 5, scope: !1567)
!1575 = !DILocation(line: 1873, column: 3, scope: !1567)
!1576 = !DILocation(line: 1878, column: 7, scope: !1567)
!1577 = !DILocation(line: 1878, column: 14, scope: !1567)
!1578 = !DILocation(line: 1878, column: 21, scope: !1567)
!1579 = !DILocation(line: 1882, column: 9, scope: !1567)
!1580 = !DILocation(line: 1884, column: 7, scope: !1567)
!1581 = !DILocation(line: 1884, column: 14, scope: !1567)
!1582 = !DILocation(line: 1884, column: 22, scope: !1567)
!1583 = !DILocation(line: 1884, column: 40, scope: !1567)
!1584 = !DILocation(line: 1885, column: 5, scope: !1567)
!1585 = !DILocation(line: 1888, column: 7, scope: !1567)
!1586 = !DILocation(line: 1888, column: 14, scope: !1567)
!1587 = !DILocation(line: 1888, column: 22, scope: !1567)
!1588 = !DILocation(line: 1888, column: 40, scope: !1567)
!1589 = !DILocation(line: 1890, column: 3, scope: !1567)
!1590 = !DILocation(line: 1892, column: 7, scope: !1567)
!1591 = !DILocation(line: 1892, column: 14, scope: !1567)
!1592 = !DILocation(line: 1892, column: 21, scope: !1567)
!1593 = !DILocation(line: 1896, column: 9, scope: !1567)
!1594 = !DILocation(line: 1898, column: 7, scope: !1567)
!1595 = !DILocation(line: 1898, column: 14, scope: !1567)
!1596 = !DILocation(line: 1898, column: 22, scope: !1567)
!1597 = !DILocation(line: 1898, column: 40, scope: !1567)
!1598 = !DILocation(line: 1899, column: 5, scope: !1567)
!1599 = !DILocation(line: 1902, column: 7, scope: !1567)
!1600 = !DILocation(line: 1902, column: 14, scope: !1567)
!1601 = !DILocation(line: 1902, column: 22, scope: !1567)
!1602 = !DILocation(line: 1902, column: 40, scope: !1567)
!1603 = !DILocation(line: 1904, column: 3, scope: !1567)
!1604 = !DILocation(line: 1907, column: 7, scope: !1567)
!1605 = !DILocation(line: 1910, column: 5, scope: !1567)
!1606 = !DILocation(line: 1913, column: 9, scope: !1567)
!1607 = !DILocation(line: 1913, column: 16, scope: !1567)
!1608 = !DILocation(line: 1913, column: 23, scope: !1567)
!1609 = !DILocation(line: 1919, column: 28, scope: !1567)
!1610 = !DILocation(line: 1919, column: 35, scope: !1567)
!1611 = !DILocation(line: 1919, column: 11, scope: !1567)
!1612 = !DILocation(line: 1919, column: 43, scope: !1567)
!1613 = !DILocation(line: 1921, column: 9, scope: !1567)
!1614 = !DILocation(line: 1921, column: 16, scope: !1567)
!1615 = !DILocation(line: 1921, column: 24, scope: !1567)
!1616 = !DILocation(line: 1921, column: 42, scope: !1567)
!1617 = !DILocation(line: 1922, column: 7, scope: !1567)
!1618 = !DILocation(line: 1925, column: 19, scope: !1567)
!1619 = !DILocation(line: 1927, column: 5, scope: !1567)
!1620 = !DILocation(line: 1928, column: 3, scope: !1567)
!1621 = !DILocation(line: 1931, column: 7, scope: !1567)
!1622 = !DILocation(line: 1933, column: 5, scope: !1567)
!1623 = !DILocation(line: 1936, column: 9, scope: !1567)
!1624 = !DILocation(line: 1936, column: 16, scope: !1567)
!1625 = !DILocation(line: 1936, column: 23, scope: !1567)
!1626 = !DILocation(line: 1942, column: 28, scope: !1567)
!1627 = !DILocation(line: 1942, column: 35, scope: !1567)
!1628 = !DILocation(line: 1942, column: 11, scope: !1567)
!1629 = !DILocation(line: 1942, column: 43, scope: !1567)
!1630 = !DILocation(line: 1944, column: 9, scope: !1567)
!1631 = !DILocation(line: 1944, column: 16, scope: !1567)
!1632 = !DILocation(line: 1944, column: 24, scope: !1567)
!1633 = !DILocation(line: 1944, column: 42, scope: !1567)
!1634 = !DILocation(line: 1945, column: 19, scope: !1567)
!1635 = !DILocation(line: 1946, column: 7, scope: !1567)
!1636 = !DILocation(line: 1949, column: 19, scope: !1567)
!1637 = !DILocation(line: 1951, column: 5, scope: !1567)
!1638 = !DILocation(line: 1952, column: 3, scope: !1567)
!1639 = !DILocation(line: 1955, column: 7, scope: !1567)
!1640 = !DILocation(line: 1955, column: 17, scope: !1567)
!1641 = !DILocation(line: 1958, column: 5, scope: !1567)
!1642 = !DILocation(line: 1958, column: 12, scope: !1567)
!1643 = !DILocation(line: 1958, column: 24, scope: !1567)
!1644 = !DILocation(line: 1959, column: 5, scope: !1567)
!1645 = !DILocation(line: 1959, column: 12, scope: !1567)
!1646 = !DILocation(line: 1959, column: 24, scope: !1567)
!1647 = !DILocation(line: 1962, column: 5, scope: !1567)
!1648 = !DILocation(line: 1962, column: 12, scope: !1567)
!1649 = !DILocation(line: 1962, column: 18, scope: !1567)
!1650 = !DILocation(line: 1963, column: 5, scope: !1567)
!1651 = !DILocation(line: 1963, column: 12, scope: !1567)
!1652 = !DILocation(line: 1963, column: 18, scope: !1567)
!1653 = !DILocation(line: 1966, column: 5, scope: !1567)
!1654 = !DILocation(line: 1966, column: 12, scope: !1567)
!1655 = !DILocation(line: 1966, column: 22, scope: !1567)
!1656 = !DILocation(line: 1969, column: 5, scope: !1567)
!1657 = !DILocation(line: 1972, column: 9, scope: !1567)
!1658 = !DILocation(line: 1972, column: 16, scope: !1567)
!1659 = !DILocation(line: 1972, column: 25, scope: !1567)
!1660 = !DILocation(line: 1974, column: 7, scope: !1567)
!1661 = !DILocation(line: 1975, column: 5, scope: !1567)
!1662 = !DILocation(line: 1978, column: 5, scope: !1567)
!1663 = !DILocation(line: 1981, column: 5, scope: !1567)
!1664 = !DILocation(line: 1981, column: 12, scope: !1567)
!1665 = !DILocation(line: 1981, column: 20, scope: !1567)
!1666 = !DILocation(line: 1982, column: 5, scope: !1567)
!1667 = !DILocation(line: 1982, column: 12, scope: !1567)
!1668 = !DILocation(line: 1982, column: 20, scope: !1567)
!1669 = !DILocation(line: 1983, column: 5, scope: !1567)
!1670 = !DILocation(line: 1983, column: 12, scope: !1567)
!1671 = !DILocation(line: 1983, column: 26, scope: !1567)
!1672 = !DILocation(line: 1991, column: 32, scope: !1567)
!1673 = !DILocation(line: 1991, column: 5, scope: !1567)
!1674 = !DILocation(line: 1993, column: 3, scope: !1567)
!1675 = !DILocation(line: 1995, column: 3, scope: !1567)
!1676 = distinct !DISubprogram(name: "UART_DMATxAbortCallback", scope: !1, file: !1, line: 3754, type: !9, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1677 = !DILocation(line: 3756, column: 54, scope: !1676)
!1678 = !DILocation(line: 3756, column: 60, scope: !1676)
!1679 = !DILocation(line: 3756, column: 31, scope: !1676)
!1680 = !DILocation(line: 3756, column: 23, scope: !1676)
!1681 = !DILocation(line: 3758, column: 3, scope: !1676)
!1682 = !DILocation(line: 3758, column: 10, scope: !1676)
!1683 = !DILocation(line: 3758, column: 18, scope: !1676)
!1684 = !DILocation(line: 3758, column: 36, scope: !1676)
!1685 = !DILocation(line: 3761, column: 7, scope: !1676)
!1686 = !DILocation(line: 3761, column: 14, scope: !1676)
!1687 = !DILocation(line: 3761, column: 21, scope: !1676)
!1688 = !DILocation(line: 3763, column: 9, scope: !1676)
!1689 = !DILocation(line: 3763, column: 16, scope: !1676)
!1690 = !DILocation(line: 3763, column: 24, scope: !1676)
!1691 = !DILocation(line: 3763, column: 42, scope: !1676)
!1692 = !DILocation(line: 3765, column: 7, scope: !1676)
!1693 = !DILocation(line: 3767, column: 3, scope: !1676)
!1694 = !DILocation(line: 3770, column: 3, scope: !1676)
!1695 = !DILocation(line: 3770, column: 10, scope: !1676)
!1696 = !DILocation(line: 3770, column: 22, scope: !1676)
!1697 = !DILocation(line: 3771, column: 3, scope: !1676)
!1698 = !DILocation(line: 3771, column: 10, scope: !1676)
!1699 = !DILocation(line: 3771, column: 22, scope: !1676)
!1700 = !DILocation(line: 3774, column: 3, scope: !1676)
!1701 = !DILocation(line: 3774, column: 10, scope: !1676)
!1702 = !DILocation(line: 3774, column: 20, scope: !1676)
!1703 = !DILocation(line: 3777, column: 3, scope: !1676)
!1704 = !DILocation(line: 3780, column: 7, scope: !1676)
!1705 = !DILocation(line: 3780, column: 14, scope: !1676)
!1706 = !DILocation(line: 3780, column: 23, scope: !1676)
!1707 = !DILocation(line: 3782, column: 5, scope: !1676)
!1708 = !DILocation(line: 3783, column: 3, scope: !1676)
!1709 = !DILocation(line: 3786, column: 3, scope: !1676)
!1710 = !DILocation(line: 3786, column: 10, scope: !1676)
!1711 = !DILocation(line: 3786, column: 18, scope: !1676)
!1712 = !DILocation(line: 3787, column: 3, scope: !1676)
!1713 = !DILocation(line: 3787, column: 10, scope: !1676)
!1714 = !DILocation(line: 3787, column: 18, scope: !1676)
!1715 = !DILocation(line: 3788, column: 3, scope: !1676)
!1716 = !DILocation(line: 3788, column: 10, scope: !1676)
!1717 = !DILocation(line: 3788, column: 24, scope: !1676)
!1718 = !DILocation(line: 3796, column: 30, scope: !1676)
!1719 = !DILocation(line: 3796, column: 3, scope: !1676)
!1720 = !DILocation(line: 3798, column: 1, scope: !1676)
!1721 = distinct !DISubprogram(name: "UART_DMARxAbortCallback", scope: !1, file: !1, line: 3809, type: !9, scopeLine: 3810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1722 = !DILocation(line: 3811, column: 54, scope: !1721)
!1723 = !DILocation(line: 3811, column: 60, scope: !1721)
!1724 = !DILocation(line: 3811, column: 31, scope: !1721)
!1725 = !DILocation(line: 3811, column: 23, scope: !1721)
!1726 = !DILocation(line: 3813, column: 3, scope: !1721)
!1727 = !DILocation(line: 3813, column: 10, scope: !1721)
!1728 = !DILocation(line: 3813, column: 18, scope: !1721)
!1729 = !DILocation(line: 3813, column: 36, scope: !1721)
!1730 = !DILocation(line: 3816, column: 7, scope: !1721)
!1731 = !DILocation(line: 3816, column: 14, scope: !1721)
!1732 = !DILocation(line: 3816, column: 21, scope: !1721)
!1733 = !DILocation(line: 3818, column: 9, scope: !1721)
!1734 = !DILocation(line: 3818, column: 16, scope: !1721)
!1735 = !DILocation(line: 3818, column: 24, scope: !1721)
!1736 = !DILocation(line: 3818, column: 42, scope: !1721)
!1737 = !DILocation(line: 3820, column: 7, scope: !1721)
!1738 = !DILocation(line: 3822, column: 3, scope: !1721)
!1739 = !DILocation(line: 3825, column: 3, scope: !1721)
!1740 = !DILocation(line: 3825, column: 10, scope: !1721)
!1741 = !DILocation(line: 3825, column: 22, scope: !1721)
!1742 = !DILocation(line: 3826, column: 3, scope: !1721)
!1743 = !DILocation(line: 3826, column: 10, scope: !1721)
!1744 = !DILocation(line: 3826, column: 22, scope: !1721)
!1745 = !DILocation(line: 3829, column: 3, scope: !1721)
!1746 = !DILocation(line: 3829, column: 10, scope: !1721)
!1747 = !DILocation(line: 3829, column: 20, scope: !1721)
!1748 = !DILocation(line: 3832, column: 3, scope: !1721)
!1749 = !DILocation(line: 3835, column: 3, scope: !1721)
!1750 = !DILocation(line: 3838, column: 3, scope: !1721)
!1751 = !DILocation(line: 3838, column: 10, scope: !1721)
!1752 = !DILocation(line: 3838, column: 18, scope: !1721)
!1753 = !DILocation(line: 3839, column: 3, scope: !1721)
!1754 = !DILocation(line: 3839, column: 10, scope: !1721)
!1755 = !DILocation(line: 3839, column: 18, scope: !1721)
!1756 = !DILocation(line: 3840, column: 3, scope: !1721)
!1757 = !DILocation(line: 3840, column: 10, scope: !1721)
!1758 = !DILocation(line: 3840, column: 24, scope: !1721)
!1759 = !DILocation(line: 3848, column: 30, scope: !1721)
!1760 = !DILocation(line: 3848, column: 3, scope: !1721)
!1761 = !DILocation(line: 3850, column: 1, scope: !1721)
!1762 = distinct !DISubprogram(name: "HAL_UART_AbortCpltCallback", scope: !1, file: !1, line: 2588, type: !9, scopeLine: 2589, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1763 = !DILocation(line: 2591, column: 3, scope: !1762)
!1764 = !DILocation(line: 2596, column: 1, scope: !1762)
!1765 = distinct !DISubprogram(name: "HAL_UART_AbortTransmit_IT", scope: !1, file: !1, line: 2012, type: !9, scopeLine: 2013, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1766 = !DILocation(line: 2015, column: 3, scope: !1765)
!1767 = !DILocation(line: 2016, column: 3, scope: !1765)
!1768 = !DILocation(line: 2019, column: 7, scope: !1765)
!1769 = !DILocation(line: 2021, column: 5, scope: !1765)
!1770 = !DILocation(line: 2024, column: 9, scope: !1765)
!1771 = !DILocation(line: 2024, column: 16, scope: !1765)
!1772 = !DILocation(line: 2024, column: 23, scope: !1765)
!1773 = !DILocation(line: 2028, column: 7, scope: !1765)
!1774 = !DILocation(line: 2028, column: 14, scope: !1765)
!1775 = !DILocation(line: 2028, column: 22, scope: !1765)
!1776 = !DILocation(line: 2028, column: 40, scope: !1765)
!1777 = !DILocation(line: 2031, column: 28, scope: !1765)
!1778 = !DILocation(line: 2031, column: 35, scope: !1765)
!1779 = !DILocation(line: 2031, column: 11, scope: !1765)
!1780 = !DILocation(line: 2031, column: 43, scope: !1765)
!1781 = !DILocation(line: 2034, column: 9, scope: !1765)
!1782 = !DILocation(line: 2034, column: 16, scope: !1765)
!1783 = !DILocation(line: 2034, column: 24, scope: !1765)
!1784 = !DILocation(line: 2034, column: 42, scope: !1765)
!1785 = !DILocation(line: 2034, column: 49, scope: !1765)
!1786 = !DILocation(line: 2035, column: 7, scope: !1765)
!1787 = !DILocation(line: 2036, column: 5, scope: !1765)
!1788 = !DILocation(line: 2040, column: 7, scope: !1765)
!1789 = !DILocation(line: 2040, column: 14, scope: !1765)
!1790 = !DILocation(line: 2040, column: 26, scope: !1765)
!1791 = !DILocation(line: 2043, column: 7, scope: !1765)
!1792 = !DILocation(line: 2043, column: 14, scope: !1765)
!1793 = !DILocation(line: 2043, column: 20, scope: !1765)
!1794 = !DILocation(line: 2046, column: 7, scope: !1765)
!1795 = !DILocation(line: 2046, column: 14, scope: !1765)
!1796 = !DILocation(line: 2046, column: 21, scope: !1765)
!1797 = !DILocation(line: 2054, column: 42, scope: !1765)
!1798 = !DILocation(line: 2054, column: 7, scope: !1765)
!1799 = !DILocation(line: 2057, column: 3, scope: !1765)
!1800 = !DILocation(line: 2061, column: 5, scope: !1765)
!1801 = !DILocation(line: 2061, column: 12, scope: !1765)
!1802 = !DILocation(line: 2061, column: 24, scope: !1765)
!1803 = !DILocation(line: 2064, column: 5, scope: !1765)
!1804 = !DILocation(line: 2064, column: 12, scope: !1765)
!1805 = !DILocation(line: 2064, column: 18, scope: !1765)
!1806 = !DILocation(line: 2067, column: 9, scope: !1765)
!1807 = !DILocation(line: 2067, column: 16, scope: !1765)
!1808 = !DILocation(line: 2067, column: 25, scope: !1765)
!1809 = !DILocation(line: 2069, column: 7, scope: !1765)
!1810 = !DILocation(line: 2070, column: 5, scope: !1765)
!1811 = !DILocation(line: 2073, column: 5, scope: !1765)
!1812 = !DILocation(line: 2073, column: 12, scope: !1765)
!1813 = !DILocation(line: 2073, column: 19, scope: !1765)
!1814 = !DILocation(line: 2081, column: 40, scope: !1765)
!1815 = !DILocation(line: 2081, column: 5, scope: !1765)
!1816 = !DILocation(line: 2085, column: 3, scope: !1765)
!1817 = distinct !DISubprogram(name: "UART_DMATxOnlyAbortCallback", scope: !1, file: !1, line: 3861, type: !9, scopeLine: 3862, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1818 = !DILocation(line: 3863, column: 54, scope: !1817)
!1819 = !DILocation(line: 3863, column: 60, scope: !1817)
!1820 = !DILocation(line: 3863, column: 31, scope: !1817)
!1821 = !DILocation(line: 3863, column: 23, scope: !1817)
!1822 = !DILocation(line: 3865, column: 3, scope: !1817)
!1823 = !DILocation(line: 3865, column: 10, scope: !1817)
!1824 = !DILocation(line: 3865, column: 22, scope: !1817)
!1825 = !DILocation(line: 3868, column: 7, scope: !1817)
!1826 = !DILocation(line: 3868, column: 14, scope: !1817)
!1827 = !DILocation(line: 3868, column: 23, scope: !1817)
!1828 = !DILocation(line: 3870, column: 5, scope: !1817)
!1829 = !DILocation(line: 3871, column: 3, scope: !1817)
!1830 = !DILocation(line: 3874, column: 3, scope: !1817)
!1831 = !DILocation(line: 3874, column: 10, scope: !1817)
!1832 = !DILocation(line: 3874, column: 17, scope: !1817)
!1833 = !DILocation(line: 3882, column: 38, scope: !1817)
!1834 = !DILocation(line: 3882, column: 3, scope: !1817)
!1835 = !DILocation(line: 3884, column: 1, scope: !1817)
!1836 = distinct !DISubprogram(name: "HAL_UART_AbortTransmitCpltCallback", scope: !1, file: !1, line: 2603, type: !9, scopeLine: 2604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1837 = !DILocation(line: 2606, column: 3, scope: !1836)
!1838 = !DILocation(line: 2611, column: 1, scope: !1836)
!1839 = distinct !DISubprogram(name: "HAL_UART_AbortReceive_IT", scope: !1, file: !1, line: 2102, type: !9, scopeLine: 2103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1840 = !DILocation(line: 2105, column: 3, scope: !1839)
!1841 = !DILocation(line: 2106, column: 3, scope: !1839)
!1842 = !DILocation(line: 2109, column: 7, scope: !1839)
!1843 = !DILocation(line: 2109, column: 14, scope: !1839)
!1844 = !DILocation(line: 2109, column: 28, scope: !1839)
!1845 = !DILocation(line: 2111, column: 5, scope: !1839)
!1846 = !DILocation(line: 2112, column: 3, scope: !1839)
!1847 = !DILocation(line: 2115, column: 7, scope: !1839)
!1848 = !DILocation(line: 2117, column: 5, scope: !1839)
!1849 = !DILocation(line: 2120, column: 9, scope: !1839)
!1850 = !DILocation(line: 2120, column: 16, scope: !1839)
!1851 = !DILocation(line: 2120, column: 23, scope: !1839)
!1852 = !DILocation(line: 2124, column: 7, scope: !1839)
!1853 = !DILocation(line: 2124, column: 14, scope: !1839)
!1854 = !DILocation(line: 2124, column: 22, scope: !1839)
!1855 = !DILocation(line: 2124, column: 40, scope: !1839)
!1856 = !DILocation(line: 2127, column: 28, scope: !1839)
!1857 = !DILocation(line: 2127, column: 35, scope: !1839)
!1858 = !DILocation(line: 2127, column: 11, scope: !1839)
!1859 = !DILocation(line: 2127, column: 43, scope: !1839)
!1860 = !DILocation(line: 2130, column: 9, scope: !1839)
!1861 = !DILocation(line: 2130, column: 16, scope: !1839)
!1862 = !DILocation(line: 2130, column: 24, scope: !1839)
!1863 = !DILocation(line: 2130, column: 42, scope: !1839)
!1864 = !DILocation(line: 2130, column: 49, scope: !1839)
!1865 = !DILocation(line: 2131, column: 7, scope: !1839)
!1866 = !DILocation(line: 2132, column: 5, scope: !1839)
!1867 = !DILocation(line: 2136, column: 7, scope: !1839)
!1868 = !DILocation(line: 2136, column: 14, scope: !1839)
!1869 = !DILocation(line: 2136, column: 26, scope: !1839)
!1870 = !DILocation(line: 2139, column: 7, scope: !1839)
!1871 = !DILocation(line: 2139, column: 14, scope: !1839)
!1872 = !DILocation(line: 2139, column: 25, scope: !1839)
!1873 = !DILocation(line: 2142, column: 7, scope: !1839)
!1874 = !DILocation(line: 2145, column: 7, scope: !1839)
!1875 = !DILocation(line: 2148, column: 7, scope: !1839)
!1876 = !DILocation(line: 2148, column: 14, scope: !1839)
!1877 = !DILocation(line: 2148, column: 22, scope: !1839)
!1878 = !DILocation(line: 2149, column: 7, scope: !1839)
!1879 = !DILocation(line: 2149, column: 14, scope: !1839)
!1880 = !DILocation(line: 2149, column: 28, scope: !1839)
!1881 = !DILocation(line: 2157, column: 41, scope: !1839)
!1882 = !DILocation(line: 2157, column: 7, scope: !1839)
!1883 = !DILocation(line: 2160, column: 3, scope: !1839)
!1884 = !DILocation(line: 2164, column: 5, scope: !1839)
!1885 = !DILocation(line: 2164, column: 12, scope: !1839)
!1886 = !DILocation(line: 2164, column: 24, scope: !1839)
!1887 = !DILocation(line: 2167, column: 5, scope: !1839)
!1888 = !DILocation(line: 2167, column: 12, scope: !1839)
!1889 = !DILocation(line: 2167, column: 23, scope: !1839)
!1890 = !DILocation(line: 2170, column: 5, scope: !1839)
!1891 = !DILocation(line: 2173, column: 5, scope: !1839)
!1892 = !DILocation(line: 2173, column: 12, scope: !1839)
!1893 = !DILocation(line: 2173, column: 20, scope: !1839)
!1894 = !DILocation(line: 2174, column: 5, scope: !1839)
!1895 = !DILocation(line: 2174, column: 12, scope: !1839)
!1896 = !DILocation(line: 2174, column: 26, scope: !1839)
!1897 = !DILocation(line: 2182, column: 39, scope: !1839)
!1898 = !DILocation(line: 2182, column: 5, scope: !1839)
!1899 = !DILocation(line: 2186, column: 3, scope: !1839)
!1900 = distinct !DISubprogram(name: "UART_DMARxOnlyAbortCallback", scope: !1, file: !1, line: 3894, type: !9, scopeLine: 3895, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1901 = !DILocation(line: 3896, column: 75, scope: !1900)
!1902 = !DILocation(line: 3896, column: 82, scope: !1900)
!1903 = !DILocation(line: 3896, column: 31, scope: !1900)
!1904 = !DILocation(line: 3896, column: 23, scope: !1900)
!1905 = !DILocation(line: 3898, column: 3, scope: !1900)
!1906 = !DILocation(line: 3898, column: 10, scope: !1900)
!1907 = !DILocation(line: 3898, column: 22, scope: !1900)
!1908 = !DILocation(line: 3901, column: 3, scope: !1900)
!1909 = !DILocation(line: 3904, column: 3, scope: !1900)
!1910 = !DILocation(line: 3907, column: 3, scope: !1900)
!1911 = !DILocation(line: 3907, column: 10, scope: !1900)
!1912 = !DILocation(line: 3907, column: 18, scope: !1900)
!1913 = !DILocation(line: 3908, column: 3, scope: !1900)
!1914 = !DILocation(line: 3908, column: 10, scope: !1900)
!1915 = !DILocation(line: 3908, column: 24, scope: !1900)
!1916 = !DILocation(line: 3916, column: 37, scope: !1900)
!1917 = !DILocation(line: 3916, column: 3, scope: !1900)
!1918 = !DILocation(line: 3918, column: 1, scope: !1900)
!1919 = distinct !DISubprogram(name: "HAL_UART_AbortReceiveCpltCallback", scope: !1, file: !1, line: 2618, type: !9, scopeLine: 2619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1920 = !DILocation(line: 2621, column: 3, scope: !1919)
!1921 = !DILocation(line: 2626, column: 1, scope: !1919)
!1922 = distinct !DISubprogram(name: "HAL_UART_IRQHandler", scope: !1, file: !1, line: 2194, type: !9, scopeLine: 2195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1923 = !DILocation(line: 2196, column: 25, scope: !1922)
!1924 = !DILocation(line: 2196, column: 12, scope: !1922)
!1925 = !DILocation(line: 2197, column: 25, scope: !1922)
!1926 = !DILocation(line: 2197, column: 12, scope: !1922)
!1927 = !DILocation(line: 2198, column: 25, scope: !1922)
!1928 = !DILocation(line: 2198, column: 12, scope: !1922)
!1929 = !DILocation(line: 2204, column: 17, scope: !1922)
!1930 = !DILocation(line: 2204, column: 26, scope: !1922)
!1931 = !DILocation(line: 2204, column: 14, scope: !1922)
!1932 = !DILocation(line: 2205, column: 7, scope: !1922)
!1933 = !DILocation(line: 2205, column: 18, scope: !1922)
!1934 = !DILocation(line: 2208, column: 11, scope: !1922)
!1935 = !DILocation(line: 2208, column: 20, scope: !1922)
!1936 = !DILocation(line: 2208, column: 44, scope: !1922)
!1937 = !DILocation(line: 2209, column: 9, scope: !1922)
!1938 = !DILocation(line: 2209, column: 15, scope: !1922)
!1939 = !DILocation(line: 2209, column: 22, scope: !1922)
!1940 = !DILocation(line: 2209, column: 50, scope: !1922)
!1941 = !DILocation(line: 2210, column: 13, scope: !1922)
!1942 = !DILocation(line: 2210, column: 18, scope: !1922)
!1943 = !DILocation(line: 2210, column: 25, scope: !1922)
!1944 = !DILocation(line: 2210, column: 45, scope: !1922)
!1945 = !DILocation(line: 2208, column: 9, scope: !1922)
!1946 = !DILocation(line: 2212, column: 11, scope: !1922)
!1947 = !DILocation(line: 2212, column: 18, scope: !1922)
!1948 = !DILocation(line: 2212, column: 24, scope: !1922)
!1949 = !DILocation(line: 2214, column: 9, scope: !1922)
!1950 = !DILocation(line: 2214, column: 16, scope: !1922)
!1951 = !DILocation(line: 2214, column: 22, scope: !1922)
!1952 = !DILocation(line: 2215, column: 7, scope: !1922)
!1953 = !DILocation(line: 2216, column: 7, scope: !1922)
!1954 = !DILocation(line: 2218, column: 3, scope: !1922)
!1955 = !DILocation(line: 2221, column: 8, scope: !1922)
!1956 = !DILocation(line: 2221, column: 19, scope: !1922)
!1957 = !DILocation(line: 2222, column: 7, scope: !1922)
!1958 = !DILocation(line: 2222, column: 14, scope: !1922)
!1959 = !DILocation(line: 2222, column: 21, scope: !1922)
!1960 = !DILocation(line: 2222, column: 59, scope: !1922)
!1961 = !DILocation(line: 2223, column: 12, scope: !1922)
!1962 = !DILocation(line: 2223, column: 17, scope: !1922)
!1963 = !DILocation(line: 2223, column: 24, scope: !1922)
!1964 = !DILocation(line: 2223, column: 89, scope: !1922)
!1965 = !DILocation(line: 2221, column: 7, scope: !1922)
!1966 = !DILocation(line: 2226, column: 11, scope: !1922)
!1967 = !DILocation(line: 2226, column: 20, scope: !1922)
!1968 = !DILocation(line: 2226, column: 36, scope: !1922)
!1969 = !DILocation(line: 2226, column: 43, scope: !1922)
!1970 = !DILocation(line: 2226, column: 48, scope: !1922)
!1971 = !DILocation(line: 2226, column: 55, scope: !1922)
!1972 = !DILocation(line: 2226, column: 73, scope: !1922)
!1973 = !DILocation(line: 2226, column: 9, scope: !1922)
!1974 = !DILocation(line: 2228, column: 7, scope: !1922)
!1975 = !DILocation(line: 2230, column: 7, scope: !1922)
!1976 = !DILocation(line: 2230, column: 14, scope: !1922)
!1977 = !DILocation(line: 2230, column: 24, scope: !1922)
!1978 = !DILocation(line: 2231, column: 5, scope: !1922)
!1979 = !DILocation(line: 2234, column: 11, scope: !1922)
!1980 = !DILocation(line: 2234, column: 20, scope: !1922)
!1981 = !DILocation(line: 2234, column: 36, scope: !1922)
!1982 = !DILocation(line: 2234, column: 43, scope: !1922)
!1983 = !DILocation(line: 2234, column: 48, scope: !1922)
!1984 = !DILocation(line: 2234, column: 55, scope: !1922)
!1985 = !DILocation(line: 2234, column: 72, scope: !1922)
!1986 = !DILocation(line: 2234, column: 9, scope: !1922)
!1987 = !DILocation(line: 2236, column: 7, scope: !1922)
!1988 = !DILocation(line: 2238, column: 7, scope: !1922)
!1989 = !DILocation(line: 2238, column: 14, scope: !1922)
!1990 = !DILocation(line: 2238, column: 24, scope: !1922)
!1991 = !DILocation(line: 2239, column: 5, scope: !1922)
!1992 = !DILocation(line: 2242, column: 11, scope: !1922)
!1993 = !DILocation(line: 2242, column: 20, scope: !1922)
!1994 = !DILocation(line: 2242, column: 36, scope: !1922)
!1995 = !DILocation(line: 2242, column: 43, scope: !1922)
!1996 = !DILocation(line: 2242, column: 48, scope: !1922)
!1997 = !DILocation(line: 2242, column: 55, scope: !1922)
!1998 = !DILocation(line: 2242, column: 72, scope: !1922)
!1999 = !DILocation(line: 2242, column: 9, scope: !1922)
!2000 = !DILocation(line: 2244, column: 7, scope: !1922)
!2001 = !DILocation(line: 2246, column: 7, scope: !1922)
!2002 = !DILocation(line: 2246, column: 14, scope: !1922)
!2003 = !DILocation(line: 2246, column: 24, scope: !1922)
!2004 = !DILocation(line: 2247, column: 5, scope: !1922)
!2005 = !DILocation(line: 2250, column: 11, scope: !1922)
!2006 = !DILocation(line: 2250, column: 20, scope: !1922)
!2007 = !DILocation(line: 2250, column: 37, scope: !1922)
!2008 = !DILocation(line: 2251, column: 9, scope: !1922)
!2009 = !DILocation(line: 2251, column: 15, scope: !1922)
!2010 = !DILocation(line: 2251, column: 22, scope: !1922)
!2011 = !DILocation(line: 2251, column: 50, scope: !1922)
!2012 = !DILocation(line: 2251, column: 57, scope: !1922)
!2013 = !DILocation(line: 2252, column: 15, scope: !1922)
!2014 = !DILocation(line: 2252, column: 22, scope: !1922)
!2015 = !DILocation(line: 2252, column: 60, scope: !1922)
!2016 = !DILocation(line: 2250, column: 9, scope: !1922)
!2017 = !DILocation(line: 2254, column: 7, scope: !1922)
!2018 = !DILocation(line: 2256, column: 7, scope: !1922)
!2019 = !DILocation(line: 2256, column: 14, scope: !1922)
!2020 = !DILocation(line: 2256, column: 24, scope: !1922)
!2021 = !DILocation(line: 2257, column: 5, scope: !1922)
!2022 = !DILocation(line: 2260, column: 11, scope: !1922)
!2023 = !DILocation(line: 2260, column: 20, scope: !1922)
!2024 = !DILocation(line: 2260, column: 38, scope: !1922)
!2025 = !DILocation(line: 2260, column: 45, scope: !1922)
!2026 = !DILocation(line: 2260, column: 50, scope: !1922)
!2027 = !DILocation(line: 2260, column: 57, scope: !1922)
!2028 = !DILocation(line: 2260, column: 76, scope: !1922)
!2029 = !DILocation(line: 2260, column: 9, scope: !1922)
!2030 = !DILocation(line: 2262, column: 7, scope: !1922)
!2031 = !DILocation(line: 2264, column: 7, scope: !1922)
!2032 = !DILocation(line: 2264, column: 14, scope: !1922)
!2033 = !DILocation(line: 2264, column: 24, scope: !1922)
!2034 = !DILocation(line: 2265, column: 5, scope: !1922)
!2035 = !DILocation(line: 2268, column: 9, scope: !1922)
!2036 = !DILocation(line: 2268, column: 16, scope: !1922)
!2037 = !DILocation(line: 2268, column: 26, scope: !1922)
!2038 = !DILocation(line: 2271, column: 13, scope: !1922)
!2039 = !DILocation(line: 2271, column: 22, scope: !1922)
!2040 = !DILocation(line: 2271, column: 46, scope: !1922)
!2041 = !DILocation(line: 2272, column: 11, scope: !1922)
!2042 = !DILocation(line: 2272, column: 17, scope: !1922)
!2043 = !DILocation(line: 2272, column: 24, scope: !1922)
!2044 = !DILocation(line: 2272, column: 52, scope: !1922)
!2045 = !DILocation(line: 2273, column: 15, scope: !1922)
!2046 = !DILocation(line: 2273, column: 20, scope: !1922)
!2047 = !DILocation(line: 2273, column: 27, scope: !1922)
!2048 = !DILocation(line: 2273, column: 47, scope: !1922)
!2049 = !DILocation(line: 2271, column: 11, scope: !1922)
!2050 = !DILocation(line: 2275, column: 13, scope: !1922)
!2051 = !DILocation(line: 2275, column: 20, scope: !1922)
!2052 = !DILocation(line: 2275, column: 26, scope: !1922)
!2053 = !DILocation(line: 2277, column: 11, scope: !1922)
!2054 = !DILocation(line: 2277, column: 18, scope: !1922)
!2055 = !DILocation(line: 2277, column: 24, scope: !1922)
!2056 = !DILocation(line: 2278, column: 9, scope: !1922)
!2057 = !DILocation(line: 2279, column: 7, scope: !1922)
!2058 = !DILocation(line: 2286, column: 19, scope: !1922)
!2059 = !DILocation(line: 2286, column: 26, scope: !1922)
!2060 = !DILocation(line: 2286, column: 17, scope: !1922)
!2061 = !DILocation(line: 2287, column: 12, scope: !1922)
!2062 = !DILocation(line: 2287, column: 66, scope: !1922)
!2063 = !DILocation(line: 2288, column: 13, scope: !1922)
!2064 = !DILocation(line: 2288, column: 23, scope: !1922)
!2065 = !DILocation(line: 2288, column: 68, scope: !1922)
!2066 = !DILocation(line: 2287, column: 11, scope: !1922)
!2067 = !DILocation(line: 2293, column: 28, scope: !1922)
!2068 = !DILocation(line: 2293, column: 9, scope: !1922)
!2069 = !DILocation(line: 2296, column: 13, scope: !1922)
!2070 = !DILocation(line: 2298, column: 11, scope: !1922)
!2071 = !DILocation(line: 2301, column: 15, scope: !1922)
!2072 = !DILocation(line: 2301, column: 22, scope: !1922)
!2073 = !DILocation(line: 2301, column: 29, scope: !1922)
!2074 = !DILocation(line: 2305, column: 13, scope: !1922)
!2075 = !DILocation(line: 2305, column: 20, scope: !1922)
!2076 = !DILocation(line: 2305, column: 28, scope: !1922)
!2077 = !DILocation(line: 2305, column: 46, scope: !1922)
!2078 = !DILocation(line: 2308, column: 34, scope: !1922)
!2079 = !DILocation(line: 2308, column: 41, scope: !1922)
!2080 = !DILocation(line: 2308, column: 17, scope: !1922)
!2081 = !DILocation(line: 2308, column: 49, scope: !1922)
!2082 = !DILocation(line: 2311, column: 15, scope: !1922)
!2083 = !DILocation(line: 2311, column: 22, scope: !1922)
!2084 = !DILocation(line: 2311, column: 30, scope: !1922)
!2085 = !DILocation(line: 2311, column: 48, scope: !1922)
!2086 = !DILocation(line: 2311, column: 55, scope: !1922)
!2087 = !DILocation(line: 2312, column: 13, scope: !1922)
!2088 = !DILocation(line: 2313, column: 11, scope: !1922)
!2089 = !DILocation(line: 2322, column: 36, scope: !1922)
!2090 = !DILocation(line: 2322, column: 13, scope: !1922)
!2091 = !DILocation(line: 2326, column: 9, scope: !1922)
!2092 = !DILocation(line: 2335, column: 34, scope: !1922)
!2093 = !DILocation(line: 2335, column: 11, scope: !1922)
!2094 = !DILocation(line: 2338, column: 7, scope: !1922)
!2095 = !DILocation(line: 2348, column: 32, scope: !1922)
!2096 = !DILocation(line: 2348, column: 9, scope: !1922)
!2097 = !DILocation(line: 2350, column: 9, scope: !1922)
!2098 = !DILocation(line: 2350, column: 16, scope: !1922)
!2099 = !DILocation(line: 2350, column: 26, scope: !1922)
!2100 = !DILocation(line: 2352, column: 5, scope: !1922)
!2101 = !DILocation(line: 2353, column: 5, scope: !1922)
!2102 = !DILocation(line: 2359, column: 10, scope: !1922)
!2103 = !DILocation(line: 2359, column: 17, scope: !1922)
!2104 = !DILocation(line: 2359, column: 31, scope: !1922)
!2105 = !DILocation(line: 2360, column: 7, scope: !1922)
!2106 = !DILocation(line: 2360, column: 11, scope: !1922)
!2107 = !DILocation(line: 2360, column: 20, scope: !1922)
!2108 = !DILocation(line: 2360, column: 38, scope: !1922)
!2109 = !DILocation(line: 2361, column: 7, scope: !1922)
!2110 = !DILocation(line: 2361, column: 11, scope: !1922)
!2111 = !DILocation(line: 2361, column: 18, scope: !1922)
!2112 = !DILocation(line: 2361, column: 36, scope: !1922)
!2113 = !DILocation(line: 2359, column: 9, scope: !1922)
!2114 = !DILocation(line: 2363, column: 5, scope: !1922)
!2115 = !DILocation(line: 2366, column: 9, scope: !1922)
!2116 = !DILocation(line: 2372, column: 50, scope: !1922)
!2117 = !DILocation(line: 2372, column: 39, scope: !1922)
!2118 = !DILocation(line: 2372, column: 16, scope: !1922)
!2119 = !DILocation(line: 2373, column: 14, scope: !1922)
!2120 = !DILocation(line: 2373, column: 35, scope: !1922)
!2121 = !DILocation(line: 2374, column: 11, scope: !1922)
!2122 = !DILocation(line: 2374, column: 14, scope: !1922)
!2123 = !DILocation(line: 2374, column: 37, scope: !1922)
!2124 = !DILocation(line: 2374, column: 44, scope: !1922)
!2125 = !DILocation(line: 2374, column: 35, scope: !1922)
!2126 = !DILocation(line: 2373, column: 13, scope: !1922)
!2127 = !DILocation(line: 2377, column: 30, scope: !1922)
!2128 = !DILocation(line: 2377, column: 9, scope: !1922)
!2129 = !DILocation(line: 2377, column: 16, scope: !1922)
!2130 = !DILocation(line: 2377, column: 28, scope: !1922)
!2131 = !DILocation(line: 2380, column: 13, scope: !1922)
!2132 = !DILocation(line: 2383, column: 11, scope: !1922)
!2133 = !DILocation(line: 2384, column: 11, scope: !1922)
!2134 = !DILocation(line: 2388, column: 11, scope: !1922)
!2135 = !DILocation(line: 2391, column: 11, scope: !1922)
!2136 = !DILocation(line: 2391, column: 18, scope: !1922)
!2137 = !DILocation(line: 2391, column: 26, scope: !1922)
!2138 = !DILocation(line: 2392, column: 11, scope: !1922)
!2139 = !DILocation(line: 2392, column: 18, scope: !1922)
!2140 = !DILocation(line: 2392, column: 32, scope: !1922)
!2141 = !DILocation(line: 2394, column: 11, scope: !1922)
!2142 = !DILocation(line: 2397, column: 31, scope: !1922)
!2143 = !DILocation(line: 2397, column: 38, scope: !1922)
!2144 = !DILocation(line: 2397, column: 17, scope: !1922)
!2145 = !DILocation(line: 2398, column: 9, scope: !1922)
!2146 = !DILocation(line: 2404, column: 36, scope: !1922)
!2147 = !DILocation(line: 2404, column: 44, scope: !1922)
!2148 = !DILocation(line: 2404, column: 51, scope: !1922)
!2149 = !DILocation(line: 2404, column: 64, scope: !1922)
!2150 = !DILocation(line: 2404, column: 71, scope: !1922)
!2151 = !DILocation(line: 2404, column: 62, scope: !1922)
!2152 = !DILocation(line: 2404, column: 43, scope: !1922)
!2153 = !DILocation(line: 2404, column: 9, scope: !1922)
!2154 = !DILocation(line: 2406, column: 7, scope: !1922)
!2155 = !DILocation(line: 2407, column: 7, scope: !1922)
!2156 = !DILocation(line: 2414, column: 29, scope: !1922)
!2157 = !DILocation(line: 2414, column: 36, scope: !1922)
!2158 = !DILocation(line: 2414, column: 49, scope: !1922)
!2159 = !DILocation(line: 2414, column: 56, scope: !1922)
!2160 = !DILocation(line: 2414, column: 47, scope: !1922)
!2161 = !DILocation(line: 2414, column: 16, scope: !1922)
!2162 = !DILocation(line: 2415, column: 14, scope: !1922)
!2163 = !DILocation(line: 2415, column: 21, scope: !1922)
!2164 = !DILocation(line: 2415, column: 33, scope: !1922)
!2165 = !DILocation(line: 2416, column: 11, scope: !1922)
!2166 = !DILocation(line: 2416, column: 14, scope: !1922)
!2167 = !DILocation(line: 2416, column: 25, scope: !1922)
!2168 = !DILocation(line: 2415, column: 13, scope: !1922)
!2169 = !DILocation(line: 2419, column: 9, scope: !1922)
!2170 = !DILocation(line: 2422, column: 9, scope: !1922)
!2171 = !DILocation(line: 2425, column: 9, scope: !1922)
!2172 = !DILocation(line: 2425, column: 16, scope: !1922)
!2173 = !DILocation(line: 2425, column: 24, scope: !1922)
!2174 = !DILocation(line: 2426, column: 9, scope: !1922)
!2175 = !DILocation(line: 2426, column: 16, scope: !1922)
!2176 = !DILocation(line: 2426, column: 30, scope: !1922)
!2177 = !DILocation(line: 2429, column: 9, scope: !1922)
!2178 = !DILocation(line: 2429, column: 16, scope: !1922)
!2179 = !DILocation(line: 2429, column: 22, scope: !1922)
!2180 = !DILocation(line: 2431, column: 9, scope: !1922)
!2181 = !DILocation(line: 2437, column: 36, scope: !1922)
!2182 = !DILocation(line: 2437, column: 43, scope: !1922)
!2183 = !DILocation(line: 2437, column: 9, scope: !1922)
!2184 = !DILocation(line: 2439, column: 7, scope: !1922)
!2185 = !DILocation(line: 2440, column: 7, scope: !1922)
!2186 = !DILocation(line: 2445, column: 9, scope: !1922)
!2187 = !DILocation(line: 2445, column: 18, scope: !1922)
!2188 = !DILocation(line: 2445, column: 35, scope: !1922)
!2189 = !DILocation(line: 2445, column: 42, scope: !1922)
!2190 = !DILocation(line: 2445, column: 47, scope: !1922)
!2191 = !DILocation(line: 2445, column: 54, scope: !1922)
!2192 = !DILocation(line: 2445, column: 73, scope: !1922)
!2193 = !DILocation(line: 2445, column: 7, scope: !1922)
!2194 = !DILocation(line: 2447, column: 5, scope: !1922)
!2195 = !DILocation(line: 2457, column: 31, scope: !1922)
!2196 = !DILocation(line: 2457, column: 5, scope: !1922)
!2197 = !DILocation(line: 2459, column: 5, scope: !1922)
!2198 = !DILocation(line: 2463, column: 9, scope: !1922)
!2199 = !DILocation(line: 2463, column: 18, scope: !1922)
!2200 = !DILocation(line: 2463, column: 41, scope: !1922)
!2201 = !DILocation(line: 2464, column: 7, scope: !1922)
!2202 = !DILocation(line: 2464, column: 13, scope: !1922)
!2203 = !DILocation(line: 2464, column: 20, scope: !1922)
!2204 = !DILocation(line: 2464, column: 47, scope: !1922)
!2205 = !DILocation(line: 2465, column: 11, scope: !1922)
!2206 = !DILocation(line: 2465, column: 16, scope: !1922)
!2207 = !DILocation(line: 2465, column: 23, scope: !1922)
!2208 = !DILocation(line: 2465, column: 43, scope: !1922)
!2209 = !DILocation(line: 2463, column: 7, scope: !1922)
!2210 = !DILocation(line: 2467, column: 9, scope: !1922)
!2211 = !DILocation(line: 2467, column: 16, scope: !1922)
!2212 = !DILocation(line: 2467, column: 22, scope: !1922)
!2213 = !DILocation(line: 2469, column: 7, scope: !1922)
!2214 = !DILocation(line: 2469, column: 14, scope: !1922)
!2215 = !DILocation(line: 2469, column: 20, scope: !1922)
!2216 = !DILocation(line: 2470, column: 5, scope: !1922)
!2217 = !DILocation(line: 2471, column: 5, scope: !1922)
!2218 = !DILocation(line: 2475, column: 9, scope: !1922)
!2219 = !DILocation(line: 2475, column: 18, scope: !1922)
!2220 = !DILocation(line: 2475, column: 34, scope: !1922)
!2221 = !DILocation(line: 2475, column: 41, scope: !1922)
!2222 = !DILocation(line: 2475, column: 46, scope: !1922)
!2223 = !DILocation(line: 2475, column: 53, scope: !1922)
!2224 = !DILocation(line: 2475, column: 71, scope: !1922)
!2225 = !DILocation(line: 2475, column: 7, scope: !1922)
!2226 = !DILocation(line: 2477, column: 25, scope: !1922)
!2227 = !DILocation(line: 2477, column: 5, scope: !1922)
!2228 = !DILocation(line: 2478, column: 5, scope: !1922)
!2229 = !DILocation(line: 2482, column: 9, scope: !1922)
!2230 = !DILocation(line: 2482, column: 18, scope: !1922)
!2231 = !DILocation(line: 2482, column: 36, scope: !1922)
!2232 = !DILocation(line: 2482, column: 43, scope: !1922)
!2233 = !DILocation(line: 2482, column: 48, scope: !1922)
!2234 = !DILocation(line: 2482, column: 55, scope: !1922)
!2235 = !DILocation(line: 2482, column: 75, scope: !1922)
!2236 = !DILocation(line: 2482, column: 7, scope: !1922)
!2237 = !DILocation(line: 2489, column: 36, scope: !1922)
!2238 = !DILocation(line: 2489, column: 5, scope: !1922)
!2239 = !DILocation(line: 2491, column: 5, scope: !1922)
!2240 = !DILocation(line: 2495, column: 9, scope: !1922)
!2241 = !DILocation(line: 2495, column: 18, scope: !1922)
!2242 = !DILocation(line: 2495, column: 36, scope: !1922)
!2243 = !DILocation(line: 2495, column: 43, scope: !1922)
!2244 = !DILocation(line: 2495, column: 48, scope: !1922)
!2245 = !DILocation(line: 2495, column: 55, scope: !1922)
!2246 = !DILocation(line: 2495, column: 75, scope: !1922)
!2247 = !DILocation(line: 2495, column: 7, scope: !1922)
!2248 = !DILocation(line: 2502, column: 35, scope: !1922)
!2249 = !DILocation(line: 2502, column: 5, scope: !1922)
!2250 = !DILocation(line: 2504, column: 5, scope: !1922)
!2251 = !DILocation(line: 2506, column: 1, scope: !1922)
!2252 = distinct !DISubprogram(name: "UART_DMAAbortOnError", scope: !1, file: !1, line: 3731, type: !9, scopeLine: 3732, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2253 = !DILocation(line: 3733, column: 54, scope: !2252)
!2254 = !DILocation(line: 3733, column: 60, scope: !2252)
!2255 = !DILocation(line: 3733, column: 31, scope: !2252)
!2256 = !DILocation(line: 3733, column: 23, scope: !2252)
!2257 = !DILocation(line: 3734, column: 3, scope: !2252)
!2258 = !DILocation(line: 3734, column: 10, scope: !2252)
!2259 = !DILocation(line: 3734, column: 22, scope: !2252)
!2260 = !DILocation(line: 3735, column: 3, scope: !2252)
!2261 = !DILocation(line: 3735, column: 10, scope: !2252)
!2262 = !DILocation(line: 3735, column: 22, scope: !2252)
!2263 = !DILocation(line: 3742, column: 26, scope: !2252)
!2264 = !DILocation(line: 3742, column: 3, scope: !2252)
!2265 = !DILocation(line: 3744, column: 1, scope: !2252)
!2266 = distinct !DISubprogram(name: "HAL_UART_ErrorCallback", scope: !1, file: !1, line: 2573, type: !9, scopeLine: 2574, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2267 = !DILocation(line: 2576, column: 3, scope: !2266)
!2268 = !DILocation(line: 2581, column: 1, scope: !2266)
!2269 = distinct !DISubprogram(name: "HAL_UARTEx_RxEventCallback", scope: !1, file: !1, line: 2635, type: !9, scopeLine: 2636, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2270 = !DILocation(line: 2638, column: 3, scope: !2269)
!2271 = !DILocation(line: 2639, column: 3, scope: !2269)
!2272 = !DILocation(line: 2644, column: 1, scope: !2269)
!2273 = distinct !DISubprogram(name: "UART_EndTransmit_IT", scope: !1, file: !1, line: 4069, type: !9, scopeLine: 4070, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2274 = !DILocation(line: 4072, column: 3, scope: !2273)
!2275 = !DILocation(line: 4075, column: 3, scope: !2273)
!2276 = !DILocation(line: 4075, column: 10, scope: !2273)
!2277 = !DILocation(line: 4075, column: 17, scope: !2273)
!2278 = !DILocation(line: 4078, column: 3, scope: !2273)
!2279 = !DILocation(line: 4078, column: 10, scope: !2273)
!2280 = !DILocation(line: 4078, column: 16, scope: !2273)
!2281 = !DILocation(line: 4085, column: 27, scope: !2273)
!2282 = !DILocation(line: 4085, column: 3, scope: !2273)
!2283 = !DILocation(line: 4087, column: 1, scope: !2273)
!2284 = distinct !DISubprogram(name: "HAL_UART_TxCpltCallback", scope: !1, file: !1, line: 2513, type: !9, scopeLine: 2514, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2285 = !DILocation(line: 2516, column: 3, scope: !2284)
!2286 = !DILocation(line: 2521, column: 1, scope: !2284)
!2287 = distinct !DISubprogram(name: "HAL_UART_TxHalfCpltCallback", scope: !1, file: !1, line: 2528, type: !9, scopeLine: 2529, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2288 = !DILocation(line: 2531, column: 3, scope: !2287)
!2289 = !DILocation(line: 2536, column: 1, scope: !2287)
!2290 = distinct !DISubprogram(name: "HAL_UART_RxCpltCallback", scope: !1, file: !1, line: 2543, type: !9, scopeLine: 2544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2291 = !DILocation(line: 2546, column: 3, scope: !2290)
!2292 = !DILocation(line: 2551, column: 1, scope: !2290)
!2293 = distinct !DISubprogram(name: "HAL_UART_RxHalfCpltCallback", scope: !1, file: !1, line: 2558, type: !9, scopeLine: 2559, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2294 = !DILocation(line: 2561, column: 3, scope: !2293)
!2295 = !DILocation(line: 2566, column: 1, scope: !2293)
!2296 = distinct !DISubprogram(name: "HAL_UART_ReceiverTimeout_Config", scope: !1, file: !1, line: 2683, type: !9, scopeLine: 2684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2297 = !DILocation(line: 2685, column: 9, scope: !2296)
!2298 = !DILocation(line: 2685, column: 7, scope: !2296)
!2299 = !DILocation(line: 2688, column: 5, scope: !2296)
!2300 = !DILocation(line: 2689, column: 3, scope: !2296)
!2301 = !DILocation(line: 2690, column: 1, scope: !2296)
!2302 = distinct !DISubprogram(name: "HAL_UART_EnableReceiverTimeout", scope: !1, file: !1, line: 2698, type: !9, scopeLine: 2699, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2303 = !DILocation(line: 2700, column: 9, scope: !2302)
!2304 = !DILocation(line: 2700, column: 7, scope: !2302)
!2305 = !DILocation(line: 2702, column: 9, scope: !2302)
!2306 = !DILocation(line: 2702, column: 16, scope: !2302)
!2307 = !DILocation(line: 2702, column: 23, scope: !2302)
!2308 = !DILocation(line: 2705, column: 7, scope: !2302)
!2309 = !DILocation(line: 2707, column: 7, scope: !2302)
!2310 = !DILocation(line: 2707, column: 14, scope: !2302)
!2311 = !DILocation(line: 2707, column: 21, scope: !2302)
!2312 = !DILocation(line: 2710, column: 7, scope: !2302)
!2313 = !DILocation(line: 2712, column: 7, scope: !2302)
!2314 = !DILocation(line: 2712, column: 14, scope: !2302)
!2315 = !DILocation(line: 2712, column: 21, scope: !2302)
!2316 = !DILocation(line: 2715, column: 7, scope: !2302)
!2317 = !DILocation(line: 2717, column: 7, scope: !2302)
!2318 = !DILocation(line: 2721, column: 7, scope: !2302)
!2319 = !DILocation(line: 2726, column: 5, scope: !2302)
!2320 = !DILocation(line: 2728, column: 1, scope: !2302)
!2321 = distinct !DISubprogram(name: "HAL_UART_DisableReceiverTimeout", scope: !1, file: !1, line: 2736, type: !9, scopeLine: 2737, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2322 = !DILocation(line: 2738, column: 9, scope: !2321)
!2323 = !DILocation(line: 2738, column: 7, scope: !2321)
!2324 = !DILocation(line: 2740, column: 9, scope: !2321)
!2325 = !DILocation(line: 2740, column: 16, scope: !2321)
!2326 = !DILocation(line: 2740, column: 23, scope: !2321)
!2327 = !DILocation(line: 2743, column: 7, scope: !2321)
!2328 = !DILocation(line: 2745, column: 7, scope: !2321)
!2329 = !DILocation(line: 2745, column: 14, scope: !2321)
!2330 = !DILocation(line: 2745, column: 21, scope: !2321)
!2331 = !DILocation(line: 2748, column: 7, scope: !2321)
!2332 = !DILocation(line: 2750, column: 7, scope: !2321)
!2333 = !DILocation(line: 2750, column: 14, scope: !2321)
!2334 = !DILocation(line: 2750, column: 21, scope: !2321)
!2335 = !DILocation(line: 2753, column: 7, scope: !2321)
!2336 = !DILocation(line: 2755, column: 7, scope: !2321)
!2337 = !DILocation(line: 2759, column: 7, scope: !2321)
!2338 = !DILocation(line: 2764, column: 5, scope: !2321)
!2339 = !DILocation(line: 2766, column: 1, scope: !2321)
!2340 = distinct !DISubprogram(name: "HAL_MultiProcessor_EnableMuteMode", scope: !1, file: !1, line: 2774, type: !9, scopeLine: 2775, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2341 = !DILocation(line: 2776, column: 3, scope: !2340)
!2342 = !DILocation(line: 2778, column: 3, scope: !2340)
!2343 = !DILocation(line: 2778, column: 10, scope: !2340)
!2344 = !DILocation(line: 2778, column: 17, scope: !2340)
!2345 = !DILocation(line: 2781, column: 3, scope: !2340)
!2346 = !DILocation(line: 2783, column: 3, scope: !2340)
!2347 = !DILocation(line: 2783, column: 10, scope: !2340)
!2348 = !DILocation(line: 2783, column: 17, scope: !2340)
!2349 = !DILocation(line: 2785, column: 31, scope: !2340)
!2350 = !DILocation(line: 2785, column: 11, scope: !2340)
!2351 = !DILocation(line: 2785, column: 3, scope: !2340)
!2352 = !DILocation(line: 2786, column: 1, scope: !2340)
!2353 = distinct !DISubprogram(name: "HAL_MultiProcessor_DisableMuteMode", scope: !1, file: !1, line: 2794, type: !9, scopeLine: 2795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2354 = !DILocation(line: 2796, column: 3, scope: !2353)
!2355 = !DILocation(line: 2798, column: 3, scope: !2353)
!2356 = !DILocation(line: 2798, column: 10, scope: !2353)
!2357 = !DILocation(line: 2798, column: 17, scope: !2353)
!2358 = !DILocation(line: 2801, column: 3, scope: !2353)
!2359 = !DILocation(line: 2803, column: 3, scope: !2353)
!2360 = !DILocation(line: 2803, column: 10, scope: !2353)
!2361 = !DILocation(line: 2803, column: 17, scope: !2353)
!2362 = !DILocation(line: 2805, column: 31, scope: !2353)
!2363 = !DILocation(line: 2805, column: 11, scope: !2353)
!2364 = !DILocation(line: 2805, column: 3, scope: !2353)
!2365 = !DILocation(line: 2806, column: 1, scope: !2353)
!2366 = distinct !DISubprogram(name: "HAL_MultiProcessor_EnterMuteMode", scope: !1, file: !1, line: 2814, type: !9, scopeLine: 2815, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2367 = !DILocation(line: 2816, column: 3, scope: !2366)
!2368 = !DILocation(line: 2817, column: 1, scope: !2366)
!2369 = distinct !DISubprogram(name: "HAL_HalfDuplex_EnableTransmitter", scope: !1, file: !1, line: 2824, type: !9, scopeLine: 2825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2370 = !DILocation(line: 2826, column: 3, scope: !2369)
!2371 = !DILocation(line: 2827, column: 3, scope: !2369)
!2372 = !DILocation(line: 2827, column: 10, scope: !2369)
!2373 = !DILocation(line: 2827, column: 17, scope: !2369)
!2374 = !DILocation(line: 2830, column: 3, scope: !2369)
!2375 = !DILocation(line: 2833, column: 3, scope: !2369)
!2376 = !DILocation(line: 2835, column: 3, scope: !2369)
!2377 = !DILocation(line: 2835, column: 10, scope: !2369)
!2378 = !DILocation(line: 2835, column: 17, scope: !2369)
!2379 = !DILocation(line: 2837, column: 3, scope: !2369)
!2380 = !DILocation(line: 2839, column: 3, scope: !2369)
!2381 = !DILocation(line: 2840, column: 1, scope: !2369)
!2382 = distinct !DISubprogram(name: "HAL_HalfDuplex_EnableReceiver", scope: !1, file: !1, line: 2847, type: !9, scopeLine: 2848, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2383 = !DILocation(line: 2849, column: 3, scope: !2382)
!2384 = !DILocation(line: 2850, column: 3, scope: !2382)
!2385 = !DILocation(line: 2850, column: 10, scope: !2382)
!2386 = !DILocation(line: 2850, column: 17, scope: !2382)
!2387 = !DILocation(line: 2853, column: 3, scope: !2382)
!2388 = !DILocation(line: 2856, column: 3, scope: !2382)
!2389 = !DILocation(line: 2858, column: 3, scope: !2382)
!2390 = !DILocation(line: 2858, column: 10, scope: !2382)
!2391 = !DILocation(line: 2858, column: 17, scope: !2382)
!2392 = !DILocation(line: 2860, column: 3, scope: !2382)
!2393 = !DILocation(line: 2862, column: 3, scope: !2382)
!2394 = !DILocation(line: 2863, column: 1, scope: !2382)
!2395 = distinct !DISubprogram(name: "HAL_LIN_SendBreak", scope: !1, file: !1, line: 2871, type: !9, scopeLine: 2872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2396 = !DILocation(line: 2876, column: 3, scope: !2395)
!2397 = !DILocation(line: 2878, column: 3, scope: !2395)
!2398 = !DILocation(line: 2878, column: 10, scope: !2395)
!2399 = !DILocation(line: 2878, column: 17, scope: !2395)
!2400 = !DILocation(line: 2881, column: 3, scope: !2395)
!2401 = !DILocation(line: 2883, column: 3, scope: !2395)
!2402 = !DILocation(line: 2883, column: 10, scope: !2395)
!2403 = !DILocation(line: 2883, column: 17, scope: !2395)
!2404 = !DILocation(line: 2885, column: 3, scope: !2395)
!2405 = !DILocation(line: 2887, column: 3, scope: !2395)
!2406 = !DILocation(line: 2888, column: 1, scope: !2395)
!2407 = distinct !DISubprogram(name: "HAL_UART_GetState", scope: !1, file: !1, line: 2916, type: !9, scopeLine: 2917, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2408 = !DILocation(line: 2920, column: 11, scope: !2407)
!2409 = !DILocation(line: 2920, column: 18, scope: !2407)
!2410 = !DILocation(line: 2920, column: 9, scope: !2407)
!2411 = !DILocation(line: 2921, column: 11, scope: !2407)
!2412 = !DILocation(line: 2921, column: 18, scope: !2407)
!2413 = !DILocation(line: 2921, column: 9, scope: !2407)
!2414 = !DILocation(line: 2923, column: 34, scope: !2407)
!2415 = !DILocation(line: 2923, column: 42, scope: !2407)
!2416 = !DILocation(line: 2923, column: 40, scope: !2407)
!2417 = !DILocation(line: 2923, column: 3, scope: !2407)
!2418 = distinct !DISubprogram(name: "HAL_UART_GetError", scope: !1, file: !1, line: 2932, type: !9, scopeLine: 2933, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2419 = !DILocation(line: 2934, column: 10, scope: !2418)
!2420 = !DILocation(line: 2934, column: 17, scope: !2418)
!2421 = !DILocation(line: 2934, column: 3, scope: !2418)
!2422 = distinct !DISubprogram(name: "UART_RxISR_16BIT_FIFOEN", scope: !1, file: !1, line: 4376, type: !9, scopeLine: 4377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2423 = !DILocation(line: 4379, column: 22, scope: !2422)
!2424 = !DILocation(line: 4379, column: 29, scope: !2422)
!2425 = !DILocation(line: 4379, column: 13, scope: !2422)
!2426 = !DILocation(line: 4383, column: 24, scope: !2422)
!2427 = !DILocation(line: 4383, column: 13, scope: !2422)
!2428 = !DILocation(line: 4384, column: 24, scope: !2422)
!2429 = !DILocation(line: 4384, column: 13, scope: !2422)
!2430 = !DILocation(line: 4385, column: 24, scope: !2422)
!2431 = !DILocation(line: 4385, column: 13, scope: !2422)
!2432 = !DILocation(line: 4388, column: 7, scope: !2422)
!2433 = !DILocation(line: 4388, column: 14, scope: !2422)
!2434 = !DILocation(line: 4388, column: 22, scope: !2422)
!2435 = !DILocation(line: 4390, column: 18, scope: !2422)
!2436 = !DILocation(line: 4390, column: 25, scope: !2422)
!2437 = !DILocation(line: 4390, column: 16, scope: !2422)
!2438 = !DILocation(line: 4391, column: 5, scope: !2422)
!2439 = !DILocation(line: 4391, column: 13, scope: !2422)
!2440 = !DILocation(line: 4391, column: 24, scope: !2422)
!2441 = !DILocation(line: 4391, column: 30, scope: !2422)
!2442 = !DILocation(line: 4391, column: 35, scope: !2422)
!2443 = !DILocation(line: 4391, column: 44, scope: !2422)
!2444 = !DILocation(line: 4391, column: 68, scope: !2422)
!2445 = !DILocation(line: 0, scope: !2422)
!2446 = !DILocation(line: 4393, column: 27, scope: !2422)
!2447 = !DILocation(line: 4393, column: 16, scope: !2422)
!2448 = !DILocation(line: 4393, column: 14, scope: !2422)
!2449 = !DILocation(line: 4394, column: 26, scope: !2422)
!2450 = !DILocation(line: 4394, column: 33, scope: !2422)
!2451 = !DILocation(line: 4394, column: 13, scope: !2422)
!2452 = !DILocation(line: 4394, column: 11, scope: !2422)
!2453 = !DILocation(line: 4395, column: 25, scope: !2422)
!2454 = !DILocation(line: 4395, column: 34, scope: !2422)
!2455 = !DILocation(line: 4395, column: 32, scope: !2422)
!2456 = !DILocation(line: 4395, column: 14, scope: !2422)
!2457 = !DILocation(line: 4395, column: 8, scope: !2422)
!2458 = !DILocation(line: 4395, column: 12, scope: !2422)
!2459 = !DILocation(line: 4396, column: 7, scope: !2422)
!2460 = !DILocation(line: 4396, column: 14, scope: !2422)
!2461 = !DILocation(line: 4396, column: 25, scope: !2422)
!2462 = !DILocation(line: 4397, column: 7, scope: !2422)
!2463 = !DILocation(line: 4397, column: 14, scope: !2422)
!2464 = !DILocation(line: 4397, column: 25, scope: !2422)
!2465 = !DILocation(line: 4398, column: 18, scope: !2422)
!2466 = !DILocation(line: 4398, column: 16, scope: !2422)
!2467 = !DILocation(line: 4401, column: 12, scope: !2422)
!2468 = !DILocation(line: 4401, column: 21, scope: !2422)
!2469 = !DILocation(line: 4401, column: 69, scope: !2422)
!2470 = !DILocation(line: 4401, column: 11, scope: !2422)
!2471 = !DILocation(line: 4404, column: 15, scope: !2422)
!2472 = !DILocation(line: 4404, column: 24, scope: !2422)
!2473 = !DILocation(line: 4404, column: 40, scope: !2422)
!2474 = !DILocation(line: 4404, column: 47, scope: !2422)
!2475 = !DILocation(line: 4404, column: 52, scope: !2422)
!2476 = !DILocation(line: 4404, column: 59, scope: !2422)
!2477 = !DILocation(line: 4404, column: 77, scope: !2422)
!2478 = !DILocation(line: 4404, column: 13, scope: !2422)
!2479 = !DILocation(line: 4406, column: 11, scope: !2422)
!2480 = !DILocation(line: 4408, column: 11, scope: !2422)
!2481 = !DILocation(line: 4408, column: 18, scope: !2422)
!2482 = !DILocation(line: 4408, column: 28, scope: !2422)
!2483 = !DILocation(line: 4409, column: 9, scope: !2422)
!2484 = !DILocation(line: 4412, column: 15, scope: !2422)
!2485 = !DILocation(line: 4412, column: 24, scope: !2422)
!2486 = !DILocation(line: 4412, column: 40, scope: !2422)
!2487 = !DILocation(line: 4412, column: 47, scope: !2422)
!2488 = !DILocation(line: 4412, column: 52, scope: !2422)
!2489 = !DILocation(line: 4412, column: 59, scope: !2422)
!2490 = !DILocation(line: 4412, column: 76, scope: !2422)
!2491 = !DILocation(line: 4412, column: 13, scope: !2422)
!2492 = !DILocation(line: 4414, column: 11, scope: !2422)
!2493 = !DILocation(line: 4416, column: 11, scope: !2422)
!2494 = !DILocation(line: 4416, column: 18, scope: !2422)
!2495 = !DILocation(line: 4416, column: 28, scope: !2422)
!2496 = !DILocation(line: 4417, column: 9, scope: !2422)
!2497 = !DILocation(line: 4420, column: 15, scope: !2422)
!2498 = !DILocation(line: 4420, column: 24, scope: !2422)
!2499 = !DILocation(line: 4420, column: 40, scope: !2422)
!2500 = !DILocation(line: 4420, column: 47, scope: !2422)
!2501 = !DILocation(line: 4420, column: 52, scope: !2422)
!2502 = !DILocation(line: 4420, column: 59, scope: !2422)
!2503 = !DILocation(line: 4420, column: 76, scope: !2422)
!2504 = !DILocation(line: 4420, column: 13, scope: !2422)
!2505 = !DILocation(line: 4422, column: 11, scope: !2422)
!2506 = !DILocation(line: 4424, column: 11, scope: !2422)
!2507 = !DILocation(line: 4424, column: 18, scope: !2422)
!2508 = !DILocation(line: 4424, column: 28, scope: !2422)
!2509 = !DILocation(line: 4425, column: 9, scope: !2422)
!2510 = !DILocation(line: 4428, column: 13, scope: !2422)
!2511 = !DILocation(line: 4428, column: 20, scope: !2422)
!2512 = !DILocation(line: 4428, column: 30, scope: !2422)
!2513 = !DILocation(line: 4437, column: 34, scope: !2422)
!2514 = !DILocation(line: 4437, column: 11, scope: !2422)
!2515 = !DILocation(line: 4439, column: 11, scope: !2422)
!2516 = !DILocation(line: 4439, column: 18, scope: !2422)
!2517 = !DILocation(line: 4439, column: 28, scope: !2422)
!2518 = !DILocation(line: 4440, column: 9, scope: !2422)
!2519 = !DILocation(line: 4441, column: 7, scope: !2422)
!2520 = !DILocation(line: 4443, column: 11, scope: !2422)
!2521 = !DILocation(line: 4443, column: 18, scope: !2422)
!2522 = !DILocation(line: 4443, column: 30, scope: !2422)
!2523 = !DILocation(line: 4446, column: 9, scope: !2422)
!2524 = !DILocation(line: 4449, column: 9, scope: !2422)
!2525 = !DILocation(line: 4452, column: 9, scope: !2422)
!2526 = !DILocation(line: 4452, column: 16, scope: !2422)
!2527 = !DILocation(line: 4452, column: 24, scope: !2422)
!2528 = !DILocation(line: 4455, column: 9, scope: !2422)
!2529 = !DILocation(line: 4455, column: 16, scope: !2422)
!2530 = !DILocation(line: 4455, column: 22, scope: !2422)
!2531 = !DILocation(line: 4459, column: 13, scope: !2422)
!2532 = !DILocation(line: 4459, column: 20, scope: !2422)
!2533 = !DILocation(line: 4459, column: 34, scope: !2422)
!2534 = !DILocation(line: 4462, column: 11, scope: !2422)
!2535 = !DILocation(line: 4469, column: 38, scope: !2422)
!2536 = !DILocation(line: 4469, column: 45, scope: !2422)
!2537 = !DILocation(line: 4469, column: 52, scope: !2422)
!2538 = !DILocation(line: 4469, column: 11, scope: !2422)
!2539 = !DILocation(line: 4471, column: 9, scope: !2422)
!2540 = !DILocation(line: 4480, column: 35, scope: !2422)
!2541 = !DILocation(line: 4480, column: 11, scope: !2422)
!2542 = !DILocation(line: 4483, column: 9, scope: !2422)
!2543 = !DILocation(line: 4483, column: 16, scope: !2422)
!2544 = !DILocation(line: 4483, column: 30, scope: !2422)
!2545 = !DILocation(line: 4484, column: 7, scope: !2422)
!2546 = distinct !{!2546, !2438, !2547}
!2547 = !DILocation(line: 4485, column: 5, scope: !2422)
!2548 = !DILocation(line: 4491, column: 19, scope: !2422)
!2549 = !DILocation(line: 4491, column: 26, scope: !2422)
!2550 = !DILocation(line: 4491, column: 17, scope: !2422)
!2551 = !DILocation(line: 4492, column: 10, scope: !2422)
!2552 = !DILocation(line: 4492, column: 22, scope: !2422)
!2553 = !DILocation(line: 4492, column: 29, scope: !2422)
!2554 = !DILocation(line: 4492, column: 33, scope: !2422)
!2555 = !DILocation(line: 4492, column: 47, scope: !2422)
!2556 = !DILocation(line: 4492, column: 54, scope: !2422)
!2557 = !DILocation(line: 4492, column: 45, scope: !2422)
!2558 = !DILocation(line: 4492, column: 9, scope: !2422)
!2559 = !DILocation(line: 4495, column: 7, scope: !2422)
!2560 = !DILocation(line: 4498, column: 7, scope: !2422)
!2561 = !DILocation(line: 4498, column: 14, scope: !2422)
!2562 = !DILocation(line: 4498, column: 20, scope: !2422)
!2563 = !DILocation(line: 4501, column: 7, scope: !2422)
!2564 = !DILocation(line: 4502, column: 5, scope: !2422)
!2565 = !DILocation(line: 4503, column: 3, scope: !2422)
!2566 = !DILocation(line: 4507, column: 5, scope: !2422)
!2567 = !DILocation(line: 4509, column: 1, scope: !2422)
!2568 = distinct !DISubprogram(name: "UART_RxISR_8BIT_FIFOEN", scope: !1, file: !1, line: 4236, type: !9, scopeLine: 4237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2569 = !DILocation(line: 4238, column: 22, scope: !2568)
!2570 = !DILocation(line: 4238, column: 29, scope: !2568)
!2571 = !DILocation(line: 4238, column: 13, scope: !2568)
!2572 = !DILocation(line: 4242, column: 24, scope: !2568)
!2573 = !DILocation(line: 4242, column: 13, scope: !2568)
!2574 = !DILocation(line: 4243, column: 24, scope: !2568)
!2575 = !DILocation(line: 4243, column: 13, scope: !2568)
!2576 = !DILocation(line: 4244, column: 24, scope: !2568)
!2577 = !DILocation(line: 4244, column: 13, scope: !2568)
!2578 = !DILocation(line: 4247, column: 7, scope: !2568)
!2579 = !DILocation(line: 4247, column: 14, scope: !2568)
!2580 = !DILocation(line: 4247, column: 22, scope: !2568)
!2581 = !DILocation(line: 4249, column: 18, scope: !2568)
!2582 = !DILocation(line: 4249, column: 25, scope: !2568)
!2583 = !DILocation(line: 4249, column: 16, scope: !2568)
!2584 = !DILocation(line: 4250, column: 5, scope: !2568)
!2585 = !DILocation(line: 4250, column: 13, scope: !2568)
!2586 = !DILocation(line: 4250, column: 24, scope: !2568)
!2587 = !DILocation(line: 4250, column: 30, scope: !2568)
!2588 = !DILocation(line: 4250, column: 35, scope: !2568)
!2589 = !DILocation(line: 4250, column: 44, scope: !2568)
!2590 = !DILocation(line: 4250, column: 68, scope: !2568)
!2591 = !DILocation(line: 0, scope: !2568)
!2592 = !DILocation(line: 4252, column: 27, scope: !2568)
!2593 = !DILocation(line: 4252, column: 16, scope: !2568)
!2594 = !DILocation(line: 4252, column: 14, scope: !2568)
!2595 = !DILocation(line: 4253, column: 38, scope: !2568)
!2596 = !DILocation(line: 4253, column: 56, scope: !2568)
!2597 = !DILocation(line: 4253, column: 47, scope: !2568)
!2598 = !DILocation(line: 4253, column: 45, scope: !2568)
!2599 = !DILocation(line: 4253, column: 28, scope: !2568)
!2600 = !DILocation(line: 4253, column: 8, scope: !2568)
!2601 = !DILocation(line: 4253, column: 15, scope: !2568)
!2602 = !DILocation(line: 4253, column: 26, scope: !2568)
!2603 = !DILocation(line: 4254, column: 7, scope: !2568)
!2604 = !DILocation(line: 4254, column: 14, scope: !2568)
!2605 = !DILocation(line: 4254, column: 24, scope: !2568)
!2606 = !DILocation(line: 4255, column: 7, scope: !2568)
!2607 = !DILocation(line: 4255, column: 14, scope: !2568)
!2608 = !DILocation(line: 4255, column: 25, scope: !2568)
!2609 = !DILocation(line: 4256, column: 18, scope: !2568)
!2610 = !DILocation(line: 4256, column: 16, scope: !2568)
!2611 = !DILocation(line: 4259, column: 12, scope: !2568)
!2612 = !DILocation(line: 4259, column: 21, scope: !2568)
!2613 = !DILocation(line: 4259, column: 69, scope: !2568)
!2614 = !DILocation(line: 4259, column: 11, scope: !2568)
!2615 = !DILocation(line: 4262, column: 15, scope: !2568)
!2616 = !DILocation(line: 4262, column: 24, scope: !2568)
!2617 = !DILocation(line: 4262, column: 40, scope: !2568)
!2618 = !DILocation(line: 4262, column: 47, scope: !2568)
!2619 = !DILocation(line: 4262, column: 52, scope: !2568)
!2620 = !DILocation(line: 4262, column: 59, scope: !2568)
!2621 = !DILocation(line: 4262, column: 77, scope: !2568)
!2622 = !DILocation(line: 4262, column: 13, scope: !2568)
!2623 = !DILocation(line: 4264, column: 11, scope: !2568)
!2624 = !DILocation(line: 4266, column: 11, scope: !2568)
!2625 = !DILocation(line: 4266, column: 18, scope: !2568)
!2626 = !DILocation(line: 4266, column: 28, scope: !2568)
!2627 = !DILocation(line: 4267, column: 9, scope: !2568)
!2628 = !DILocation(line: 4270, column: 15, scope: !2568)
!2629 = !DILocation(line: 4270, column: 24, scope: !2568)
!2630 = !DILocation(line: 4270, column: 40, scope: !2568)
!2631 = !DILocation(line: 4270, column: 47, scope: !2568)
!2632 = !DILocation(line: 4270, column: 52, scope: !2568)
!2633 = !DILocation(line: 4270, column: 59, scope: !2568)
!2634 = !DILocation(line: 4270, column: 76, scope: !2568)
!2635 = !DILocation(line: 4270, column: 13, scope: !2568)
!2636 = !DILocation(line: 4272, column: 11, scope: !2568)
!2637 = !DILocation(line: 4274, column: 11, scope: !2568)
!2638 = !DILocation(line: 4274, column: 18, scope: !2568)
!2639 = !DILocation(line: 4274, column: 28, scope: !2568)
!2640 = !DILocation(line: 4275, column: 9, scope: !2568)
!2641 = !DILocation(line: 4278, column: 15, scope: !2568)
!2642 = !DILocation(line: 4278, column: 24, scope: !2568)
!2643 = !DILocation(line: 4278, column: 40, scope: !2568)
!2644 = !DILocation(line: 4278, column: 47, scope: !2568)
!2645 = !DILocation(line: 4278, column: 52, scope: !2568)
!2646 = !DILocation(line: 4278, column: 59, scope: !2568)
!2647 = !DILocation(line: 4278, column: 76, scope: !2568)
!2648 = !DILocation(line: 4278, column: 13, scope: !2568)
!2649 = !DILocation(line: 4280, column: 11, scope: !2568)
!2650 = !DILocation(line: 4282, column: 11, scope: !2568)
!2651 = !DILocation(line: 4282, column: 18, scope: !2568)
!2652 = !DILocation(line: 4282, column: 28, scope: !2568)
!2653 = !DILocation(line: 4283, column: 9, scope: !2568)
!2654 = !DILocation(line: 4286, column: 13, scope: !2568)
!2655 = !DILocation(line: 4286, column: 20, scope: !2568)
!2656 = !DILocation(line: 4286, column: 30, scope: !2568)
!2657 = !DILocation(line: 4295, column: 34, scope: !2568)
!2658 = !DILocation(line: 4295, column: 11, scope: !2568)
!2659 = !DILocation(line: 4297, column: 11, scope: !2568)
!2660 = !DILocation(line: 4297, column: 18, scope: !2568)
!2661 = !DILocation(line: 4297, column: 28, scope: !2568)
!2662 = !DILocation(line: 4298, column: 9, scope: !2568)
!2663 = !DILocation(line: 4299, column: 7, scope: !2568)
!2664 = !DILocation(line: 4301, column: 11, scope: !2568)
!2665 = !DILocation(line: 4301, column: 18, scope: !2568)
!2666 = !DILocation(line: 4301, column: 30, scope: !2568)
!2667 = !DILocation(line: 4304, column: 9, scope: !2568)
!2668 = !DILocation(line: 4307, column: 9, scope: !2568)
!2669 = !DILocation(line: 4310, column: 9, scope: !2568)
!2670 = !DILocation(line: 4310, column: 16, scope: !2568)
!2671 = !DILocation(line: 4310, column: 24, scope: !2568)
!2672 = !DILocation(line: 4313, column: 9, scope: !2568)
!2673 = !DILocation(line: 4313, column: 16, scope: !2568)
!2674 = !DILocation(line: 4313, column: 22, scope: !2568)
!2675 = !DILocation(line: 4317, column: 13, scope: !2568)
!2676 = !DILocation(line: 4317, column: 20, scope: !2568)
!2677 = !DILocation(line: 4317, column: 34, scope: !2568)
!2678 = !DILocation(line: 4320, column: 11, scope: !2568)
!2679 = !DILocation(line: 4327, column: 38, scope: !2568)
!2680 = !DILocation(line: 4327, column: 45, scope: !2568)
!2681 = !DILocation(line: 4327, column: 52, scope: !2568)
!2682 = !DILocation(line: 4327, column: 11, scope: !2568)
!2683 = !DILocation(line: 4329, column: 9, scope: !2568)
!2684 = !DILocation(line: 4338, column: 35, scope: !2568)
!2685 = !DILocation(line: 4338, column: 11, scope: !2568)
!2686 = !DILocation(line: 4341, column: 9, scope: !2568)
!2687 = !DILocation(line: 4341, column: 16, scope: !2568)
!2688 = !DILocation(line: 4341, column: 30, scope: !2568)
!2689 = !DILocation(line: 4342, column: 7, scope: !2568)
!2690 = distinct !{!2690, !2584, !2691}
!2691 = !DILocation(line: 4343, column: 5, scope: !2568)
!2692 = !DILocation(line: 4349, column: 19, scope: !2568)
!2693 = !DILocation(line: 4349, column: 26, scope: !2568)
!2694 = !DILocation(line: 4349, column: 17, scope: !2568)
!2695 = !DILocation(line: 4350, column: 10, scope: !2568)
!2696 = !DILocation(line: 4350, column: 22, scope: !2568)
!2697 = !DILocation(line: 4350, column: 29, scope: !2568)
!2698 = !DILocation(line: 4350, column: 33, scope: !2568)
!2699 = !DILocation(line: 4350, column: 47, scope: !2568)
!2700 = !DILocation(line: 4350, column: 54, scope: !2568)
!2701 = !DILocation(line: 4350, column: 45, scope: !2568)
!2702 = !DILocation(line: 4350, column: 9, scope: !2568)
!2703 = !DILocation(line: 4353, column: 7, scope: !2568)
!2704 = !DILocation(line: 4356, column: 7, scope: !2568)
!2705 = !DILocation(line: 4356, column: 14, scope: !2568)
!2706 = !DILocation(line: 4356, column: 20, scope: !2568)
!2707 = !DILocation(line: 4359, column: 7, scope: !2568)
!2708 = !DILocation(line: 4360, column: 5, scope: !2568)
!2709 = !DILocation(line: 4361, column: 3, scope: !2568)
!2710 = !DILocation(line: 4365, column: 5, scope: !2568)
!2711 = !DILocation(line: 4367, column: 1, scope: !2568)
!2712 = distinct !DISubprogram(name: "UART_RxISR_16BIT", scope: !1, file: !1, line: 4164, type: !9, scopeLine: 4165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2713 = !DILocation(line: 4167, column: 21, scope: !2712)
!2714 = !DILocation(line: 4167, column: 28, scope: !2712)
!2715 = !DILocation(line: 4167, column: 12, scope: !2712)
!2716 = !DILocation(line: 4171, column: 7, scope: !2712)
!2717 = !DILocation(line: 4171, column: 14, scope: !2712)
!2718 = !DILocation(line: 4171, column: 22, scope: !2712)
!2719 = !DILocation(line: 4173, column: 25, scope: !2712)
!2720 = !DILocation(line: 4173, column: 14, scope: !2712)
!2721 = !DILocation(line: 4173, column: 12, scope: !2712)
!2722 = !DILocation(line: 4174, column: 24, scope: !2712)
!2723 = !DILocation(line: 4174, column: 31, scope: !2712)
!2724 = !DILocation(line: 4174, column: 11, scope: !2712)
!2725 = !DILocation(line: 4174, column: 9, scope: !2712)
!2726 = !DILocation(line: 4175, column: 23, scope: !2712)
!2727 = !DILocation(line: 4175, column: 32, scope: !2712)
!2728 = !DILocation(line: 4175, column: 30, scope: !2712)
!2729 = !DILocation(line: 4175, column: 12, scope: !2712)
!2730 = !DILocation(line: 4175, column: 6, scope: !2712)
!2731 = !DILocation(line: 4175, column: 10, scope: !2712)
!2732 = !DILocation(line: 4176, column: 5, scope: !2712)
!2733 = !DILocation(line: 4176, column: 12, scope: !2712)
!2734 = !DILocation(line: 4176, column: 23, scope: !2712)
!2735 = !DILocation(line: 4177, column: 5, scope: !2712)
!2736 = !DILocation(line: 4177, column: 12, scope: !2712)
!2737 = !DILocation(line: 4177, column: 23, scope: !2712)
!2738 = !DILocation(line: 4179, column: 9, scope: !2712)
!2739 = !DILocation(line: 4179, column: 16, scope: !2712)
!2740 = !DILocation(line: 4179, column: 28, scope: !2712)
!2741 = !DILocation(line: 4182, column: 7, scope: !2712)
!2742 = !DILocation(line: 4185, column: 7, scope: !2712)
!2743 = !DILocation(line: 4188, column: 7, scope: !2712)
!2744 = !DILocation(line: 4188, column: 14, scope: !2712)
!2745 = !DILocation(line: 4188, column: 22, scope: !2712)
!2746 = !DILocation(line: 4191, column: 7, scope: !2712)
!2747 = !DILocation(line: 4191, column: 14, scope: !2712)
!2748 = !DILocation(line: 4191, column: 20, scope: !2712)
!2749 = !DILocation(line: 4195, column: 11, scope: !2712)
!2750 = !DILocation(line: 4195, column: 18, scope: !2712)
!2751 = !DILocation(line: 4195, column: 32, scope: !2712)
!2752 = !DILocation(line: 4198, column: 9, scope: !2712)
!2753 = !DILocation(line: 4205, column: 36, scope: !2712)
!2754 = !DILocation(line: 4205, column: 43, scope: !2712)
!2755 = !DILocation(line: 4205, column: 50, scope: !2712)
!2756 = !DILocation(line: 4205, column: 9, scope: !2712)
!2757 = !DILocation(line: 4207, column: 7, scope: !2712)
!2758 = !DILocation(line: 4216, column: 33, scope: !2712)
!2759 = !DILocation(line: 4216, column: 9, scope: !2712)
!2760 = !DILocation(line: 4219, column: 7, scope: !2712)
!2761 = !DILocation(line: 4219, column: 14, scope: !2712)
!2762 = !DILocation(line: 4219, column: 28, scope: !2712)
!2763 = !DILocation(line: 4220, column: 5, scope: !2712)
!2764 = !DILocation(line: 4221, column: 3, scope: !2712)
!2765 = !DILocation(line: 4225, column: 5, scope: !2712)
!2766 = !DILocation(line: 4227, column: 1, scope: !2712)
!2767 = distinct !DISubprogram(name: "UART_RxISR_8BIT", scope: !1, file: !1, line: 4094, type: !9, scopeLine: 4095, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2768 = !DILocation(line: 4096, column: 21, scope: !2767)
!2769 = !DILocation(line: 4096, column: 28, scope: !2767)
!2770 = !DILocation(line: 4096, column: 12, scope: !2767)
!2771 = !DILocation(line: 4100, column: 7, scope: !2767)
!2772 = !DILocation(line: 4100, column: 14, scope: !2767)
!2773 = !DILocation(line: 4100, column: 22, scope: !2767)
!2774 = !DILocation(line: 4102, column: 25, scope: !2767)
!2775 = !DILocation(line: 4102, column: 14, scope: !2767)
!2776 = !DILocation(line: 4102, column: 12, scope: !2767)
!2777 = !DILocation(line: 4103, column: 36, scope: !2767)
!2778 = !DILocation(line: 4103, column: 54, scope: !2767)
!2779 = !DILocation(line: 4103, column: 45, scope: !2767)
!2780 = !DILocation(line: 4103, column: 43, scope: !2767)
!2781 = !DILocation(line: 4103, column: 26, scope: !2767)
!2782 = !DILocation(line: 4103, column: 6, scope: !2767)
!2783 = !DILocation(line: 4103, column: 13, scope: !2767)
!2784 = !DILocation(line: 4103, column: 24, scope: !2767)
!2785 = !DILocation(line: 4104, column: 5, scope: !2767)
!2786 = !DILocation(line: 4104, column: 12, scope: !2767)
!2787 = !DILocation(line: 4104, column: 22, scope: !2767)
!2788 = !DILocation(line: 4105, column: 5, scope: !2767)
!2789 = !DILocation(line: 4105, column: 12, scope: !2767)
!2790 = !DILocation(line: 4105, column: 23, scope: !2767)
!2791 = !DILocation(line: 4107, column: 9, scope: !2767)
!2792 = !DILocation(line: 4107, column: 16, scope: !2767)
!2793 = !DILocation(line: 4107, column: 28, scope: !2767)
!2794 = !DILocation(line: 4110, column: 7, scope: !2767)
!2795 = !DILocation(line: 4113, column: 7, scope: !2767)
!2796 = !DILocation(line: 4116, column: 7, scope: !2767)
!2797 = !DILocation(line: 4116, column: 14, scope: !2767)
!2798 = !DILocation(line: 4116, column: 22, scope: !2767)
!2799 = !DILocation(line: 4119, column: 7, scope: !2767)
!2800 = !DILocation(line: 4119, column: 14, scope: !2767)
!2801 = !DILocation(line: 4119, column: 20, scope: !2767)
!2802 = !DILocation(line: 4123, column: 11, scope: !2767)
!2803 = !DILocation(line: 4123, column: 18, scope: !2767)
!2804 = !DILocation(line: 4123, column: 32, scope: !2767)
!2805 = !DILocation(line: 4126, column: 9, scope: !2767)
!2806 = !DILocation(line: 4133, column: 36, scope: !2767)
!2807 = !DILocation(line: 4133, column: 43, scope: !2767)
!2808 = !DILocation(line: 4133, column: 50, scope: !2767)
!2809 = !DILocation(line: 4133, column: 9, scope: !2767)
!2810 = !DILocation(line: 4135, column: 7, scope: !2767)
!2811 = !DILocation(line: 4144, column: 33, scope: !2767)
!2812 = !DILocation(line: 4144, column: 9, scope: !2767)
!2813 = !DILocation(line: 4147, column: 7, scope: !2767)
!2814 = !DILocation(line: 4147, column: 14, scope: !2767)
!2815 = !DILocation(line: 4147, column: 28, scope: !2767)
!2816 = !DILocation(line: 4148, column: 5, scope: !2767)
!2817 = !DILocation(line: 4149, column: 3, scope: !2767)
!2818 = !DILocation(line: 4153, column: 5, scope: !2767)
!2819 = !DILocation(line: 4155, column: 1, scope: !2767)
!2820 = distinct !DISubprogram(name: "UART_DMAReceiveCplt", scope: !1, file: !1, line: 3600, type: !9, scopeLine: 3601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2821 = !DILocation(line: 3602, column: 54, scope: !2820)
!2822 = !DILocation(line: 3602, column: 60, scope: !2820)
!2823 = !DILocation(line: 3602, column: 31, scope: !2820)
!2824 = !DILocation(line: 3602, column: 23, scope: !2820)
!2825 = !DILocation(line: 3605, column: 7, scope: !2820)
!2826 = !DILocation(line: 3607, column: 5, scope: !2820)
!2827 = !DILocation(line: 3607, column: 12, scope: !2820)
!2828 = !DILocation(line: 3607, column: 24, scope: !2820)
!2829 = !DILocation(line: 3610, column: 5, scope: !2820)
!2830 = !DILocation(line: 3611, column: 5, scope: !2820)
!2831 = !DILocation(line: 3615, column: 5, scope: !2820)
!2832 = !DILocation(line: 3618, column: 5, scope: !2820)
!2833 = !DILocation(line: 3618, column: 12, scope: !2820)
!2834 = !DILocation(line: 3618, column: 20, scope: !2820)
!2835 = !DILocation(line: 3621, column: 9, scope: !2820)
!2836 = !DILocation(line: 3621, column: 16, scope: !2820)
!2837 = !DILocation(line: 3621, column: 30, scope: !2820)
!2838 = !DILocation(line: 3623, column: 7, scope: !2820)
!2839 = !DILocation(line: 3624, column: 5, scope: !2820)
!2840 = !DILocation(line: 3625, column: 3, scope: !2820)
!2841 = !DILocation(line: 3629, column: 7, scope: !2820)
!2842 = !DILocation(line: 3629, column: 14, scope: !2820)
!2843 = !DILocation(line: 3629, column: 28, scope: !2820)
!2844 = !DILocation(line: 3636, column: 32, scope: !2820)
!2845 = !DILocation(line: 3636, column: 39, scope: !2820)
!2846 = !DILocation(line: 3636, column: 46, scope: !2820)
!2847 = !DILocation(line: 3636, column: 5, scope: !2820)
!2848 = !DILocation(line: 3638, column: 3, scope: !2820)
!2849 = !DILocation(line: 3647, column: 29, scope: !2820)
!2850 = !DILocation(line: 3647, column: 5, scope: !2820)
!2851 = !DILocation(line: 3650, column: 1, scope: !2820)
!2852 = distinct !DISubprogram(name: "UART_DMARxHalfCplt", scope: !1, file: !1, line: 3657, type: !9, scopeLine: 3658, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!2853 = !DILocation(line: 3659, column: 54, scope: !2852)
!2854 = !DILocation(line: 3659, column: 60, scope: !2852)
!2855 = !DILocation(line: 3659, column: 31, scope: !2852)
!2856 = !DILocation(line: 3659, column: 23, scope: !2852)
!2857 = !DILocation(line: 3663, column: 7, scope: !2852)
!2858 = !DILocation(line: 3663, column: 14, scope: !2852)
!2859 = !DILocation(line: 3663, column: 28, scope: !2852)
!2860 = !DILocation(line: 3670, column: 32, scope: !2852)
!2861 = !DILocation(line: 3670, column: 39, scope: !2852)
!2862 = !DILocation(line: 3670, column: 46, scope: !2852)
!2863 = !DILocation(line: 3670, column: 56, scope: !2852)
!2864 = !DILocation(line: 3670, column: 5, scope: !2852)
!2865 = !DILocation(line: 3672, column: 3, scope: !2852)
!2866 = !DILocation(line: 3681, column: 33, scope: !2852)
!2867 = !DILocation(line: 3681, column: 5, scope: !2852)
!2868 = !DILocation(line: 3684, column: 1, scope: !2852)
