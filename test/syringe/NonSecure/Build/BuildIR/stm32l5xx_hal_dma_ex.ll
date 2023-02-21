; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma_ex.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma_ex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.__DMA_HandleTypeDef = type { %struct.DMA_Channel_TypeDef*, %struct.DMA_InitTypeDef, i8, i8, i8*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)*, i32, %struct.DMA_TypeDef*, i32, %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef*, i32, %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef*, i32 }
%struct.DMA_Channel_TypeDef = type { i32, i32, i32, i32, i32 }
%struct.DMA_InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DMA_TypeDef = type { i32, i32 }
%struct.DMAMUX_Channel_TypeDef = type { i32 }
%struct.DMAMUX_ChannelStatus_TypeDef = type { i32, i32 }
%struct.DMAMUX_RequestGen_TypeDef = type { i32 }
%struct.DMAMUX_RequestGenStatus_TypeDef = type { i32, i32 }
%struct.HAL_DMA_MuxSyncConfigTypeDef = type { i32, i32, i8, i8, i32 }
%struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMAEx_MultiBufferStart(%struct.__DMA_HandleTypeDef* %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %SecondMemAddress, i32 %DataLength) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %SrcAddress.addr = alloca i32, align 4
  %DstAddress.addr = alloca i32, align 4
  %SecondMemAddress.addr = alloca i32, align 4
  %DataLength.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %SrcAddress, i32* %SrcAddress.addr, align 4
  store i32 %DstAddress, i32* %DstAddress.addr, align 4
  store i32 %SecondMemAddress, i32* %SecondMemAddress.addr, align 4
  store i32 %DataLength, i32* %DataLength.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !10
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !11
  %Init = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 1, !dbg !12
  %Direction = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init, i32 0, i32 1, !dbg !13
  %1 = load i32, i32* %Direction, align 4, !dbg !13
  %cmp = icmp eq i32 %1, 16384, !dbg !14
  br i1 %cmp, label %if.then, label %if.else, !dbg !11

if.then:                                          ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !15
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 11, !dbg !16
  store volatile i32 256, i32* %ErrorCode, align 4, !dbg !17
  store i8 1, i8* %status, align 1, !dbg !18
  br label %if.end25, !dbg !19

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !20

do.body:                                          ; preds = %if.else
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !20
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 2, !dbg !20
  %4 = load i8, i8* %Lock, align 4, !dbg !20
  %conv = zext i8 %4 to i32, !dbg !20
  %cmp1 = icmp eq i32 %conv, 1, !dbg !20
  br i1 %cmp1, label %if.then3, label %if.else4, !dbg !20

if.then3:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !20
  br label %return, !dbg !20

if.else4:                                         ; preds = %do.body
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !20
  %Lock5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 2, !dbg !20
  store i8 1, i8* %Lock5, align 4, !dbg !20
  br label %if.end

if.end:                                           ; preds = %if.else4
  br label %do.end, !dbg !20

do.end:                                           ; preds = %if.end
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !21
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 3, !dbg !22
  %7 = load volatile i8, i8* %State, align 1, !dbg !22
  %conv6 = zext i8 %7 to i32, !dbg !21
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !23
  br i1 %cmp7, label %if.then9, label %if.else20, !dbg !21

if.then9:                                         ; preds = %do.end
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !24
  %State10 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 3, !dbg !25
  store volatile i8 2, i8* %State10, align 1, !dbg !26
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !27
  %ErrorCode11 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 11, !dbg !28
  store volatile i32 0, i32* %ErrorCode11, align 4, !dbg !29
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !30
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 0, !dbg !31
  %11 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !31
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 0, !dbg !32
  %12 = load volatile i32, i32* %CCR, align 4, !dbg !33
  %or = or i32 %12, 32800, !dbg !33
  store volatile i32 %or, i32* %CCR, align 4, !dbg !33
  %13 = load i32, i32* %SecondMemAddress.addr, align 4, !dbg !34
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !35
  %Instance12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 0, !dbg !36
  %15 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance12, align 4, !dbg !36
  %CM1AR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %15, i32 0, i32 4, !dbg !37
  store volatile i32 %13, i32* %CM1AR, align 4, !dbg !38
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !39
  %17 = load i32, i32* %SrcAddress.addr, align 4, !dbg !40
  %18 = load i32, i32* %DstAddress.addr, align 4, !dbg !41
  %19 = load i32, i32* %DataLength.addr, align 4, !dbg !42
  call arm_aapcs_vfpcc void @DMA_MultiBufferSetConfig(%struct.__DMA_HandleTypeDef* %16, i32 %17, i32 %18, i32 %19), !dbg !43
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !44
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 13, !dbg !45
  %21 = load i32, i32* %ChannelIndex, align 4, !dbg !45
  %and = and i32 %21, 28, !dbg !46
  %shl = shl i32 1, %and, !dbg !47
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !48
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 12, !dbg !49
  %23 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !49
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %23, i32 0, i32 1, !dbg !50
  store volatile i32 %shl, i32* %IFCR, align 4, !dbg !51
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !52
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %24, i32 0, i32 16, !dbg !53
  %25 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !53
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !54
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %26, i32 0, i32 15, !dbg !55
  %27 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !55
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %27, i32 0, i32 1, !dbg !56
  store volatile i32 %25, i32* %CFR, align 4, !dbg !57
  %28 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !58
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %28, i32 0, i32 17, !dbg !59
  %29 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !59
  %cmp13 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %29, null, !dbg !60
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !58

if.then15:                                        ; preds = %if.then9
  %30 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !61
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %30, i32 0, i32 19, !dbg !62
  %31 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !62
  %32 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !63
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %32, i32 0, i32 18, !dbg !64
  %33 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !64
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %33, i32 0, i32 1, !dbg !65
  store volatile i32 %31, i32* %RGCFR, align 4, !dbg !66
  br label %if.end16, !dbg !67

if.end16:                                         ; preds = %if.then15, %if.then9
  %34 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !68
  %Instance17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %34, i32 0, i32 0, !dbg !68
  %35 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance17, align 4, !dbg !68
  %CCR18 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %35, i32 0, i32 0, !dbg !68
  %36 = load volatile i32, i32* %CCR18, align 4, !dbg !68
  %or19 = or i32 %36, 1, !dbg !68
  store volatile i32 %or19, i32* %CCR18, align 4, !dbg !68
  br label %if.end24, !dbg !69

if.else20:                                        ; preds = %do.end
  br label %do.body21, !dbg !70

do.body21:                                        ; preds = %if.else20
  %37 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !70
  %Lock22 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %37, i32 0, i32 2, !dbg !70
  store i8 0, i8* %Lock22, align 4, !dbg !70
  br label %do.end23, !dbg !70

do.end23:                                         ; preds = %do.body21
  store i8 2, i8* %status, align 1, !dbg !71
  br label %if.end24

if.end24:                                         ; preds = %do.end23, %if.end16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  %38 = load i8, i8* %status, align 1, !dbg !72
  store i8 %38, i8* %retval, align 1, !dbg !73
  br label %return, !dbg !73

return:                                           ; preds = %if.end25, %if.then3
  %39 = load i8, i8* %retval, align 1, !dbg !74
  ret i8 %39, !dbg !74
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @DMA_MultiBufferSetConfig(%struct.__DMA_HandleTypeDef* %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %DataLength) #0 !dbg !75 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %SrcAddress.addr = alloca i32, align 4
  %DstAddress.addr = alloca i32, align 4
  %DataLength.addr = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %SrcAddress, i32* %SrcAddress.addr, align 4
  store i32 %DstAddress, i32* %DstAddress.addr, align 4
  store i32 %DataLength, i32* %DataLength.addr, align 4
  %0 = load i32, i32* %DataLength.addr, align 4, !dbg !76
  %1 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !77
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %1, i32 0, i32 0, !dbg !78
  %2 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !78
  %CNDTR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %2, i32 0, i32 1, !dbg !79
  store volatile i32 %0, i32* %CNDTR, align 4, !dbg !80
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !81
  %Init = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 1, !dbg !82
  %Direction = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init, i32 0, i32 1, !dbg !83
  %4 = load i32, i32* %Direction, align 4, !dbg !83
  %cmp = icmp eq i32 %4, 16, !dbg !84
  br i1 %cmp, label %if.then, label %if.else, !dbg !85

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %DstAddress.addr, align 4, !dbg !86
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !87
  %Instance1 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 0, !dbg !88
  %7 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance1, align 4, !dbg !88
  %CPAR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %7, i32 0, i32 2, !dbg !89
  store volatile i32 %5, i32* %CPAR, align 4, !dbg !90
  %8 = load i32, i32* %SrcAddress.addr, align 4, !dbg !91
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !92
  %Instance2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 0, !dbg !93
  %10 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance2, align 4, !dbg !93
  %CM0AR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %10, i32 0, i32 3, !dbg !94
  store volatile i32 %8, i32* %CM0AR, align 4, !dbg !95
  br label %if.end, !dbg !96

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %SrcAddress.addr, align 4, !dbg !97
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !98
  %Instance3 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 0, !dbg !99
  %13 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance3, align 4, !dbg !99
  %CPAR4 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %13, i32 0, i32 2, !dbg !100
  store volatile i32 %11, i32* %CPAR4, align 4, !dbg !101
  %14 = load i32, i32* %DstAddress.addr, align 4, !dbg !102
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !103
  %Instance5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 0, !dbg !104
  %16 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance5, align 4, !dbg !104
  %CM0AR6 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %16, i32 0, i32 3, !dbg !105
  store volatile i32 %14, i32* %CM0AR6, align 4, !dbg !106
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !107
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMAEx_MultiBufferStart_IT(%struct.__DMA_HandleTypeDef* %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %SecondMemAddress, i32 %DataLength) #0 !dbg !108 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %SrcAddress.addr = alloca i32, align 4
  %DstAddress.addr = alloca i32, align 4
  %SecondMemAddress.addr = alloca i32, align 4
  %DataLength.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %SrcAddress, i32* %SrcAddress.addr, align 4
  store i32 %DstAddress, i32* %DstAddress.addr, align 4
  store i32 %SecondMemAddress, i32* %SecondMemAddress.addr, align 4
  store i32 %DataLength, i32* %DataLength.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !109
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !110
  %Init = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 1, !dbg !111
  %Direction = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init, i32 0, i32 1, !dbg !112
  %1 = load i32, i32* %Direction, align 4, !dbg !112
  %cmp = icmp eq i32 %1, 16384, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !110

if.then:                                          ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !114
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 11, !dbg !115
  store volatile i32 256, i32* %ErrorCode, align 4, !dbg !116
  store i8 1, i8* %retval, align 1, !dbg !117
  br label %return, !dbg !117

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !118

do.body:                                          ; preds = %if.end
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !118
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 2, !dbg !118
  %4 = load i8, i8* %Lock, align 4, !dbg !118
  %conv = zext i8 %4 to i32, !dbg !118
  %cmp1 = icmp eq i32 %conv, 1, !dbg !118
  br i1 %cmp1, label %if.then3, label %if.else, !dbg !118

if.then3:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !118
  br label %return, !dbg !118

if.else:                                          ; preds = %do.body
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !118
  %Lock4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 2, !dbg !118
  store i8 1, i8* %Lock4, align 4, !dbg !118
  br label %if.end5

if.end5:                                          ; preds = %if.else
  br label %do.end, !dbg !118

do.end:                                           ; preds = %if.end5
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !119
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 3, !dbg !120
  %7 = load volatile i8, i8* %State, align 1, !dbg !120
  %conv6 = zext i8 %7 to i32, !dbg !119
  %cmp7 = icmp eq i32 %conv6, 1, !dbg !121
  br i1 %cmp7, label %if.then9, label %if.else53, !dbg !119

if.then9:                                         ; preds = %do.end
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !122
  %State10 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 3, !dbg !123
  store volatile i8 2, i8* %State10, align 1, !dbg !124
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !125
  %ErrorCode11 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 11, !dbg !126
  store volatile i32 0, i32* %ErrorCode11, align 4, !dbg !127
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !128
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 0, !dbg !128
  %11 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !128
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 0, !dbg !128
  %12 = load volatile i32, i32* %CCR, align 4, !dbg !128
  %and = and i32 %12, -2, !dbg !128
  store volatile i32 %and, i32* %CCR, align 4, !dbg !128
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !129
  %Instance12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 0, !dbg !130
  %14 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance12, align 4, !dbg !130
  %CCR13 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %14, i32 0, i32 0, !dbg !131
  %15 = load volatile i32, i32* %CCR13, align 4, !dbg !132
  %or = or i32 %15, 32800, !dbg !132
  store volatile i32 %or, i32* %CCR13, align 4, !dbg !132
  %16 = load i32, i32* %SecondMemAddress.addr, align 4, !dbg !133
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !134
  %Instance14 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 0, !dbg !135
  %18 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance14, align 4, !dbg !135
  %CM1AR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %18, i32 0, i32 4, !dbg !136
  store volatile i32 %16, i32* %CM1AR, align 4, !dbg !137
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !138
  %20 = load i32, i32* %SrcAddress.addr, align 4, !dbg !139
  %21 = load i32, i32* %DstAddress.addr, align 4, !dbg !140
  %22 = load i32, i32* %DataLength.addr, align 4, !dbg !141
  call arm_aapcs_vfpcc void @DMA_MultiBufferSetConfig(%struct.__DMA_HandleTypeDef* %19, i32 %20, i32 %21, i32 %22), !dbg !142
  %23 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !143
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %23, i32 0, i32 13, !dbg !144
  %24 = load i32, i32* %ChannelIndex, align 4, !dbg !144
  %and15 = and i32 %24, 28, !dbg !145
  %shl = shl i32 1, %and15, !dbg !146
  %25 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !147
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %25, i32 0, i32 12, !dbg !148
  %26 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !148
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %26, i32 0, i32 1, !dbg !149
  store volatile i32 %shl, i32* %IFCR, align 4, !dbg !150
  %27 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !151
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %27, i32 0, i32 16, !dbg !152
  %28 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !152
  %29 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !153
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %29, i32 0, i32 15, !dbg !154
  %30 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !154
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %30, i32 0, i32 1, !dbg !155
  store volatile i32 %28, i32* %CFR, align 4, !dbg !156
  %31 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !157
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %31, i32 0, i32 17, !dbg !158
  %32 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !158
  %cmp16 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %32, null, !dbg !159
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !157

if.then18:                                        ; preds = %if.then9
  %33 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !160
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %33, i32 0, i32 19, !dbg !161
  %34 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !161
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !162
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %35, i32 0, i32 18, !dbg !163
  %36 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !163
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %36, i32 0, i32 1, !dbg !164
  store volatile i32 %34, i32* %RGCFR, align 4, !dbg !165
  br label %if.end19, !dbg !166

if.end19:                                         ; preds = %if.then18, %if.then9
  %37 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !167
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %37, i32 0, i32 6, !dbg !168
  %38 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !168
  %cmp20 = icmp ne void (%struct.__DMA_HandleTypeDef*)* null, %38, !dbg !169
  br i1 %cmp20, label %if.then22, label %if.else26, !dbg !170

if.then22:                                        ; preds = %if.end19
  %39 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !171
  %Instance23 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %39, i32 0, i32 0, !dbg !171
  %40 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance23, align 4, !dbg !171
  %CCR24 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %40, i32 0, i32 0, !dbg !171
  %41 = load volatile i32, i32* %CCR24, align 4, !dbg !171
  %or25 = or i32 %41, 14, !dbg !171
  store volatile i32 %or25, i32* %CCR24, align 4, !dbg !171
  br label %if.end33, !dbg !172

if.else26:                                        ; preds = %if.end19
  %42 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !173
  %Instance27 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %42, i32 0, i32 0, !dbg !173
  %43 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance27, align 4, !dbg !173
  %CCR28 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %43, i32 0, i32 0, !dbg !173
  %44 = load volatile i32, i32* %CCR28, align 4, !dbg !173
  %and29 = and i32 %44, -5, !dbg !173
  store volatile i32 %and29, i32* %CCR28, align 4, !dbg !173
  %45 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !174
  %Instance30 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %45, i32 0, i32 0, !dbg !174
  %46 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance30, align 4, !dbg !174
  %CCR31 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %46, i32 0, i32 0, !dbg !174
  %47 = load volatile i32, i32* %CCR31, align 4, !dbg !174
  %or32 = or i32 %47, 10, !dbg !174
  store volatile i32 %or32, i32* %CCR31, align 4, !dbg !174
  br label %if.end33

if.end33:                                         ; preds = %if.else26, %if.then22
  %48 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !175
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %48, i32 0, i32 14, !dbg !176
  %49 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !176
  %CCR34 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %49, i32 0, i32 0, !dbg !177
  %50 = load volatile i32, i32* %CCR34, align 4, !dbg !177
  %and35 = and i32 %50, 65536, !dbg !178
  %cmp36 = icmp ne i32 %and35, 0, !dbg !179
  br i1 %cmp36, label %if.then38, label %if.end42, !dbg !180

if.then38:                                        ; preds = %if.end33
  %51 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !181
  %DMAmuxChannel39 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %51, i32 0, i32 14, !dbg !182
  %52 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel39, align 4, !dbg !182
  %CCR40 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %52, i32 0, i32 0, !dbg !183
  %53 = load volatile i32, i32* %CCR40, align 4, !dbg !184
  %or41 = or i32 %53, 256, !dbg !184
  store volatile i32 %or41, i32* %CCR40, align 4, !dbg !184
  br label %if.end42, !dbg !185

if.end42:                                         ; preds = %if.then38, %if.end33
  %54 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !186
  %DMAmuxRequestGen43 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %54, i32 0, i32 17, !dbg !187
  %55 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen43, align 4, !dbg !187
  %cmp44 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %55, null, !dbg !188
  br i1 %cmp44, label %if.then46, label %if.end49, !dbg !186

if.then46:                                        ; preds = %if.end42
  %56 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !189
  %DMAmuxRequestGen47 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %56, i32 0, i32 17, !dbg !190
  %57 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen47, align 4, !dbg !190
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %57, i32 0, i32 0, !dbg !191
  %58 = load volatile i32, i32* %RGCR, align 4, !dbg !192
  %or48 = or i32 %58, 256, !dbg !192
  store volatile i32 %or48, i32* %RGCR, align 4, !dbg !192
  br label %if.end49, !dbg !193

if.end49:                                         ; preds = %if.then46, %if.end42
  %59 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !194
  %Instance50 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %59, i32 0, i32 0, !dbg !194
  %60 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance50, align 4, !dbg !194
  %CCR51 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %60, i32 0, i32 0, !dbg !194
  %61 = load volatile i32, i32* %CCR51, align 4, !dbg !194
  %or52 = or i32 %61, 1, !dbg !194
  store volatile i32 %or52, i32* %CCR51, align 4, !dbg !194
  br label %if.end57, !dbg !195

if.else53:                                        ; preds = %do.end
  br label %do.body54, !dbg !196

do.body54:                                        ; preds = %if.else53
  %62 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !196
  %Lock55 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %62, i32 0, i32 2, !dbg !196
  store i8 0, i8* %Lock55, align 4, !dbg !196
  br label %do.end56, !dbg !196

do.end56:                                         ; preds = %do.body54
  store i8 2, i8* %status, align 1, !dbg !197
  br label %if.end57

if.end57:                                         ; preds = %do.end56, %if.end49
  %63 = load i8, i8* %status, align 1, !dbg !198
  store i8 %63, i8* %retval, align 1, !dbg !199
  br label %return, !dbg !199

return:                                           ; preds = %if.end57, %if.then3, %if.then
  %64 = load i8, i8* %retval, align 1, !dbg !200
  ret i8 %64, !dbg !200
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMAEx_ChangeMemory(%struct.__DMA_HandleTypeDef* %hdma, i32 %Address, i8 zeroext %memory) #0 !dbg !201 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %Address.addr = alloca i32, align 4
  %memory.addr = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %Address, i32* %Address.addr, align 4
  store i8 %memory, i8* %memory.addr, align 1
  %0 = load i8, i8* %memory.addr, align 1, !dbg !202
  %conv = zext i8 %0 to i32, !dbg !202
  %cmp = icmp eq i32 %conv, 0, !dbg !203
  br i1 %cmp, label %if.then, label %if.else, !dbg !202

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %Address.addr, align 4, !dbg !204
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !205
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 0, !dbg !206
  %3 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !206
  %CM0AR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %3, i32 0, i32 3, !dbg !207
  store volatile i32 %1, i32* %CM0AR, align 4, !dbg !208
  br label %if.end, !dbg !209

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %Address.addr, align 4, !dbg !210
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !211
  %Instance2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 0, !dbg !212
  %6 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance2, align 4, !dbg !212
  %CM1AR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %6, i32 0, i32 4, !dbg !213
  store volatile i32 %4, i32* %CM1AR, align 4, !dbg !214
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i8 0, !dbg !215
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMAEx_ConfigMuxSync(%struct.__DMA_HandleTypeDef* %hdma, %struct.HAL_DMA_MuxSyncConfigTypeDef* %pSyncConfig) #0 !dbg !216 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %pSyncConfig.addr = alloca %struct.HAL_DMA_MuxSyncConfigTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store %struct.HAL_DMA_MuxSyncConfigTypeDef* %pSyncConfig, %struct.HAL_DMA_MuxSyncConfigTypeDef** %pSyncConfig.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !217
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !218
  %1 = load volatile i8, i8* %State, align 1, !dbg !218
  %conv = zext i8 %1 to i32, !dbg !217
  %cmp = icmp eq i32 %conv, 1, !dbg !219
  br i1 %cmp, label %if.then, label %if.else21, !dbg !217

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !220

do.body:                                          ; preds = %if.then
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !220
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 2, !dbg !220
  %3 = load i8, i8* %Lock, align 4, !dbg !220
  %conv2 = zext i8 %3 to i32, !dbg !220
  %cmp3 = icmp eq i32 %conv2, 1, !dbg !220
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !220

if.then5:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !220
  br label %return, !dbg !220

if.else:                                          ; preds = %do.body
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !220
  %Lock6 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 2, !dbg !220
  store i8 1, i8* %Lock6, align 4, !dbg !220
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !220

do.end:                                           ; preds = %if.end
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !221
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 14, !dbg !221
  %6 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !221
  %CCR = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %6, i32 0, i32 0, !dbg !221
  %7 = load volatile i32, i32* %CCR, align 4, !dbg !221
  %and = and i32 %7, 255, !dbg !221
  %8 = load %struct.HAL_DMA_MuxSyncConfigTypeDef*, %struct.HAL_DMA_MuxSyncConfigTypeDef** %pSyncConfig.addr, align 4, !dbg !221
  %SyncSignalID = getelementptr inbounds %struct.HAL_DMA_MuxSyncConfigTypeDef, %struct.HAL_DMA_MuxSyncConfigTypeDef* %8, i32 0, i32 0, !dbg !221
  %9 = load i32, i32* %SyncSignalID, align 4, !dbg !221
  %shl = shl i32 %9, 24, !dbg !221
  %10 = load %struct.HAL_DMA_MuxSyncConfigTypeDef*, %struct.HAL_DMA_MuxSyncConfigTypeDef** %pSyncConfig.addr, align 4, !dbg !221
  %RequestNumber = getelementptr inbounds %struct.HAL_DMA_MuxSyncConfigTypeDef, %struct.HAL_DMA_MuxSyncConfigTypeDef* %10, i32 0, i32 4, !dbg !221
  %11 = load i32, i32* %RequestNumber, align 4, !dbg !221
  %sub = sub i32 %11, 1, !dbg !221
  %shl7 = shl i32 %sub, 19, !dbg !221
  %or = or i32 %shl, %shl7, !dbg !221
  %12 = load %struct.HAL_DMA_MuxSyncConfigTypeDef*, %struct.HAL_DMA_MuxSyncConfigTypeDef** %pSyncConfig.addr, align 4, !dbg !221
  %SyncPolarity = getelementptr inbounds %struct.HAL_DMA_MuxSyncConfigTypeDef, %struct.HAL_DMA_MuxSyncConfigTypeDef* %12, i32 0, i32 1, !dbg !221
  %13 = load i32, i32* %SyncPolarity, align 4, !dbg !221
  %or8 = or i32 %or, %13, !dbg !221
  %14 = load %struct.HAL_DMA_MuxSyncConfigTypeDef*, %struct.HAL_DMA_MuxSyncConfigTypeDef** %pSyncConfig.addr, align 4, !dbg !221
  %SyncEnable = getelementptr inbounds %struct.HAL_DMA_MuxSyncConfigTypeDef, %struct.HAL_DMA_MuxSyncConfigTypeDef* %14, i32 0, i32 2, !dbg !221
  %15 = load i8, i8* %SyncEnable, align 4, !dbg !221
  %conv9 = zext i8 %15 to i32, !dbg !221
  %shl10 = shl i32 %conv9, 16, !dbg !221
  %or11 = or i32 %or8, %shl10, !dbg !221
  %16 = load %struct.HAL_DMA_MuxSyncConfigTypeDef*, %struct.HAL_DMA_MuxSyncConfigTypeDef** %pSyncConfig.addr, align 4, !dbg !221
  %EventEnable = getelementptr inbounds %struct.HAL_DMA_MuxSyncConfigTypeDef, %struct.HAL_DMA_MuxSyncConfigTypeDef* %16, i32 0, i32 3, !dbg !221
  %17 = load i8, i8* %EventEnable, align 1, !dbg !221
  %conv12 = zext i8 %17 to i32, !dbg !221
  %shl13 = shl i32 %conv12, 9, !dbg !221
  %or14 = or i32 %or11, %shl13, !dbg !221
  %or15 = or i32 %and, %or14, !dbg !221
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !221
  %DMAmuxChannel16 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %18, i32 0, i32 14, !dbg !221
  %19 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel16, align 4, !dbg !221
  %CCR17 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %19, i32 0, i32 0, !dbg !221
  store volatile i32 %or15, i32* %CCR17, align 4, !dbg !221
  br label %do.body18, !dbg !222

do.body18:                                        ; preds = %do.end
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !222
  %Lock19 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 2, !dbg !222
  store i8 0, i8* %Lock19, align 4, !dbg !222
  br label %do.end20, !dbg !222

do.end20:                                         ; preds = %do.body18
  store i8 0, i8* %retval, align 1, !dbg !223
  br label %return, !dbg !223

if.else21:                                        ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !224
  br label %return, !dbg !224

return:                                           ; preds = %if.else21, %do.end20, %if.then5
  %21 = load i8, i8* %retval, align 1, !dbg !225
  ret i8 %21, !dbg !225
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMAEx_ConfigMuxRequestGenerator(%struct.__DMA_HandleTypeDef* %hdma, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef* %pRequestGeneratorConfig) #0 !dbg !226 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %pRequestGeneratorConfig.addr = alloca %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef* %pRequestGeneratorConfig, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef** %pRequestGeneratorConfig.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !227
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !228
  %1 = load volatile i8, i8* %State, align 1, !dbg !228
  %conv = zext i8 %1 to i32, !dbg !227
  %cmp = icmp eq i32 %conv, 1, !dbg !229
  br i1 %cmp, label %land.lhs.true, label %if.else14, !dbg !230

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !231
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 17, !dbg !232
  %3 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !232
  %cmp2 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %3, null, !dbg !233
  br i1 %cmp2, label %if.then, label %if.else14, !dbg !234

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !235

do.body:                                          ; preds = %if.then
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !235
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 2, !dbg !235
  %5 = load i8, i8* %Lock, align 4, !dbg !235
  %conv4 = zext i8 %5 to i32, !dbg !235
  %cmp5 = icmp eq i32 %conv4, 1, !dbg !235
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !235

if.then7:                                         ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !235
  br label %return, !dbg !235

if.else:                                          ; preds = %do.body
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !235
  %Lock8 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 2, !dbg !235
  store i8 1, i8* %Lock8, align 4, !dbg !235
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !235

do.end:                                           ; preds = %if.end
  %7 = load %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef*, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef** %pRequestGeneratorConfig.addr, align 4, !dbg !236
  %SignalID = getelementptr inbounds %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef* %7, i32 0, i32 0, !dbg !237
  %8 = load i32, i32* %SignalID, align 4, !dbg !237
  %9 = load %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef*, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef** %pRequestGeneratorConfig.addr, align 4, !dbg !238
  %RequestNumber = getelementptr inbounds %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef* %9, i32 0, i32 2, !dbg !239
  %10 = load i32, i32* %RequestNumber, align 4, !dbg !239
  %sub = sub i32 %10, 1, !dbg !240
  %shl = shl i32 %sub, 19, !dbg !241
  %or = or i32 %8, %shl, !dbg !242
  %11 = load %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef*, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef** %pRequestGeneratorConfig.addr, align 4, !dbg !243
  %Polarity = getelementptr inbounds %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef, %struct.HAL_DMA_MuxRequestGeneratorConfigTypeDef* %11, i32 0, i32 1, !dbg !244
  %12 = load i32, i32* %Polarity, align 4, !dbg !244
  %or9 = or i32 %or, %12, !dbg !245
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !246
  %DMAmuxRequestGen10 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 17, !dbg !247
  %14 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen10, align 4, !dbg !247
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %14, i32 0, i32 0, !dbg !248
  store volatile i32 %or9, i32* %RGCR, align 4, !dbg !249
  br label %do.body11, !dbg !250

do.body11:                                        ; preds = %do.end
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !250
  %Lock12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 2, !dbg !250
  store i8 0, i8* %Lock12, align 4, !dbg !250
  br label %do.end13, !dbg !250

do.end13:                                         ; preds = %do.body11
  store i8 0, i8* %retval, align 1, !dbg !251
  br label %return, !dbg !251

if.else14:                                        ; preds = %land.lhs.true, %entry
  store i8 1, i8* %retval, align 1, !dbg !252
  br label %return, !dbg !252

return:                                           ; preds = %if.else14, %do.end13, %if.then7
  %16 = load i8, i8* %retval, align 1, !dbg !253
  ret i8 %16, !dbg !253
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMAEx_EnableMuxRequestGenerator(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !254 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !255
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !256
  %1 = load volatile i8, i8* %State, align 1, !dbg !256
  %conv = zext i8 %1 to i32, !dbg !255
  %cmp = icmp ne i32 %conv, 0, !dbg !257
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !258

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !259
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 17, !dbg !260
  %3 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !260
  %cmp2 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %3, null, !dbg !261
  br i1 %cmp2, label %if.then, label %if.else, !dbg !262

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !263
  %DMAmuxRequestGen4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 17, !dbg !264
  %5 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen4, align 4, !dbg !264
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %5, i32 0, i32 0, !dbg !265
  %6 = load volatile i32, i32* %RGCR, align 4, !dbg !266
  %or = or i32 %6, 65536, !dbg !266
  store volatile i32 %or, i32* %RGCR, align 4, !dbg !266
  store i8 0, i8* %retval, align 1, !dbg !267
  br label %return, !dbg !267

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8 1, i8* %retval, align 1, !dbg !268
  br label %return, !dbg !268

return:                                           ; preds = %if.else, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !269
  ret i8 %7, !dbg !269
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMAEx_DisableMuxRequestGenerator(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !270 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !271
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !272
  %1 = load volatile i8, i8* %State, align 1, !dbg !272
  %conv = zext i8 %1 to i32, !dbg !271
  %cmp = icmp ne i32 %conv, 0, !dbg !273
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !274

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !275
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 17, !dbg !276
  %3 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !276
  %cmp2 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %3, null, !dbg !277
  br i1 %cmp2, label %if.then, label %if.else, !dbg !278

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !279
  %DMAmuxRequestGen4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 17, !dbg !280
  %5 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen4, align 4, !dbg !280
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %5, i32 0, i32 0, !dbg !281
  %6 = load volatile i32, i32* %RGCR, align 4, !dbg !282
  %and = and i32 %6, -65537, !dbg !282
  store volatile i32 %and, i32* %RGCR, align 4, !dbg !282
  store i8 0, i8* %retval, align 1, !dbg !283
  br label %return, !dbg !283

if.else:                                          ; preds = %land.lhs.true, %entry
  store i8 1, i8* %retval, align 1, !dbg !284
  br label %return, !dbg !284

return:                                           ; preds = %if.else, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !285
  ret i8 %7, !dbg !285
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_DMAEx_MUX_IRQHandler(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !286 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !287
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 15, !dbg !288
  %1 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !288
  %CSR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %1, i32 0, i32 0, !dbg !289
  %2 = load volatile i32, i32* %CSR, align 4, !dbg !289
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !290
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 16, !dbg !291
  %4 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !291
  %and = and i32 %2, %4, !dbg !292
  %cmp = icmp ne i32 %and, 0, !dbg !293
  br i1 %cmp, label %if.then, label %if.end7, !dbg !294

if.then:                                          ; preds = %entry
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !295
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 14, !dbg !296
  %6 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !296
  %CCR = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %6, i32 0, i32 0, !dbg !297
  %7 = load volatile i32, i32* %CCR, align 4, !dbg !298
  %and1 = and i32 %7, -257, !dbg !298
  store volatile i32 %and1, i32* %CCR, align 4, !dbg !298
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !299
  %DMAmuxChannelStatusMask2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 16, !dbg !300
  %9 = load i32, i32* %DMAmuxChannelStatusMask2, align 4, !dbg !300
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !301
  %DMAmuxChannelStatus3 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 15, !dbg !302
  %11 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus3, align 4, !dbg !302
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %11, i32 0, i32 1, !dbg !303
  store volatile i32 %9, i32* %CFR, align 4, !dbg !304
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !305
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 11, !dbg !306
  %13 = load volatile i32, i32* %ErrorCode, align 4, !dbg !307
  %or = or i32 %13, 512, !dbg !307
  store volatile i32 %or, i32* %ErrorCode, align 4, !dbg !307
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !308
  %XferErrorCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 9, !dbg !309
  %15 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback, align 4, !dbg !309
  %cmp4 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %15, null, !dbg !310
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !308

if.then5:                                         ; preds = %if.then
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !311
  %XferErrorCallback6 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %16, i32 0, i32 9, !dbg !312
  %17 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback6, align 4, !dbg !312
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !313
  call arm_aapcs_vfpcc void %17(%struct.__DMA_HandleTypeDef* %18), !dbg !311
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end7, !dbg !315

if.end7:                                          ; preds = %if.end, %entry
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !316
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %19, i32 0, i32 17, !dbg !317
  %20 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !317
  %cmp8 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %20, null, !dbg !318
  br i1 %cmp8, label %if.then9, label %if.end25, !dbg !316

if.then9:                                         ; preds = %if.end7
  %21 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !319
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %21, i32 0, i32 18, !dbg !320
  %22 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !320
  %RGSR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %22, i32 0, i32 0, !dbg !321
  %23 = load volatile i32, i32* %RGSR, align 4, !dbg !321
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !322
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %24, i32 0, i32 19, !dbg !323
  %25 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !323
  %and10 = and i32 %23, %25, !dbg !324
  %cmp11 = icmp ne i32 %and10, 0, !dbg !325
  br i1 %cmp11, label %if.then12, label %if.end24, !dbg !326

if.then12:                                        ; preds = %if.then9
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !327
  %DMAmuxRequestGen13 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %26, i32 0, i32 17, !dbg !328
  %27 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen13, align 4, !dbg !328
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %27, i32 0, i32 0, !dbg !329
  %28 = load volatile i32, i32* %RGCR, align 4, !dbg !330
  %and14 = and i32 %28, -257, !dbg !330
  store volatile i32 %and14, i32* %RGCR, align 4, !dbg !330
  %29 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !331
  %DMAmuxRequestGenStatusMask15 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %29, i32 0, i32 19, !dbg !332
  %30 = load i32, i32* %DMAmuxRequestGenStatusMask15, align 4, !dbg !332
  %31 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !333
  %DMAmuxRequestGenStatus16 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %31, i32 0, i32 18, !dbg !334
  %32 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus16, align 4, !dbg !334
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %32, i32 0, i32 1, !dbg !335
  store volatile i32 %30, i32* %RGCFR, align 4, !dbg !336
  %33 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !337
  %ErrorCode17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %33, i32 0, i32 11, !dbg !338
  %34 = load volatile i32, i32* %ErrorCode17, align 4, !dbg !339
  %or18 = or i32 %34, 1024, !dbg !339
  store volatile i32 %or18, i32* %ErrorCode17, align 4, !dbg !339
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !340
  %XferErrorCallback19 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %35, i32 0, i32 9, !dbg !341
  %36 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback19, align 4, !dbg !341
  %cmp20 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %36, null, !dbg !342
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !340

if.then21:                                        ; preds = %if.then12
  %37 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !343
  %XferErrorCallback22 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %37, i32 0, i32 9, !dbg !344
  %38 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback22, align 4, !dbg !344
  %39 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !345
  call arm_aapcs_vfpcc void %38(%struct.__DMA_HandleTypeDef* %39), !dbg !343
  br label %if.end23, !dbg !346

if.end23:                                         ; preds = %if.then21, %if.then12
  br label %if.end24, !dbg !347

if.end24:                                         ; preds = %if.end23, %if.then9
  br label %if.end25, !dbg !348

if.end25:                                         ; preds = %if.end24, %if.end7
  ret void, !dbg !349
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma_ex.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_DMAEx_MultiBufferStart", scope: !1, file: !1, line: 116, type: !9, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 118, column: 21, scope: !8)
!11 = !DILocation(line: 124, column: 7, scope: !8)
!12 = !DILocation(line: 124, column: 13, scope: !8)
!13 = !DILocation(line: 124, column: 18, scope: !8)
!14 = !DILocation(line: 124, column: 28, scope: !8)
!15 = !DILocation(line: 126, column: 5, scope: !8)
!16 = !DILocation(line: 126, column: 11, scope: !8)
!17 = !DILocation(line: 126, column: 21, scope: !8)
!18 = !DILocation(line: 127, column: 12, scope: !8)
!19 = !DILocation(line: 128, column: 3, scope: !8)
!20 = !DILocation(line: 132, column: 5, scope: !8)
!21 = !DILocation(line: 134, column: 8, scope: !8)
!22 = !DILocation(line: 134, column: 14, scope: !8)
!23 = !DILocation(line: 134, column: 20, scope: !8)
!24 = !DILocation(line: 137, column: 7, scope: !8)
!25 = !DILocation(line: 137, column: 13, scope: !8)
!26 = !DILocation(line: 137, column: 19, scope: !8)
!27 = !DILocation(line: 140, column: 7, scope: !8)
!28 = !DILocation(line: 140, column: 13, scope: !8)
!29 = !DILocation(line: 140, column: 23, scope: !8)
!30 = !DILocation(line: 143, column: 7, scope: !8)
!31 = !DILocation(line: 143, column: 13, scope: !8)
!32 = !DILocation(line: 143, column: 23, scope: !8)
!33 = !DILocation(line: 143, column: 27, scope: !8)
!34 = !DILocation(line: 146, column: 31, scope: !8)
!35 = !DILocation(line: 146, column: 7, scope: !8)
!36 = !DILocation(line: 146, column: 13, scope: !8)
!37 = !DILocation(line: 146, column: 23, scope: !8)
!38 = !DILocation(line: 146, column: 29, scope: !8)
!39 = !DILocation(line: 149, column: 32, scope: !8)
!40 = !DILocation(line: 149, column: 38, scope: !8)
!41 = !DILocation(line: 149, column: 50, scope: !8)
!42 = !DILocation(line: 149, column: 62, scope: !8)
!43 = !DILocation(line: 149, column: 7, scope: !8)
!44 = !DILocation(line: 152, column: 54, scope: !8)
!45 = !DILocation(line: 152, column: 60, scope: !8)
!46 = !DILocation(line: 152, column: 73, scope: !8)
!47 = !DILocation(line: 152, column: 50, scope: !8)
!48 = !DILocation(line: 152, column: 7, scope: !8)
!49 = !DILocation(line: 152, column: 13, scope: !8)
!50 = !DILocation(line: 152, column: 29, scope: !8)
!51 = !DILocation(line: 152, column: 34, scope: !8)
!52 = !DILocation(line: 155, column: 40, scope: !8)
!53 = !DILocation(line: 155, column: 46, scope: !8)
!54 = !DILocation(line: 155, column: 7, scope: !8)
!55 = !DILocation(line: 155, column: 13, scope: !8)
!56 = !DILocation(line: 155, column: 34, scope: !8)
!57 = !DILocation(line: 155, column: 38, scope: !8)
!58 = !DILocation(line: 157, column: 10, scope: !8)
!59 = !DILocation(line: 157, column: 16, scope: !8)
!60 = !DILocation(line: 157, column: 33, scope: !8)
!61 = !DILocation(line: 160, column: 47, scope: !8)
!62 = !DILocation(line: 160, column: 53, scope: !8)
!63 = !DILocation(line: 160, column: 9, scope: !8)
!64 = !DILocation(line: 160, column: 15, scope: !8)
!65 = !DILocation(line: 160, column: 39, scope: !8)
!66 = !DILocation(line: 160, column: 45, scope: !8)
!67 = !DILocation(line: 161, column: 7, scope: !8)
!68 = !DILocation(line: 164, column: 7, scope: !8)
!69 = !DILocation(line: 165, column: 5, scope: !8)
!70 = !DILocation(line: 169, column: 7, scope: !8)
!71 = !DILocation(line: 170, column: 14, scope: !8)
!72 = !DILocation(line: 173, column: 10, scope: !8)
!73 = !DILocation(line: 173, column: 3, scope: !8)
!74 = !DILocation(line: 174, column: 1, scope: !8)
!75 = distinct !DISubprogram(name: "DMA_MultiBufferSetConfig", scope: !1, file: !1, line: 520, type: !9, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!76 = !DILocation(line: 523, column: 27, scope: !75)
!77 = !DILocation(line: 523, column: 3, scope: !75)
!78 = !DILocation(line: 523, column: 9, scope: !75)
!79 = !DILocation(line: 523, column: 19, scope: !75)
!80 = !DILocation(line: 523, column: 25, scope: !75)
!81 = !DILocation(line: 526, column: 7, scope: !75)
!82 = !DILocation(line: 526, column: 13, scope: !75)
!83 = !DILocation(line: 526, column: 18, scope: !75)
!84 = !DILocation(line: 526, column: 29, scope: !75)
!85 = !DILocation(line: 526, column: 6, scope: !75)
!86 = !DILocation(line: 529, column: 28, scope: !75)
!87 = !DILocation(line: 529, column: 5, scope: !75)
!88 = !DILocation(line: 529, column: 11, scope: !75)
!89 = !DILocation(line: 529, column: 21, scope: !75)
!90 = !DILocation(line: 529, column: 26, scope: !75)
!91 = !DILocation(line: 532, column: 29, scope: !75)
!92 = !DILocation(line: 532, column: 5, scope: !75)
!93 = !DILocation(line: 532, column: 11, scope: !75)
!94 = !DILocation(line: 532, column: 21, scope: !75)
!95 = !DILocation(line: 532, column: 27, scope: !75)
!96 = !DILocation(line: 533, column: 3, scope: !75)
!97 = !DILocation(line: 538, column: 28, scope: !75)
!98 = !DILocation(line: 538, column: 5, scope: !75)
!99 = !DILocation(line: 538, column: 11, scope: !75)
!100 = !DILocation(line: 538, column: 21, scope: !75)
!101 = !DILocation(line: 538, column: 26, scope: !75)
!102 = !DILocation(line: 541, column: 29, scope: !75)
!103 = !DILocation(line: 541, column: 5, scope: !75)
!104 = !DILocation(line: 541, column: 11, scope: !75)
!105 = !DILocation(line: 541, column: 21, scope: !75)
!106 = !DILocation(line: 541, column: 27, scope: !75)
!107 = !DILocation(line: 543, column: 1, scope: !75)
!108 = distinct !DISubprogram(name: "HAL_DMAEx_MultiBufferStart_IT", scope: !1, file: !1, line: 186, type: !9, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!109 = !DILocation(line: 188, column: 21, scope: !108)
!110 = !DILocation(line: 195, column: 6, scope: !108)
!111 = !DILocation(line: 195, column: 12, scope: !108)
!112 = !DILocation(line: 195, column: 17, scope: !108)
!113 = !DILocation(line: 195, column: 27, scope: !108)
!114 = !DILocation(line: 197, column: 5, scope: !108)
!115 = !DILocation(line: 197, column: 11, scope: !108)
!116 = !DILocation(line: 197, column: 21, scope: !108)
!117 = !DILocation(line: 198, column: 5, scope: !108)
!118 = !DILocation(line: 202, column: 3, scope: !108)
!119 = !DILocation(line: 204, column: 6, scope: !108)
!120 = !DILocation(line: 204, column: 12, scope: !108)
!121 = !DILocation(line: 204, column: 18, scope: !108)
!122 = !DILocation(line: 207, column: 5, scope: !108)
!123 = !DILocation(line: 207, column: 11, scope: !108)
!124 = !DILocation(line: 207, column: 17, scope: !108)
!125 = !DILocation(line: 210, column: 5, scope: !108)
!126 = !DILocation(line: 210, column: 11, scope: !108)
!127 = !DILocation(line: 210, column: 21, scope: !108)
!128 = !DILocation(line: 213, column: 5, scope: !108)
!129 = !DILocation(line: 217, column: 5, scope: !108)
!130 = !DILocation(line: 217, column: 11, scope: !108)
!131 = !DILocation(line: 217, column: 21, scope: !108)
!132 = !DILocation(line: 217, column: 25, scope: !108)
!133 = !DILocation(line: 220, column: 29, scope: !108)
!134 = !DILocation(line: 220, column: 5, scope: !108)
!135 = !DILocation(line: 220, column: 11, scope: !108)
!136 = !DILocation(line: 220, column: 21, scope: !108)
!137 = !DILocation(line: 220, column: 27, scope: !108)
!138 = !DILocation(line: 223, column: 30, scope: !108)
!139 = !DILocation(line: 223, column: 36, scope: !108)
!140 = !DILocation(line: 223, column: 48, scope: !108)
!141 = !DILocation(line: 223, column: 60, scope: !108)
!142 = !DILocation(line: 223, column: 5, scope: !108)
!143 = !DILocation(line: 226, column: 52, scope: !108)
!144 = !DILocation(line: 226, column: 58, scope: !108)
!145 = !DILocation(line: 226, column: 71, scope: !108)
!146 = !DILocation(line: 226, column: 48, scope: !108)
!147 = !DILocation(line: 226, column: 5, scope: !108)
!148 = !DILocation(line: 226, column: 11, scope: !108)
!149 = !DILocation(line: 226, column: 27, scope: !108)
!150 = !DILocation(line: 226, column: 32, scope: !108)
!151 = !DILocation(line: 229, column: 38, scope: !108)
!152 = !DILocation(line: 229, column: 44, scope: !108)
!153 = !DILocation(line: 229, column: 5, scope: !108)
!154 = !DILocation(line: 229, column: 11, scope: !108)
!155 = !DILocation(line: 229, column: 32, scope: !108)
!156 = !DILocation(line: 229, column: 36, scope: !108)
!157 = !DILocation(line: 231, column: 8, scope: !108)
!158 = !DILocation(line: 231, column: 14, scope: !108)
!159 = !DILocation(line: 231, column: 31, scope: !108)
!160 = !DILocation(line: 234, column: 45, scope: !108)
!161 = !DILocation(line: 234, column: 51, scope: !108)
!162 = !DILocation(line: 234, column: 7, scope: !108)
!163 = !DILocation(line: 234, column: 13, scope: !108)
!164 = !DILocation(line: 234, column: 37, scope: !108)
!165 = !DILocation(line: 234, column: 43, scope: !108)
!166 = !DILocation(line: 235, column: 5, scope: !108)
!167 = !DILocation(line: 238, column: 16, scope: !108)
!168 = !DILocation(line: 238, column: 22, scope: !108)
!169 = !DILocation(line: 238, column: 13, scope: !108)
!170 = !DILocation(line: 238, column: 8, scope: !108)
!171 = !DILocation(line: 241, column: 7, scope: !108)
!172 = !DILocation(line: 242, column: 5, scope: !108)
!173 = !DILocation(line: 245, column: 7, scope: !108)
!174 = !DILocation(line: 246, column: 7, scope: !108)
!175 = !DILocation(line: 250, column: 9, scope: !108)
!176 = !DILocation(line: 250, column: 15, scope: !108)
!177 = !DILocation(line: 250, column: 30, scope: !108)
!178 = !DILocation(line: 250, column: 34, scope: !108)
!179 = !DILocation(line: 250, column: 52, scope: !108)
!180 = !DILocation(line: 250, column: 8, scope: !108)
!181 = !DILocation(line: 253, column: 7, scope: !108)
!182 = !DILocation(line: 253, column: 13, scope: !108)
!183 = !DILocation(line: 253, column: 28, scope: !108)
!184 = !DILocation(line: 253, column: 32, scope: !108)
!185 = !DILocation(line: 254, column: 5, scope: !108)
!186 = !DILocation(line: 256, column: 8, scope: !108)
!187 = !DILocation(line: 256, column: 14, scope: !108)
!188 = !DILocation(line: 256, column: 31, scope: !108)
!189 = !DILocation(line: 260, column: 7, scope: !108)
!190 = !DILocation(line: 260, column: 13, scope: !108)
!191 = !DILocation(line: 260, column: 31, scope: !108)
!192 = !DILocation(line: 260, column: 36, scope: !108)
!193 = !DILocation(line: 261, column: 5, scope: !108)
!194 = !DILocation(line: 264, column: 5, scope: !108)
!195 = !DILocation(line: 265, column: 3, scope: !108)
!196 = !DILocation(line: 269, column: 5, scope: !108)
!197 = !DILocation(line: 272, column: 12, scope: !108)
!198 = !DILocation(line: 274, column: 10, scope: !108)
!199 = !DILocation(line: 274, column: 3, scope: !108)
!200 = !DILocation(line: 275, column: 1, scope: !108)
!201 = distinct !DISubprogram(name: "HAL_DMAEx_ChangeMemory", scope: !1, file: !1, line: 291, type: !9, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!202 = !DILocation(line: 293, column: 6, scope: !201)
!203 = !DILocation(line: 293, column: 13, scope: !201)
!204 = !DILocation(line: 296, column: 29, scope: !201)
!205 = !DILocation(line: 296, column: 5, scope: !201)
!206 = !DILocation(line: 296, column: 11, scope: !201)
!207 = !DILocation(line: 296, column: 21, scope: !201)
!208 = !DILocation(line: 296, column: 27, scope: !201)
!209 = !DILocation(line: 297, column: 3, scope: !201)
!210 = !DILocation(line: 301, column: 29, scope: !201)
!211 = !DILocation(line: 301, column: 5, scope: !201)
!212 = !DILocation(line: 301, column: 11, scope: !201)
!213 = !DILocation(line: 301, column: 21, scope: !201)
!214 = !DILocation(line: 301, column: 27, scope: !201)
!215 = !DILocation(line: 304, column: 3, scope: !201)
!216 = distinct !DISubprogram(name: "HAL_DMAEx_ConfigMuxSync", scope: !1, file: !1, line: 314, type: !9, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!217 = !DILocation(line: 327, column: 6, scope: !216)
!218 = !DILocation(line: 327, column: 12, scope: !216)
!219 = !DILocation(line: 327, column: 18, scope: !216)
!220 = !DILocation(line: 330, column: 5, scope: !216)
!221 = !DILocation(line: 333, column: 5, scope: !216)
!222 = !DILocation(line: 340, column: 5, scope: !216)
!223 = !DILocation(line: 342, column: 5, scope: !216)
!224 = !DILocation(line: 347, column: 5, scope: !216)
!225 = !DILocation(line: 349, column: 1, scope: !216)
!226 = distinct !DISubprogram(name: "HAL_DMAEx_ConfigMuxRequestGenerator", scope: !1, file: !1, line: 360, type: !9, scopeLine: 361, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!227 = !DILocation(line: 373, column: 7, scope: !226)
!228 = !DILocation(line: 373, column: 13, scope: !226)
!229 = !DILocation(line: 373, column: 19, scope: !226)
!230 = !DILocation(line: 373, column: 43, scope: !226)
!231 = !DILocation(line: 373, column: 47, scope: !226)
!232 = !DILocation(line: 373, column: 53, scope: !226)
!233 = !DILocation(line: 373, column: 70, scope: !226)
!234 = !DILocation(line: 373, column: 6, scope: !226)
!235 = !DILocation(line: 376, column: 5, scope: !226)
!236 = !DILocation(line: 379, column: 36, scope: !226)
!237 = !DILocation(line: 379, column: 61, scope: !226)
!238 = !DILocation(line: 380, column: 37, scope: !226)
!239 = !DILocation(line: 380, column: 62, scope: !226)
!240 = !DILocation(line: 380, column: 76, scope: !226)
!241 = !DILocation(line: 380, column: 82, scope: !226)
!242 = !DILocation(line: 379, column: 70, scope: !226)
!243 = !DILocation(line: 381, column: 35, scope: !226)
!244 = !DILocation(line: 381, column: 60, scope: !226)
!245 = !DILocation(line: 380, column: 109, scope: !226)
!246 = !DILocation(line: 379, column: 5, scope: !226)
!247 = !DILocation(line: 379, column: 11, scope: !226)
!248 = !DILocation(line: 379, column: 29, scope: !226)
!249 = !DILocation(line: 379, column: 34, scope: !226)
!250 = !DILocation(line: 383, column: 4, scope: !226)
!251 = !DILocation(line: 385, column: 4, scope: !226)
!252 = !DILocation(line: 389, column: 4, scope: !226)
!253 = !DILocation(line: 391, column: 1, scope: !226)
!254 = distinct !DISubprogram(name: "HAL_DMAEx_EnableMuxRequestGenerator", scope: !1, file: !1, line: 399, type: !9, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!255 = !DILocation(line: 407, column: 7, scope: !254)
!256 = !DILocation(line: 407, column: 13, scope: !254)
!257 = !DILocation(line: 407, column: 19, scope: !254)
!258 = !DILocation(line: 407, column: 43, scope: !254)
!259 = !DILocation(line: 407, column: 47, scope: !254)
!260 = !DILocation(line: 407, column: 53, scope: !254)
!261 = !DILocation(line: 407, column: 70, scope: !254)
!262 = !DILocation(line: 407, column: 6, scope: !254)
!263 = !DILocation(line: 411, column: 5, scope: !254)
!264 = !DILocation(line: 411, column: 11, scope: !254)
!265 = !DILocation(line: 411, column: 29, scope: !254)
!266 = !DILocation(line: 411, column: 34, scope: !254)
!267 = !DILocation(line: 413, column: 4, scope: !254)
!268 = !DILocation(line: 417, column: 4, scope: !254)
!269 = !DILocation(line: 419, column: 1, scope: !254)
!270 = distinct !DISubprogram(name: "HAL_DMAEx_DisableMuxRequestGenerator", scope: !1, file: !1, line: 427, type: !9, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!271 = !DILocation(line: 435, column: 7, scope: !270)
!272 = !DILocation(line: 435, column: 13, scope: !270)
!273 = !DILocation(line: 435, column: 19, scope: !270)
!274 = !DILocation(line: 435, column: 43, scope: !270)
!275 = !DILocation(line: 435, column: 47, scope: !270)
!276 = !DILocation(line: 435, column: 53, scope: !270)
!277 = !DILocation(line: 435, column: 70, scope: !270)
!278 = !DILocation(line: 435, column: 6, scope: !270)
!279 = !DILocation(line: 439, column: 5, scope: !270)
!280 = !DILocation(line: 439, column: 11, scope: !270)
!281 = !DILocation(line: 439, column: 29, scope: !270)
!282 = !DILocation(line: 439, column: 34, scope: !270)
!283 = !DILocation(line: 441, column: 5, scope: !270)
!284 = !DILocation(line: 445, column: 5, scope: !270)
!285 = !DILocation(line: 447, column: 1, scope: !270)
!286 = distinct !DISubprogram(name: "HAL_DMAEx_MUX_IRQHandler", scope: !1, file: !1, line: 455, type: !9, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!287 = !DILocation(line: 458, column: 7, scope: !286)
!288 = !DILocation(line: 458, column: 13, scope: !286)
!289 = !DILocation(line: 458, column: 34, scope: !286)
!290 = !DILocation(line: 458, column: 40, scope: !286)
!291 = !DILocation(line: 458, column: 46, scope: !286)
!292 = !DILocation(line: 458, column: 38, scope: !286)
!293 = !DILocation(line: 458, column: 71, scope: !286)
!294 = !DILocation(line: 458, column: 6, scope: !286)
!295 = !DILocation(line: 461, column: 5, scope: !286)
!296 = !DILocation(line: 461, column: 11, scope: !286)
!297 = !DILocation(line: 461, column: 26, scope: !286)
!298 = !DILocation(line: 461, column: 30, scope: !286)
!299 = !DILocation(line: 464, column: 38, scope: !286)
!300 = !DILocation(line: 464, column: 44, scope: !286)
!301 = !DILocation(line: 464, column: 5, scope: !286)
!302 = !DILocation(line: 464, column: 11, scope: !286)
!303 = !DILocation(line: 464, column: 32, scope: !286)
!304 = !DILocation(line: 464, column: 36, scope: !286)
!305 = !DILocation(line: 467, column: 5, scope: !286)
!306 = !DILocation(line: 467, column: 11, scope: !286)
!307 = !DILocation(line: 467, column: 21, scope: !286)
!308 = !DILocation(line: 469, column: 8, scope: !286)
!309 = !DILocation(line: 469, column: 14, scope: !286)
!310 = !DILocation(line: 469, column: 32, scope: !286)
!311 = !DILocation(line: 472, column: 7, scope: !286)
!312 = !DILocation(line: 472, column: 13, scope: !286)
!313 = !DILocation(line: 472, column: 31, scope: !286)
!314 = !DILocation(line: 473, column: 5, scope: !286)
!315 = !DILocation(line: 474, column: 3, scope: !286)
!316 = !DILocation(line: 476, column: 6, scope: !286)
!317 = !DILocation(line: 476, column: 12, scope: !286)
!318 = !DILocation(line: 476, column: 29, scope: !286)
!319 = !DILocation(line: 479, column: 9, scope: !286)
!320 = !DILocation(line: 479, column: 15, scope: !286)
!321 = !DILocation(line: 479, column: 39, scope: !286)
!322 = !DILocation(line: 479, column: 46, scope: !286)
!323 = !DILocation(line: 479, column: 52, scope: !286)
!324 = !DILocation(line: 479, column: 44, scope: !286)
!325 = !DILocation(line: 479, column: 80, scope: !286)
!326 = !DILocation(line: 479, column: 8, scope: !286)
!327 = !DILocation(line: 482, column: 7, scope: !286)
!328 = !DILocation(line: 482, column: 13, scope: !286)
!329 = !DILocation(line: 482, column: 31, scope: !286)
!330 = !DILocation(line: 482, column: 36, scope: !286)
!331 = !DILocation(line: 485, column: 45, scope: !286)
!332 = !DILocation(line: 485, column: 51, scope: !286)
!333 = !DILocation(line: 485, column: 7, scope: !286)
!334 = !DILocation(line: 485, column: 13, scope: !286)
!335 = !DILocation(line: 485, column: 37, scope: !286)
!336 = !DILocation(line: 485, column: 43, scope: !286)
!337 = !DILocation(line: 488, column: 7, scope: !286)
!338 = !DILocation(line: 488, column: 13, scope: !286)
!339 = !DILocation(line: 488, column: 23, scope: !286)
!340 = !DILocation(line: 490, column: 10, scope: !286)
!341 = !DILocation(line: 490, column: 16, scope: !286)
!342 = !DILocation(line: 490, column: 34, scope: !286)
!343 = !DILocation(line: 493, column: 9, scope: !286)
!344 = !DILocation(line: 493, column: 15, scope: !286)
!345 = !DILocation(line: 493, column: 33, scope: !286)
!346 = !DILocation(line: 494, column: 7, scope: !286)
!347 = !DILocation(line: 495, column: 5, scope: !286)
!348 = !DILocation(line: 496, column: 3, scope: !286)
!349 = !DILocation(line: 497, column: 1, scope: !286)
