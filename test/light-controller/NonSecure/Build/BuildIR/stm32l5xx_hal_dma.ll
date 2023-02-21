; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma.c"
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

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Init(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %tmp = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !10
  %cmp = icmp eq %struct.__DMA_HandleTypeDef* %0, null, !dbg !11
  br i1 %cmp, label %if.then, label %if.end, !dbg !10

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !12
  br label %return, !dbg !12

if.end:                                           ; preds = %entry
  %1 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !13
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %1, i32 0, i32 0, !dbg !14
  %2 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !14
  %3 = ptrtoint %struct.DMA_Channel_TypeDef* %2 to i32, !dbg !15
  %cmp1 = icmp ult i32 %3, 1073873928, !dbg !16
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !15

if.then2:                                         ; preds = %if.end
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !17
  %Instance3 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 0, !dbg !18
  %5 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance3, align 4, !dbg !18
  %6 = ptrtoint %struct.DMA_Channel_TypeDef* %5 to i32, !dbg !19
  %sub = sub i32 %6, 1073872904, !dbg !20
  %div = udiv i32 %sub, 20, !dbg !21
  %shl = shl i32 %div, 2, !dbg !22
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !23
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 13, !dbg !24
  store i32 %shl, i32* %ChannelIndex, align 4, !dbg !25
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !26
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 12, !dbg !27
  store %struct.DMA_TypeDef* inttoptr (i32 1073872896 to %struct.DMA_TypeDef*), %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !28
  br label %if.end10, !dbg !29

if.else:                                          ; preds = %if.end
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !30
  %Instance4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 0, !dbg !31
  %10 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance4, align 4, !dbg !31
  %11 = ptrtoint %struct.DMA_Channel_TypeDef* %10 to i32, !dbg !32
  %sub5 = sub i32 %11, 1073873928, !dbg !33
  %div6 = udiv i32 %sub5, 20, !dbg !34
  %shl7 = shl i32 %div6, 2, !dbg !35
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !36
  %ChannelIndex8 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 13, !dbg !37
  store i32 %shl7, i32* %ChannelIndex8, align 4, !dbg !38
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !39
  %DmaBaseAddress9 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 12, !dbg !40
  store %struct.DMA_TypeDef* inttoptr (i32 1073873920 to %struct.DMA_TypeDef*), %struct.DMA_TypeDef** %DmaBaseAddress9, align 4, !dbg !41
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then2
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !42
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 3, !dbg !43
  store volatile i8 2, i8* %State, align 1, !dbg !44
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !45
  %Instance11 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 0, !dbg !46
  %16 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance11, align 4, !dbg !46
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %16, i32 0, i32 0, !dbg !47
  %17 = load volatile i32, i32* %CCR, align 4, !dbg !47
  store i32 %17, i32* %tmp, align 4, !dbg !48
  %18 = load i32, i32* %tmp, align 4, !dbg !49
  %and = and i32 %18, -131057, !dbg !49
  store i32 %and, i32* %tmp, align 4, !dbg !49
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !50
  %Init = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %19, i32 0, i32 1, !dbg !51
  %Direction = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init, i32 0, i32 1, !dbg !52
  %20 = load i32, i32* %Direction, align 4, !dbg !52
  %21 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !53
  %Init12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %21, i32 0, i32 1, !dbg !54
  %PeriphInc = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init12, i32 0, i32 2, !dbg !55
  %22 = load i32, i32* %PeriphInc, align 4, !dbg !55
  %or = or i32 %20, %22, !dbg !56
  %23 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !57
  %Init13 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %23, i32 0, i32 1, !dbg !58
  %MemInc = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init13, i32 0, i32 3, !dbg !59
  %24 = load i32, i32* %MemInc, align 4, !dbg !59
  %or14 = or i32 %or, %24, !dbg !60
  %25 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !61
  %Init15 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %25, i32 0, i32 1, !dbg !62
  %PeriphDataAlignment = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init15, i32 0, i32 4, !dbg !63
  %26 = load i32, i32* %PeriphDataAlignment, align 4, !dbg !63
  %or16 = or i32 %or14, %26, !dbg !64
  %27 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !65
  %Init17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %27, i32 0, i32 1, !dbg !66
  %MemDataAlignment = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init17, i32 0, i32 5, !dbg !67
  %28 = load i32, i32* %MemDataAlignment, align 4, !dbg !67
  %or18 = or i32 %or16, %28, !dbg !68
  %29 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !69
  %Init19 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %29, i32 0, i32 1, !dbg !70
  %Mode = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init19, i32 0, i32 6, !dbg !71
  %30 = load i32, i32* %Mode, align 4, !dbg !71
  %or20 = or i32 %or18, %30, !dbg !72
  %31 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !73
  %Init21 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %31, i32 0, i32 1, !dbg !74
  %Priority = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init21, i32 0, i32 7, !dbg !75
  %32 = load i32, i32* %Priority, align 4, !dbg !75
  %or22 = or i32 %or20, %32, !dbg !76
  %33 = load i32, i32* %tmp, align 4, !dbg !77
  %or23 = or i32 %33, %or22, !dbg !77
  store i32 %or23, i32* %tmp, align 4, !dbg !77
  %34 = load i32, i32* %tmp, align 4, !dbg !78
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !79
  %Instance24 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %35, i32 0, i32 0, !dbg !80
  %36 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance24, align 4, !dbg !80
  %CCR25 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %36, i32 0, i32 0, !dbg !81
  store volatile i32 %34, i32* %CCR25, align 4, !dbg !82
  %37 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !83
  call arm_aapcs_vfpcc void @DMA_CalcDMAMUXChannelBaseAndMask(%struct.__DMA_HandleTypeDef* %37), !dbg !84
  %38 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !85
  %Init26 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %38, i32 0, i32 1, !dbg !86
  %Direction27 = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init26, i32 0, i32 1, !dbg !87
  %39 = load i32, i32* %Direction27, align 4, !dbg !87
  %cmp28 = icmp eq i32 %39, 16384, !dbg !88
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !85

if.then29:                                        ; preds = %if.end10
  %40 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !89
  %Init30 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %40, i32 0, i32 1, !dbg !90
  %Request = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init30, i32 0, i32 0, !dbg !91
  store i32 0, i32* %Request, align 4, !dbg !92
  br label %if.end31, !dbg !93

if.end31:                                         ; preds = %if.then29, %if.end10
  %41 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !94
  %Init32 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %41, i32 0, i32 1, !dbg !95
  %Request33 = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init32, i32 0, i32 0, !dbg !96
  %42 = load i32, i32* %Request33, align 4, !dbg !96
  %and34 = and i32 %42, 255, !dbg !97
  %43 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !98
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %43, i32 0, i32 14, !dbg !99
  %44 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !99
  %CCR35 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %44, i32 0, i32 0, !dbg !100
  store volatile i32 %and34, i32* %CCR35, align 4, !dbg !101
  %45 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !102
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %45, i32 0, i32 16, !dbg !103
  %46 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !103
  %47 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !104
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %47, i32 0, i32 15, !dbg !105
  %48 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !105
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %48, i32 0, i32 1, !dbg !106
  store volatile i32 %46, i32* %CFR, align 4, !dbg !107
  %49 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !108
  %Init36 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %49, i32 0, i32 1, !dbg !109
  %Request37 = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init36, i32 0, i32 0, !dbg !110
  %50 = load i32, i32* %Request37, align 4, !dbg !110
  %cmp38 = icmp ugt i32 %50, 0, !dbg !111
  br i1 %cmp38, label %land.lhs.true, label %if.else43, !dbg !112

land.lhs.true:                                    ; preds = %if.end31
  %51 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !113
  %Init39 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %51, i32 0, i32 1, !dbg !114
  %Request40 = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init39, i32 0, i32 0, !dbg !115
  %52 = load i32, i32* %Request40, align 4, !dbg !115
  %cmp41 = icmp ule i32 %52, 4, !dbg !116
  br i1 %cmp41, label %if.then42, label %if.else43, !dbg !117

if.then42:                                        ; preds = %land.lhs.true
  %53 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !118
  call arm_aapcs_vfpcc void @DMA_CalcDMAMUXRequestGenBaseAndMask(%struct.__DMA_HandleTypeDef* %53), !dbg !119
  %54 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !120
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %54, i32 0, i32 17, !dbg !121
  %55 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !121
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %55, i32 0, i32 0, !dbg !122
  store volatile i32 0, i32* %RGCR, align 4, !dbg !123
  %56 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !124
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %56, i32 0, i32 19, !dbg !125
  %57 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !125
  %58 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !126
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %58, i32 0, i32 18, !dbg !127
  %59 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !127
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %59, i32 0, i32 1, !dbg !128
  store volatile i32 %57, i32* %RGCFR, align 4, !dbg !129
  br label %if.end47, !dbg !130

if.else43:                                        ; preds = %land.lhs.true, %if.end31
  %60 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !131
  %DMAmuxRequestGen44 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %60, i32 0, i32 17, !dbg !132
  store %struct.DMAMUX_RequestGen_TypeDef* null, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen44, align 4, !dbg !133
  %61 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !134
  %DMAmuxRequestGenStatus45 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %61, i32 0, i32 18, !dbg !135
  store %struct.DMAMUX_RequestGenStatus_TypeDef* null, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus45, align 4, !dbg !136
  %62 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !137
  %DMAmuxRequestGenStatusMask46 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %62, i32 0, i32 19, !dbg !138
  store i32 0, i32* %DMAmuxRequestGenStatusMask46, align 4, !dbg !139
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then42
  %63 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !140
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %63, i32 0, i32 11, !dbg !141
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !142
  %64 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !143
  %State48 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %64, i32 0, i32 3, !dbg !144
  store volatile i8 1, i8* %State48, align 1, !dbg !145
  %65 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !146
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %65, i32 0, i32 2, !dbg !147
  store i8 0, i8* %Lock, align 4, !dbg !148
  store i8 0, i8* %retval, align 1, !dbg !149
  br label %return, !dbg !149

return:                                           ; preds = %if.end47, %if.then
  %66 = load i8, i8* %retval, align 1, !dbg !150
  ret i8 %66, !dbg !150
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @DMA_CalcDMAMUXChannelBaseAndMask(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !151 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %channel_number = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !152
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 0, !dbg !153
  %1 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !153
  %2 = ptrtoint %struct.DMA_Channel_TypeDef* %1 to i32, !dbg !154
  %cmp = icmp ult i32 %2, 1073873928, !dbg !155
  br i1 %cmp, label %if.then, label %if.else, !dbg !154

if.then:                                          ; preds = %entry
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !156
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 13, !dbg !157
  %4 = load i32, i32* %ChannelIndex, align 4, !dbg !157
  %shr = lshr i32 %4, 2, !dbg !158
  %add.ptr = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* inttoptr (i32 1073874944 to %struct.DMAMUX_Channel_TypeDef*), i32 %shr, !dbg !159
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !160
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 14, !dbg !161
  store %struct.DMAMUX_Channel_TypeDef* %add.ptr, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !162
  br label %if.end, !dbg !163

if.else:                                          ; preds = %entry
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !164
  %ChannelIndex1 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 13, !dbg !165
  %7 = load i32, i32* %ChannelIndex1, align 4, !dbg !165
  %shr2 = lshr i32 %7, 2, !dbg !166
  %add.ptr3 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* inttoptr (i32 1073874976 to %struct.DMAMUX_Channel_TypeDef*), i32 %shr2, !dbg !167
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !168
  %DMAmuxChannel4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 14, !dbg !169
  store %struct.DMAMUX_Channel_TypeDef* %add.ptr3, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel4, align 4, !dbg !170
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !171
  %Instance5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 0, !dbg !172
  %10 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance5, align 4, !dbg !172
  %11 = ptrtoint %struct.DMA_Channel_TypeDef* %10 to i32, !dbg !173
  %and = and i32 %11, 255, !dbg !174
  %sub = sub i32 %and, 8, !dbg !175
  %div = udiv i32 %sub, 20, !dbg !176
  store i32 %div, i32* %channel_number, align 4, !dbg !177
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !178
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 15, !dbg !179
  store %struct.DMAMUX_ChannelStatus_TypeDef* inttoptr (i32 1073875072 to %struct.DMAMUX_ChannelStatus_TypeDef*), %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !180
  %13 = load i32, i32* %channel_number, align 4, !dbg !181
  %and6 = and i32 %13, 31, !dbg !182
  %shl = shl i32 1, %and6, !dbg !183
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !184
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 16, !dbg !185
  store i32 %shl, i32* %DMAmuxChannelStatusMask, align 4, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @DMA_CalcDMAMUXRequestGenBaseAndMask(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !188 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %request = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !189
  %Init = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 1, !dbg !190
  %Request = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init, i32 0, i32 0, !dbg !191
  %1 = load i32, i32* %Request, align 4, !dbg !191
  %and = and i32 %1, 255, !dbg !192
  store i32 %and, i32* %request, align 4, !dbg !193
  %2 = load i32, i32* %request, align 4, !dbg !194
  %sub = sub i32 %2, 1, !dbg !195
  %mul = mul i32 %sub, 4, !dbg !196
  %add = add i32 1073875200, %mul, !dbg !197
  %3 = inttoptr i32 %add to %struct.DMAMUX_RequestGen_TypeDef*, !dbg !198
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !199
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 17, !dbg !200
  store %struct.DMAMUX_RequestGen_TypeDef* %3, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !201
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !202
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 18, !dbg !203
  store %struct.DMAMUX_RequestGenStatus_TypeDef* inttoptr (i32 1073875264 to %struct.DMAMUX_RequestGenStatus_TypeDef*), %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !204
  %6 = load i32, i32* %request, align 4, !dbg !205
  %sub1 = sub i32 %6, 1, !dbg !206
  %and2 = and i32 %sub1, 3, !dbg !207
  %shl = shl i32 1, %and2, !dbg !208
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !209
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 19, !dbg !210
  store i32 %shl, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_DeInit(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !213 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !214
  %cmp = icmp eq %struct.__DMA_HandleTypeDef* null, %0, !dbg !215
  br i1 %cmp, label %if.then, label %if.end, !dbg !216

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !217
  br label %return, !dbg !217

if.end:                                           ; preds = %entry
  %1 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !218
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %1, i32 0, i32 0, !dbg !218
  %2 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !218
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %2, i32 0, i32 0, !dbg !218
  %3 = load volatile i32, i32* %CCR, align 4, !dbg !218
  %and = and i32 %3, -2, !dbg !218
  store volatile i32 %and, i32* %CCR, align 4, !dbg !218
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !219
  %Instance1 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 0, !dbg !220
  %5 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance1, align 4, !dbg !220
  %6 = ptrtoint %struct.DMA_Channel_TypeDef* %5 to i32, !dbg !221
  %cmp2 = icmp ult i32 %6, 1073873928, !dbg !222
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !221

if.then3:                                         ; preds = %if.end
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !223
  %Instance4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 0, !dbg !224
  %8 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance4, align 4, !dbg !224
  %9 = ptrtoint %struct.DMA_Channel_TypeDef* %8 to i32, !dbg !225
  %sub = sub i32 %9, 1073872904, !dbg !226
  %div = udiv i32 %sub, 20, !dbg !227
  %shl = shl i32 %div, 2, !dbg !228
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !229
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 13, !dbg !230
  store i32 %shl, i32* %ChannelIndex, align 4, !dbg !231
  %11 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !232
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %11, i32 0, i32 12, !dbg !233
  store %struct.DMA_TypeDef* inttoptr (i32 1073872896 to %struct.DMA_TypeDef*), %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !234
  br label %if.end11, !dbg !235

if.else:                                          ; preds = %if.end
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !236
  %Instance5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 0, !dbg !237
  %13 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance5, align 4, !dbg !237
  %14 = ptrtoint %struct.DMA_Channel_TypeDef* %13 to i32, !dbg !238
  %sub6 = sub i32 %14, 1073873928, !dbg !239
  %div7 = udiv i32 %sub6, 20, !dbg !240
  %shl8 = shl i32 %div7, 2, !dbg !241
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !242
  %ChannelIndex9 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 13, !dbg !243
  store i32 %shl8, i32* %ChannelIndex9, align 4, !dbg !244
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !245
  %DmaBaseAddress10 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %16, i32 0, i32 12, !dbg !246
  store %struct.DMA_TypeDef* inttoptr (i32 1073873920 to %struct.DMA_TypeDef*), %struct.DMA_TypeDef** %DmaBaseAddress10, align 4, !dbg !247
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !248
  %Instance12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 0, !dbg !249
  %18 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance12, align 4, !dbg !249
  %CCR13 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %18, i32 0, i32 0, !dbg !250
  store volatile i32 0, i32* %CCR13, align 4, !dbg !251
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !252
  %ChannelIndex14 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %19, i32 0, i32 13, !dbg !253
  %20 = load i32, i32* %ChannelIndex14, align 4, !dbg !253
  %and15 = and i32 %20, 28, !dbg !254
  %shl16 = shl i32 1, %and15, !dbg !255
  %21 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !256
  %DmaBaseAddress17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %21, i32 0, i32 12, !dbg !257
  %22 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress17, align 4, !dbg !257
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %22, i32 0, i32 1, !dbg !258
  store volatile i32 %shl16, i32* %IFCR, align 4, !dbg !259
  %23 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !260
  call arm_aapcs_vfpcc void @DMA_CalcDMAMUXChannelBaseAndMask(%struct.__DMA_HandleTypeDef* %23), !dbg !261
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !262
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %24, i32 0, i32 14, !dbg !263
  %25 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !263
  %CCR18 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %25, i32 0, i32 0, !dbg !264
  store volatile i32 0, i32* %CCR18, align 4, !dbg !265
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !266
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %26, i32 0, i32 16, !dbg !267
  %27 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !267
  %28 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !268
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %28, i32 0, i32 15, !dbg !269
  %29 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !269
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %29, i32 0, i32 1, !dbg !270
  store volatile i32 %27, i32* %CFR, align 4, !dbg !271
  %30 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !272
  %Init = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %30, i32 0, i32 1, !dbg !273
  %Request = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init, i32 0, i32 0, !dbg !274
  %31 = load i32, i32* %Request, align 4, !dbg !274
  %cmp19 = icmp ugt i32 %31, 0, !dbg !275
  br i1 %cmp19, label %land.lhs.true, label %if.end24, !dbg !276

land.lhs.true:                                    ; preds = %if.end11
  %32 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !277
  %Init20 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %32, i32 0, i32 1, !dbg !278
  %Request21 = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init20, i32 0, i32 0, !dbg !279
  %33 = load i32, i32* %Request21, align 4, !dbg !279
  %cmp22 = icmp ule i32 %33, 4, !dbg !280
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !281

if.then23:                                        ; preds = %land.lhs.true
  %34 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !282
  call arm_aapcs_vfpcc void @DMA_CalcDMAMUXRequestGenBaseAndMask(%struct.__DMA_HandleTypeDef* %34), !dbg !283
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !284
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %35, i32 0, i32 17, !dbg !285
  %36 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !285
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %36, i32 0, i32 0, !dbg !286
  store volatile i32 0, i32* %RGCR, align 4, !dbg !287
  %37 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !288
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %37, i32 0, i32 19, !dbg !289
  %38 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !289
  %39 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !290
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %39, i32 0, i32 18, !dbg !291
  %40 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !291
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %40, i32 0, i32 1, !dbg !292
  store volatile i32 %38, i32* %RGCFR, align 4, !dbg !293
  br label %if.end24, !dbg !294

if.end24:                                         ; preds = %if.then23, %land.lhs.true, %if.end11
  %41 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !295
  %DMAmuxRequestGen25 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %41, i32 0, i32 17, !dbg !296
  store %struct.DMAMUX_RequestGen_TypeDef* null, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen25, align 4, !dbg !297
  %42 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !298
  %DMAmuxRequestGenStatus26 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %42, i32 0, i32 18, !dbg !299
  store %struct.DMAMUX_RequestGenStatus_TypeDef* null, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus26, align 4, !dbg !300
  %43 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !301
  %DMAmuxRequestGenStatusMask27 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %43, i32 0, i32 19, !dbg !302
  store i32 0, i32* %DMAmuxRequestGenStatusMask27, align 4, !dbg !303
  %44 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !304
  %XferCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %44, i32 0, i32 5, !dbg !305
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback, align 4, !dbg !306
  %45 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !307
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %45, i32 0, i32 6, !dbg !308
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !309
  %46 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !310
  %XferM1CpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %46, i32 0, i32 7, !dbg !311
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferM1CpltCallback, align 4, !dbg !312
  %47 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !313
  %XferM1HalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %47, i32 0, i32 8, !dbg !314
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferM1HalfCpltCallback, align 4, !dbg !315
  %48 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !316
  %XferErrorCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %48, i32 0, i32 9, !dbg !317
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback, align 4, !dbg !318
  %49 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !319
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %49, i32 0, i32 10, !dbg !320
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !321
  %50 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !322
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %50, i32 0, i32 11, !dbg !323
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !324
  %51 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !325
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %51, i32 0, i32 3, !dbg !326
  store volatile i8 0, i8* %State, align 1, !dbg !327
  br label %do.body, !dbg !328

do.body:                                          ; preds = %if.end24
  %52 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !328
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %52, i32 0, i32 2, !dbg !328
  store i8 0, i8* %Lock, align 4, !dbg !328
  br label %do.end, !dbg !328

do.end:                                           ; preds = %do.body
  store i8 0, i8* %retval, align 1, !dbg !329
  br label %return, !dbg !329

return:                                           ; preds = %do.end, %if.then
  %53 = load i8, i8* %retval, align 1, !dbg !330
  ret i8 %53, !dbg !330
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Start(%struct.__DMA_HandleTypeDef* %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %DataLength) #0 !dbg !331 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %SrcAddress.addr = alloca i32, align 4
  %DstAddress.addr = alloca i32, align 4
  %DataLength.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %SrcAddress, i32* %SrcAddress.addr, align 4
  store i32 %DstAddress, i32* %DstAddress.addr, align 4
  store i32 %DataLength, i32* %DataLength.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !332
  br label %do.body, !dbg !333

do.body:                                          ; preds = %entry
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !333
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 2, !dbg !333
  %1 = load i8, i8* %Lock, align 4, !dbg !333
  %conv = zext i8 %1 to i32, !dbg !333
  %cmp = icmp eq i32 %conv, 1, !dbg !333
  br i1 %cmp, label %if.then, label %if.else, !dbg !333

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !333
  br label %return, !dbg !333

if.else:                                          ; preds = %do.body
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !333
  %Lock2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 2, !dbg !333
  store i8 1, i8* %Lock2, align 4, !dbg !333
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !333

do.end:                                           ; preds = %if.end
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !334
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 3, !dbg !335
  %4 = load volatile i8, i8* %State, align 1, !dbg !335
  %conv3 = zext i8 %4 to i32, !dbg !334
  %cmp4 = icmp eq i32 1, %conv3, !dbg !336
  br i1 %cmp4, label %if.then6, label %if.else10, !dbg !337

if.then6:                                         ; preds = %do.end
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !338
  %State7 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 3, !dbg !339
  store volatile i8 2, i8* %State7, align 1, !dbg !340
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !341
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 11, !dbg !342
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !343
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !344
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 0, !dbg !344
  %8 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !344
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %8, i32 0, i32 0, !dbg !344
  %9 = load volatile i32, i32* %CCR, align 4, !dbg !344
  %and = and i32 %9, -2, !dbg !344
  store volatile i32 %and, i32* %CCR, align 4, !dbg !344
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !345
  %11 = load i32, i32* %SrcAddress.addr, align 4, !dbg !346
  %12 = load i32, i32* %DstAddress.addr, align 4, !dbg !347
  %13 = load i32, i32* %DataLength.addr, align 4, !dbg !348
  call arm_aapcs_vfpcc void @DMA_SetConfig(%struct.__DMA_HandleTypeDef* %10, i32 %11, i32 %12, i32 %13), !dbg !349
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !350
  %Instance8 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 0, !dbg !350
  %15 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance8, align 4, !dbg !350
  %CCR9 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %15, i32 0, i32 0, !dbg !350
  %16 = load volatile i32, i32* %CCR9, align 4, !dbg !350
  %or = or i32 %16, 1, !dbg !350
  store volatile i32 %or, i32* %CCR9, align 4, !dbg !350
  br label %if.end14, !dbg !351

if.else10:                                        ; preds = %do.end
  br label %do.body11, !dbg !352

do.body11:                                        ; preds = %if.else10
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !352
  %Lock12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 2, !dbg !352
  store i8 0, i8* %Lock12, align 4, !dbg !352
  br label %do.end13, !dbg !352

do.end13:                                         ; preds = %do.body11
  store i8 2, i8* %status, align 1, !dbg !353
  br label %if.end14

if.end14:                                         ; preds = %do.end13, %if.then6
  %18 = load i8, i8* %status, align 1, !dbg !354
  store i8 %18, i8* %retval, align 1, !dbg !355
  br label %return, !dbg !355

return:                                           ; preds = %if.end14, %if.then
  %19 = load i8, i8* %retval, align 1, !dbg !356
  ret i8 %19, !dbg !356
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @DMA_SetConfig(%struct.__DMA_HandleTypeDef* %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %DataLength) #0 !dbg !357 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %SrcAddress.addr = alloca i32, align 4
  %DstAddress.addr = alloca i32, align 4
  %DataLength.addr = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %SrcAddress, i32* %SrcAddress.addr, align 4
  store i32 %DstAddress, i32* %DstAddress.addr, align 4
  store i32 %DataLength, i32* %DataLength.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !358
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 16, !dbg !359
  %1 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !359
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !360
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 15, !dbg !361
  %3 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !361
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %3, i32 0, i32 1, !dbg !362
  store volatile i32 %1, i32* %CFR, align 4, !dbg !363
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !364
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 17, !dbg !365
  %5 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !365
  %cmp = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %5, null, !dbg !366
  br i1 %cmp, label %if.then, label %if.end, !dbg !364

if.then:                                          ; preds = %entry
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !367
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 19, !dbg !368
  %7 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !368
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !369
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 18, !dbg !370
  %9 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !370
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %9, i32 0, i32 1, !dbg !371
  store volatile i32 %7, i32* %RGCFR, align 4, !dbg !372
  br label %if.end, !dbg !373

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !374
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 13, !dbg !375
  %11 = load i32, i32* %ChannelIndex, align 4, !dbg !375
  %and = and i32 %11, 28, !dbg !376
  %shl = shl i32 1, %and, !dbg !377
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !378
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 12, !dbg !379
  %13 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !379
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %13, i32 0, i32 1, !dbg !380
  store volatile i32 %shl, i32* %IFCR, align 4, !dbg !381
  %14 = load i32, i32* %DataLength.addr, align 4, !dbg !382
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !383
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 0, !dbg !384
  %16 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !384
  %CNDTR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %16, i32 0, i32 1, !dbg !385
  store volatile i32 %14, i32* %CNDTR, align 4, !dbg !386
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !387
  %Init = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 1, !dbg !388
  %Direction = getelementptr inbounds %struct.DMA_InitTypeDef, %struct.DMA_InitTypeDef* %Init, i32 0, i32 1, !dbg !389
  %18 = load i32, i32* %Direction, align 4, !dbg !389
  %cmp1 = icmp eq i32 %18, 16, !dbg !390
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !391

if.then2:                                         ; preds = %if.end
  %19 = load i32, i32* %DstAddress.addr, align 4, !dbg !392
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !393
  %Instance3 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 0, !dbg !394
  %21 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance3, align 4, !dbg !394
  %CPAR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %21, i32 0, i32 2, !dbg !395
  store volatile i32 %19, i32* %CPAR, align 4, !dbg !396
  %22 = load i32, i32* %SrcAddress.addr, align 4, !dbg !397
  %23 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !398
  %Instance4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %23, i32 0, i32 0, !dbg !399
  %24 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance4, align 4, !dbg !399
  %CM0AR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %24, i32 0, i32 3, !dbg !400
  store volatile i32 %22, i32* %CM0AR, align 4, !dbg !401
  br label %if.end9, !dbg !402

if.else:                                          ; preds = %if.end
  %25 = load i32, i32* %SrcAddress.addr, align 4, !dbg !403
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !404
  %Instance5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %26, i32 0, i32 0, !dbg !405
  %27 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance5, align 4, !dbg !405
  %CPAR6 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %27, i32 0, i32 2, !dbg !406
  store volatile i32 %25, i32* %CPAR6, align 4, !dbg !407
  %28 = load i32, i32* %DstAddress.addr, align 4, !dbg !408
  %29 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !409
  %Instance7 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %29, i32 0, i32 0, !dbg !410
  %30 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance7, align 4, !dbg !410
  %CM0AR8 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %30, i32 0, i32 3, !dbg !411
  store volatile i32 %28, i32* %CM0AR8, align 4, !dbg !412
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Start_IT(%struct.__DMA_HandleTypeDef* %hdma, i32 %SrcAddress, i32 %DstAddress, i32 %DataLength) #0 !dbg !414 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %SrcAddress.addr = alloca i32, align 4
  %DstAddress.addr = alloca i32, align 4
  %DataLength.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %SrcAddress, i32* %SrcAddress.addr, align 4
  store i32 %DstAddress, i32* %DstAddress.addr, align 4
  store i32 %DataLength, i32* %DataLength.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !415
  br label %do.body, !dbg !416

do.body:                                          ; preds = %entry
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !416
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 2, !dbg !416
  %1 = load i8, i8* %Lock, align 4, !dbg !416
  %conv = zext i8 %1 to i32, !dbg !416
  %cmp = icmp eq i32 %conv, 1, !dbg !416
  br i1 %cmp, label %if.then, label %if.else, !dbg !416

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !416
  br label %return, !dbg !416

if.else:                                          ; preds = %do.body
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !416
  %Lock2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 2, !dbg !416
  store i8 1, i8* %Lock2, align 4, !dbg !416
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !416

do.end:                                           ; preds = %if.end
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !417
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 3, !dbg !418
  %4 = load volatile i8, i8* %State, align 1, !dbg !418
  %conv3 = zext i8 %4 to i32, !dbg !417
  %cmp4 = icmp eq i32 1, %conv3, !dbg !419
  br i1 %cmp4, label %if.then6, label %if.else39, !dbg !420

if.then6:                                         ; preds = %do.end
  %5 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !421
  %State7 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %5, i32 0, i32 3, !dbg !422
  store volatile i8 2, i8* %State7, align 1, !dbg !423
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !424
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 11, !dbg !425
  store volatile i32 0, i32* %ErrorCode, align 4, !dbg !426
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !427
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 0, !dbg !427
  %8 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !427
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %8, i32 0, i32 0, !dbg !427
  %9 = load volatile i32, i32* %CCR, align 4, !dbg !427
  %and = and i32 %9, -2, !dbg !427
  store volatile i32 %and, i32* %CCR, align 4, !dbg !427
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !428
  %11 = load i32, i32* %SrcAddress.addr, align 4, !dbg !429
  %12 = load i32, i32* %DstAddress.addr, align 4, !dbg !430
  %13 = load i32, i32* %DataLength.addr, align 4, !dbg !431
  call arm_aapcs_vfpcc void @DMA_SetConfig(%struct.__DMA_HandleTypeDef* %10, i32 %11, i32 %12, i32 %13), !dbg !432
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !433
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 6, !dbg !434
  %15 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !434
  %cmp8 = icmp ne void (%struct.__DMA_HandleTypeDef*)* null, %15, !dbg !435
  br i1 %cmp8, label %if.then10, label %if.else13, !dbg !436

if.then10:                                        ; preds = %if.then6
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !437
  %Instance11 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %16, i32 0, i32 0, !dbg !437
  %17 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance11, align 4, !dbg !437
  %CCR12 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %17, i32 0, i32 0, !dbg !437
  %18 = load volatile i32, i32* %CCR12, align 4, !dbg !437
  %or = or i32 %18, 14, !dbg !437
  store volatile i32 %or, i32* %CCR12, align 4, !dbg !437
  br label %if.end20, !dbg !438

if.else13:                                        ; preds = %if.then6
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !439
  %Instance14 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %19, i32 0, i32 0, !dbg !439
  %20 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance14, align 4, !dbg !439
  %CCR15 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %20, i32 0, i32 0, !dbg !439
  %21 = load volatile i32, i32* %CCR15, align 4, !dbg !439
  %and16 = and i32 %21, -5, !dbg !439
  store volatile i32 %and16, i32* %CCR15, align 4, !dbg !439
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !440
  %Instance17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 0, !dbg !440
  %23 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance17, align 4, !dbg !440
  %CCR18 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %23, i32 0, i32 0, !dbg !440
  %24 = load volatile i32, i32* %CCR18, align 4, !dbg !440
  %or19 = or i32 %24, 10, !dbg !440
  store volatile i32 %or19, i32* %CCR18, align 4, !dbg !440
  br label %if.end20

if.end20:                                         ; preds = %if.else13, %if.then10
  %25 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !441
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %25, i32 0, i32 14, !dbg !442
  %26 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !442
  %CCR21 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %26, i32 0, i32 0, !dbg !443
  %27 = load volatile i32, i32* %CCR21, align 4, !dbg !443
  %and22 = and i32 %27, 65536, !dbg !444
  %cmp23 = icmp ne i32 %and22, 0, !dbg !445
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !446

if.then25:                                        ; preds = %if.end20
  %28 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !447
  %DMAmuxChannel26 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %28, i32 0, i32 14, !dbg !448
  %29 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel26, align 4, !dbg !448
  %CCR27 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %29, i32 0, i32 0, !dbg !449
  %30 = load volatile i32, i32* %CCR27, align 4, !dbg !450
  %or28 = or i32 %30, 256, !dbg !450
  store volatile i32 %or28, i32* %CCR27, align 4, !dbg !450
  br label %if.end29, !dbg !451

if.end29:                                         ; preds = %if.then25, %if.end20
  %31 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !452
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %31, i32 0, i32 17, !dbg !453
  %32 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !453
  %cmp30 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %32, null, !dbg !454
  br i1 %cmp30, label %if.then32, label %if.end35, !dbg !452

if.then32:                                        ; preds = %if.end29
  %33 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !455
  %DMAmuxRequestGen33 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %33, i32 0, i32 17, !dbg !456
  %34 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen33, align 4, !dbg !456
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %34, i32 0, i32 0, !dbg !457
  %35 = load volatile i32, i32* %RGCR, align 4, !dbg !458
  %or34 = or i32 %35, 256, !dbg !458
  store volatile i32 %or34, i32* %RGCR, align 4, !dbg !458
  br label %if.end35, !dbg !459

if.end35:                                         ; preds = %if.then32, %if.end29
  %36 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !460
  %Instance36 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %36, i32 0, i32 0, !dbg !460
  %37 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance36, align 4, !dbg !460
  %CCR37 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %37, i32 0, i32 0, !dbg !460
  %38 = load volatile i32, i32* %CCR37, align 4, !dbg !460
  %or38 = or i32 %38, 1, !dbg !460
  store volatile i32 %or38, i32* %CCR37, align 4, !dbg !460
  br label %if.end43, !dbg !461

if.else39:                                        ; preds = %do.end
  br label %do.body40, !dbg !462

do.body40:                                        ; preds = %if.else39
  %39 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !462
  %Lock41 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %39, i32 0, i32 2, !dbg !462
  store i8 0, i8* %Lock41, align 4, !dbg !462
  br label %do.end42, !dbg !462

do.end42:                                         ; preds = %do.body40
  store i8 2, i8* %status, align 1, !dbg !463
  br label %if.end43

if.end43:                                         ; preds = %do.end42, %if.end35
  %40 = load i8, i8* %status, align 1, !dbg !464
  store i8 %40, i8* %retval, align 1, !dbg !465
  br label %return, !dbg !465

return:                                           ; preds = %if.end43, %if.then
  %41 = load i8, i8* %retval, align 1, !dbg !466
  ret i8 %41, !dbg !466
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !467 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !468
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !469
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !470
  %1 = load volatile i8, i8* %State, align 1, !dbg !470
  %conv = zext i8 %1 to i32, !dbg !469
  %cmp = icmp ne i32 %conv, 2, !dbg !471
  br i1 %cmp, label %if.then, label %if.else, !dbg !469

if.then:                                          ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !472
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 11, !dbg !473
  store volatile i32 4, i32* %ErrorCode, align 4, !dbg !474
  br label %do.body, !dbg !475

do.body:                                          ; preds = %if.then
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !475
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 2, !dbg !475
  store i8 0, i8* %Lock, align 4, !dbg !475
  br label %do.end, !dbg !475

do.end:                                           ; preds = %do.body
  store i8 1, i8* %retval, align 1, !dbg !476
  br label %return, !dbg !476

if.else:                                          ; preds = %entry
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !477
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 0, !dbg !477
  %5 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !477
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %5, i32 0, i32 0, !dbg !477
  %6 = load volatile i32, i32* %CCR, align 4, !dbg !477
  %and = and i32 %6, -15, !dbg !477
  store volatile i32 %and, i32* %CCR, align 4, !dbg !477
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !478
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 14, !dbg !479
  %8 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !479
  %CCR2 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %8, i32 0, i32 0, !dbg !480
  %9 = load volatile i32, i32* %CCR2, align 4, !dbg !481
  %and3 = and i32 %9, -257, !dbg !481
  store volatile i32 %and3, i32* %CCR2, align 4, !dbg !481
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !482
  %Instance4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 0, !dbg !482
  %11 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance4, align 4, !dbg !482
  %CCR5 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 0, !dbg !482
  %12 = load volatile i32, i32* %CCR5, align 4, !dbg !482
  %and6 = and i32 %12, -2, !dbg !482
  store volatile i32 %and6, i32* %CCR5, align 4, !dbg !482
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !483
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 13, !dbg !484
  %14 = load i32, i32* %ChannelIndex, align 4, !dbg !484
  %and7 = and i32 %14, 28, !dbg !485
  %shl = shl i32 1, %and7, !dbg !486
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !487
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 12, !dbg !488
  %16 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !488
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %16, i32 0, i32 1, !dbg !489
  store volatile i32 %shl, i32* %IFCR, align 4, !dbg !490
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !491
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 16, !dbg !492
  %18 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !492
  %19 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !493
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %19, i32 0, i32 15, !dbg !494
  %20 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !494
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %20, i32 0, i32 1, !dbg !495
  store volatile i32 %18, i32* %CFR, align 4, !dbg !496
  %21 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !497
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %21, i32 0, i32 17, !dbg !498
  %22 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !498
  %cmp8 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %22, null, !dbg !499
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !497

if.then10:                                        ; preds = %if.else
  %23 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !500
  %DMAmuxRequestGen11 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %23, i32 0, i32 17, !dbg !501
  %24 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen11, align 4, !dbg !501
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %24, i32 0, i32 0, !dbg !502
  %25 = load volatile i32, i32* %RGCR, align 4, !dbg !503
  %and12 = and i32 %25, -257, !dbg !503
  store volatile i32 %and12, i32* %RGCR, align 4, !dbg !503
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !504
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %26, i32 0, i32 19, !dbg !505
  %27 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !505
  %28 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !506
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %28, i32 0, i32 18, !dbg !507
  %29 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !507
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %29, i32 0, i32 1, !dbg !508
  store volatile i32 %27, i32* %RGCFR, align 4, !dbg !509
  br label %if.end, !dbg !510

if.end:                                           ; preds = %if.then10, %if.else
  %30 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !511
  %State13 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %30, i32 0, i32 3, !dbg !512
  store volatile i8 1, i8* %State13, align 1, !dbg !513
  br label %do.body14, !dbg !514

do.body14:                                        ; preds = %if.end
  %31 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !514
  %Lock15 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %31, i32 0, i32 2, !dbg !514
  store i8 0, i8* %Lock15, align 4, !dbg !514
  br label %do.end16, !dbg !514

do.end16:                                         ; preds = %do.body14
  %32 = load i8, i8* %status, align 1, !dbg !515
  store i8 %32, i8* %retval, align 1, !dbg !516
  br label %return, !dbg !516

return:                                           ; preds = %do.end16, %do.end
  %33 = load i8, i8* %retval, align 1, !dbg !517
  ret i8 %33, !dbg !517
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_Abort_IT(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !518 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !519
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !520
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !521
  %1 = load volatile i8, i8* %State, align 1, !dbg !521
  %conv = zext i8 %1 to i32, !dbg !520
  %cmp = icmp ne i32 2, %conv, !dbg !522
  br i1 %cmp, label %if.then, label %if.else, !dbg !523

if.then:                                          ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !524
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 11, !dbg !525
  store volatile i32 4, i32* %ErrorCode, align 4, !dbg !526
  store i8 1, i8* %status, align 1, !dbg !527
  br label %if.end19, !dbg !528

if.else:                                          ; preds = %entry
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !529
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 0, !dbg !529
  %4 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !529
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 0, !dbg !529
  %5 = load volatile i32, i32* %CCR, align 4, !dbg !529
  %and = and i32 %5, -15, !dbg !529
  store volatile i32 %and, i32* %CCR, align 4, !dbg !529
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !530
  %Instance2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 0, !dbg !530
  %7 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance2, align 4, !dbg !530
  %CCR3 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %7, i32 0, i32 0, !dbg !530
  %8 = load volatile i32, i32* %CCR3, align 4, !dbg !530
  %and4 = and i32 %8, -2, !dbg !530
  store volatile i32 %and4, i32* %CCR3, align 4, !dbg !530
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !531
  %DMAmuxChannel = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 14, !dbg !532
  %10 = load %struct.DMAMUX_Channel_TypeDef*, %struct.DMAMUX_Channel_TypeDef** %DMAmuxChannel, align 4, !dbg !532
  %CCR5 = getelementptr inbounds %struct.DMAMUX_Channel_TypeDef, %struct.DMAMUX_Channel_TypeDef* %10, i32 0, i32 0, !dbg !533
  %11 = load volatile i32, i32* %CCR5, align 4, !dbg !534
  %and6 = and i32 %11, -257, !dbg !534
  store volatile i32 %and6, i32* %CCR5, align 4, !dbg !534
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !535
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 13, !dbg !536
  %13 = load i32, i32* %ChannelIndex, align 4, !dbg !536
  %and7 = and i32 %13, 28, !dbg !537
  %shl = shl i32 1, %and7, !dbg !538
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !539
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 12, !dbg !540
  %15 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !540
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %15, i32 0, i32 1, !dbg !541
  store volatile i32 %shl, i32* %IFCR, align 4, !dbg !542
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !543
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %16, i32 0, i32 16, !dbg !544
  %17 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !544
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !545
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %18, i32 0, i32 15, !dbg !546
  %19 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !546
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %19, i32 0, i32 1, !dbg !547
  store volatile i32 %17, i32* %CFR, align 4, !dbg !548
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !549
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 17, !dbg !550
  %21 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !550
  %cmp8 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %21, null, !dbg !551
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !549

if.then10:                                        ; preds = %if.else
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !552
  %DMAmuxRequestGen11 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 17, !dbg !553
  %23 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen11, align 4, !dbg !553
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %23, i32 0, i32 0, !dbg !554
  %24 = load volatile i32, i32* %RGCR, align 4, !dbg !555
  %and12 = and i32 %24, -257, !dbg !555
  store volatile i32 %and12, i32* %RGCR, align 4, !dbg !555
  %25 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !556
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %25, i32 0, i32 19, !dbg !557
  %26 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !557
  %27 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !558
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %27, i32 0, i32 18, !dbg !559
  %28 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !559
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %28, i32 0, i32 1, !dbg !560
  store volatile i32 %26, i32* %RGCFR, align 4, !dbg !561
  br label %if.end, !dbg !562

if.end:                                           ; preds = %if.then10, %if.else
  %29 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !563
  %State13 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %29, i32 0, i32 3, !dbg !564
  store volatile i8 1, i8* %State13, align 1, !dbg !565
  br label %do.body, !dbg !566

do.body:                                          ; preds = %if.end
  %30 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !566
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %30, i32 0, i32 2, !dbg !566
  store i8 0, i8* %Lock, align 4, !dbg !566
  br label %do.end, !dbg !566

do.end:                                           ; preds = %do.body
  %31 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !567
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %31, i32 0, i32 10, !dbg !568
  %32 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !568
  %cmp14 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %32, null, !dbg !569
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !567

if.then16:                                        ; preds = %do.end
  %33 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !570
  %XferAbortCallback17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %33, i32 0, i32 10, !dbg !571
  %34 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback17, align 4, !dbg !571
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !572
  call arm_aapcs_vfpcc void %34(%struct.__DMA_HandleTypeDef* %35), !dbg !570
  br label %if.end18, !dbg !573

if.end18:                                         ; preds = %if.then16, %do.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %36 = load i8, i8* %status, align 1, !dbg !574
  ret i8 %36, !dbg !575
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_PollForTransfer(%struct.__DMA_HandleTypeDef* %hdma, i8 zeroext %CompleteLevel, i32 %Timeout) #0 !dbg !576 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %CompleteLevel.addr = alloca i8, align 1
  %Timeout.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  %tickstart = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i8 %CompleteLevel, i8* %CompleteLevel.addr, align 1
  store i32 %Timeout, i32* %Timeout.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !577
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !578
  %1 = load volatile i8, i8* %State, align 1, !dbg !578
  %conv = zext i8 %1 to i32, !dbg !577
  %cmp = icmp ne i32 2, %conv, !dbg !579
  br i1 %cmp, label %if.then, label %if.end, !dbg !580

if.then:                                          ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !581
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 11, !dbg !582
  store volatile i32 4, i32* %ErrorCode, align 4, !dbg !583
  br label %do.body, !dbg !584

do.body:                                          ; preds = %if.then
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !584
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 2, !dbg !584
  store i8 0, i8* %Lock, align 4, !dbg !584
  br label %do.end, !dbg !584

do.end:                                           ; preds = %do.body
  store i8 1, i8* %retval, align 1, !dbg !585
  br label %return, !dbg !585

if.end:                                           ; preds = %entry
  %4 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !586
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %4, i32 0, i32 0, !dbg !587
  %5 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !587
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %5, i32 0, i32 0, !dbg !588
  %6 = load volatile i32, i32* %CCR, align 4, !dbg !588
  %and = and i32 %6, 32, !dbg !589
  %cmp2 = icmp ne i32 %and, 0, !dbg !590
  br i1 %cmp2, label %if.then4, label %if.end6, !dbg !591

if.then4:                                         ; preds = %if.end
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !592
  %ErrorCode5 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 11, !dbg !593
  store volatile i32 256, i32* %ErrorCode5, align 4, !dbg !594
  store i8 1, i8* %retval, align 1, !dbg !595
  br label %return, !dbg !595

if.end6:                                          ; preds = %if.end
  %8 = load i8, i8* %CompleteLevel.addr, align 1, !dbg !596
  %conv7 = zext i8 %8 to i32, !dbg !596
  %cmp8 = icmp eq i32 0, %conv7, !dbg !597
  br i1 %cmp8, label %if.then10, label %if.else, !dbg !598

if.then10:                                        ; preds = %if.end6
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !599
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 13, !dbg !600
  %10 = load i32, i32* %ChannelIndex, align 4, !dbg !600
  %and11 = and i32 %10, 28, !dbg !601
  %shl = shl i32 2, %and11, !dbg !602
  store i32 %shl, i32* %temp, align 4, !dbg !603
  br label %if.end15, !dbg !604

if.else:                                          ; preds = %if.end6
  %11 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !605
  %ChannelIndex12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %11, i32 0, i32 13, !dbg !606
  %12 = load i32, i32* %ChannelIndex12, align 4, !dbg !606
  %and13 = and i32 %12, 28, !dbg !607
  %shl14 = shl i32 4, %and13, !dbg !608
  store i32 %shl14, i32* %temp, align 4, !dbg !609
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !610
  store i32 %call, i32* %tickstart, align 4, !dbg !611
  br label %while.cond, !dbg !612

while.cond:                                       ; preds = %if.end53, %if.end15
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !613
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 12, !dbg !614
  %14 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !614
  %ISR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %14, i32 0, i32 0, !dbg !615
  %15 = load volatile i32, i32* %ISR, align 4, !dbg !615
  %16 = load i32, i32* %temp, align 4, !dbg !616
  %and16 = and i32 %15, %16, !dbg !617
  %cmp17 = icmp eq i32 %and16, 0, !dbg !618
  br i1 %cmp17, label %while.body, label %while.end, !dbg !612

while.body:                                       ; preds = %while.cond
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !619
  %DmaBaseAddress19 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 12, !dbg !620
  %18 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress19, align 4, !dbg !620
  %ISR20 = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %18, i32 0, i32 0, !dbg !621
  %19 = load volatile i32, i32* %ISR20, align 4, !dbg !621
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !622
  %ChannelIndex21 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 13, !dbg !623
  %21 = load i32, i32* %ChannelIndex21, align 4, !dbg !623
  %and22 = and i32 %21, 28, !dbg !624
  %shl23 = shl i32 8, %and22, !dbg !625
  %and24 = and i32 %19, %shl23, !dbg !626
  %cmp25 = icmp ne i32 %and24, 0, !dbg !627
  br i1 %cmp25, label %if.then27, label %if.end37, !dbg !628

if.then27:                                        ; preds = %while.body
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !629
  %ChannelIndex28 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 13, !dbg !630
  %23 = load i32, i32* %ChannelIndex28, align 4, !dbg !630
  %and29 = and i32 %23, 28, !dbg !631
  %shl30 = shl i32 1, %and29, !dbg !632
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !633
  %DmaBaseAddress31 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %24, i32 0, i32 12, !dbg !634
  %25 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress31, align 4, !dbg !634
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %25, i32 0, i32 1, !dbg !635
  store volatile i32 %shl30, i32* %IFCR, align 4, !dbg !636
  %26 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !637
  %ErrorCode32 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %26, i32 0, i32 11, !dbg !638
  store volatile i32 1, i32* %ErrorCode32, align 4, !dbg !639
  %27 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !640
  %State33 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %27, i32 0, i32 3, !dbg !641
  store volatile i8 1, i8* %State33, align 1, !dbg !642
  br label %do.body34, !dbg !643

do.body34:                                        ; preds = %if.then27
  %28 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !643
  %Lock35 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %28, i32 0, i32 2, !dbg !643
  store i8 0, i8* %Lock35, align 4, !dbg !643
  br label %do.end36, !dbg !643

do.end36:                                         ; preds = %do.body34
  store i8 1, i8* %retval, align 1, !dbg !644
  br label %return, !dbg !644

if.end37:                                         ; preds = %while.body
  %29 = load i32, i32* %Timeout.addr, align 4, !dbg !645
  %cmp38 = icmp ne i32 %29, -1, !dbg !646
  br i1 %cmp38, label %if.then40, label %if.end53, !dbg !645

if.then40:                                        ; preds = %if.end37
  %call41 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !647
  %30 = load i32, i32* %tickstart, align 4, !dbg !648
  %sub = sub i32 %call41, %30, !dbg !649
  %31 = load i32, i32* %Timeout.addr, align 4, !dbg !650
  %cmp42 = icmp ugt i32 %sub, %31, !dbg !651
  br i1 %cmp42, label %if.then46, label %lor.lhs.false, !dbg !652

lor.lhs.false:                                    ; preds = %if.then40
  %32 = load i32, i32* %Timeout.addr, align 4, !dbg !653
  %cmp44 = icmp eq i32 %32, 0, !dbg !654
  br i1 %cmp44, label %if.then46, label %if.end52, !dbg !655

if.then46:                                        ; preds = %lor.lhs.false, %if.then40
  %33 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !656
  %ErrorCode47 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %33, i32 0, i32 11, !dbg !657
  store volatile i32 32, i32* %ErrorCode47, align 4, !dbg !658
  %34 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !659
  %State48 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %34, i32 0, i32 3, !dbg !660
  store volatile i8 1, i8* %State48, align 1, !dbg !661
  br label %do.body49, !dbg !662

do.body49:                                        ; preds = %if.then46
  %35 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !662
  %Lock50 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %35, i32 0, i32 2, !dbg !662
  store i8 0, i8* %Lock50, align 4, !dbg !662
  br label %do.end51, !dbg !662

do.end51:                                         ; preds = %do.body49
  store i8 1, i8* %retval, align 1, !dbg !663
  br label %return, !dbg !663

if.end52:                                         ; preds = %lor.lhs.false
  br label %if.end53, !dbg !664

if.end53:                                         ; preds = %if.end52, %if.end37
  br label %while.cond, !dbg !612, !llvm.loop !665

while.end:                                        ; preds = %while.cond
  %36 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !667
  %DMAmuxRequestGen = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %36, i32 0, i32 17, !dbg !668
  %37 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen, align 4, !dbg !668
  %cmp54 = icmp ne %struct.DMAMUX_RequestGen_TypeDef* %37, null, !dbg !669
  br i1 %cmp54, label %if.then56, label %if.end67, !dbg !667

if.then56:                                        ; preds = %while.end
  %38 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !670
  %DMAmuxRequestGenStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %38, i32 0, i32 18, !dbg !671
  %39 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus, align 4, !dbg !671
  %RGSR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %39, i32 0, i32 0, !dbg !672
  %40 = load volatile i32, i32* %RGSR, align 4, !dbg !672
  %41 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !673
  %DMAmuxRequestGenStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %41, i32 0, i32 19, !dbg !674
  %42 = load i32, i32* %DMAmuxRequestGenStatusMask, align 4, !dbg !674
  %and57 = and i32 %40, %42, !dbg !675
  %cmp58 = icmp ne i32 %and57, 0, !dbg !676
  br i1 %cmp58, label %if.then60, label %if.end66, !dbg !677

if.then60:                                        ; preds = %if.then56
  %43 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !678
  %DMAmuxRequestGen61 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %43, i32 0, i32 17, !dbg !679
  %44 = load %struct.DMAMUX_RequestGen_TypeDef*, %struct.DMAMUX_RequestGen_TypeDef** %DMAmuxRequestGen61, align 4, !dbg !679
  %RGCR = getelementptr inbounds %struct.DMAMUX_RequestGen_TypeDef, %struct.DMAMUX_RequestGen_TypeDef* %44, i32 0, i32 0, !dbg !680
  %45 = load volatile i32, i32* %RGCR, align 4, !dbg !681
  %or = or i32 %45, 256, !dbg !681
  store volatile i32 %or, i32* %RGCR, align 4, !dbg !681
  %46 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !682
  %DMAmuxRequestGenStatusMask62 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %46, i32 0, i32 19, !dbg !683
  %47 = load i32, i32* %DMAmuxRequestGenStatusMask62, align 4, !dbg !683
  %48 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !684
  %DMAmuxRequestGenStatus63 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %48, i32 0, i32 18, !dbg !685
  %49 = load %struct.DMAMUX_RequestGenStatus_TypeDef*, %struct.DMAMUX_RequestGenStatus_TypeDef** %DMAmuxRequestGenStatus63, align 4, !dbg !685
  %RGCFR = getelementptr inbounds %struct.DMAMUX_RequestGenStatus_TypeDef, %struct.DMAMUX_RequestGenStatus_TypeDef* %49, i32 0, i32 1, !dbg !686
  store volatile i32 %47, i32* %RGCFR, align 4, !dbg !687
  %50 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !688
  %ErrorCode64 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %50, i32 0, i32 11, !dbg !689
  %51 = load volatile i32, i32* %ErrorCode64, align 4, !dbg !690
  %or65 = or i32 %51, 1024, !dbg !690
  store volatile i32 %or65, i32* %ErrorCode64, align 4, !dbg !690
  br label %if.end66, !dbg !691

if.end66:                                         ; preds = %if.then60, %if.then56
  br label %if.end67, !dbg !692

if.end67:                                         ; preds = %if.end66, %while.end
  %52 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !693
  %DMAmuxChannelStatus = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %52, i32 0, i32 15, !dbg !694
  %53 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus, align 4, !dbg !694
  %CSR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %53, i32 0, i32 0, !dbg !695
  %54 = load volatile i32, i32* %CSR, align 4, !dbg !695
  %55 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !696
  %DMAmuxChannelStatusMask = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %55, i32 0, i32 16, !dbg !697
  %56 = load i32, i32* %DMAmuxChannelStatusMask, align 4, !dbg !697
  %and68 = and i32 %54, %56, !dbg !698
  %cmp69 = icmp ne i32 %and68, 0, !dbg !699
  br i1 %cmp69, label %if.then71, label %if.end76, !dbg !700

if.then71:                                        ; preds = %if.end67
  %57 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !701
  %DMAmuxChannelStatusMask72 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %57, i32 0, i32 16, !dbg !702
  %58 = load i32, i32* %DMAmuxChannelStatusMask72, align 4, !dbg !702
  %59 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !703
  %DMAmuxChannelStatus73 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %59, i32 0, i32 15, !dbg !704
  %60 = load %struct.DMAMUX_ChannelStatus_TypeDef*, %struct.DMAMUX_ChannelStatus_TypeDef** %DMAmuxChannelStatus73, align 4, !dbg !704
  %CFR = getelementptr inbounds %struct.DMAMUX_ChannelStatus_TypeDef, %struct.DMAMUX_ChannelStatus_TypeDef* %60, i32 0, i32 1, !dbg !705
  store volatile i32 %58, i32* %CFR, align 4, !dbg !706
  %61 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !707
  %ErrorCode74 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %61, i32 0, i32 11, !dbg !708
  %62 = load volatile i32, i32* %ErrorCode74, align 4, !dbg !709
  %or75 = or i32 %62, 512, !dbg !709
  store volatile i32 %or75, i32* %ErrorCode74, align 4, !dbg !709
  br label %if.end76, !dbg !710

if.end76:                                         ; preds = %if.then71, %if.end67
  %63 = load i8, i8* %CompleteLevel.addr, align 1, !dbg !711
  %conv77 = zext i8 %63 to i32, !dbg !711
  %cmp78 = icmp eq i32 0, %conv77, !dbg !712
  br i1 %cmp78, label %if.then80, label %if.else90, !dbg !713

if.then80:                                        ; preds = %if.end76
  %64 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !714
  %ChannelIndex81 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %64, i32 0, i32 13, !dbg !715
  %65 = load i32, i32* %ChannelIndex81, align 4, !dbg !715
  %and82 = and i32 %65, 28, !dbg !716
  %shl83 = shl i32 2, %and82, !dbg !717
  %66 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !718
  %DmaBaseAddress84 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %66, i32 0, i32 12, !dbg !719
  %67 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress84, align 4, !dbg !719
  %IFCR85 = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %67, i32 0, i32 1, !dbg !720
  store volatile i32 %shl83, i32* %IFCR85, align 4, !dbg !721
  br label %do.body86, !dbg !722

do.body86:                                        ; preds = %if.then80
  %68 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !722
  %Lock87 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %68, i32 0, i32 2, !dbg !722
  store i8 0, i8* %Lock87, align 4, !dbg !722
  br label %do.end88, !dbg !722

do.end88:                                         ; preds = %do.body86
  %69 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !723
  %State89 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %69, i32 0, i32 3, !dbg !724
  store volatile i8 1, i8* %State89, align 1, !dbg !725
  br label %if.end96, !dbg !726

if.else90:                                        ; preds = %if.end76
  %70 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !727
  %ChannelIndex91 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %70, i32 0, i32 13, !dbg !728
  %71 = load i32, i32* %ChannelIndex91, align 4, !dbg !728
  %and92 = and i32 %71, 28, !dbg !729
  %shl93 = shl i32 4, %and92, !dbg !730
  %72 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !731
  %DmaBaseAddress94 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %72, i32 0, i32 12, !dbg !732
  %73 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress94, align 4, !dbg !732
  %IFCR95 = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %73, i32 0, i32 1, !dbg !733
  store volatile i32 %shl93, i32* %IFCR95, align 4, !dbg !734
  br label %if.end96

if.end96:                                         ; preds = %if.else90, %do.end88
  store i8 0, i8* %retval, align 1, !dbg !735
  br label %return, !dbg !735

return:                                           ; preds = %if.end96, %do.end51, %do.end36, %if.then4, %do.end
  %74 = load i8, i8* %retval, align 1, !dbg !736
  ret i8 %74, !dbg !736
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_DMA_IRQHandler(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !737 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %flag_it = alloca i32, align 4
  %source_it = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !738
  %DmaBaseAddress = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 12, !dbg !739
  %1 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress, align 4, !dbg !739
  %ISR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %1, i32 0, i32 0, !dbg !740
  %2 = load volatile i32, i32* %ISR, align 4, !dbg !740
  store i32 %2, i32* %flag_it, align 4, !dbg !741
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !742
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 0, !dbg !743
  %4 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !743
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %4, i32 0, i32 0, !dbg !744
  %5 = load volatile i32, i32* %CCR, align 4, !dbg !744
  store i32 %5, i32* %source_it, align 4, !dbg !745
  %6 = load i32, i32* %flag_it, align 4, !dbg !746
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !747
  %ChannelIndex = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 13, !dbg !748
  %8 = load i32, i32* %ChannelIndex, align 4, !dbg !748
  %and = and i32 %8, 28, !dbg !749
  %shl = shl i32 4, %and, !dbg !750
  %and1 = and i32 %6, %shl, !dbg !751
  %cmp = icmp ne i32 %and1, 0, !dbg !752
  br i1 %cmp, label %land.lhs.true, label %if.else47, !dbg !753

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %source_it, align 4, !dbg !754
  %and2 = and i32 %9, 4, !dbg !755
  %cmp3 = icmp ne i32 %and2, 0, !dbg !756
  br i1 %cmp3, label %if.then, label %if.else47, !dbg !757

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !758
  %Instance4 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 0, !dbg !759
  %11 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance4, align 4, !dbg !759
  %CCR5 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 0, !dbg !760
  %12 = load volatile i32, i32* %CCR5, align 4, !dbg !760
  %and6 = and i32 %12, 32768, !dbg !761
  %cmp7 = icmp ne i32 %and6, 0, !dbg !762
  br i1 %cmp7, label %if.then8, label %if.else26, !dbg !763

if.then8:                                         ; preds = %if.then
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !764
  %ChannelIndex9 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 13, !dbg !765
  %14 = load i32, i32* %ChannelIndex9, align 4, !dbg !765
  %and10 = and i32 %14, 28, !dbg !766
  %shl11 = shl i32 4, %and10, !dbg !767
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !768
  %DmaBaseAddress12 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 12, !dbg !769
  %16 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress12, align 4, !dbg !769
  %IFCR = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %16, i32 0, i32 1, !dbg !770
  store volatile i32 %shl11, i32* %IFCR, align 4, !dbg !771
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !772
  %Instance13 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 0, !dbg !773
  %18 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance13, align 4, !dbg !773
  %CCR14 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %18, i32 0, i32 0, !dbg !774
  %19 = load volatile i32, i32* %CCR14, align 4, !dbg !774
  %and15 = and i32 %19, 65536, !dbg !775
  %cmp16 = icmp eq i32 %and15, 0, !dbg !776
  br i1 %cmp16, label %if.then17, label %if.else, !dbg !777

if.then17:                                        ; preds = %if.then8
  %20 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !778
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %20, i32 0, i32 6, !dbg !779
  %21 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !779
  %cmp18 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %21, null, !dbg !780
  br i1 %cmp18, label %if.then19, label %if.end, !dbg !778

if.then19:                                        ; preds = %if.then17
  %22 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !781
  %XferHalfCpltCallback20 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %22, i32 0, i32 6, !dbg !782
  %23 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback20, align 4, !dbg !782
  %24 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !783
  call arm_aapcs_vfpcc void %23(%struct.__DMA_HandleTypeDef* %24), !dbg !781
  br label %if.end, !dbg !784

if.end:                                           ; preds = %if.then19, %if.then17
  br label %if.end25, !dbg !785

if.else:                                          ; preds = %if.then8
  %25 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !786
  %XferM1HalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %25, i32 0, i32 8, !dbg !787
  %26 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferM1HalfCpltCallback, align 4, !dbg !787
  %cmp21 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %26, null, !dbg !788
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !786

if.then22:                                        ; preds = %if.else
  %27 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !789
  %XferM1HalfCpltCallback23 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %27, i32 0, i32 8, !dbg !790
  %28 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferM1HalfCpltCallback23, align 4, !dbg !790
  %29 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !791
  call arm_aapcs_vfpcc void %28(%struct.__DMA_HandleTypeDef* %29), !dbg !789
  br label %if.end24, !dbg !792

if.end24:                                         ; preds = %if.then22, %if.else
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end
  br label %if.end46, !dbg !793

if.else26:                                        ; preds = %if.then
  %30 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !794
  %Instance27 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %30, i32 0, i32 0, !dbg !795
  %31 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance27, align 4, !dbg !795
  %CCR28 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %31, i32 0, i32 0, !dbg !796
  %32 = load volatile i32, i32* %CCR28, align 4, !dbg !796
  %and29 = and i32 %32, 32, !dbg !797
  %cmp30 = icmp eq i32 %and29, 0, !dbg !798
  br i1 %cmp30, label %if.then31, label %if.end35, !dbg !799

if.then31:                                        ; preds = %if.else26
  %33 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !800
  %Instance32 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %33, i32 0, i32 0, !dbg !800
  %34 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance32, align 4, !dbg !800
  %CCR33 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %34, i32 0, i32 0, !dbg !800
  %35 = load volatile i32, i32* %CCR33, align 4, !dbg !800
  %and34 = and i32 %35, -5, !dbg !800
  store volatile i32 %and34, i32* %CCR33, align 4, !dbg !800
  br label %if.end35, !dbg !801

if.end35:                                         ; preds = %if.then31, %if.else26
  %36 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !802
  %ChannelIndex36 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %36, i32 0, i32 13, !dbg !803
  %37 = load i32, i32* %ChannelIndex36, align 4, !dbg !803
  %and37 = and i32 %37, 28, !dbg !804
  %shl38 = shl i32 4, %and37, !dbg !805
  %38 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !806
  %DmaBaseAddress39 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %38, i32 0, i32 12, !dbg !807
  %39 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress39, align 4, !dbg !807
  %IFCR40 = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %39, i32 0, i32 1, !dbg !808
  store volatile i32 %shl38, i32* %IFCR40, align 4, !dbg !809
  %40 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !810
  %XferHalfCpltCallback41 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %40, i32 0, i32 6, !dbg !811
  %41 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback41, align 4, !dbg !811
  %cmp42 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %41, null, !dbg !812
  br i1 %cmp42, label %if.then43, label %if.end45, !dbg !810

if.then43:                                        ; preds = %if.end35
  %42 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !813
  %XferHalfCpltCallback44 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %42, i32 0, i32 6, !dbg !814
  %43 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback44, align 4, !dbg !814
  %44 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !815
  call arm_aapcs_vfpcc void %43(%struct.__DMA_HandleTypeDef* %44), !dbg !813
  br label %if.end45, !dbg !816

if.end45:                                         ; preds = %if.then43, %if.end35
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end25
  br label %if.end127, !dbg !817

if.else47:                                        ; preds = %land.lhs.true, %entry
  %45 = load i32, i32* %flag_it, align 4, !dbg !818
  %46 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !819
  %ChannelIndex48 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %46, i32 0, i32 13, !dbg !820
  %47 = load i32, i32* %ChannelIndex48, align 4, !dbg !820
  %and49 = and i32 %47, 28, !dbg !821
  %shl50 = shl i32 2, %and49, !dbg !822
  %and51 = and i32 %45, %shl50, !dbg !823
  %cmp52 = icmp ne i32 %and51, 0, !dbg !824
  br i1 %cmp52, label %land.lhs.true53, label %if.else98, !dbg !825

land.lhs.true53:                                  ; preds = %if.else47
  %48 = load i32, i32* %source_it, align 4, !dbg !826
  %and54 = and i32 %48, 2, !dbg !827
  %cmp55 = icmp ne i32 %and54, 0, !dbg !828
  br i1 %cmp55, label %if.then56, label %if.else98, !dbg !829

if.then56:                                        ; preds = %land.lhs.true53
  %49 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !830
  %Instance57 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %49, i32 0, i32 0, !dbg !831
  %50 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance57, align 4, !dbg !831
  %CCR58 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %50, i32 0, i32 0, !dbg !832
  %51 = load volatile i32, i32* %CCR58, align 4, !dbg !832
  %and59 = and i32 %51, 32768, !dbg !833
  %cmp60 = icmp ne i32 %and59, 0, !dbg !834
  br i1 %cmp60, label %if.then61, label %if.else77, !dbg !835

if.then61:                                        ; preds = %if.then56
  %52 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !836
  %Instance62 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %52, i32 0, i32 0, !dbg !837
  %53 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance62, align 4, !dbg !837
  %CCR63 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %53, i32 0, i32 0, !dbg !838
  %54 = load volatile i32, i32* %CCR63, align 4, !dbg !838
  %and64 = and i32 %54, 65536, !dbg !839
  %cmp65 = icmp eq i32 %and64, 0, !dbg !840
  br i1 %cmp65, label %if.then66, label %if.else71, !dbg !841

if.then66:                                        ; preds = %if.then61
  %55 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !842
  %XferM1CpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %55, i32 0, i32 7, !dbg !843
  %56 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferM1CpltCallback, align 4, !dbg !843
  %cmp67 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %56, null, !dbg !844
  br i1 %cmp67, label %if.then68, label %if.end70, !dbg !842

if.then68:                                        ; preds = %if.then66
  %57 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !845
  %XferM1CpltCallback69 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %57, i32 0, i32 7, !dbg !846
  %58 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferM1CpltCallback69, align 4, !dbg !846
  %59 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !847
  call arm_aapcs_vfpcc void %58(%struct.__DMA_HandleTypeDef* %59), !dbg !845
  br label %if.end70, !dbg !848

if.end70:                                         ; preds = %if.then68, %if.then66
  br label %if.end76, !dbg !849

if.else71:                                        ; preds = %if.then61
  %60 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !850
  %XferCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %60, i32 0, i32 5, !dbg !851
  %61 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback, align 4, !dbg !851
  %cmp72 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %61, null, !dbg !852
  br i1 %cmp72, label %if.then73, label %if.end75, !dbg !850

if.then73:                                        ; preds = %if.else71
  %62 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !853
  %XferCpltCallback74 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %62, i32 0, i32 5, !dbg !854
  %63 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback74, align 4, !dbg !854
  %64 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !855
  call arm_aapcs_vfpcc void %63(%struct.__DMA_HandleTypeDef* %64), !dbg !853
  br label %if.end75, !dbg !856

if.end75:                                         ; preds = %if.then73, %if.else71
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end70
  br label %if.end97, !dbg !857

if.else77:                                        ; preds = %if.then56
  %65 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !858
  %Instance78 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %65, i32 0, i32 0, !dbg !859
  %66 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance78, align 4, !dbg !859
  %CCR79 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %66, i32 0, i32 0, !dbg !860
  %67 = load volatile i32, i32* %CCR79, align 4, !dbg !860
  %and80 = and i32 %67, 32, !dbg !861
  %cmp81 = icmp eq i32 %and80, 0, !dbg !862
  br i1 %cmp81, label %if.then82, label %if.end86, !dbg !863

if.then82:                                        ; preds = %if.else77
  %68 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !864
  %Instance83 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %68, i32 0, i32 0, !dbg !864
  %69 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance83, align 4, !dbg !864
  %CCR84 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %69, i32 0, i32 0, !dbg !864
  %70 = load volatile i32, i32* %CCR84, align 4, !dbg !864
  %and85 = and i32 %70, -11, !dbg !864
  store volatile i32 %and85, i32* %CCR84, align 4, !dbg !864
  %71 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !865
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %71, i32 0, i32 3, !dbg !866
  store volatile i8 1, i8* %State, align 1, !dbg !867
  br label %if.end86, !dbg !868

if.end86:                                         ; preds = %if.then82, %if.else77
  %72 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !869
  %ChannelIndex87 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %72, i32 0, i32 13, !dbg !870
  %73 = load i32, i32* %ChannelIndex87, align 4, !dbg !870
  %and88 = and i32 %73, 28, !dbg !871
  %shl89 = shl i32 2, %and88, !dbg !872
  %74 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !873
  %DmaBaseAddress90 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %74, i32 0, i32 12, !dbg !874
  %75 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress90, align 4, !dbg !874
  %IFCR91 = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %75, i32 0, i32 1, !dbg !875
  store volatile i32 %shl89, i32* %IFCR91, align 4, !dbg !876
  br label %do.body, !dbg !877

do.body:                                          ; preds = %if.end86
  %76 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !877
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %76, i32 0, i32 2, !dbg !877
  store i8 0, i8* %Lock, align 4, !dbg !877
  br label %do.end, !dbg !877

do.end:                                           ; preds = %do.body
  %77 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !878
  %XferCpltCallback92 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %77, i32 0, i32 5, !dbg !879
  %78 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback92, align 4, !dbg !879
  %cmp93 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %78, null, !dbg !880
  br i1 %cmp93, label %if.then94, label %if.end96, !dbg !878

if.then94:                                        ; preds = %do.end
  %79 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !881
  %XferCpltCallback95 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %79, i32 0, i32 5, !dbg !882
  %80 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback95, align 4, !dbg !882
  %81 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !883
  call arm_aapcs_vfpcc void %80(%struct.__DMA_HandleTypeDef* %81), !dbg !881
  br label %if.end96, !dbg !884

if.end96:                                         ; preds = %if.then94, %do.end
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end76
  br label %if.end126, !dbg !885

if.else98:                                        ; preds = %land.lhs.true53, %if.else47
  %82 = load i32, i32* %flag_it, align 4, !dbg !886
  %83 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !887
  %ChannelIndex99 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %83, i32 0, i32 13, !dbg !888
  %84 = load i32, i32* %ChannelIndex99, align 4, !dbg !888
  %and100 = and i32 %84, 28, !dbg !889
  %shl101 = shl i32 8, %and100, !dbg !890
  %and102 = and i32 %82, %shl101, !dbg !891
  %cmp103 = icmp ne i32 %and102, 0, !dbg !892
  br i1 %cmp103, label %land.lhs.true104, label %if.else124, !dbg !893

land.lhs.true104:                                 ; preds = %if.else98
  %85 = load i32, i32* %source_it, align 4, !dbg !894
  %and105 = and i32 %85, 8, !dbg !895
  %cmp106 = icmp ne i32 %and105, 0, !dbg !896
  br i1 %cmp106, label %if.then107, label %if.else124, !dbg !897

if.then107:                                       ; preds = %land.lhs.true104
  %86 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !898
  %Instance108 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %86, i32 0, i32 0, !dbg !898
  %87 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance108, align 4, !dbg !898
  %CCR109 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %87, i32 0, i32 0, !dbg !898
  %88 = load volatile i32, i32* %CCR109, align 4, !dbg !898
  %and110 = and i32 %88, -15, !dbg !898
  store volatile i32 %and110, i32* %CCR109, align 4, !dbg !898
  %89 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !899
  %ChannelIndex111 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %89, i32 0, i32 13, !dbg !900
  %90 = load i32, i32* %ChannelIndex111, align 4, !dbg !900
  %and112 = and i32 %90, 28, !dbg !901
  %shl113 = shl i32 1, %and112, !dbg !902
  %91 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !903
  %DmaBaseAddress114 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %91, i32 0, i32 12, !dbg !904
  %92 = load %struct.DMA_TypeDef*, %struct.DMA_TypeDef** %DmaBaseAddress114, align 4, !dbg !904
  %IFCR115 = getelementptr inbounds %struct.DMA_TypeDef, %struct.DMA_TypeDef* %92, i32 0, i32 1, !dbg !905
  store volatile i32 %shl113, i32* %IFCR115, align 4, !dbg !906
  %93 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !907
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %93, i32 0, i32 11, !dbg !908
  store volatile i32 1, i32* %ErrorCode, align 4, !dbg !909
  %94 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !910
  %State116 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %94, i32 0, i32 3, !dbg !911
  store volatile i8 1, i8* %State116, align 1, !dbg !912
  br label %do.body117, !dbg !913

do.body117:                                       ; preds = %if.then107
  %95 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !913
  %Lock118 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %95, i32 0, i32 2, !dbg !913
  store i8 0, i8* %Lock118, align 4, !dbg !913
  br label %do.end119, !dbg !913

do.end119:                                        ; preds = %do.body117
  %96 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !914
  %XferErrorCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %96, i32 0, i32 9, !dbg !915
  %97 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback, align 4, !dbg !915
  %cmp120 = icmp ne void (%struct.__DMA_HandleTypeDef*)* %97, null, !dbg !916
  br i1 %cmp120, label %if.then121, label %if.end123, !dbg !914

if.then121:                                       ; preds = %do.end119
  %98 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !917
  %XferErrorCallback122 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %98, i32 0, i32 9, !dbg !918
  %99 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback122, align 4, !dbg !918
  %100 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !919
  call arm_aapcs_vfpcc void %99(%struct.__DMA_HandleTypeDef* %100), !dbg !917
  br label %if.end123, !dbg !920

if.end123:                                        ; preds = %if.then121, %do.end119
  br label %if.end125, !dbg !921

if.else124:                                       ; preds = %land.lhs.true104, %if.else98
  br label %if.end125

if.end125:                                        ; preds = %if.else124, %if.end123
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.end97
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end46
  ret void, !dbg !922
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_RegisterCallback(%struct.__DMA_HandleTypeDef* %hdma, i8 zeroext %CallbackID, void (%struct.__DMA_HandleTypeDef*)* %pCallback) #0 !dbg !923 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %CallbackID.addr = alloca i8, align 1
  %pCallback.addr = alloca void (%struct.__DMA_HandleTypeDef*)*, align 4
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i8 %CallbackID, i8* %CallbackID.addr, align 1
  store void (%struct.__DMA_HandleTypeDef*)* %pCallback, void (%struct.__DMA_HandleTypeDef*)** %pCallback.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !924
  br label %do.body, !dbg !925

do.body:                                          ; preds = %entry
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !925
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 2, !dbg !925
  %1 = load i8, i8* %Lock, align 4, !dbg !925
  %conv = zext i8 %1 to i32, !dbg !925
  %cmp = icmp eq i32 %conv, 1, !dbg !925
  br i1 %cmp, label %if.then, label %if.else, !dbg !925

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !925
  br label %return, !dbg !925

if.else:                                          ; preds = %do.body
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !925
  %Lock2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 2, !dbg !925
  store i8 1, i8* %Lock2, align 4, !dbg !925
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !925

do.end:                                           ; preds = %if.end
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !926
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 3, !dbg !927
  %4 = load volatile i8, i8* %State, align 1, !dbg !927
  %conv3 = zext i8 %4 to i32, !dbg !926
  %cmp4 = icmp eq i32 1, %conv3, !dbg !928
  br i1 %cmp4, label %if.then6, label %if.else13, !dbg !929

if.then6:                                         ; preds = %do.end
  %5 = load i8, i8* %CallbackID.addr, align 1, !dbg !930
  %conv7 = zext i8 %5 to i32, !dbg !930
  switch i32 %conv7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
    i32 4, label %sw.bb11
    i32 5, label %sw.bb12
  ], !dbg !931

sw.bb:                                            ; preds = %if.then6
  %6 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %pCallback.addr, align 4, !dbg !932
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !933
  %XferCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 5, !dbg !934
  store void (%struct.__DMA_HandleTypeDef*)* %6, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback, align 4, !dbg !935
  br label %sw.epilog, !dbg !936

sw.bb8:                                           ; preds = %if.then6
  %8 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %pCallback.addr, align 4, !dbg !937
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !938
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 6, !dbg !939
  store void (%struct.__DMA_HandleTypeDef*)* %8, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !940
  br label %sw.epilog, !dbg !941

sw.bb9:                                           ; preds = %if.then6
  %10 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %pCallback.addr, align 4, !dbg !942
  %11 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !943
  %XferM1CpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %11, i32 0, i32 7, !dbg !944
  store void (%struct.__DMA_HandleTypeDef*)* %10, void (%struct.__DMA_HandleTypeDef*)** %XferM1CpltCallback, align 4, !dbg !945
  br label %sw.epilog, !dbg !946

sw.bb10:                                          ; preds = %if.then6
  %12 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %pCallback.addr, align 4, !dbg !947
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !948
  %XferM1HalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 8, !dbg !949
  store void (%struct.__DMA_HandleTypeDef*)* %12, void (%struct.__DMA_HandleTypeDef*)** %XferM1HalfCpltCallback, align 4, !dbg !950
  br label %sw.epilog, !dbg !951

sw.bb11:                                          ; preds = %if.then6
  %14 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %pCallback.addr, align 4, !dbg !952
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !953
  %XferErrorCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 9, !dbg !954
  store void (%struct.__DMA_HandleTypeDef*)* %14, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback, align 4, !dbg !955
  br label %sw.epilog, !dbg !956

sw.bb12:                                          ; preds = %if.then6
  %16 = load void (%struct.__DMA_HandleTypeDef*)*, void (%struct.__DMA_HandleTypeDef*)** %pCallback.addr, align 4, !dbg !957
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !958
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 10, !dbg !959
  store void (%struct.__DMA_HandleTypeDef*)* %16, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !960
  br label %sw.epilog, !dbg !961

sw.default:                                       ; preds = %if.then6
  store i8 1, i8* %status, align 1, !dbg !962
  br label %sw.epilog, !dbg !963

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb
  br label %if.end14, !dbg !964

if.else13:                                        ; preds = %do.end
  store i8 1, i8* %status, align 1, !dbg !965
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %sw.epilog
  br label %do.body15, !dbg !966

do.body15:                                        ; preds = %if.end14
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !966
  %Lock16 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %18, i32 0, i32 2, !dbg !966
  store i8 0, i8* %Lock16, align 4, !dbg !966
  br label %do.end17, !dbg !966

do.end17:                                         ; preds = %do.body15
  %19 = load i8, i8* %status, align 1, !dbg !967
  store i8 %19, i8* %retval, align 1, !dbg !968
  br label %return, !dbg !968

return:                                           ; preds = %do.end17, %if.then
  %20 = load i8, i8* %retval, align 1, !dbg !969
  ret i8 %20, !dbg !969
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_UnRegisterCallback(%struct.__DMA_HandleTypeDef* %hdma, i8 zeroext %CallbackID) #0 !dbg !970 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %CallbackID.addr = alloca i8, align 1
  %status = alloca i8, align 1
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i8 %CallbackID, i8* %CallbackID.addr, align 1
  store i8 0, i8* %status, align 1, !dbg !971
  br label %do.body, !dbg !972

do.body:                                          ; preds = %entry
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !972
  %Lock = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 2, !dbg !972
  %1 = load i8, i8* %Lock, align 4, !dbg !972
  %conv = zext i8 %1 to i32, !dbg !972
  %cmp = icmp eq i32 %conv, 1, !dbg !972
  br i1 %cmp, label %if.then, label %if.else, !dbg !972

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !972
  br label %return, !dbg !972

if.else:                                          ; preds = %do.body
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !972
  %Lock2 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 2, !dbg !972
  store i8 1, i8* %Lock2, align 4, !dbg !972
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !972

do.end:                                           ; preds = %if.end
  %3 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !973
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %3, i32 0, i32 3, !dbg !974
  %4 = load volatile i8, i8* %State, align 1, !dbg !974
  %conv3 = zext i8 %4 to i32, !dbg !973
  %cmp4 = icmp eq i32 1, %conv3, !dbg !975
  br i1 %cmp4, label %if.then6, label %if.else20, !dbg !976

if.then6:                                         ; preds = %do.end
  %5 = load i8, i8* %CallbackID.addr, align 1, !dbg !977
  %conv7 = zext i8 %5 to i32, !dbg !977
  switch i32 %conv7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
    i32 4, label %sw.bb11
    i32 5, label %sw.bb12
    i32 6, label %sw.bb13
  ], !dbg !978

sw.bb:                                            ; preds = %if.then6
  %6 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !979
  %XferCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %6, i32 0, i32 5, !dbg !980
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback, align 4, !dbg !981
  br label %sw.epilog, !dbg !982

sw.bb8:                                           ; preds = %if.then6
  %7 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !983
  %XferHalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %7, i32 0, i32 6, !dbg !984
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback, align 4, !dbg !985
  br label %sw.epilog, !dbg !986

sw.bb9:                                           ; preds = %if.then6
  %8 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !987
  %XferM1CpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %8, i32 0, i32 7, !dbg !988
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferM1CpltCallback, align 4, !dbg !989
  br label %sw.epilog, !dbg !990

sw.bb10:                                          ; preds = %if.then6
  %9 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !991
  %XferM1HalfCpltCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %9, i32 0, i32 8, !dbg !992
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferM1HalfCpltCallback, align 4, !dbg !993
  br label %sw.epilog, !dbg !994

sw.bb11:                                          ; preds = %if.then6
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !995
  %XferErrorCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 9, !dbg !996
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback, align 4, !dbg !997
  br label %sw.epilog, !dbg !998

sw.bb12:                                          ; preds = %if.then6
  %11 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !999
  %XferAbortCallback = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %11, i32 0, i32 10, !dbg !1000
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback, align 4, !dbg !1001
  br label %sw.epilog, !dbg !1002

sw.bb13:                                          ; preds = %if.then6
  %12 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1003
  %XferCpltCallback14 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %12, i32 0, i32 5, !dbg !1004
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferCpltCallback14, align 4, !dbg !1005
  %13 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1006
  %XferHalfCpltCallback15 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %13, i32 0, i32 6, !dbg !1007
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferHalfCpltCallback15, align 4, !dbg !1008
  %14 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1009
  %XferM1CpltCallback16 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %14, i32 0, i32 7, !dbg !1010
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferM1CpltCallback16, align 4, !dbg !1011
  %15 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1012
  %XferM1HalfCpltCallback17 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %15, i32 0, i32 8, !dbg !1013
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferM1HalfCpltCallback17, align 4, !dbg !1014
  %16 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1015
  %XferErrorCallback18 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %16, i32 0, i32 9, !dbg !1016
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferErrorCallback18, align 4, !dbg !1017
  %17 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1018
  %XferAbortCallback19 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %17, i32 0, i32 10, !dbg !1019
  store void (%struct.__DMA_HandleTypeDef*)* null, void (%struct.__DMA_HandleTypeDef*)** %XferAbortCallback19, align 4, !dbg !1020
  br label %sw.epilog, !dbg !1021

sw.default:                                       ; preds = %if.then6
  store i8 1, i8* %status, align 1, !dbg !1022
  br label %sw.epilog, !dbg !1023

sw.epilog:                                        ; preds = %sw.default, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb
  br label %if.end21, !dbg !1024

if.else20:                                        ; preds = %do.end
  store i8 1, i8* %status, align 1, !dbg !1025
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %sw.epilog
  br label %do.body22, !dbg !1026

do.body22:                                        ; preds = %if.end21
  %18 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1026
  %Lock23 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %18, i32 0, i32 2, !dbg !1026
  store i8 0, i8* %Lock23, align 4, !dbg !1026
  br label %do.end24, !dbg !1026

do.end24:                                         ; preds = %do.body22
  %19 = load i8, i8* %status, align 1, !dbg !1027
  store i8 %19, i8* %retval, align 1, !dbg !1028
  br label %return, !dbg !1028

return:                                           ; preds = %do.end24, %if.then
  %20 = load i8, i8* %retval, align 1, !dbg !1029
  ret i8 %20, !dbg !1029
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_GetState(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1030 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1031
  %State = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 3, !dbg !1032
  %1 = load volatile i8, i8* %State, align 1, !dbg !1032
  ret i8 %1, !dbg !1033
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_DMA_GetError(%struct.__DMA_HandleTypeDef* %hdma) #0 !dbg !1034 {
entry:
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1035
  %ErrorCode = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %0, i32 0, i32 11, !dbg !1036
  %1 = load volatile i32, i32* %ErrorCode, align 4, !dbg !1036
  ret i32 %1, !dbg !1037
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_ConfigChannelAttributes(%struct.__DMA_HandleTypeDef* %hdma, i32 %ChannelAttributes) #0 !dbg !1038 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %ChannelAttributes.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %ccr = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32 %ChannelAttributes, i32* %ChannelAttributes.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !1039
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1040
  %cmp = icmp eq %struct.__DMA_HandleTypeDef* %0, null, !dbg !1041
  br i1 %cmp, label %if.then, label %if.end, !dbg !1040

if.then:                                          ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !1042
  %1 = load i8, i8* %status, align 1, !dbg !1043
  store i8 %1, i8* %retval, align 1, !dbg !1044
  br label %return, !dbg !1044

if.end:                                           ; preds = %entry
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1045
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 0, !dbg !1045
  %3 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !1045
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %3, i32 0, i32 0, !dbg !1045
  %4 = load volatile i32, i32* %CCR, align 4, !dbg !1045
  store i32 %4, i32* %ccr, align 4, !dbg !1046
  %5 = load i32, i32* %ChannelAttributes.addr, align 4, !dbg !1047
  %and = and i32 %5, 16, !dbg !1048
  %cmp1 = icmp ne i32 %and, 0, !dbg !1049
  br i1 %cmp1, label %if.then2, label %if.end8, !dbg !1050

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %ChannelAttributes.addr, align 4, !dbg !1051
  %and3 = and i32 %6, 1048576, !dbg !1052
  %cmp4 = icmp ne i32 %and3, 0, !dbg !1053
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !1054

if.then5:                                         ; preds = %if.then2
  %7 = load i32, i32* %ccr, align 4, !dbg !1055
  %or = or i32 %7, 1048576, !dbg !1055
  store i32 %or, i32* %ccr, align 4, !dbg !1055
  br label %if.end7, !dbg !1056

if.else:                                          ; preds = %if.then2
  %8 = load i32, i32* %ccr, align 4, !dbg !1057
  %and6 = and i32 %8, -1048577, !dbg !1057
  store i32 %and6, i32* %ccr, align 4, !dbg !1057
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  br label %if.end8, !dbg !1058

if.end8:                                          ; preds = %if.end7, %if.end
  %9 = load i32, i32* %ccr, align 4, !dbg !1059
  %10 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1059
  %Instance9 = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %10, i32 0, i32 0, !dbg !1059
  %11 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance9, align 4, !dbg !1059
  %CCR10 = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %11, i32 0, i32 0, !dbg !1059
  store volatile i32 %9, i32* %CCR10, align 4, !dbg !1059
  %12 = load i8, i8* %status, align 1, !dbg !1060
  store i8 %12, i8* %retval, align 1, !dbg !1061
  br label %return, !dbg !1061

return:                                           ; preds = %if.end8, %if.then
  %13 = load i8, i8* %retval, align 1, !dbg !1062
  ret i8 %13, !dbg !1062
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DMA_GetConfigChannelAttributes(%struct.__DMA_HandleTypeDef* %hdma, i32* %ChannelAttributes) #0 !dbg !1063 {
entry:
  %retval = alloca i8, align 1
  %hdma.addr = alloca %struct.__DMA_HandleTypeDef*, align 4
  %ChannelAttributes.addr = alloca i32*, align 4
  %read_attributes = alloca i32, align 4
  %attributes = alloca i32, align 4
  store %struct.__DMA_HandleTypeDef* %hdma, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4
  store i32* %ChannelAttributes, i32** %ChannelAttributes.addr, align 4
  %0 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1064
  %cmp = icmp eq %struct.__DMA_HandleTypeDef* %0, null, !dbg !1065
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1066

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32*, i32** %ChannelAttributes.addr, align 4, !dbg !1067
  %cmp1 = icmp eq i32* %1, null, !dbg !1068
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1069

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i8 1, i8* %retval, align 1, !dbg !1070
  br label %return, !dbg !1070

if.end:                                           ; preds = %lor.lhs.false
  %2 = load %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef** %hdma.addr, align 4, !dbg !1071
  %Instance = getelementptr inbounds %struct.__DMA_HandleTypeDef, %struct.__DMA_HandleTypeDef* %2, i32 0, i32 0, !dbg !1071
  %3 = load %struct.DMA_Channel_TypeDef*, %struct.DMA_Channel_TypeDef** %Instance, align 4, !dbg !1071
  %CCR = getelementptr inbounds %struct.DMA_Channel_TypeDef, %struct.DMA_Channel_TypeDef* %3, i32 0, i32 0, !dbg !1071
  %4 = load volatile i32, i32* %CCR, align 4, !dbg !1071
  %and = and i32 %4, 1048576, !dbg !1071
  store i32 %and, i32* %read_attributes, align 4, !dbg !1072
  %5 = load i32, i32* %read_attributes, align 4, !dbg !1073
  %and2 = and i32 %5, 1048576, !dbg !1074
  %cmp3 = icmp eq i32 %and2, 0, !dbg !1075
  %6 = zext i1 %cmp3 to i64, !dbg !1076
  %cond = select i1 %cmp3, i32 16, i32 1048592, !dbg !1076
  store i32 %cond, i32* %attributes, align 4, !dbg !1077
  %7 = load i32, i32* %attributes, align 4, !dbg !1078
  %8 = load i32*, i32** %ChannelAttributes.addr, align 4, !dbg !1079
  store i32 %7, i32* %8, align 4, !dbg !1080
  store i8 0, i8* %retval, align 1, !dbg !1081
  br label %return, !dbg !1081

return:                                           ; preds = %if.end, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !1082
  ret i8 %9, !dbg !1082
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_dma.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_DMA_Init", scope: !1, file: !1, line: 150, type: !9, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 155, column: 6, scope: !8)
!11 = !DILocation(line: 155, column: 11, scope: !8)
!12 = !DILocation(line: 157, column: 5, scope: !8)
!13 = !DILocation(line: 173, column: 18, scope: !8)
!14 = !DILocation(line: 173, column: 24, scope: !8)
!15 = !DILocation(line: 173, column: 7, scope: !8)
!16 = !DILocation(line: 173, column: 34, scope: !8)
!17 = !DILocation(line: 176, column: 38, scope: !8)
!18 = !DILocation(line: 176, column: 44, scope: !8)
!19 = !DILocation(line: 176, column: 28, scope: !8)
!20 = !DILocation(line: 176, column: 53, scope: !8)
!21 = !DILocation(line: 176, column: 80, scope: !8)
!22 = !DILocation(line: 176, column: 135, scope: !8)
!23 = !DILocation(line: 176, column: 5, scope: !8)
!24 = !DILocation(line: 176, column: 11, scope: !8)
!25 = !DILocation(line: 176, column: 24, scope: !8)
!26 = !DILocation(line: 177, column: 5, scope: !8)
!27 = !DILocation(line: 177, column: 11, scope: !8)
!28 = !DILocation(line: 177, column: 26, scope: !8)
!29 = !DILocation(line: 178, column: 3, scope: !8)
!30 = !DILocation(line: 182, column: 38, scope: !8)
!31 = !DILocation(line: 182, column: 44, scope: !8)
!32 = !DILocation(line: 182, column: 28, scope: !8)
!33 = !DILocation(line: 182, column: 53, scope: !8)
!34 = !DILocation(line: 182, column: 80, scope: !8)
!35 = !DILocation(line: 182, column: 135, scope: !8)
!36 = !DILocation(line: 182, column: 5, scope: !8)
!37 = !DILocation(line: 182, column: 11, scope: !8)
!38 = !DILocation(line: 182, column: 24, scope: !8)
!39 = !DILocation(line: 183, column: 5, scope: !8)
!40 = !DILocation(line: 183, column: 11, scope: !8)
!41 = !DILocation(line: 183, column: 26, scope: !8)
!42 = !DILocation(line: 187, column: 3, scope: !8)
!43 = !DILocation(line: 187, column: 9, scope: !8)
!44 = !DILocation(line: 187, column: 15, scope: !8)
!45 = !DILocation(line: 190, column: 9, scope: !8)
!46 = !DILocation(line: 190, column: 15, scope: !8)
!47 = !DILocation(line: 190, column: 25, scope: !8)
!48 = !DILocation(line: 190, column: 7, scope: !8)
!49 = !DILocation(line: 193, column: 7, scope: !8)
!50 = !DILocation(line: 199, column: 11, scope: !8)
!51 = !DILocation(line: 199, column: 17, scope: !8)
!52 = !DILocation(line: 199, column: 22, scope: !8)
!53 = !DILocation(line: 200, column: 11, scope: !8)
!54 = !DILocation(line: 200, column: 17, scope: !8)
!55 = !DILocation(line: 200, column: 22, scope: !8)
!56 = !DILocation(line: 199, column: 39, scope: !8)
!57 = !DILocation(line: 200, column: 44, scope: !8)
!58 = !DILocation(line: 200, column: 50, scope: !8)
!59 = !DILocation(line: 200, column: 55, scope: !8)
!60 = !DILocation(line: 200, column: 42, scope: !8)
!61 = !DILocation(line: 201, column: 11, scope: !8)
!62 = !DILocation(line: 201, column: 17, scope: !8)
!63 = !DILocation(line: 201, column: 22, scope: !8)
!64 = !DILocation(line: 200, column: 72, scope: !8)
!65 = !DILocation(line: 201, column: 44, scope: !8)
!66 = !DILocation(line: 201, column: 50, scope: !8)
!67 = !DILocation(line: 201, column: 55, scope: !8)
!68 = !DILocation(line: 201, column: 42, scope: !8)
!69 = !DILocation(line: 202, column: 11, scope: !8)
!70 = !DILocation(line: 202, column: 17, scope: !8)
!71 = !DILocation(line: 202, column: 22, scope: !8)
!72 = !DILocation(line: 201, column: 72, scope: !8)
!73 = !DILocation(line: 202, column: 44, scope: !8)
!74 = !DILocation(line: 202, column: 50, scope: !8)
!75 = !DILocation(line: 202, column: 55, scope: !8)
!76 = !DILocation(line: 202, column: 42, scope: !8)
!77 = !DILocation(line: 199, column: 7, scope: !8)
!78 = !DILocation(line: 205, column: 25, scope: !8)
!79 = !DILocation(line: 205, column: 3, scope: !8)
!80 = !DILocation(line: 205, column: 9, scope: !8)
!81 = !DILocation(line: 205, column: 19, scope: !8)
!82 = !DILocation(line: 205, column: 23, scope: !8)
!83 = !DILocation(line: 210, column: 36, scope: !8)
!84 = !DILocation(line: 210, column: 3, scope: !8)
!85 = !DILocation(line: 212, column: 6, scope: !8)
!86 = !DILocation(line: 212, column: 12, scope: !8)
!87 = !DILocation(line: 212, column: 17, scope: !8)
!88 = !DILocation(line: 212, column: 27, scope: !8)
!89 = !DILocation(line: 215, column: 5, scope: !8)
!90 = !DILocation(line: 215, column: 11, scope: !8)
!91 = !DILocation(line: 215, column: 16, scope: !8)
!92 = !DILocation(line: 215, column: 24, scope: !8)
!93 = !DILocation(line: 216, column: 3, scope: !8)
!94 = !DILocation(line: 219, column: 31, scope: !8)
!95 = !DILocation(line: 219, column: 37, scope: !8)
!96 = !DILocation(line: 219, column: 42, scope: !8)
!97 = !DILocation(line: 219, column: 50, scope: !8)
!98 = !DILocation(line: 219, column: 3, scope: !8)
!99 = !DILocation(line: 219, column: 9, scope: !8)
!100 = !DILocation(line: 219, column: 24, scope: !8)
!101 = !DILocation(line: 219, column: 28, scope: !8)
!102 = !DILocation(line: 222, column: 36, scope: !8)
!103 = !DILocation(line: 222, column: 42, scope: !8)
!104 = !DILocation(line: 222, column: 3, scope: !8)
!105 = !DILocation(line: 222, column: 9, scope: !8)
!106 = !DILocation(line: 222, column: 30, scope: !8)
!107 = !DILocation(line: 222, column: 34, scope: !8)
!108 = !DILocation(line: 224, column: 8, scope: !8)
!109 = !DILocation(line: 224, column: 14, scope: !8)
!110 = !DILocation(line: 224, column: 19, scope: !8)
!111 = !DILocation(line: 224, column: 27, scope: !8)
!112 = !DILocation(line: 224, column: 33, scope: !8)
!113 = !DILocation(line: 224, column: 37, scope: !8)
!114 = !DILocation(line: 224, column: 43, scope: !8)
!115 = !DILocation(line: 224, column: 48, scope: !8)
!116 = !DILocation(line: 224, column: 56, scope: !8)
!117 = !DILocation(line: 224, column: 6, scope: !8)
!118 = !DILocation(line: 229, column: 41, scope: !8)
!119 = !DILocation(line: 229, column: 5, scope: !8)
!120 = !DILocation(line: 232, column: 5, scope: !8)
!121 = !DILocation(line: 232, column: 11, scope: !8)
!122 = !DILocation(line: 232, column: 29, scope: !8)
!123 = !DILocation(line: 232, column: 34, scope: !8)
!124 = !DILocation(line: 235, column: 43, scope: !8)
!125 = !DILocation(line: 235, column: 49, scope: !8)
!126 = !DILocation(line: 235, column: 5, scope: !8)
!127 = !DILocation(line: 235, column: 11, scope: !8)
!128 = !DILocation(line: 235, column: 35, scope: !8)
!129 = !DILocation(line: 235, column: 41, scope: !8)
!130 = !DILocation(line: 236, column: 3, scope: !8)
!131 = !DILocation(line: 239, column: 5, scope: !8)
!132 = !DILocation(line: 239, column: 11, scope: !8)
!133 = !DILocation(line: 239, column: 28, scope: !8)
!134 = !DILocation(line: 240, column: 5, scope: !8)
!135 = !DILocation(line: 240, column: 11, scope: !8)
!136 = !DILocation(line: 240, column: 34, scope: !8)
!137 = !DILocation(line: 241, column: 5, scope: !8)
!138 = !DILocation(line: 241, column: 11, scope: !8)
!139 = !DILocation(line: 241, column: 38, scope: !8)
!140 = !DILocation(line: 245, column: 3, scope: !8)
!141 = !DILocation(line: 245, column: 9, scope: !8)
!142 = !DILocation(line: 245, column: 19, scope: !8)
!143 = !DILocation(line: 248, column: 3, scope: !8)
!144 = !DILocation(line: 248, column: 9, scope: !8)
!145 = !DILocation(line: 248, column: 15, scope: !8)
!146 = !DILocation(line: 251, column: 3, scope: !8)
!147 = !DILocation(line: 251, column: 9, scope: !8)
!148 = !DILocation(line: 251, column: 14, scope: !8)
!149 = !DILocation(line: 253, column: 3, scope: !8)
!150 = !DILocation(line: 254, column: 1, scope: !8)
!151 = distinct !DISubprogram(name: "DMA_CalcDMAMUXChannelBaseAndMask", scope: !1, file: !1, line: 1312, type: !9, scopeLine: 1313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!152 = !DILocation(line: 1317, column: 17, scope: !151)
!153 = !DILocation(line: 1317, column: 23, scope: !151)
!154 = !DILocation(line: 1317, column: 7, scope: !151)
!155 = !DILocation(line: 1317, column: 32, scope: !151)
!156 = !DILocation(line: 1320, column: 48, scope: !151)
!157 = !DILocation(line: 1320, column: 54, scope: !151)
!158 = !DILocation(line: 1320, column: 67, scope: !151)
!159 = !DILocation(line: 1320, column: 45, scope: !151)
!160 = !DILocation(line: 1320, column: 5, scope: !151)
!161 = !DILocation(line: 1320, column: 11, scope: !151)
!162 = !DILocation(line: 1320, column: 25, scope: !151)
!163 = !DILocation(line: 1321, column: 3, scope: !151)
!164 = !DILocation(line: 1325, column: 48, scope: !151)
!165 = !DILocation(line: 1325, column: 54, scope: !151)
!166 = !DILocation(line: 1325, column: 67, scope: !151)
!167 = !DILocation(line: 1325, column: 45, scope: !151)
!168 = !DILocation(line: 1325, column: 5, scope: !151)
!169 = !DILocation(line: 1325, column: 11, scope: !151)
!170 = !DILocation(line: 1325, column: 25, scope: !151)
!171 = !DILocation(line: 1328, column: 32, scope: !151)
!172 = !DILocation(line: 1328, column: 38, scope: !151)
!173 = !DILocation(line: 1328, column: 22, scope: !151)
!174 = !DILocation(line: 1328, column: 47, scope: !151)
!175 = !DILocation(line: 1328, column: 56, scope: !151)
!176 = !DILocation(line: 1328, column: 62, scope: !151)
!177 = !DILocation(line: 1328, column: 18, scope: !151)
!178 = !DILocation(line: 1329, column: 3, scope: !151)
!179 = !DILocation(line: 1329, column: 9, scope: !151)
!180 = !DILocation(line: 1329, column: 29, scope: !151)
!181 = !DILocation(line: 1330, column: 43, scope: !151)
!182 = !DILocation(line: 1330, column: 58, scope: !151)
!183 = !DILocation(line: 1330, column: 39, scope: !151)
!184 = !DILocation(line: 1330, column: 3, scope: !151)
!185 = !DILocation(line: 1330, column: 9, scope: !151)
!186 = !DILocation(line: 1330, column: 33, scope: !151)
!187 = !DILocation(line: 1331, column: 1, scope: !151)
!188 = distinct !DISubprogram(name: "DMA_CalcDMAMUXRequestGenBaseAndMask", scope: !1, file: !1, line: 1340, type: !9, scopeLine: 1341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!189 = !DILocation(line: 1342, column: 23, scope: !188)
!190 = !DILocation(line: 1342, column: 29, scope: !188)
!191 = !DILocation(line: 1342, column: 34, scope: !188)
!192 = !DILocation(line: 1342, column: 42, scope: !188)
!193 = !DILocation(line: 1342, column: 12, scope: !188)
!194 = !DILocation(line: 1345, column: 111, scope: !188)
!195 = !DILocation(line: 1345, column: 119, scope: !188)
!196 = !DILocation(line: 1345, column: 125, scope: !188)
!197 = !DILocation(line: 1345, column: 107, scope: !188)
!198 = !DILocation(line: 1345, column: 28, scope: !188)
!199 = !DILocation(line: 1345, column: 3, scope: !188)
!200 = !DILocation(line: 1345, column: 9, scope: !188)
!201 = !DILocation(line: 1345, column: 26, scope: !188)
!202 = !DILocation(line: 1347, column: 3, scope: !188)
!203 = !DILocation(line: 1347, column: 9, scope: !188)
!204 = !DILocation(line: 1347, column: 32, scope: !188)
!205 = !DILocation(line: 1350, column: 47, scope: !188)
!206 = !DILocation(line: 1350, column: 55, scope: !188)
!207 = !DILocation(line: 1350, column: 61, scope: !188)
!208 = !DILocation(line: 1350, column: 42, scope: !188)
!209 = !DILocation(line: 1350, column: 3, scope: !188)
!210 = !DILocation(line: 1350, column: 9, scope: !188)
!211 = !DILocation(line: 1350, column: 36, scope: !188)
!212 = !DILocation(line: 1351, column: 1, scope: !188)
!213 = distinct !DISubprogram(name: "HAL_DMA_DeInit", scope: !1, file: !1, line: 262, type: !9, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!214 = !DILocation(line: 266, column: 15, scope: !213)
!215 = !DILocation(line: 266, column: 12, scope: !213)
!216 = !DILocation(line: 266, column: 7, scope: !213)
!217 = !DILocation(line: 268, column: 5, scope: !213)
!218 = !DILocation(line: 275, column: 3, scope: !213)
!219 = !DILocation(line: 278, column: 18, scope: !213)
!220 = !DILocation(line: 278, column: 24, scope: !213)
!221 = !DILocation(line: 278, column: 7, scope: !213)
!222 = !DILocation(line: 278, column: 34, scope: !213)
!223 = !DILocation(line: 281, column: 38, scope: !213)
!224 = !DILocation(line: 281, column: 44, scope: !213)
!225 = !DILocation(line: 281, column: 28, scope: !213)
!226 = !DILocation(line: 281, column: 53, scope: !213)
!227 = !DILocation(line: 281, column: 80, scope: !213)
!228 = !DILocation(line: 281, column: 135, scope: !213)
!229 = !DILocation(line: 281, column: 5, scope: !213)
!230 = !DILocation(line: 281, column: 11, scope: !213)
!231 = !DILocation(line: 281, column: 24, scope: !213)
!232 = !DILocation(line: 282, column: 5, scope: !213)
!233 = !DILocation(line: 282, column: 11, scope: !213)
!234 = !DILocation(line: 282, column: 26, scope: !213)
!235 = !DILocation(line: 283, column: 3, scope: !213)
!236 = !DILocation(line: 287, column: 38, scope: !213)
!237 = !DILocation(line: 287, column: 44, scope: !213)
!238 = !DILocation(line: 287, column: 28, scope: !213)
!239 = !DILocation(line: 287, column: 53, scope: !213)
!240 = !DILocation(line: 287, column: 80, scope: !213)
!241 = !DILocation(line: 287, column: 135, scope: !213)
!242 = !DILocation(line: 287, column: 5, scope: !213)
!243 = !DILocation(line: 287, column: 11, scope: !213)
!244 = !DILocation(line: 287, column: 24, scope: !213)
!245 = !DILocation(line: 288, column: 5, scope: !213)
!246 = !DILocation(line: 288, column: 11, scope: !213)
!247 = !DILocation(line: 288, column: 26, scope: !213)
!248 = !DILocation(line: 292, column: 3, scope: !213)
!249 = !DILocation(line: 292, column: 9, scope: !213)
!250 = !DILocation(line: 292, column: 19, scope: !213)
!251 = !DILocation(line: 292, column: 23, scope: !213)
!252 = !DILocation(line: 295, column: 50, scope: !213)
!253 = !DILocation(line: 295, column: 56, scope: !213)
!254 = !DILocation(line: 295, column: 69, scope: !213)
!255 = !DILocation(line: 295, column: 46, scope: !213)
!256 = !DILocation(line: 295, column: 3, scope: !213)
!257 = !DILocation(line: 295, column: 9, scope: !213)
!258 = !DILocation(line: 295, column: 25, scope: !213)
!259 = !DILocation(line: 295, column: 30, scope: !213)
!260 = !DILocation(line: 300, column: 36, scope: !213)
!261 = !DILocation(line: 300, column: 3, scope: !213)
!262 = !DILocation(line: 303, column: 3, scope: !213)
!263 = !DILocation(line: 303, column: 9, scope: !213)
!264 = !DILocation(line: 303, column: 24, scope: !213)
!265 = !DILocation(line: 303, column: 28, scope: !213)
!266 = !DILocation(line: 306, column: 36, scope: !213)
!267 = !DILocation(line: 306, column: 42, scope: !213)
!268 = !DILocation(line: 306, column: 3, scope: !213)
!269 = !DILocation(line: 306, column: 9, scope: !213)
!270 = !DILocation(line: 306, column: 30, scope: !213)
!271 = !DILocation(line: 306, column: 34, scope: !213)
!272 = !DILocation(line: 309, column: 8, scope: !213)
!273 = !DILocation(line: 309, column: 14, scope: !213)
!274 = !DILocation(line: 309, column: 19, scope: !213)
!275 = !DILocation(line: 309, column: 27, scope: !213)
!276 = !DILocation(line: 309, column: 34, scope: !213)
!277 = !DILocation(line: 309, column: 38, scope: !213)
!278 = !DILocation(line: 309, column: 44, scope: !213)
!279 = !DILocation(line: 309, column: 49, scope: !213)
!280 = !DILocation(line: 309, column: 57, scope: !213)
!281 = !DILocation(line: 309, column: 6, scope: !213)
!282 = !DILocation(line: 314, column: 41, scope: !213)
!283 = !DILocation(line: 314, column: 5, scope: !213)
!284 = !DILocation(line: 317, column: 5, scope: !213)
!285 = !DILocation(line: 317, column: 11, scope: !213)
!286 = !DILocation(line: 317, column: 29, scope: !213)
!287 = !DILocation(line: 317, column: 34, scope: !213)
!288 = !DILocation(line: 320, column: 43, scope: !213)
!289 = !DILocation(line: 320, column: 49, scope: !213)
!290 = !DILocation(line: 320, column: 5, scope: !213)
!291 = !DILocation(line: 320, column: 11, scope: !213)
!292 = !DILocation(line: 320, column: 35, scope: !213)
!293 = !DILocation(line: 320, column: 41, scope: !213)
!294 = !DILocation(line: 321, column: 3, scope: !213)
!295 = !DILocation(line: 323, column: 3, scope: !213)
!296 = !DILocation(line: 323, column: 9, scope: !213)
!297 = !DILocation(line: 323, column: 26, scope: !213)
!298 = !DILocation(line: 324, column: 3, scope: !213)
!299 = !DILocation(line: 324, column: 9, scope: !213)
!300 = !DILocation(line: 324, column: 32, scope: !213)
!301 = !DILocation(line: 325, column: 3, scope: !213)
!302 = !DILocation(line: 325, column: 9, scope: !213)
!303 = !DILocation(line: 325, column: 36, scope: !213)
!304 = !DILocation(line: 328, column: 3, scope: !213)
!305 = !DILocation(line: 328, column: 9, scope: !213)
!306 = !DILocation(line: 328, column: 26, scope: !213)
!307 = !DILocation(line: 329, column: 3, scope: !213)
!308 = !DILocation(line: 329, column: 9, scope: !213)
!309 = !DILocation(line: 329, column: 30, scope: !213)
!310 = !DILocation(line: 330, column: 3, scope: !213)
!311 = !DILocation(line: 330, column: 9, scope: !213)
!312 = !DILocation(line: 330, column: 28, scope: !213)
!313 = !DILocation(line: 331, column: 3, scope: !213)
!314 = !DILocation(line: 331, column: 9, scope: !213)
!315 = !DILocation(line: 331, column: 32, scope: !213)
!316 = !DILocation(line: 332, column: 3, scope: !213)
!317 = !DILocation(line: 332, column: 9, scope: !213)
!318 = !DILocation(line: 332, column: 27, scope: !213)
!319 = !DILocation(line: 333, column: 3, scope: !213)
!320 = !DILocation(line: 333, column: 9, scope: !213)
!321 = !DILocation(line: 333, column: 27, scope: !213)
!322 = !DILocation(line: 336, column: 3, scope: !213)
!323 = !DILocation(line: 336, column: 9, scope: !213)
!324 = !DILocation(line: 336, column: 19, scope: !213)
!325 = !DILocation(line: 339, column: 3, scope: !213)
!326 = !DILocation(line: 339, column: 9, scope: !213)
!327 = !DILocation(line: 339, column: 15, scope: !213)
!328 = !DILocation(line: 342, column: 3, scope: !213)
!329 = !DILocation(line: 344, column: 3, scope: !213)
!330 = !DILocation(line: 345, column: 1, scope: !213)
!331 = distinct !DISubprogram(name: "HAL_DMA_Start", scope: !1, file: !1, line: 379, type: !9, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!332 = !DILocation(line: 381, column: 21, scope: !331)
!333 = !DILocation(line: 387, column: 3, scope: !331)
!334 = !DILocation(line: 389, column: 29, scope: !331)
!335 = !DILocation(line: 389, column: 35, scope: !331)
!336 = !DILocation(line: 389, column: 26, scope: !331)
!337 = !DILocation(line: 389, column: 6, scope: !331)
!338 = !DILocation(line: 392, column: 5, scope: !331)
!339 = !DILocation(line: 392, column: 11, scope: !331)
!340 = !DILocation(line: 392, column: 17, scope: !331)
!341 = !DILocation(line: 393, column: 5, scope: !331)
!342 = !DILocation(line: 393, column: 11, scope: !331)
!343 = !DILocation(line: 393, column: 21, scope: !331)
!344 = !DILocation(line: 396, column: 5, scope: !331)
!345 = !DILocation(line: 399, column: 19, scope: !331)
!346 = !DILocation(line: 399, column: 25, scope: !331)
!347 = !DILocation(line: 399, column: 37, scope: !331)
!348 = !DILocation(line: 399, column: 49, scope: !331)
!349 = !DILocation(line: 399, column: 5, scope: !331)
!350 = !DILocation(line: 402, column: 5, scope: !331)
!351 = !DILocation(line: 403, column: 3, scope: !331)
!352 = !DILocation(line: 407, column: 5, scope: !331)
!353 = !DILocation(line: 408, column: 12, scope: !331)
!354 = !DILocation(line: 410, column: 10, scope: !331)
!355 = !DILocation(line: 410, column: 3, scope: !331)
!356 = !DILocation(line: 411, column: 1, scope: !331)
!357 = distinct !DISubprogram(name: "DMA_SetConfig", scope: !1, file: !1, line: 1269, type: !9, scopeLine: 1270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!358 = !DILocation(line: 1272, column: 36, scope: !357)
!359 = !DILocation(line: 1272, column: 42, scope: !357)
!360 = !DILocation(line: 1272, column: 3, scope: !357)
!361 = !DILocation(line: 1272, column: 9, scope: !357)
!362 = !DILocation(line: 1272, column: 30, scope: !357)
!363 = !DILocation(line: 1272, column: 34, scope: !357)
!364 = !DILocation(line: 1274, column: 6, scope: !357)
!365 = !DILocation(line: 1274, column: 12, scope: !357)
!366 = !DILocation(line: 1274, column: 29, scope: !357)
!367 = !DILocation(line: 1277, column: 43, scope: !357)
!368 = !DILocation(line: 1277, column: 49, scope: !357)
!369 = !DILocation(line: 1277, column: 5, scope: !357)
!370 = !DILocation(line: 1277, column: 11, scope: !357)
!371 = !DILocation(line: 1277, column: 35, scope: !357)
!372 = !DILocation(line: 1277, column: 41, scope: !357)
!373 = !DILocation(line: 1278, column: 3, scope: !357)
!374 = !DILocation(line: 1281, column: 50, scope: !357)
!375 = !DILocation(line: 1281, column: 56, scope: !357)
!376 = !DILocation(line: 1281, column: 69, scope: !357)
!377 = !DILocation(line: 1281, column: 46, scope: !357)
!378 = !DILocation(line: 1281, column: 3, scope: !357)
!379 = !DILocation(line: 1281, column: 9, scope: !357)
!380 = !DILocation(line: 1281, column: 25, scope: !357)
!381 = !DILocation(line: 1281, column: 30, scope: !357)
!382 = !DILocation(line: 1284, column: 27, scope: !357)
!383 = !DILocation(line: 1284, column: 3, scope: !357)
!384 = !DILocation(line: 1284, column: 9, scope: !357)
!385 = !DILocation(line: 1284, column: 19, scope: !357)
!386 = !DILocation(line: 1284, column: 25, scope: !357)
!387 = !DILocation(line: 1287, column: 7, scope: !357)
!388 = !DILocation(line: 1287, column: 13, scope: !357)
!389 = !DILocation(line: 1287, column: 18, scope: !357)
!390 = !DILocation(line: 1287, column: 29, scope: !357)
!391 = !DILocation(line: 1287, column: 6, scope: !357)
!392 = !DILocation(line: 1290, column: 28, scope: !357)
!393 = !DILocation(line: 1290, column: 5, scope: !357)
!394 = !DILocation(line: 1290, column: 11, scope: !357)
!395 = !DILocation(line: 1290, column: 21, scope: !357)
!396 = !DILocation(line: 1290, column: 26, scope: !357)
!397 = !DILocation(line: 1293, column: 29, scope: !357)
!398 = !DILocation(line: 1293, column: 5, scope: !357)
!399 = !DILocation(line: 1293, column: 11, scope: !357)
!400 = !DILocation(line: 1293, column: 21, scope: !357)
!401 = !DILocation(line: 1293, column: 27, scope: !357)
!402 = !DILocation(line: 1294, column: 3, scope: !357)
!403 = !DILocation(line: 1299, column: 28, scope: !357)
!404 = !DILocation(line: 1299, column: 5, scope: !357)
!405 = !DILocation(line: 1299, column: 11, scope: !357)
!406 = !DILocation(line: 1299, column: 21, scope: !357)
!407 = !DILocation(line: 1299, column: 26, scope: !357)
!408 = !DILocation(line: 1302, column: 29, scope: !357)
!409 = !DILocation(line: 1302, column: 5, scope: !357)
!410 = !DILocation(line: 1302, column: 11, scope: !357)
!411 = !DILocation(line: 1302, column: 21, scope: !357)
!412 = !DILocation(line: 1302, column: 27, scope: !357)
!413 = !DILocation(line: 1304, column: 1, scope: !357)
!414 = distinct !DISubprogram(name: "HAL_DMA_Start_IT", scope: !1, file: !1, line: 422, type: !9, scopeLine: 423, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!415 = !DILocation(line: 424, column: 21, scope: !414)
!416 = !DILocation(line: 430, column: 3, scope: !414)
!417 = !DILocation(line: 432, column: 29, scope: !414)
!418 = !DILocation(line: 432, column: 35, scope: !414)
!419 = !DILocation(line: 432, column: 26, scope: !414)
!420 = !DILocation(line: 432, column: 6, scope: !414)
!421 = !DILocation(line: 435, column: 5, scope: !414)
!422 = !DILocation(line: 435, column: 11, scope: !414)
!423 = !DILocation(line: 435, column: 17, scope: !414)
!424 = !DILocation(line: 436, column: 5, scope: !414)
!425 = !DILocation(line: 436, column: 11, scope: !414)
!426 = !DILocation(line: 436, column: 21, scope: !414)
!427 = !DILocation(line: 439, column: 5, scope: !414)
!428 = !DILocation(line: 442, column: 19, scope: !414)
!429 = !DILocation(line: 442, column: 25, scope: !414)
!430 = !DILocation(line: 442, column: 37, scope: !414)
!431 = !DILocation(line: 442, column: 49, scope: !414)
!432 = !DILocation(line: 442, column: 5, scope: !414)
!433 = !DILocation(line: 446, column: 16, scope: !414)
!434 = !DILocation(line: 446, column: 22, scope: !414)
!435 = !DILocation(line: 446, column: 13, scope: !414)
!436 = !DILocation(line: 446, column: 8, scope: !414)
!437 = !DILocation(line: 449, column: 7, scope: !414)
!438 = !DILocation(line: 450, column: 5, scope: !414)
!439 = !DILocation(line: 453, column: 7, scope: !414)
!440 = !DILocation(line: 454, column: 7, scope: !414)
!441 = !DILocation(line: 458, column: 9, scope: !414)
!442 = !DILocation(line: 458, column: 15, scope: !414)
!443 = !DILocation(line: 458, column: 30, scope: !414)
!444 = !DILocation(line: 458, column: 34, scope: !414)
!445 = !DILocation(line: 458, column: 52, scope: !414)
!446 = !DILocation(line: 458, column: 8, scope: !414)
!447 = !DILocation(line: 461, column: 7, scope: !414)
!448 = !DILocation(line: 461, column: 13, scope: !414)
!449 = !DILocation(line: 461, column: 28, scope: !414)
!450 = !DILocation(line: 461, column: 32, scope: !414)
!451 = !DILocation(line: 462, column: 5, scope: !414)
!452 = !DILocation(line: 464, column: 8, scope: !414)
!453 = !DILocation(line: 464, column: 14, scope: !414)
!454 = !DILocation(line: 464, column: 31, scope: !414)
!455 = !DILocation(line: 468, column: 7, scope: !414)
!456 = !DILocation(line: 468, column: 13, scope: !414)
!457 = !DILocation(line: 468, column: 31, scope: !414)
!458 = !DILocation(line: 468, column: 36, scope: !414)
!459 = !DILocation(line: 469, column: 5, scope: !414)
!460 = !DILocation(line: 472, column: 5, scope: !414)
!461 = !DILocation(line: 473, column: 3, scope: !414)
!462 = !DILocation(line: 477, column: 5, scope: !414)
!463 = !DILocation(line: 480, column: 12, scope: !414)
!464 = !DILocation(line: 482, column: 10, scope: !414)
!465 = !DILocation(line: 482, column: 3, scope: !414)
!466 = !DILocation(line: 483, column: 1, scope: !414)
!467 = distinct !DISubprogram(name: "HAL_DMA_Abort", scope: !1, file: !1, line: 491, type: !9, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!468 = !DILocation(line: 493, column: 21, scope: !467)
!469 = !DILocation(line: 496, column: 6, scope: !467)
!470 = !DILocation(line: 496, column: 12, scope: !467)
!471 = !DILocation(line: 496, column: 18, scope: !467)
!472 = !DILocation(line: 498, column: 5, scope: !467)
!473 = !DILocation(line: 498, column: 11, scope: !467)
!474 = !DILocation(line: 498, column: 21, scope: !467)
!475 = !DILocation(line: 501, column: 5, scope: !467)
!476 = !DILocation(line: 503, column: 5, scope: !467)
!477 = !DILocation(line: 508, column: 5, scope: !467)
!478 = !DILocation(line: 511, column: 5, scope: !467)
!479 = !DILocation(line: 511, column: 11, scope: !467)
!480 = !DILocation(line: 511, column: 26, scope: !467)
!481 = !DILocation(line: 511, column: 30, scope: !467)
!482 = !DILocation(line: 514, column: 5, scope: !467)
!483 = !DILocation(line: 517, column: 52, scope: !467)
!484 = !DILocation(line: 517, column: 58, scope: !467)
!485 = !DILocation(line: 517, column: 71, scope: !467)
!486 = !DILocation(line: 517, column: 48, scope: !467)
!487 = !DILocation(line: 517, column: 5, scope: !467)
!488 = !DILocation(line: 517, column: 11, scope: !467)
!489 = !DILocation(line: 517, column: 27, scope: !467)
!490 = !DILocation(line: 517, column: 32, scope: !467)
!491 = !DILocation(line: 520, column: 38, scope: !467)
!492 = !DILocation(line: 520, column: 44, scope: !467)
!493 = !DILocation(line: 520, column: 5, scope: !467)
!494 = !DILocation(line: 520, column: 11, scope: !467)
!495 = !DILocation(line: 520, column: 32, scope: !467)
!496 = !DILocation(line: 520, column: 36, scope: !467)
!497 = !DILocation(line: 522, column: 8, scope: !467)
!498 = !DILocation(line: 522, column: 14, scope: !467)
!499 = !DILocation(line: 522, column: 31, scope: !467)
!500 = !DILocation(line: 526, column: 7, scope: !467)
!501 = !DILocation(line: 526, column: 13, scope: !467)
!502 = !DILocation(line: 526, column: 31, scope: !467)
!503 = !DILocation(line: 526, column: 36, scope: !467)
!504 = !DILocation(line: 529, column: 45, scope: !467)
!505 = !DILocation(line: 529, column: 51, scope: !467)
!506 = !DILocation(line: 529, column: 7, scope: !467)
!507 = !DILocation(line: 529, column: 13, scope: !467)
!508 = !DILocation(line: 529, column: 37, scope: !467)
!509 = !DILocation(line: 529, column: 43, scope: !467)
!510 = !DILocation(line: 530, column: 5, scope: !467)
!511 = !DILocation(line: 533, column: 5, scope: !467)
!512 = !DILocation(line: 533, column: 11, scope: !467)
!513 = !DILocation(line: 533, column: 17, scope: !467)
!514 = !DILocation(line: 536, column: 5, scope: !467)
!515 = !DILocation(line: 538, column: 12, scope: !467)
!516 = !DILocation(line: 538, column: 5, scope: !467)
!517 = !DILocation(line: 540, column: 1, scope: !467)
!518 = distinct !DISubprogram(name: "HAL_DMA_Abort_IT", scope: !1, file: !1, line: 548, type: !9, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!519 = !DILocation(line: 550, column: 21, scope: !518)
!520 = !DILocation(line: 552, column: 28, scope: !518)
!521 = !DILocation(line: 552, column: 34, scope: !518)
!522 = !DILocation(line: 552, column: 25, scope: !518)
!523 = !DILocation(line: 552, column: 6, scope: !518)
!524 = !DILocation(line: 555, column: 5, scope: !518)
!525 = !DILocation(line: 555, column: 11, scope: !518)
!526 = !DILocation(line: 555, column: 21, scope: !518)
!527 = !DILocation(line: 557, column: 12, scope: !518)
!528 = !DILocation(line: 558, column: 3, scope: !518)
!529 = !DILocation(line: 562, column: 5, scope: !518)
!530 = !DILocation(line: 565, column: 5, scope: !518)
!531 = !DILocation(line: 568, column: 5, scope: !518)
!532 = !DILocation(line: 568, column: 11, scope: !518)
!533 = !DILocation(line: 568, column: 26, scope: !518)
!534 = !DILocation(line: 568, column: 30, scope: !518)
!535 = !DILocation(line: 571, column: 52, scope: !518)
!536 = !DILocation(line: 571, column: 58, scope: !518)
!537 = !DILocation(line: 571, column: 71, scope: !518)
!538 = !DILocation(line: 571, column: 48, scope: !518)
!539 = !DILocation(line: 571, column: 5, scope: !518)
!540 = !DILocation(line: 571, column: 11, scope: !518)
!541 = !DILocation(line: 571, column: 27, scope: !518)
!542 = !DILocation(line: 571, column: 32, scope: !518)
!543 = !DILocation(line: 574, column: 38, scope: !518)
!544 = !DILocation(line: 574, column: 44, scope: !518)
!545 = !DILocation(line: 574, column: 5, scope: !518)
!546 = !DILocation(line: 574, column: 11, scope: !518)
!547 = !DILocation(line: 574, column: 32, scope: !518)
!548 = !DILocation(line: 574, column: 36, scope: !518)
!549 = !DILocation(line: 576, column: 8, scope: !518)
!550 = !DILocation(line: 576, column: 14, scope: !518)
!551 = !DILocation(line: 576, column: 31, scope: !518)
!552 = !DILocation(line: 580, column: 7, scope: !518)
!553 = !DILocation(line: 580, column: 13, scope: !518)
!554 = !DILocation(line: 580, column: 31, scope: !518)
!555 = !DILocation(line: 580, column: 36, scope: !518)
!556 = !DILocation(line: 583, column: 45, scope: !518)
!557 = !DILocation(line: 583, column: 51, scope: !518)
!558 = !DILocation(line: 583, column: 7, scope: !518)
!559 = !DILocation(line: 583, column: 13, scope: !518)
!560 = !DILocation(line: 583, column: 37, scope: !518)
!561 = !DILocation(line: 583, column: 43, scope: !518)
!562 = !DILocation(line: 584, column: 5, scope: !518)
!563 = !DILocation(line: 587, column: 5, scope: !518)
!564 = !DILocation(line: 587, column: 11, scope: !518)
!565 = !DILocation(line: 587, column: 17, scope: !518)
!566 = !DILocation(line: 590, column: 5, scope: !518)
!567 = !DILocation(line: 593, column: 8, scope: !518)
!568 = !DILocation(line: 593, column: 14, scope: !518)
!569 = !DILocation(line: 593, column: 32, scope: !518)
!570 = !DILocation(line: 595, column: 7, scope: !518)
!571 = !DILocation(line: 595, column: 13, scope: !518)
!572 = !DILocation(line: 595, column: 31, scope: !518)
!573 = !DILocation(line: 596, column: 5, scope: !518)
!574 = !DILocation(line: 598, column: 10, scope: !518)
!575 = !DILocation(line: 598, column: 3, scope: !518)
!576 = distinct !DISubprogram(name: "HAL_DMA_PollForTransfer", scope: !1, file: !1, line: 609, type: !9, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!577 = !DILocation(line: 614, column: 28, scope: !576)
!578 = !DILocation(line: 614, column: 34, scope: !576)
!579 = !DILocation(line: 614, column: 25, scope: !576)
!580 = !DILocation(line: 614, column: 6, scope: !576)
!581 = !DILocation(line: 617, column: 5, scope: !576)
!582 = !DILocation(line: 617, column: 11, scope: !576)
!583 = !DILocation(line: 617, column: 21, scope: !576)
!584 = !DILocation(line: 618, column: 5, scope: !576)
!585 = !DILocation(line: 619, column: 5, scope: !576)
!586 = !DILocation(line: 623, column: 8, scope: !576)
!587 = !DILocation(line: 623, column: 14, scope: !576)
!588 = !DILocation(line: 623, column: 24, scope: !576)
!589 = !DILocation(line: 623, column: 28, scope: !576)
!590 = !DILocation(line: 623, column: 44, scope: !576)
!591 = !DILocation(line: 623, column: 7, scope: !576)
!592 = !DILocation(line: 625, column: 5, scope: !576)
!593 = !DILocation(line: 625, column: 11, scope: !576)
!594 = !DILocation(line: 625, column: 21, scope: !576)
!595 = !DILocation(line: 626, column: 5, scope: !576)
!596 = !DILocation(line: 630, column: 32, scope: !576)
!597 = !DILocation(line: 630, column: 29, scope: !576)
!598 = !DILocation(line: 630, column: 7, scope: !576)
!599 = !DILocation(line: 633, column: 29, scope: !576)
!600 = !DILocation(line: 633, column: 35, scope: !576)
!601 = !DILocation(line: 633, column: 48, scope: !576)
!602 = !DILocation(line: 633, column: 25, scope: !576)
!603 = !DILocation(line: 633, column: 10, scope: !576)
!604 = !DILocation(line: 634, column: 3, scope: !576)
!605 = !DILocation(line: 638, column: 29, scope: !576)
!606 = !DILocation(line: 638, column: 35, scope: !576)
!607 = !DILocation(line: 638, column: 48, scope: !576)
!608 = !DILocation(line: 638, column: 25, scope: !576)
!609 = !DILocation(line: 638, column: 10, scope: !576)
!610 = !DILocation(line: 642, column: 15, scope: !576)
!611 = !DILocation(line: 642, column: 13, scope: !576)
!612 = !DILocation(line: 644, column: 3, scope: !576)
!613 = !DILocation(line: 644, column: 10, scope: !576)
!614 = !DILocation(line: 644, column: 16, scope: !576)
!615 = !DILocation(line: 644, column: 32, scope: !576)
!616 = !DILocation(line: 644, column: 38, scope: !576)
!617 = !DILocation(line: 644, column: 36, scope: !576)
!618 = !DILocation(line: 644, column: 44, scope: !576)
!619 = !DILocation(line: 646, column: 9, scope: !576)
!620 = !DILocation(line: 646, column: 15, scope: !576)
!621 = !DILocation(line: 646, column: 31, scope: !576)
!622 = !DILocation(line: 646, column: 55, scope: !576)
!623 = !DILocation(line: 646, column: 61, scope: !576)
!624 = !DILocation(line: 646, column: 73, scope: !576)
!625 = !DILocation(line: 646, column: 51, scope: !576)
!626 = !DILocation(line: 646, column: 35, scope: !576)
!627 = !DILocation(line: 646, column: 84, scope: !576)
!628 = !DILocation(line: 646, column: 8, scope: !576)
!629 = !DILocation(line: 651, column: 54, scope: !576)
!630 = !DILocation(line: 651, column: 60, scope: !576)
!631 = !DILocation(line: 651, column: 73, scope: !576)
!632 = !DILocation(line: 651, column: 50, scope: !576)
!633 = !DILocation(line: 651, column: 7, scope: !576)
!634 = !DILocation(line: 651, column: 13, scope: !576)
!635 = !DILocation(line: 651, column: 29, scope: !576)
!636 = !DILocation(line: 651, column: 34, scope: !576)
!637 = !DILocation(line: 654, column: 7, scope: !576)
!638 = !DILocation(line: 654, column: 13, scope: !576)
!639 = !DILocation(line: 654, column: 23, scope: !576)
!640 = !DILocation(line: 657, column: 7, scope: !576)
!641 = !DILocation(line: 657, column: 13, scope: !576)
!642 = !DILocation(line: 657, column: 18, scope: !576)
!643 = !DILocation(line: 660, column: 7, scope: !576)
!644 = !DILocation(line: 662, column: 7, scope: !576)
!645 = !DILocation(line: 665, column: 8, scope: !576)
!646 = !DILocation(line: 665, column: 16, scope: !576)
!647 = !DILocation(line: 667, column: 12, scope: !576)
!648 = !DILocation(line: 667, column: 28, scope: !576)
!649 = !DILocation(line: 667, column: 26, scope: !576)
!650 = !DILocation(line: 667, column: 41, scope: !576)
!651 = !DILocation(line: 667, column: 39, scope: !576)
!652 = !DILocation(line: 667, column: 50, scope: !576)
!653 = !DILocation(line: 667, column: 55, scope: !576)
!654 = !DILocation(line: 667, column: 63, scope: !576)
!655 = !DILocation(line: 667, column: 10, scope: !576)
!656 = !DILocation(line: 670, column: 9, scope: !576)
!657 = !DILocation(line: 670, column: 15, scope: !576)
!658 = !DILocation(line: 670, column: 25, scope: !576)
!659 = !DILocation(line: 673, column: 9, scope: !576)
!660 = !DILocation(line: 673, column: 15, scope: !576)
!661 = !DILocation(line: 673, column: 21, scope: !576)
!662 = !DILocation(line: 676, column: 9, scope: !576)
!663 = !DILocation(line: 678, column: 9, scope: !576)
!664 = !DILocation(line: 680, column: 5, scope: !576)
!665 = distinct !{!665, !612, !666}
!666 = !DILocation(line: 681, column: 3, scope: !576)
!667 = !DILocation(line: 684, column: 6, scope: !576)
!668 = !DILocation(line: 684, column: 12, scope: !576)
!669 = !DILocation(line: 684, column: 29, scope: !576)
!670 = !DILocation(line: 687, column: 9, scope: !576)
!671 = !DILocation(line: 687, column: 15, scope: !576)
!672 = !DILocation(line: 687, column: 39, scope: !576)
!673 = !DILocation(line: 687, column: 46, scope: !576)
!674 = !DILocation(line: 687, column: 52, scope: !576)
!675 = !DILocation(line: 687, column: 44, scope: !576)
!676 = !DILocation(line: 687, column: 80, scope: !576)
!677 = !DILocation(line: 687, column: 8, scope: !576)
!678 = !DILocation(line: 690, column: 7, scope: !576)
!679 = !DILocation(line: 690, column: 13, scope: !576)
!680 = !DILocation(line: 690, column: 31, scope: !576)
!681 = !DILocation(line: 690, column: 36, scope: !576)
!682 = !DILocation(line: 693, column: 45, scope: !576)
!683 = !DILocation(line: 693, column: 51, scope: !576)
!684 = !DILocation(line: 693, column: 7, scope: !576)
!685 = !DILocation(line: 693, column: 13, scope: !576)
!686 = !DILocation(line: 693, column: 37, scope: !576)
!687 = !DILocation(line: 693, column: 43, scope: !576)
!688 = !DILocation(line: 696, column: 7, scope: !576)
!689 = !DILocation(line: 696, column: 13, scope: !576)
!690 = !DILocation(line: 696, column: 23, scope: !576)
!691 = !DILocation(line: 697, column: 5, scope: !576)
!692 = !DILocation(line: 698, column: 3, scope: !576)
!693 = !DILocation(line: 701, column: 7, scope: !576)
!694 = !DILocation(line: 701, column: 13, scope: !576)
!695 = !DILocation(line: 701, column: 34, scope: !576)
!696 = !DILocation(line: 701, column: 40, scope: !576)
!697 = !DILocation(line: 701, column: 46, scope: !576)
!698 = !DILocation(line: 701, column: 38, scope: !576)
!699 = !DILocation(line: 701, column: 71, scope: !576)
!700 = !DILocation(line: 701, column: 6, scope: !576)
!701 = !DILocation(line: 704, column: 38, scope: !576)
!702 = !DILocation(line: 704, column: 44, scope: !576)
!703 = !DILocation(line: 704, column: 5, scope: !576)
!704 = !DILocation(line: 704, column: 11, scope: !576)
!705 = !DILocation(line: 704, column: 32, scope: !576)
!706 = !DILocation(line: 704, column: 36, scope: !576)
!707 = !DILocation(line: 707, column: 5, scope: !576)
!708 = !DILocation(line: 707, column: 11, scope: !576)
!709 = !DILocation(line: 707, column: 21, scope: !576)
!710 = !DILocation(line: 708, column: 3, scope: !576)
!711 = !DILocation(line: 710, column: 31, scope: !576)
!712 = !DILocation(line: 710, column: 28, scope: !576)
!713 = !DILocation(line: 710, column: 6, scope: !576)
!714 = !DILocation(line: 713, column: 52, scope: !576)
!715 = !DILocation(line: 713, column: 58, scope: !576)
!716 = !DILocation(line: 713, column: 70, scope: !576)
!717 = !DILocation(line: 713, column: 48, scope: !576)
!718 = !DILocation(line: 713, column: 5, scope: !576)
!719 = !DILocation(line: 713, column: 11, scope: !576)
!720 = !DILocation(line: 713, column: 27, scope: !576)
!721 = !DILocation(line: 713, column: 32, scope: !576)
!722 = !DILocation(line: 716, column: 5, scope: !576)
!723 = !DILocation(line: 720, column: 5, scope: !576)
!724 = !DILocation(line: 720, column: 11, scope: !576)
!725 = !DILocation(line: 720, column: 17, scope: !576)
!726 = !DILocation(line: 721, column: 3, scope: !576)
!727 = !DILocation(line: 725, column: 52, scope: !576)
!728 = !DILocation(line: 725, column: 58, scope: !576)
!729 = !DILocation(line: 725, column: 71, scope: !576)
!730 = !DILocation(line: 725, column: 48, scope: !576)
!731 = !DILocation(line: 725, column: 5, scope: !576)
!732 = !DILocation(line: 725, column: 11, scope: !576)
!733 = !DILocation(line: 725, column: 27, scope: !576)
!734 = !DILocation(line: 725, column: 32, scope: !576)
!735 = !DILocation(line: 728, column: 3, scope: !576)
!736 = !DILocation(line: 729, column: 1, scope: !576)
!737 = distinct !DISubprogram(name: "HAL_DMA_IRQHandler", scope: !1, file: !1, line: 737, type: !9, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!738 = !DILocation(line: 739, column: 22, scope: !737)
!739 = !DILocation(line: 739, column: 28, scope: !737)
!740 = !DILocation(line: 739, column: 44, scope: !737)
!741 = !DILocation(line: 739, column: 12, scope: !737)
!742 = !DILocation(line: 740, column: 24, scope: !737)
!743 = !DILocation(line: 740, column: 30, scope: !737)
!744 = !DILocation(line: 740, column: 40, scope: !737)
!745 = !DILocation(line: 740, column: 12, scope: !737)
!746 = !DILocation(line: 743, column: 9, scope: !737)
!747 = !DILocation(line: 743, column: 37, scope: !737)
!748 = !DILocation(line: 743, column: 43, scope: !737)
!749 = !DILocation(line: 743, column: 56, scope: !737)
!750 = !DILocation(line: 743, column: 33, scope: !737)
!751 = !DILocation(line: 743, column: 17, scope: !737)
!752 = !DILocation(line: 743, column: 67, scope: !737)
!753 = !DILocation(line: 743, column: 74, scope: !737)
!754 = !DILocation(line: 743, column: 79, scope: !737)
!755 = !DILocation(line: 743, column: 89, scope: !737)
!756 = !DILocation(line: 743, column: 102, scope: !737)
!757 = !DILocation(line: 743, column: 7, scope: !737)
!758 = !DILocation(line: 746, column: 10, scope: !737)
!759 = !DILocation(line: 746, column: 16, scope: !737)
!760 = !DILocation(line: 746, column: 26, scope: !737)
!761 = !DILocation(line: 746, column: 31, scope: !737)
!762 = !DILocation(line: 746, column: 58, scope: !737)
!763 = !DILocation(line: 746, column: 8, scope: !737)
!764 = !DILocation(line: 749, column: 54, scope: !737)
!765 = !DILocation(line: 749, column: 60, scope: !737)
!766 = !DILocation(line: 749, column: 73, scope: !737)
!767 = !DILocation(line: 749, column: 50, scope: !737)
!768 = !DILocation(line: 749, column: 7, scope: !737)
!769 = !DILocation(line: 749, column: 13, scope: !737)
!770 = !DILocation(line: 749, column: 29, scope: !737)
!771 = !DILocation(line: 749, column: 34, scope: !737)
!772 = !DILocation(line: 752, column: 11, scope: !737)
!773 = !DILocation(line: 752, column: 17, scope: !737)
!774 = !DILocation(line: 752, column: 27, scope: !737)
!775 = !DILocation(line: 752, column: 31, scope: !737)
!776 = !DILocation(line: 752, column: 45, scope: !737)
!777 = !DILocation(line: 752, column: 10, scope: !737)
!778 = !DILocation(line: 754, column: 12, scope: !737)
!779 = !DILocation(line: 754, column: 18, scope: !737)
!780 = !DILocation(line: 754, column: 39, scope: !737)
!781 = !DILocation(line: 757, column: 11, scope: !737)
!782 = !DILocation(line: 757, column: 17, scope: !737)
!783 = !DILocation(line: 757, column: 38, scope: !737)
!784 = !DILocation(line: 758, column: 9, scope: !737)
!785 = !DILocation(line: 759, column: 7, scope: !737)
!786 = !DILocation(line: 763, column: 12, scope: !737)
!787 = !DILocation(line: 763, column: 18, scope: !737)
!788 = !DILocation(line: 763, column: 41, scope: !737)
!789 = !DILocation(line: 766, column: 11, scope: !737)
!790 = !DILocation(line: 766, column: 17, scope: !737)
!791 = !DILocation(line: 766, column: 40, scope: !737)
!792 = !DILocation(line: 767, column: 9, scope: !737)
!793 = !DILocation(line: 769, column: 5, scope: !737)
!794 = !DILocation(line: 773, column: 11, scope: !737)
!795 = !DILocation(line: 773, column: 17, scope: !737)
!796 = !DILocation(line: 773, column: 27, scope: !737)
!797 = !DILocation(line: 773, column: 31, scope: !737)
!798 = !DILocation(line: 773, column: 47, scope: !737)
!799 = !DILocation(line: 773, column: 10, scope: !737)
!800 = !DILocation(line: 776, column: 9, scope: !737)
!801 = !DILocation(line: 777, column: 7, scope: !737)
!802 = !DILocation(line: 779, column: 54, scope: !737)
!803 = !DILocation(line: 779, column: 60, scope: !737)
!804 = !DILocation(line: 779, column: 73, scope: !737)
!805 = !DILocation(line: 779, column: 50, scope: !737)
!806 = !DILocation(line: 779, column: 7, scope: !737)
!807 = !DILocation(line: 779, column: 13, scope: !737)
!808 = !DILocation(line: 779, column: 29, scope: !737)
!809 = !DILocation(line: 779, column: 34, scope: !737)
!810 = !DILocation(line: 784, column: 10, scope: !737)
!811 = !DILocation(line: 784, column: 16, scope: !737)
!812 = !DILocation(line: 784, column: 37, scope: !737)
!813 = !DILocation(line: 787, column: 9, scope: !737)
!814 = !DILocation(line: 787, column: 15, scope: !737)
!815 = !DILocation(line: 787, column: 36, scope: !737)
!816 = !DILocation(line: 788, column: 7, scope: !737)
!817 = !DILocation(line: 790, column: 3, scope: !737)
!818 = !DILocation(line: 793, column: 14, scope: !737)
!819 = !DILocation(line: 793, column: 42, scope: !737)
!820 = !DILocation(line: 793, column: 48, scope: !737)
!821 = !DILocation(line: 793, column: 61, scope: !737)
!822 = !DILocation(line: 793, column: 38, scope: !737)
!823 = !DILocation(line: 793, column: 22, scope: !737)
!824 = !DILocation(line: 793, column: 72, scope: !737)
!825 = !DILocation(line: 793, column: 79, scope: !737)
!826 = !DILocation(line: 793, column: 84, scope: !737)
!827 = !DILocation(line: 793, column: 94, scope: !737)
!828 = !DILocation(line: 793, column: 107, scope: !737)
!829 = !DILocation(line: 793, column: 12, scope: !737)
!830 = !DILocation(line: 795, column: 10, scope: !737)
!831 = !DILocation(line: 795, column: 16, scope: !737)
!832 = !DILocation(line: 795, column: 26, scope: !737)
!833 = !DILocation(line: 795, column: 31, scope: !737)
!834 = !DILocation(line: 795, column: 58, scope: !737)
!835 = !DILocation(line: 795, column: 8, scope: !737)
!836 = !DILocation(line: 798, column: 11, scope: !737)
!837 = !DILocation(line: 798, column: 17, scope: !737)
!838 = !DILocation(line: 798, column: 27, scope: !737)
!839 = !DILocation(line: 798, column: 31, scope: !737)
!840 = !DILocation(line: 798, column: 45, scope: !737)
!841 = !DILocation(line: 798, column: 10, scope: !737)
!842 = !DILocation(line: 800, column: 12, scope: !737)
!843 = !DILocation(line: 800, column: 18, scope: !737)
!844 = !DILocation(line: 800, column: 37, scope: !737)
!845 = !DILocation(line: 803, column: 11, scope: !737)
!846 = !DILocation(line: 803, column: 17, scope: !737)
!847 = !DILocation(line: 803, column: 36, scope: !737)
!848 = !DILocation(line: 804, column: 9, scope: !737)
!849 = !DILocation(line: 805, column: 7, scope: !737)
!850 = !DILocation(line: 809, column: 12, scope: !737)
!851 = !DILocation(line: 809, column: 18, scope: !737)
!852 = !DILocation(line: 809, column: 35, scope: !737)
!853 = !DILocation(line: 812, column: 11, scope: !737)
!854 = !DILocation(line: 812, column: 17, scope: !737)
!855 = !DILocation(line: 812, column: 34, scope: !737)
!856 = !DILocation(line: 813, column: 9, scope: !737)
!857 = !DILocation(line: 815, column: 5, scope: !737)
!858 = !DILocation(line: 818, column: 11, scope: !737)
!859 = !DILocation(line: 818, column: 17, scope: !737)
!860 = !DILocation(line: 818, column: 27, scope: !737)
!861 = !DILocation(line: 818, column: 31, scope: !737)
!862 = !DILocation(line: 818, column: 47, scope: !737)
!863 = !DILocation(line: 818, column: 10, scope: !737)
!864 = !DILocation(line: 823, column: 9, scope: !737)
!865 = !DILocation(line: 826, column: 9, scope: !737)
!866 = !DILocation(line: 826, column: 15, scope: !737)
!867 = !DILocation(line: 826, column: 21, scope: !737)
!868 = !DILocation(line: 827, column: 7, scope: !737)
!869 = !DILocation(line: 829, column: 55, scope: !737)
!870 = !DILocation(line: 829, column: 61, scope: !737)
!871 = !DILocation(line: 829, column: 74, scope: !737)
!872 = !DILocation(line: 829, column: 51, scope: !737)
!873 = !DILocation(line: 829, column: 7, scope: !737)
!874 = !DILocation(line: 829, column: 13, scope: !737)
!875 = !DILocation(line: 829, column: 29, scope: !737)
!876 = !DILocation(line: 829, column: 34, scope: !737)
!877 = !DILocation(line: 832, column: 7, scope: !737)
!878 = !DILocation(line: 834, column: 10, scope: !737)
!879 = !DILocation(line: 834, column: 16, scope: !737)
!880 = !DILocation(line: 834, column: 33, scope: !737)
!881 = !DILocation(line: 837, column: 9, scope: !737)
!882 = !DILocation(line: 837, column: 15, scope: !737)
!883 = !DILocation(line: 837, column: 32, scope: !737)
!884 = !DILocation(line: 838, column: 7, scope: !737)
!885 = !DILocation(line: 840, column: 3, scope: !737)
!886 = !DILocation(line: 843, column: 14, scope: !737)
!887 = !DILocation(line: 843, column: 42, scope: !737)
!888 = !DILocation(line: 843, column: 48, scope: !737)
!889 = !DILocation(line: 843, column: 61, scope: !737)
!890 = !DILocation(line: 843, column: 38, scope: !737)
!891 = !DILocation(line: 843, column: 22, scope: !737)
!892 = !DILocation(line: 843, column: 72, scope: !737)
!893 = !DILocation(line: 843, column: 79, scope: !737)
!894 = !DILocation(line: 843, column: 84, scope: !737)
!895 = !DILocation(line: 843, column: 94, scope: !737)
!896 = !DILocation(line: 843, column: 107, scope: !737)
!897 = !DILocation(line: 843, column: 12, scope: !737)
!898 = !DILocation(line: 848, column: 5, scope: !737)
!899 = !DILocation(line: 851, column: 52, scope: !737)
!900 = !DILocation(line: 851, column: 58, scope: !737)
!901 = !DILocation(line: 851, column: 71, scope: !737)
!902 = !DILocation(line: 851, column: 48, scope: !737)
!903 = !DILocation(line: 851, column: 5, scope: !737)
!904 = !DILocation(line: 851, column: 11, scope: !737)
!905 = !DILocation(line: 851, column: 27, scope: !737)
!906 = !DILocation(line: 851, column: 32, scope: !737)
!907 = !DILocation(line: 854, column: 5, scope: !737)
!908 = !DILocation(line: 854, column: 11, scope: !737)
!909 = !DILocation(line: 854, column: 21, scope: !737)
!910 = !DILocation(line: 857, column: 5, scope: !737)
!911 = !DILocation(line: 857, column: 11, scope: !737)
!912 = !DILocation(line: 857, column: 17, scope: !737)
!913 = !DILocation(line: 860, column: 5, scope: !737)
!914 = !DILocation(line: 862, column: 9, scope: !737)
!915 = !DILocation(line: 862, column: 15, scope: !737)
!916 = !DILocation(line: 862, column: 33, scope: !737)
!917 = !DILocation(line: 865, column: 7, scope: !737)
!918 = !DILocation(line: 865, column: 13, scope: !737)
!919 = !DILocation(line: 865, column: 31, scope: !737)
!920 = !DILocation(line: 866, column: 5, scope: !737)
!921 = !DILocation(line: 867, column: 3, scope: !737)
!922 = !DILocation(line: 872, column: 3, scope: !737)
!923 = distinct !DISubprogram(name: "HAL_DMA_RegisterCallback", scope: !1, file: !1, line: 885, type: !9, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!924 = !DILocation(line: 887, column: 21, scope: !923)
!925 = !DILocation(line: 890, column: 3, scope: !923)
!926 = !DILocation(line: 892, column: 29, scope: !923)
!927 = !DILocation(line: 892, column: 35, scope: !923)
!928 = !DILocation(line: 892, column: 26, scope: !923)
!929 = !DILocation(line: 892, column: 6, scope: !923)
!930 = !DILocation(line: 894, column: 13, scope: !923)
!931 = !DILocation(line: 894, column: 5, scope: !923)
!932 = !DILocation(line: 897, column: 37, scope: !923)
!933 = !DILocation(line: 897, column: 12, scope: !923)
!934 = !DILocation(line: 897, column: 18, scope: !923)
!935 = !DILocation(line: 897, column: 35, scope: !923)
!936 = !DILocation(line: 898, column: 12, scope: !923)
!937 = !DILocation(line: 901, column: 41, scope: !923)
!938 = !DILocation(line: 901, column: 12, scope: !923)
!939 = !DILocation(line: 901, column: 18, scope: !923)
!940 = !DILocation(line: 901, column: 39, scope: !923)
!941 = !DILocation(line: 902, column: 12, scope: !923)
!942 = !DILocation(line: 905, column: 39, scope: !923)
!943 = !DILocation(line: 905, column: 12, scope: !923)
!944 = !DILocation(line: 905, column: 18, scope: !923)
!945 = !DILocation(line: 905, column: 37, scope: !923)
!946 = !DILocation(line: 906, column: 12, scope: !923)
!947 = !DILocation(line: 909, column: 43, scope: !923)
!948 = !DILocation(line: 909, column: 12, scope: !923)
!949 = !DILocation(line: 909, column: 18, scope: !923)
!950 = !DILocation(line: 909, column: 41, scope: !923)
!951 = !DILocation(line: 910, column: 12, scope: !923)
!952 = !DILocation(line: 913, column: 38, scope: !923)
!953 = !DILocation(line: 913, column: 12, scope: !923)
!954 = !DILocation(line: 913, column: 18, scope: !923)
!955 = !DILocation(line: 913, column: 36, scope: !923)
!956 = !DILocation(line: 914, column: 12, scope: !923)
!957 = !DILocation(line: 917, column: 38, scope: !923)
!958 = !DILocation(line: 917, column: 12, scope: !923)
!959 = !DILocation(line: 917, column: 18, scope: !923)
!960 = !DILocation(line: 917, column: 36, scope: !923)
!961 = !DILocation(line: 918, column: 12, scope: !923)
!962 = !DILocation(line: 921, column: 19, scope: !923)
!963 = !DILocation(line: 922, column: 12, scope: !923)
!964 = !DILocation(line: 924, column: 3, scope: !923)
!965 = !DILocation(line: 927, column: 12, scope: !923)
!966 = !DILocation(line: 931, column: 3, scope: !923)
!967 = !DILocation(line: 933, column: 10, scope: !923)
!968 = !DILocation(line: 933, column: 3, scope: !923)
!969 = !DILocation(line: 934, column: 1, scope: !923)
!970 = distinct !DISubprogram(name: "HAL_DMA_UnRegisterCallback", scope: !1, file: !1, line: 944, type: !9, scopeLine: 945, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!971 = !DILocation(line: 946, column: 21, scope: !970)
!972 = !DILocation(line: 949, column: 3, scope: !970)
!973 = !DILocation(line: 951, column: 29, scope: !970)
!974 = !DILocation(line: 951, column: 35, scope: !970)
!975 = !DILocation(line: 951, column: 26, scope: !970)
!976 = !DILocation(line: 951, column: 6, scope: !970)
!977 = !DILocation(line: 953, column: 13, scope: !970)
!978 = !DILocation(line: 953, column: 5, scope: !970)
!979 = !DILocation(line: 956, column: 12, scope: !970)
!980 = !DILocation(line: 956, column: 18, scope: !970)
!981 = !DILocation(line: 956, column: 35, scope: !970)
!982 = !DILocation(line: 957, column: 12, scope: !970)
!983 = !DILocation(line: 960, column: 12, scope: !970)
!984 = !DILocation(line: 960, column: 18, scope: !970)
!985 = !DILocation(line: 960, column: 39, scope: !970)
!986 = !DILocation(line: 961, column: 12, scope: !970)
!987 = !DILocation(line: 964, column: 12, scope: !970)
!988 = !DILocation(line: 964, column: 18, scope: !970)
!989 = !DILocation(line: 964, column: 37, scope: !970)
!990 = !DILocation(line: 965, column: 12, scope: !970)
!991 = !DILocation(line: 968, column: 12, scope: !970)
!992 = !DILocation(line: 968, column: 18, scope: !970)
!993 = !DILocation(line: 968, column: 41, scope: !970)
!994 = !DILocation(line: 969, column: 12, scope: !970)
!995 = !DILocation(line: 972, column: 12, scope: !970)
!996 = !DILocation(line: 972, column: 18, scope: !970)
!997 = !DILocation(line: 972, column: 36, scope: !970)
!998 = !DILocation(line: 973, column: 12, scope: !970)
!999 = !DILocation(line: 976, column: 12, scope: !970)
!1000 = !DILocation(line: 976, column: 18, scope: !970)
!1001 = !DILocation(line: 976, column: 36, scope: !970)
!1002 = !DILocation(line: 977, column: 12, scope: !970)
!1003 = !DILocation(line: 980, column: 12, scope: !970)
!1004 = !DILocation(line: 980, column: 18, scope: !970)
!1005 = !DILocation(line: 980, column: 35, scope: !970)
!1006 = !DILocation(line: 981, column: 12, scope: !970)
!1007 = !DILocation(line: 981, column: 18, scope: !970)
!1008 = !DILocation(line: 981, column: 39, scope: !970)
!1009 = !DILocation(line: 982, column: 12, scope: !970)
!1010 = !DILocation(line: 982, column: 18, scope: !970)
!1011 = !DILocation(line: 982, column: 37, scope: !970)
!1012 = !DILocation(line: 983, column: 12, scope: !970)
!1013 = !DILocation(line: 983, column: 18, scope: !970)
!1014 = !DILocation(line: 983, column: 41, scope: !970)
!1015 = !DILocation(line: 984, column: 12, scope: !970)
!1016 = !DILocation(line: 984, column: 18, scope: !970)
!1017 = !DILocation(line: 984, column: 36, scope: !970)
!1018 = !DILocation(line: 985, column: 12, scope: !970)
!1019 = !DILocation(line: 985, column: 18, scope: !970)
!1020 = !DILocation(line: 985, column: 36, scope: !970)
!1021 = !DILocation(line: 986, column: 12, scope: !970)
!1022 = !DILocation(line: 989, column: 19, scope: !970)
!1023 = !DILocation(line: 990, column: 12, scope: !970)
!1024 = !DILocation(line: 992, column: 3, scope: !970)
!1025 = !DILocation(line: 995, column: 12, scope: !970)
!1026 = !DILocation(line: 999, column: 3, scope: !970)
!1027 = !DILocation(line: 1001, column: 10, scope: !970)
!1028 = !DILocation(line: 1001, column: 3, scope: !970)
!1029 = !DILocation(line: 1002, column: 1, scope: !970)
!1030 = distinct !DISubprogram(name: "HAL_DMA_GetState", scope: !1, file: !1, line: 1032, type: !9, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1031 = !DILocation(line: 1035, column: 10, scope: !1030)
!1032 = !DILocation(line: 1035, column: 16, scope: !1030)
!1033 = !DILocation(line: 1035, column: 3, scope: !1030)
!1034 = distinct !DISubprogram(name: "HAL_DMA_GetError", scope: !1, file: !1, line: 1044, type: !9, scopeLine: 1045, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1035 = !DILocation(line: 1046, column: 10, scope: !1034)
!1036 = !DILocation(line: 1046, column: 16, scope: !1034)
!1037 = !DILocation(line: 1046, column: 3, scope: !1034)
!1038 = distinct !DISubprogram(name: "HAL_DMA_ConfigChannelAttributes", scope: !1, file: !1, line: 1086, type: !9, scopeLine: 1087, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1039 = !DILocation(line: 1088, column: 21, scope: !1038)
!1040 = !DILocation(line: 1096, column: 6, scope: !1038)
!1041 = !DILocation(line: 1096, column: 11, scope: !1038)
!1042 = !DILocation(line: 1098, column: 12, scope: !1038)
!1043 = !DILocation(line: 1099, column: 12, scope: !1038)
!1044 = !DILocation(line: 1099, column: 5, scope: !1038)
!1045 = !DILocation(line: 1106, column: 9, scope: !1038)
!1046 = !DILocation(line: 1106, column: 7, scope: !1038)
!1047 = !DILocation(line: 1109, column: 8, scope: !1038)
!1048 = !DILocation(line: 1109, column: 26, scope: !1038)
!1049 = !DILocation(line: 1109, column: 56, scope: !1038)
!1050 = !DILocation(line: 1109, column: 7, scope: !1038)
!1051 = !DILocation(line: 1111, column: 9, scope: !1038)
!1052 = !DILocation(line: 1111, column: 27, scope: !1038)
!1053 = !DILocation(line: 1111, column: 43, scope: !1038)
!1054 = !DILocation(line: 1111, column: 8, scope: !1038)
!1055 = !DILocation(line: 1113, column: 7, scope: !1038)
!1056 = !DILocation(line: 1114, column: 5, scope: !1038)
!1057 = !DILocation(line: 1117, column: 7, scope: !1038)
!1058 = !DILocation(line: 1119, column: 3, scope: !1038)
!1059 = !DILocation(line: 1202, column: 3, scope: !1038)
!1060 = !DILocation(line: 1204, column: 10, scope: !1038)
!1061 = !DILocation(line: 1204, column: 3, scope: !1038)
!1062 = !DILocation(line: 1205, column: 1, scope: !1038)
!1063 = distinct !DISubprogram(name: "HAL_DMA_GetConfigChannelAttributes", scope: !1, file: !1, line: 1216, type: !9, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!1064 = !DILocation(line: 1222, column: 7, scope: !1063)
!1065 = !DILocation(line: 1222, column: 12, scope: !1063)
!1066 = !DILocation(line: 1222, column: 21, scope: !1063)
!1067 = !DILocation(line: 1222, column: 25, scope: !1063)
!1068 = !DILocation(line: 1222, column: 43, scope: !1063)
!1069 = !DILocation(line: 1222, column: 6, scope: !1063)
!1070 = !DILocation(line: 1224, column: 5, scope: !1063)
!1071 = !DILocation(line: 1245, column: 21, scope: !1063)
!1072 = !DILocation(line: 1245, column: 19, scope: !1063)
!1073 = !DILocation(line: 1247, column: 18, scope: !1063)
!1074 = !DILocation(line: 1247, column: 34, scope: !1063)
!1075 = !DILocation(line: 1247, column: 50, scope: !1063)
!1076 = !DILocation(line: 1247, column: 16, scope: !1063)
!1077 = !DILocation(line: 1247, column: 14, scope: !1063)
!1078 = !DILocation(line: 1251, column: 24, scope: !1063)
!1079 = !DILocation(line: 1251, column: 4, scope: !1063)
!1080 = !DILocation(line: 1251, column: 22, scope: !1063)
!1081 = !DILocation(line: 1253, column: 3, scope: !1063)
!1082 = !DILocation(line: 1254, column: 1, scope: !1063)
