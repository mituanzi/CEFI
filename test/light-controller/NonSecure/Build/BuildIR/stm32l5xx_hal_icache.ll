; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_icache.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_icache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.ICACHE_TypeDef = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32 }
%struct.ICACHE_RegionConfigTypeDef = type { i32, i32, i32, i32, i32 }

@__const.HAL_ICACHE_EnableRemapRegion.ICacheRemapSizeAddressTab = private unnamed_addr constant [14 x i16] [i16 255, i16 2047, i16 254, i16 2046, i16 252, i16 2044, i16 248, i16 2040, i16 240, i16 2032, i16 224, i16 2016, i16 192, i16 1984], align 2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_ConfigAssociativityMode(i32 %AssociativityMode) #0 !dbg !8 {
entry:
  %AssociativityMode.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store i32 %AssociativityMode, i32* %AssociativityMode.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !10
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !11
  %and = and i32 %0, 1, !dbg !11
  %cmp = icmp ne i32 %and, 0, !dbg !12
  br i1 %cmp, label %if.then, label %if.else, !dbg !11

if.then:                                          ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !13
  br label %if.end, !dbg !14

if.else:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !15
  %and1 = and i32 %1, -5, !dbg !15
  %2 = load i32, i32* %AssociativityMode.addr, align 4, !dbg !15
  %or = or i32 %and1, %2, !dbg !15
  store volatile i32 %or, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8, i8* %status, align 1, !dbg !16
  ret i8 %3, !dbg !17
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_DeInit() #0 !dbg !18 {
entry:
  %status = alloca i8, align 1
  store volatile i32 4, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !19
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Monitor_Stop(i32 196608), !dbg !20
  %call1 = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Monitor_Reset(i32 196608), !dbg !21
  %call2 = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_DisableRemapRegion(i32 0), !dbg !22
  %call3 = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_DisableRemapRegion(i32 1), !dbg !23
  %call4 = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_DisableRemapRegion(i32 2), !dbg !24
  %call5 = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_DisableRemapRegion(i32 3), !dbg !25
  %call6 = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_WaitForInvalidateComplete(), !dbg !26
  store i8 %call6, i8* %status, align 1, !dbg !27
  store volatile i32 6, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !28
  %0 = load i8, i8* %status, align 1, !dbg !29
  ret i8 %0, !dbg !30
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Monitor_Stop(i32 %MonitorType) #0 !dbg !31 {
entry:
  %MonitorType.addr = alloca i32, align 4
  store i32 %MonitorType, i32* %MonitorType.addr, align 4
  %0 = load i32, i32* %MonitorType.addr, align 4, !dbg !32
  %neg = xor i32 %0, -1, !dbg !32
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !32
  %and = and i32 %1, %neg, !dbg !32
  store volatile i32 %and, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !32
  ret i8 0, !dbg !33
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Monitor_Reset(i32 %MonitorType) #0 !dbg !34 {
entry:
  %MonitorType.addr = alloca i32, align 4
  store i32 %MonitorType, i32* %MonitorType.addr, align 4
  %0 = load i32, i32* %MonitorType.addr, align 4, !dbg !35
  %shl = shl i32 %0, 2, !dbg !35
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !35
  %or = or i32 %1, %shl, !dbg !35
  store volatile i32 %or, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !35
  %2 = load i32, i32* %MonitorType.addr, align 4, !dbg !36
  %shl1 = shl i32 %2, 2, !dbg !36
  %neg = xor i32 %shl1, -1, !dbg !36
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !36
  %and = and i32 %3, %neg, !dbg !36
  store volatile i32 %and, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !36
  ret i8 0, !dbg !37
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_DisableRemapRegion(i32 %Region) #0 !dbg !38 {
entry:
  %Region.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %reg = alloca i32*, align 4
  store i32 %Region, i32* %Region.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !39
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !40
  %and = and i32 %0, 1, !dbg !40
  %cmp = icmp ne i32 %and, 0, !dbg !41
  br i1 %cmp, label %if.then, label %if.else, !dbg !40

if.then:                                          ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !42
  br label %if.end, !dbg !43

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %Region.addr, align 4, !dbg !44
  %mul = mul i32 1, %1, !dbg !45
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 7), i32 %mul, !dbg !46
  store i32* %add.ptr, i32** %reg, align 4, !dbg !47
  %2 = load i32*, i32** %reg, align 4, !dbg !48
  %3 = load volatile i32, i32* %2, align 4, !dbg !49
  %and1 = and i32 %3, -32769, !dbg !49
  store volatile i32 %and1, i32* %2, align 4, !dbg !49
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %status, align 1, !dbg !50
  ret i8 %4, !dbg !51
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_WaitForInvalidateComplete() #0 !dbg !52 {
entry:
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store i8 0, i8* %status, align 1, !dbg !53
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 1), align 4, !dbg !54
  %and = and i32 %0, 1, !dbg !54
  %cmp = icmp ne i32 %and, 0, !dbg !55
  br i1 %cmp, label %if.then, label %if.end6, !dbg !54

if.then:                                          ; preds = %entry
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !56
  store i32 %call, i32* %tickstart, align 4, !dbg !57
  br label %while.cond, !dbg !58

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 1), align 4, !dbg !59
  %and1 = and i32 %1, 2, !dbg !59
  %cmp2 = icmp eq i32 %and1, 0, !dbg !60
  br i1 %cmp2, label %while.body, label %while.end, !dbg !58

while.body:                                       ; preds = %while.cond
  %call3 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !61
  %2 = load i32, i32* %tickstart, align 4, !dbg !62
  %sub = sub i32 %call3, %2, !dbg !63
  %cmp4 = icmp ugt i32 %sub, 1, !dbg !64
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !65

if.then5:                                         ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !66
  br label %while.end, !dbg !67

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !58, !llvm.loop !68

while.end:                                        ; preds = %if.then5, %while.cond
  br label %if.end6, !dbg !70

if.end6:                                          ; preds = %while.end, %entry
  store volatile i32 2, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !71
  %3 = load i8, i8* %status, align 1, !dbg !72
  ret i8 %3, !dbg !73
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Enable() #0 !dbg !74 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !75
  %or = or i32 %0, 1, !dbg !75
  store volatile i32 %or, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !75
  ret i8 0, !dbg !76
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Disable() #0 !dbg !77 {
entry:
  %status = alloca i8, align 1
  %tickstart = alloca i32, align 4
  store i8 0, i8* %status, align 1, !dbg !78
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !79
  %and = and i32 %0, -3, !dbg !79
  store volatile i32 %and, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !79
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !80
  %and1 = and i32 %1, -2, !dbg !80
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !80
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !81
  store i32 %call, i32* %tickstart, align 4, !dbg !82
  br label %while.cond, !dbg !83

while.cond:                                       ; preds = %if.end, %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !84
  %and2 = and i32 %2, 1, !dbg !84
  %cmp = icmp ne i32 %and2, 0, !dbg !85
  br i1 %cmp, label %while.body, label %while.end, !dbg !83

while.body:                                       ; preds = %while.cond
  %call3 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !86
  %3 = load i32, i32* %tickstart, align 4, !dbg !87
  %sub = sub i32 %call3, %3, !dbg !88
  %cmp4 = icmp ugt i32 %sub, 1, !dbg !89
  br i1 %cmp4, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %while.body
  store i8 3, i8* %status, align 1, !dbg !91
  br label %while.end, !dbg !92

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !83, !llvm.loop !93

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load i8, i8* %status, align 1, !dbg !95
  ret i8 %4, !dbg !96
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Invalidate() #0 !dbg !97 {
entry:
  %status = alloca i8, align 1
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 1), align 4, !dbg !98
  %and = and i32 %0, 1, !dbg !98
  %cmp = icmp ne i32 %and, 0, !dbg !99
  br i1 %cmp, label %if.then, label %if.else, !dbg !98

if.then:                                          ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !100
  br label %if.end, !dbg !101

if.else:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !102
  %and1 = and i32 %1, -3, !dbg !102
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !102
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !103
  %or = or i32 %2, 2, !dbg !103
  store volatile i32 %or, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !103
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_WaitForInvalidateComplete(), !dbg !104
  store i8 %call, i8* %status, align 1, !dbg !105
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8, i8* %status, align 1, !dbg !106
  ret i8 %3, !dbg !107
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Invalidate_IT() #0 !dbg !108 {
entry:
  %status = alloca i8, align 1
  store i8 0, i8* %status, align 1, !dbg !109
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 1), align 4, !dbg !110
  %and = and i32 %0, 1, !dbg !110
  %cmp = icmp ne i32 %and, 0, !dbg !111
  br i1 %cmp, label %if.then, label %if.else, !dbg !110

if.then:                                          ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !112
  br label %if.end, !dbg !113

if.else:                                          ; preds = %entry
  store volatile i32 2, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !114
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 2), align 4, !dbg !115
  %or = or i32 %1, 2, !dbg !115
  store volatile i32 %or, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 2), align 4, !dbg !115
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !116
  %or1 = or i32 %2, 2, !dbg !116
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !116
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8, i8* %status, align 1, !dbg !117
  ret i8 %3, !dbg !118
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_Monitor_Start(i32 %MonitorType) #0 !dbg !119 {
entry:
  %MonitorType.addr = alloca i32, align 4
  store i32 %MonitorType, i32* %MonitorType.addr, align 4
  %0 = load i32, i32* %MonitorType.addr, align 4, !dbg !120
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !120
  %or = or i32 %1, %0, !dbg !120
  store volatile i32 %or, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !120
  ret i8 0, !dbg !121
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_ICACHE_Monitor_GetHitValue() #0 !dbg !122 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 4), align 4, !dbg !123
  ret i32 %0, !dbg !124
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_ICACHE_Monitor_GetMissValue() #0 !dbg !125 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 5), align 4, !dbg !126
  ret i32 %0, !dbg !127
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_ICACHE_IRQHandler() #0 !dbg !128 {
entry:
  %itflags = alloca i32, align 4
  %itsources = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 1), align 4, !dbg !129
  store i32 %0, i32* %itflags, align 4, !dbg !130
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 2), align 4, !dbg !131
  store i32 %1, i32* %itsources, align 4, !dbg !132
  %2 = load i32, i32* %itflags, align 4, !dbg !133
  %3 = load i32, i32* %itsources, align 4, !dbg !134
  %and = and i32 %2, %3, !dbg !135
  %and1 = and i32 %and, 4, !dbg !136
  %cmp = icmp ne i32 %and1, 0, !dbg !137
  br i1 %cmp, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %entry
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 2), align 4, !dbg !139
  %and2 = and i32 %4, -5, !dbg !139
  store volatile i32 %and2, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 2), align 4, !dbg !139
  store volatile i32 4, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !140
  call arm_aapcs_vfpcc void @HAL_ICACHE_ErrorCallback(), !dbg !141
  br label %if.end, !dbg !142

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %itflags, align 4, !dbg !143
  %6 = load i32, i32* %itsources, align 4, !dbg !144
  %and3 = and i32 %5, %6, !dbg !145
  %and4 = and i32 %and3, 2, !dbg !146
  %cmp5 = icmp ne i32 %and4, 0, !dbg !147
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !148

if.then6:                                         ; preds = %if.end
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 2), align 4, !dbg !149
  %and7 = and i32 %7, -3, !dbg !149
  store volatile i32 %and7, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 2), align 4, !dbg !149
  store volatile i32 2, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 3), align 4, !dbg !150
  call arm_aapcs_vfpcc void @HAL_ICACHE_InvalidateCompleteCallback(), !dbg !151
  br label %if.end8, !dbg !152

if.end8:                                          ; preds = %if.then6, %if.end
  ret void, !dbg !153
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_ICACHE_ErrorCallback() #0 !dbg !154 {
entry:
  ret void, !dbg !155
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_ICACHE_InvalidateCompleteCallback() #0 !dbg !156 {
entry:
  ret void, !dbg !157
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_ICACHE_EnableRemapRegion(i32 %Region, %struct.ICACHE_RegionConfigTypeDef* %sRegionConfig) #0 !dbg !158 {
entry:
  %Region.addr = alloca i32, align 4
  %sRegionConfig.addr = alloca %struct.ICACHE_RegionConfigTypeDef*, align 4
  %ICacheRemapSizeAddressTab = alloca [14 x i16], align 2
  %status = alloca i8, align 1
  %reg = alloca i32*, align 4
  %value = alloca i32, align 4
  store i32 %Region, i32* %Region.addr, align 4
  store %struct.ICACHE_RegionConfigTypeDef* %sRegionConfig, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4
  %0 = bitcast [14 x i16]* %ICacheRemapSizeAddressTab to i8*, !dbg !159
  call void @llvm.memcpy.p0i8.p0i8.i32(i8* align 2 %0, i8* align 2 bitcast ([14 x i16]* @__const.HAL_ICACHE_EnableRemapRegion.ICacheRemapSizeAddressTab to i8*), i32 28, i1 false), !dbg !159
  store i8 0, i8* %status, align 1, !dbg !160
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 0), align 4, !dbg !161
  %and = and i32 %1, 1, !dbg !161
  %cmp = icmp ne i32 %and, 0, !dbg !162
  br i1 %cmp, label %if.then, label %if.else, !dbg !161

if.then:                                          ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !163
  br label %if.end21, !dbg !164

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %Region.addr, align 4, !dbg !165
  %mul = mul i32 1, %2, !dbg !166
  %add.ptr = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.ICACHE_TypeDef, %struct.ICACHE_TypeDef* inttoptr (i32 1073939456 to %struct.ICACHE_TypeDef*), i32 0, i32 7), i32 %mul, !dbg !167
  store i32* %add.ptr, i32** %reg, align 4, !dbg !168
  %3 = load i32*, i32** %reg, align 4, !dbg !169
  %4 = load volatile i32, i32* %3, align 4, !dbg !170
  %and1 = and i32 %4, 32768, !dbg !171
  %cmp2 = icmp ne i32 %and1, 0, !dbg !172
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !173

if.then3:                                         ; preds = %if.else
  store i8 1, i8* %status, align 1, !dbg !174
  br label %if.end, !dbg !175

if.else4:                                         ; preds = %if.else
  %5 = load %struct.ICACHE_RegionConfigTypeDef*, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4, !dbg !176
  %BaseAddress = getelementptr inbounds %struct.ICACHE_RegionConfigTypeDef, %struct.ICACHE_RegionConfigTypeDef* %5, i32 0, i32 0, !dbg !177
  %6 = load i32, i32* %BaseAddress, align 4, !dbg !177
  %and5 = and i32 %6, 536870911, !dbg !178
  %shr = lshr i32 %and5, 21, !dbg !179
  %7 = load %struct.ICACHE_RegionConfigTypeDef*, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4, !dbg !180
  %Size = getelementptr inbounds %struct.ICACHE_RegionConfigTypeDef, %struct.ICACHE_RegionConfigTypeDef* %7, i32 0, i32 2, !dbg !181
  %8 = load i32, i32* %Size, align 4, !dbg !181
  %sub = sub i32 %8, 1, !dbg !182
  %mul6 = mul i32 %sub, 2, !dbg !183
  %arrayidx = getelementptr inbounds [14 x i16], [14 x i16]* %ICacheRemapSizeAddressTab, i32 0, i32 %mul6, !dbg !184
  %9 = load i16, i16* %arrayidx, align 2, !dbg !184
  %conv = zext i16 %9 to i32, !dbg !184
  %and7 = and i32 %shr, %conv, !dbg !185
  store i32 %and7, i32* %value, align 4, !dbg !186
  %10 = load %struct.ICACHE_RegionConfigTypeDef*, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4, !dbg !187
  %RemapAddress = getelementptr inbounds %struct.ICACHE_RegionConfigTypeDef, %struct.ICACHE_RegionConfigTypeDef* %10, i32 0, i32 1, !dbg !188
  %11 = load i32, i32* %RemapAddress, align 4, !dbg !188
  %shr8 = lshr i32 %11, 5, !dbg !189
  %12 = load %struct.ICACHE_RegionConfigTypeDef*, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4, !dbg !190
  %Size9 = getelementptr inbounds %struct.ICACHE_RegionConfigTypeDef, %struct.ICACHE_RegionConfigTypeDef* %12, i32 0, i32 2, !dbg !191
  %13 = load i32, i32* %Size9, align 4, !dbg !191
  %sub10 = sub i32 %13, 1, !dbg !192
  %mul11 = mul i32 %sub10, 2, !dbg !193
  %add = add i32 %mul11, 1, !dbg !194
  %arrayidx12 = getelementptr inbounds [14 x i16], [14 x i16]* %ICacheRemapSizeAddressTab, i32 0, i32 %add, !dbg !195
  %14 = load i16, i16* %arrayidx12, align 2, !dbg !195
  %conv13 = zext i16 %14 to i32, !dbg !196
  %shl = shl i32 %conv13, 16, !dbg !197
  %and14 = and i32 %shr8, %shl, !dbg !198
  %15 = load i32, i32* %value, align 4, !dbg !199
  %or = or i32 %15, %and14, !dbg !199
  store i32 %or, i32* %value, align 4, !dbg !199
  %16 = load %struct.ICACHE_RegionConfigTypeDef*, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4, !dbg !200
  %Size15 = getelementptr inbounds %struct.ICACHE_RegionConfigTypeDef, %struct.ICACHE_RegionConfigTypeDef* %16, i32 0, i32 2, !dbg !201
  %17 = load i32, i32* %Size15, align 4, !dbg !201
  %shl16 = shl i32 %17, 9, !dbg !202
  %18 = load %struct.ICACHE_RegionConfigTypeDef*, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4, !dbg !203
  %TrafficRoute = getelementptr inbounds %struct.ICACHE_RegionConfigTypeDef, %struct.ICACHE_RegionConfigTypeDef* %18, i32 0, i32 3, !dbg !204
  %19 = load i32, i32* %TrafficRoute, align 4, !dbg !204
  %or17 = or i32 %shl16, %19, !dbg !205
  %20 = load %struct.ICACHE_RegionConfigTypeDef*, %struct.ICACHE_RegionConfigTypeDef** %sRegionConfig.addr, align 4, !dbg !206
  %OutputBurstType = getelementptr inbounds %struct.ICACHE_RegionConfigTypeDef, %struct.ICACHE_RegionConfigTypeDef* %20, i32 0, i32 4, !dbg !207
  %21 = load i32, i32* %OutputBurstType, align 4, !dbg !207
  %or18 = or i32 %or17, %21, !dbg !208
  %22 = load i32, i32* %value, align 4, !dbg !209
  %or19 = or i32 %22, %or18, !dbg !209
  store i32 %or19, i32* %value, align 4, !dbg !209
  %23 = load i32, i32* %value, align 4, !dbg !210
  %or20 = or i32 %23, 32768, !dbg !211
  %24 = load i32*, i32** %reg, align 4, !dbg !212
  store volatile i32 %or20, i32* %24, align 4, !dbg !213
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then
  %25 = load i8, i8* %status, align 1, !dbg !214
  ret i8 %25, !dbg !215
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i32(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i32, i1 immarg) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_icache.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_ICACHE_ConfigAssociativityMode", scope: !1, file: !1, line: 130, type: !9, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 132, column: 21, scope: !8)
!11 = !DILocation(line: 138, column: 7, scope: !8)
!12 = !DILocation(line: 138, column: 42, scope: !8)
!13 = !DILocation(line: 140, column: 12, scope: !8)
!14 = !DILocation(line: 141, column: 3, scope: !8)
!15 = !DILocation(line: 144, column: 5, scope: !8)
!16 = !DILocation(line: 147, column: 10, scope: !8)
!17 = !DILocation(line: 147, column: 3, scope: !8)
!18 = distinct !DISubprogram(name: "HAL_ICACHE_DeInit", scope: !1, file: !1, line: 154, type: !9, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 159, column: 3, scope: !18)
!20 = !DILocation(line: 162, column: 9, scope: !18)
!21 = !DILocation(line: 163, column: 9, scope: !18)
!22 = !DILocation(line: 166, column: 9, scope: !18)
!23 = !DILocation(line: 167, column: 9, scope: !18)
!24 = !DILocation(line: 168, column: 9, scope: !18)
!25 = !DILocation(line: 169, column: 9, scope: !18)
!26 = !DILocation(line: 172, column: 12, scope: !18)
!27 = !DILocation(line: 172, column: 10, scope: !18)
!28 = !DILocation(line: 175, column: 3, scope: !18)
!29 = !DILocation(line: 177, column: 10, scope: !18)
!30 = !DILocation(line: 177, column: 3, scope: !18)
!31 = distinct !DISubprogram(name: "HAL_ICACHE_Monitor_Stop", scope: !1, file: !1, line: 351, type: !9, scopeLine: 352, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!32 = !DILocation(line: 356, column: 3, scope: !31)
!33 = !DILocation(line: 358, column: 3, scope: !31)
!34 = distinct !DISubprogram(name: "HAL_ICACHE_Monitor_Reset", scope: !1, file: !1, line: 370, type: !9, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DILocation(line: 376, column: 3, scope: !34)
!36 = !DILocation(line: 377, column: 3, scope: !34)
!37 = !DILocation(line: 379, column: 3, scope: !34)
!38 = distinct !DISubprogram(name: "HAL_ICACHE_DisableRemapRegion", scope: !1, file: !1, line: 563, type: !9, scopeLine: 564, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!39 = !DILocation(line: 565, column: 21, scope: !38)
!40 = !DILocation(line: 572, column: 7, scope: !38)
!41 = !DILocation(line: 572, column: 42, scope: !38)
!42 = !DILocation(line: 574, column: 12, scope: !38)
!43 = !DILocation(line: 575, column: 3, scope: !38)
!44 = !DILocation(line: 579, column: 35, scope: !38)
!45 = !DILocation(line: 579, column: 33, scope: !38)
!46 = !DILocation(line: 579, column: 27, scope: !38)
!47 = !DILocation(line: 579, column: 9, scope: !38)
!48 = !DILocation(line: 581, column: 6, scope: !38)
!49 = !DILocation(line: 581, column: 10, scope: !38)
!50 = !DILocation(line: 584, column: 10, scope: !38)
!51 = !DILocation(line: 584, column: 3, scope: !38)
!52 = distinct !DISubprogram(name: "HAL_ICACHE_WaitForInvalidateComplete", scope: !1, file: !1, line: 293, type: !9, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!53 = !DILocation(line: 295, column: 21, scope: !52)
!54 = !DILocation(line: 299, column: 7, scope: !52)
!55 = !DILocation(line: 299, column: 45, scope: !52)
!56 = !DILocation(line: 302, column: 17, scope: !52)
!57 = !DILocation(line: 302, column: 15, scope: !52)
!58 = !DILocation(line: 305, column: 5, scope: !52)
!59 = !DILocation(line: 305, column: 12, scope: !52)
!60 = !DILocation(line: 305, column: 52, scope: !52)
!61 = !DILocation(line: 307, column: 12, scope: !52)
!62 = !DILocation(line: 307, column: 28, scope: !52)
!63 = !DILocation(line: 307, column: 26, scope: !52)
!64 = !DILocation(line: 307, column: 39, scope: !52)
!65 = !DILocation(line: 307, column: 11, scope: !52)
!66 = !DILocation(line: 309, column: 16, scope: !52)
!67 = !DILocation(line: 310, column: 9, scope: !52)
!68 = distinct !{!68, !58, !69}
!69 = !DILocation(line: 312, column: 5, scope: !52)
!70 = !DILocation(line: 313, column: 3, scope: !52)
!71 = !DILocation(line: 316, column: 3, scope: !52)
!72 = !DILocation(line: 318, column: 10, scope: !52)
!73 = !DILocation(line: 318, column: 3, scope: !52)
!74 = distinct !DISubprogram(name: "HAL_ICACHE_Enable", scope: !1, file: !1, line: 187, type: !9, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!75 = !DILocation(line: 189, column: 3, scope: !74)
!76 = !DILocation(line: 191, column: 3, scope: !74)
!77 = distinct !DISubprogram(name: "HAL_ICACHE_Disable", scope: !1, file: !1, line: 200, type: !9, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocation(line: 202, column: 21, scope: !77)
!79 = !DILocation(line: 207, column: 3, scope: !77)
!80 = !DILocation(line: 209, column: 3, scope: !77)
!81 = !DILocation(line: 212, column: 15, scope: !77)
!82 = !DILocation(line: 212, column: 13, scope: !77)
!83 = !DILocation(line: 215, column: 3, scope: !77)
!84 = !DILocation(line: 215, column: 10, scope: !77)
!85 = !DILocation(line: 215, column: 45, scope: !77)
!86 = !DILocation(line: 217, column: 10, scope: !77)
!87 = !DILocation(line: 217, column: 26, scope: !77)
!88 = !DILocation(line: 217, column: 24, scope: !77)
!89 = !DILocation(line: 217, column: 37, scope: !77)
!90 = !DILocation(line: 217, column: 9, scope: !77)
!91 = !DILocation(line: 219, column: 14, scope: !77)
!92 = !DILocation(line: 220, column: 7, scope: !77)
!93 = distinct !{!93, !83, !94}
!94 = !DILocation(line: 222, column: 3, scope: !77)
!95 = !DILocation(line: 224, column: 10, scope: !77)
!96 = !DILocation(line: 224, column: 3, scope: !77)
!97 = distinct !DISubprogram(name: "HAL_ICACHE_Invalidate", scope: !1, file: !1, line: 233, type: !9, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DILocation(line: 238, column: 7, scope: !97)
!99 = !DILocation(line: 238, column: 45, scope: !97)
!100 = !DILocation(line: 240, column: 12, scope: !97)
!101 = !DILocation(line: 241, column: 3, scope: !97)
!102 = !DILocation(line: 245, column: 5, scope: !97)
!103 = !DILocation(line: 248, column: 5, scope: !97)
!104 = !DILocation(line: 250, column: 14, scope: !97)
!105 = !DILocation(line: 250, column: 12, scope: !97)
!106 = !DILocation(line: 253, column: 10, scope: !97)
!107 = !DILocation(line: 253, column: 3, scope: !97)
!108 = distinct !DISubprogram(name: "HAL_ICACHE_Invalidate_IT", scope: !1, file: !1, line: 264, type: !9, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!109 = !DILocation(line: 266, column: 21, scope: !108)
!110 = !DILocation(line: 269, column: 7, scope: !108)
!111 = !DILocation(line: 269, column: 45, scope: !108)
!112 = !DILocation(line: 271, column: 12, scope: !108)
!113 = !DILocation(line: 272, column: 3, scope: !108)
!114 = !DILocation(line: 276, column: 5, scope: !108)
!115 = !DILocation(line: 279, column: 5, scope: !108)
!116 = !DILocation(line: 282, column: 5, scope: !108)
!117 = !DILocation(line: 285, column: 10, scope: !108)
!118 = !DILocation(line: 285, column: 3, scope: !108)
!119 = distinct !DISubprogram(name: "HAL_ICACHE_Monitor_Start", scope: !1, file: !1, line: 331, type: !9, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocation(line: 336, column: 3, scope: !119)
!121 = !DILocation(line: 338, column: 3, scope: !119)
!122 = distinct !DISubprogram(name: "HAL_ICACHE_Monitor_GetHitValue", scope: !1, file: !1, line: 387, type: !9, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!123 = !DILocation(line: 389, column: 19, scope: !122)
!124 = !DILocation(line: 389, column: 3, scope: !122)
!125 = distinct !DISubprogram(name: "HAL_ICACHE_Monitor_GetMissValue", scope: !1, file: !1, line: 397, type: !9, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocation(line: 399, column: 19, scope: !125)
!127 = !DILocation(line: 399, column: 3, scope: !125)
!128 = distinct !DISubprogram(name: "HAL_ICACHE_IRQHandler", scope: !1, file: !1, line: 427, type: !9, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DILocation(line: 430, column: 24, scope: !128)
!130 = !DILocation(line: 430, column: 12, scope: !128)
!131 = !DILocation(line: 431, column: 24, scope: !128)
!132 = !DILocation(line: 431, column: 12, scope: !128)
!133 = !DILocation(line: 434, column: 9, scope: !128)
!134 = !DILocation(line: 434, column: 19, scope: !128)
!135 = !DILocation(line: 434, column: 17, scope: !128)
!136 = !DILocation(line: 434, column: 30, scope: !128)
!137 = !DILocation(line: 434, column: 51, scope: !128)
!138 = !DILocation(line: 434, column: 7, scope: !128)
!139 = !DILocation(line: 437, column: 5, scope: !128)
!140 = !DILocation(line: 440, column: 5, scope: !128)
!141 = !DILocation(line: 443, column: 5, scope: !128)
!142 = !DILocation(line: 444, column: 3, scope: !128)
!143 = !DILocation(line: 447, column: 9, scope: !128)
!144 = !DILocation(line: 447, column: 19, scope: !128)
!145 = !DILocation(line: 447, column: 17, scope: !128)
!146 = !DILocation(line: 447, column: 30, scope: !128)
!147 = !DILocation(line: 447, column: 53, scope: !128)
!148 = !DILocation(line: 447, column: 7, scope: !128)
!149 = !DILocation(line: 450, column: 5, scope: !128)
!150 = !DILocation(line: 453, column: 5, scope: !128)
!151 = !DILocation(line: 456, column: 5, scope: !128)
!152 = !DILocation(line: 457, column: 3, scope: !128)
!153 = !DILocation(line: 458, column: 1, scope: !128)
!154 = distinct !DISubprogram(name: "HAL_ICACHE_ErrorCallback", scope: !1, file: !1, line: 473, type: !9, scopeLine: 474, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!155 = !DILocation(line: 478, column: 1, scope: !154)
!156 = distinct !DISubprogram(name: "HAL_ICACHE_InvalidateCompleteCallback", scope: !1, file: !1, line: 463, type: !9, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!157 = !DILocation(line: 468, column: 1, scope: !156)
!158 = distinct !DISubprogram(name: "HAL_ICACHE_EnableRemapRegion", scope: !1, file: !1, line: 506, type: !9, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocation(line: 508, column: 18, scope: !158)
!160 = !DILocation(line: 519, column: 21, scope: !158)
!161 = !DILocation(line: 530, column: 7, scope: !158)
!162 = !DILocation(line: 530, column: 42, scope: !158)
!163 = !DILocation(line: 532, column: 12, scope: !158)
!164 = !DILocation(line: 533, column: 3, scope: !158)
!165 = !DILocation(line: 537, column: 35, scope: !158)
!166 = !DILocation(line: 537, column: 33, scope: !158)
!167 = !DILocation(line: 537, column: 27, scope: !158)
!168 = !DILocation(line: 537, column: 9, scope: !158)
!169 = !DILocation(line: 540, column: 11, scope: !158)
!170 = !DILocation(line: 540, column: 10, scope: !158)
!171 = !DILocation(line: 540, column: 15, scope: !158)
!172 = !DILocation(line: 540, column: 34, scope: !158)
!173 = !DILocation(line: 540, column: 9, scope: !158)
!174 = !DILocation(line: 542, column: 14, scope: !158)
!175 = !DILocation(line: 543, column: 5, scope: !158)
!176 = !DILocation(line: 546, column: 18, scope: !158)
!177 = !DILocation(line: 546, column: 33, scope: !158)
!178 = !DILocation(line: 546, column: 45, scope: !158)
!179 = !DILocation(line: 546, column: 60, scope: !158)
!180 = !DILocation(line: 546, column: 97, scope: !158)
!181 = !DILocation(line: 546, column: 112, scope: !158)
!182 = !DILocation(line: 546, column: 117, scope: !158)
!183 = !DILocation(line: 546, column: 123, scope: !158)
!184 = !DILocation(line: 546, column: 70, scope: !158)
!185 = !DILocation(line: 546, column: 68, scope: !158)
!186 = !DILocation(line: 546, column: 14, scope: !158)
!187 = !DILocation(line: 547, column: 18, scope: !158)
!188 = !DILocation(line: 547, column: 33, scope: !158)
!189 = !DILocation(line: 547, column: 46, scope: !158)
!190 = !DILocation(line: 547, column: 95, scope: !158)
!191 = !DILocation(line: 547, column: 110, scope: !158)
!192 = !DILocation(line: 547, column: 115, scope: !158)
!193 = !DILocation(line: 547, column: 121, scope: !158)
!194 = !DILocation(line: 547, column: 127, scope: !158)
!195 = !DILocation(line: 547, column: 67, scope: !158)
!196 = !DILocation(line: 547, column: 56, scope: !158)
!197 = !DILocation(line: 547, column: 134, scope: !158)
!198 = !DILocation(line: 547, column: 53, scope: !158)
!199 = !DILocation(line: 547, column: 13, scope: !158)
!200 = !DILocation(line: 548, column: 17, scope: !158)
!201 = !DILocation(line: 548, column: 32, scope: !158)
!202 = !DILocation(line: 548, column: 37, scope: !158)
!203 = !DILocation(line: 548, column: 65, scope: !158)
!204 = !DILocation(line: 548, column: 80, scope: !158)
!205 = !DILocation(line: 548, column: 63, scope: !158)
!206 = !DILocation(line: 548, column: 95, scope: !158)
!207 = !DILocation(line: 548, column: 110, scope: !158)
!208 = !DILocation(line: 548, column: 93, scope: !158)
!209 = !DILocation(line: 548, column: 13, scope: !158)
!210 = !DILocation(line: 550, column: 15, scope: !158)
!211 = !DILocation(line: 550, column: 21, scope: !158)
!212 = !DILocation(line: 550, column: 8, scope: !158)
!213 = !DILocation(line: 550, column: 12, scope: !158)
!214 = !DILocation(line: 554, column: 10, scope: !158)
!215 = !DILocation(line: 554, column: 3, scope: !158)
