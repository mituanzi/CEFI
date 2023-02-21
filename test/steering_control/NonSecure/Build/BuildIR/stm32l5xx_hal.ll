; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.SysTick_Type = type { i32, i32, i32, i32 }
%struct.DBGMCU_TypeDef = type { i32, i32, i32, i32, i32 }
%struct.SYSCFG_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.VREFBUF_TypeDef = type { i32, i32 }

@uwTickPrio = dso_local global i32 8, align 4
@uwTickFreq = dso_local global i8 1, align 1
@SystemCoreClock = external dso_local global i32, align 4
@uwTick = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_Init() #0 !dbg !8 {
entry:
  %status = alloca i8, align 1
  store i8 0, i8* %status, align 1, !dbg !10
  call arm_aapcs_vfpcc void @HAL_NVIC_SetPriorityGrouping(i32 4), !dbg !11
  call arm_aapcs_vfpcc void @SystemCoreClockUpdate(), !dbg !12
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_InitTick(i32 0), !dbg !13
  %conv = zext i8 %call to i32, !dbg !13
  %cmp = icmp ne i32 %conv, 0, !dbg !14
  br i1 %cmp, label %if.then, label %if.else, !dbg !13

if.then:                                          ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !15
  br label %if.end, !dbg !16

if.else:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @HAL_MspInit(), !dbg !17
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %0 = load i8, i8* %status, align 1, !dbg !18
  ret i8 %0, !dbg !19
}

declare dso_local arm_aapcs_vfpcc void @HAL_NVIC_SetPriorityGrouping(i32) #1

declare dso_local arm_aapcs_vfpcc void @SystemCoreClockUpdate() #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc zeroext i8 @HAL_InitTick(i32 %TickPriority) #0 !dbg !20 {
entry:
  %TickPriority.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store i32 %TickPriority, i32* %TickPriority.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !21
  %0 = load i8, i8* @uwTickFreq, align 1, !dbg !22
  %conv = zext i8 %0 to i32, !dbg !23
  %cmp = icmp ne i32 %conv, 0, !dbg !24
  br i1 %cmp, label %if.then, label %if.else12, !dbg !23

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @SystemCoreClock, align 4, !dbg !25
  %2 = load i8, i8* @uwTickFreq, align 1, !dbg !26
  %conv2 = zext i8 %2 to i32, !dbg !27
  %div = udiv i32 1000, %conv2, !dbg !28
  %div3 = udiv i32 %1, %div, !dbg !29
  %call = call arm_aapcs_vfpcc i32 @HAL_SYSTICK_Config(i32 %div3), !dbg !30
  %cmp4 = icmp eq i32 %call, 0, !dbg !31
  br i1 %cmp4, label %if.then6, label %if.else10, !dbg !30

if.then6:                                         ; preds = %if.then
  %3 = load i32, i32* %TickPriority.addr, align 4, !dbg !32
  %cmp7 = icmp ult i32 %3, 8, !dbg !33
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !32

if.then9:                                         ; preds = %if.then6
  %4 = load i32, i32* %TickPriority.addr, align 4, !dbg !34
  call arm_aapcs_vfpcc void @HAL_NVIC_SetPriority(i8 signext -1, i32 %4, i32 0), !dbg !35
  %5 = load i32, i32* %TickPriority.addr, align 4, !dbg !36
  store i32 %5, i32* @uwTickPrio, align 4, !dbg !37
  br label %if.end, !dbg !38

if.else:                                          ; preds = %if.then6
  store i8 1, i8* %status, align 1, !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  br label %if.end11, !dbg !40

if.else10:                                        ; preds = %if.then
  store i8 1, i8* %status, align 1, !dbg !41
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.end
  br label %if.end13, !dbg !42

if.else12:                                        ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !43
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end11
  %6 = load i8, i8* %status, align 1, !dbg !44
  ret i8 %6, !dbg !45
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_MspInit() #0 !dbg !46 {
entry:
  ret void, !dbg !47
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_DeInit() #0 !dbg !48 {
entry:
  br label %do.body, !dbg !49

do.body:                                          ; preds = %entry
  store volatile i32 -1, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !49
  store volatile i32 -1, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 15), align 4, !dbg !49
  br label %do.end, !dbg !49

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !50

do.body1:                                         ; preds = %do.end
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 14), align 4, !dbg !50
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 15), align 4, !dbg !50
  br label %do.end2, !dbg !50

do.end2:                                          ; preds = %do.body1
  store volatile i32 -1, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 16), align 4, !dbg !51
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 16), align 4, !dbg !52
  store volatile i32 -1, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 10), align 4, !dbg !53
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 10), align 4, !dbg !54
  store volatile i32 -1, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 11), align 4, !dbg !55
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 11), align 4, !dbg !56
  store volatile i32 -1, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 12), align 4, !dbg !57
  store volatile i32 0, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 12), align 4, !dbg !58
  call arm_aapcs_vfpcc void @HAL_MspDeInit(), !dbg !59
  ret i8 0, !dbg !60
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_MspDeInit() #0 !dbg !61 {
entry:
  ret void, !dbg !62
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_SYSTICK_Config(i32) #1

declare dso_local arm_aapcs_vfpcc void @HAL_NVIC_SetPriority(i8 signext, i32, i32) #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_IncTick() #0 !dbg !63 {
entry:
  %0 = load i8, i8* @uwTickFreq, align 1, !dbg !64
  %conv = zext i8 %0 to i32, !dbg !65
  %1 = load volatile i32, i32* @uwTick, align 4, !dbg !66
  %add = add i32 %1, %conv, !dbg !66
  store volatile i32 %add, i32* @uwTick, align 4, !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #0 !dbg !68 {
entry:
  %0 = load volatile i32, i32* @uwTick, align 4, !dbg !69
  ret i32 %0, !dbg !70
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_GetTickPrio() #0 !dbg !71 {
entry:
  %0 = load i32, i32* @uwTickPrio, align 4, !dbg !72
  ret i32 %0, !dbg !73
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_SetTickFreq(i8 zeroext %Freq) #0 !dbg !74 {
entry:
  %Freq.addr = alloca i8, align 1
  %status = alloca i8, align 1
  %prevTickFreq = alloca i8, align 1
  store i8 %Freq, i8* %Freq.addr, align 1
  store i8 0, i8* %status, align 1, !dbg !75
  %0 = load i8, i8* @uwTickFreq, align 1, !dbg !76
  %conv = zext i8 %0 to i32, !dbg !76
  %1 = load i8, i8* %Freq.addr, align 1, !dbg !77
  %conv1 = zext i8 %1 to i32, !dbg !77
  %cmp = icmp ne i32 %conv, %conv1, !dbg !78
  br i1 %cmp, label %if.then, label %if.end7, !dbg !76

if.then:                                          ; preds = %entry
  %2 = load i8, i8* @uwTickFreq, align 1, !dbg !79
  store i8 %2, i8* %prevTickFreq, align 1, !dbg !80
  %3 = load i8, i8* %Freq.addr, align 1, !dbg !81
  store i8 %3, i8* @uwTickFreq, align 1, !dbg !82
  %4 = load i32, i32* @uwTickPrio, align 4, !dbg !83
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_InitTick(i32 %4), !dbg !84
  store i8 %call, i8* %status, align 1, !dbg !85
  %5 = load i8, i8* %status, align 1, !dbg !86
  %conv3 = zext i8 %5 to i32, !dbg !86
  %cmp4 = icmp ne i32 %conv3, 0, !dbg !87
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !86

if.then6:                                         ; preds = %if.then
  %6 = load i8, i8* %prevTickFreq, align 1, !dbg !88
  store i8 %6, i8* @uwTickFreq, align 1, !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7, !dbg !91

if.end7:                                          ; preds = %if.end, %entry
  %7 = load i8, i8* %status, align 1, !dbg !92
  ret i8 %7, !dbg !93
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_GetTickFreq() #0 !dbg !94 {
entry:
  %0 = load i8, i8* @uwTickFreq, align 1, !dbg !95
  ret i8 %0, !dbg !96
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_Delay(i32 %Delay) #0 !dbg !97 {
entry:
  %Delay.addr = alloca i32, align 4
  %tickstart = alloca i32, align 4
  %wait = alloca i32, align 4
  store i32 %Delay, i32* %Delay.addr, align 4
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !98
  store i32 %call, i32* %tickstart, align 4, !dbg !99
  %0 = load i32, i32* %Delay.addr, align 4, !dbg !100
  store i32 %0, i32* %wait, align 4, !dbg !101
  %1 = load i32, i32* %wait, align 4, !dbg !102
  %cmp = icmp ult i32 %1, -1, !dbg !103
  br i1 %cmp, label %if.then, label %if.end, !dbg !102

if.then:                                          ; preds = %entry
  %2 = load i8, i8* @uwTickFreq, align 1, !dbg !104
  %conv = zext i8 %2 to i32, !dbg !105
  %3 = load i32, i32* %wait, align 4, !dbg !106
  %add = add i32 %3, %conv, !dbg !106
  store i32 %add, i32* %wait, align 4, !dbg !106
  br label %if.end, !dbg !107

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !108

while.cond:                                       ; preds = %while.body, %if.end
  %call1 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !109
  %4 = load i32, i32* %tickstart, align 4, !dbg !110
  %sub = sub i32 %call1, %4, !dbg !111
  %5 = load i32, i32* %wait, align 4, !dbg !112
  %cmp2 = icmp ult i32 %sub, %5, !dbg !113
  br i1 %cmp2, label %while.body, label %while.end, !dbg !108

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !108, !llvm.loop !114

while.end:                                        ; preds = %while.cond
  ret void, !dbg !116
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_SuspendTick() #0 !dbg !117 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !118
  %and = and i32 %0, -3, !dbg !118
  store volatile i32 %and, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !118
  ret void, !dbg !119
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_ResumeTick() #0 !dbg !120 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !121
  %or = or i32 %0, 2, !dbg !121
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SysTick_Type, %struct.SysTick_Type* inttoptr (i32 -536813552 to %struct.SysTick_Type*), i32 0, i32 0), align 4, !dbg !121
  ret void, !dbg !122
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_GetHalVersion() #0 !dbg !123 {
entry:
  ret i32 16777984, !dbg !124
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_GetREVID() #0 !dbg !125 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 0), align 4, !dbg !126
  %and = and i32 %0, -65536, !dbg !127
  %shr = lshr i32 %and, 16, !dbg !128
  ret i32 %shr, !dbg !129
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_GetDEVID() #0 !dbg !130 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 0), align 4, !dbg !131
  %and = and i32 %0, 4095, !dbg !132
  ret i32 %and, !dbg !133
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_GetUIDw0() #0 !dbg !134 {
entry:
  %0 = load i32, i32* inttoptr (i32 200934800 to i32*), align 4, !dbg !135
  ret i32 %0, !dbg !136
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_GetUIDw1() #0 !dbg !137 {
entry:
  %0 = load i32, i32* inttoptr (i32 200934804 to i32*), align 4, !dbg !138
  ret i32 %0, !dbg !139
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_GetUIDw2() #0 !dbg !140 {
entry:
  %0 = load i32, i32* inttoptr (i32 200934808 to i32*), align 4, !dbg !141
  ret i32 %0, !dbg !142
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_DBGMCU_EnableDBGStopMode() #0 !dbg !143 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !144
  %or = or i32 %0, 2, !dbg !144
  store volatile i32 %or, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !144
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_DBGMCU_DisableDBGStopMode() #0 !dbg !146 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !147
  %and = and i32 %0, -3, !dbg !147
  store volatile i32 %and, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !147
  ret void, !dbg !148
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_DBGMCU_EnableDBGStandbyMode() #0 !dbg !149 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !150
  %or = or i32 %0, 4, !dbg !150
  store volatile i32 %or, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !150
  ret void, !dbg !151
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_DBGMCU_DisableDBGStandbyMode() #0 !dbg !152 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !153
  %and = and i32 %0, -5, !dbg !153
  store volatile i32 %and, i32* getelementptr inbounds (%struct.DBGMCU_TypeDef, %struct.DBGMCU_TypeDef* inttoptr (i32 -536592384 to %struct.DBGMCU_TypeDef*), i32 0, i32 1), align 4, !dbg !153
  ret void, !dbg !154
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_SRAM2Erase() #0 !dbg !155 {
entry:
  store volatile i32 202, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 7), align 4, !dbg !156
  store volatile i32 83, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 7), align 4, !dbg !157
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 6), align 4, !dbg !158
  %or = or i32 %0, 1, !dbg !158
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 6), align 4, !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_VREFBUF_VoltageScalingConfig(i32 %VoltageScaling) #0 !dbg !160 {
entry:
  %VoltageScaling.addr = alloca i32, align 4
  %TrimmingValue = alloca i32, align 4
  store i32 %VoltageScaling, i32* %VoltageScaling.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !161
  %and = and i32 %0, -5, !dbg !161
  %1 = load i32, i32* %VoltageScaling.addr, align 4, !dbg !161
  %or = or i32 %and, %1, !dbg !161
  store volatile i32 %or, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !161
  %2 = load i32, i32* %VoltageScaling.addr, align 4, !dbg !162
  %cmp = icmp eq i32 %2, 0, !dbg !163
  br i1 %cmp, label %if.then, label %if.else, !dbg !162

if.then:                                          ; preds = %entry
  %3 = load i8, i8* inttoptr (i32 200934777 to i8*), align 1, !dbg !164
  %conv = zext i8 %3 to i32, !dbg !165
  %and1 = and i32 %conv, 63, !dbg !166
  store i32 %and1, i32* %TrimmingValue, align 4, !dbg !167
  br label %if.end, !dbg !168

if.else:                                          ; preds = %entry
  %4 = load i8, i8* inttoptr (i32 200934704 to i8*), align 1, !dbg !169
  %conv2 = zext i8 %4 to i32, !dbg !170
  %and3 = and i32 %conv2, 63, !dbg !171
  store i32 %and3, i32* %TrimmingValue, align 4, !dbg !172
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %TrimmingValue, align 4, !dbg !173
  call arm_aapcs_vfpcc void @HAL_SYSCFG_VREFBUF_TrimmingConfig(i32 %5), !dbg !174
  ret void, !dbg !175
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_VREFBUF_TrimmingConfig(i32 %TrimmingValue) #0 !dbg !176 {
entry:
  %TrimmingValue.addr = alloca i32, align 4
  store i32 %TrimmingValue, i32* %TrimmingValue.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 1), align 4, !dbg !177
  %and = and i32 %0, -64, !dbg !177
  %1 = load i32, i32* %TrimmingValue.addr, align 4, !dbg !177
  %or = or i32 %and, %1, !dbg !177
  store volatile i32 %or, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 1), align 4, !dbg !177
  ret void, !dbg !178
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_VREFBUF_HighImpedanceConfig(i32 %Mode) #0 !dbg !179 {
entry:
  %Mode.addr = alloca i32, align 4
  store i32 %Mode, i32* %Mode.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !180
  %and = and i32 %0, -3, !dbg !180
  %1 = load i32, i32* %Mode.addr, align 4, !dbg !180
  %or = or i32 %and, %1, !dbg !180
  store volatile i32 %or, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !180
  ret void, !dbg !181
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_SYSCFG_EnableVREFBUF() #0 !dbg !182 {
entry:
  %retval = alloca i8, align 1
  %tickstart = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !183
  %or = or i32 %0, 1, !dbg !183
  store volatile i32 %or, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !183
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !184
  store i32 %call, i32* %tickstart, align 4, !dbg !185
  br label %while.cond, !dbg !186

while.cond:                                       ; preds = %if.end, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !187
  %and = and i32 %1, 8, !dbg !187
  %cmp = icmp eq i32 %and, 0, !dbg !188
  br i1 %cmp, label %while.body, label %while.end, !dbg !186

while.body:                                       ; preds = %while.cond
  %call1 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !189
  %2 = load i32, i32* %tickstart, align 4, !dbg !190
  %sub = sub i32 %call1, %2, !dbg !191
  %cmp2 = icmp ugt i32 %sub, 10, !dbg !192
  br i1 %cmp2, label %if.then, label %if.end, !dbg !193

if.then:                                          ; preds = %while.body
  store i8 3, i8* %retval, align 1, !dbg !194
  br label %return, !dbg !194

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !186, !llvm.loop !195

while.end:                                        ; preds = %while.cond
  store i8 0, i8* %retval, align 1, !dbg !197
  br label %return, !dbg !197

return:                                           ; preds = %while.end, %if.then
  %3 = load i8, i8* %retval, align 1, !dbg !198
  ret i8 %3, !dbg !198
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_DisableVREFBUF() #0 !dbg !199 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !200
  %and = and i32 %0, -2, !dbg !200
  store volatile i32 %and, i32* getelementptr inbounds (%struct.VREFBUF_TypeDef, %struct.VREFBUF_TypeDef* inttoptr (i32 1073807616 to %struct.VREFBUF_TypeDef*), i32 0, i32 0), align 4, !dbg !200
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_EnableIOAnalogBooster() #0 !dbg !202 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !203
  %and = and i32 %0, -769, !dbg !203
  %or = or i32 %and, 256, !dbg !203
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !203
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_DisableIOAnalogBooster() #0 !dbg !205 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !206
  %and = and i32 %0, -257, !dbg !206
  store volatile i32 %and, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !206
  ret void, !dbg !207
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_EnableIOAnalogSwitchVdd() #0 !dbg !208 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !209
  %and = and i32 %0, -769, !dbg !209
  %or = or i32 %and, 512, !dbg !209
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !209
  ret void, !dbg !210
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_DisableIOAnalogSwitchVdd() #0 !dbg !211 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !212
  %and = and i32 %0, -513, !dbg !212
  store volatile i32 %and, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 1), align 4, !dbg !212
  ret void, !dbg !213
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_SYSCFG_Lock(i32 %Item) #0 !dbg !214 {
entry:
  %Item.addr = alloca i32, align 4
  store i32 %Item, i32* %Item.addr, align 4
  %0 = load i32, i32* %Item.addr, align 4, !dbg !215
  %and = and i32 65535, %0, !dbg !216
  store volatile i32 %and, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 3), align 4, !dbg !217
  ret void, !dbg !218
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_SYSCFG_GetLock(i32* %pItem) #0 !dbg !219 {
entry:
  %retval = alloca i8, align 1
  %pItem.addr = alloca i32*, align 4
  %tmp_lock = alloca i32, align 4
  store i32* %pItem, i32** %pItem.addr, align 4
  %0 = load i32*, i32** %pItem.addr, align 4, !dbg !220
  %cmp = icmp eq i32* %0, null, !dbg !221
  br i1 %cmp, label %if.then, label %if.end, !dbg !220

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !222
  br label %return, !dbg !222

if.end:                                           ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SYSCFG_TypeDef, %struct.SYSCFG_TypeDef* inttoptr (i32 1073807360 to %struct.SYSCFG_TypeDef*), i32 0, i32 3), align 4, !dbg !223
  store i32 %1, i32* %tmp_lock, align 4, !dbg !224
  %2 = load i32, i32* %tmp_lock, align 4, !dbg !225
  %3 = load i32*, i32** %pItem.addr, align 4, !dbg !226
  store i32 %2, i32* %3, align 4, !dbg !227
  store i8 0, i8* %retval, align 1, !dbg !228
  br label %return, !dbg !228

return:                                           ; preds = %if.end, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !229
  ret i8 %4, !dbg !229
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_Init", scope: !1, file: !1, line: 139, type: !9, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 141, column: 22, scope: !8)
!11 = !DILocation(line: 144, column: 3, scope: !8)
!12 = !DILocation(line: 147, column: 3, scope: !8)
!13 = !DILocation(line: 150, column: 7, scope: !8)
!14 = !DILocation(line: 150, column: 39, scope: !8)
!15 = !DILocation(line: 152, column: 12, scope: !8)
!16 = !DILocation(line: 153, column: 3, scope: !8)
!17 = !DILocation(line: 157, column: 5, scope: !8)
!18 = !DILocation(line: 161, column: 10, scope: !8)
!19 = !DILocation(line: 161, column: 3, scope: !8)
!20 = distinct !DISubprogram(name: "HAL_InitTick", scope: !1, file: !1, line: 232, type: !9, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DILocation(line: 234, column: 22, scope: !20)
!22 = !DILocation(line: 237, column: 17, scope: !20)
!23 = !DILocation(line: 237, column: 7, scope: !20)
!24 = !DILocation(line: 237, column: 28, scope: !20)
!25 = !DILocation(line: 240, column: 28, scope: !20)
!26 = !DILocation(line: 240, column: 65, scope: !20)
!27 = !DILocation(line: 240, column: 55, scope: !20)
!28 = !DILocation(line: 240, column: 53, scope: !20)
!29 = !DILocation(line: 240, column: 44, scope: !20)
!30 = !DILocation(line: 240, column: 9, scope: !20)
!31 = !DILocation(line: 240, column: 78, scope: !20)
!32 = !DILocation(line: 243, column: 11, scope: !20)
!33 = !DILocation(line: 243, column: 24, scope: !20)
!34 = !DILocation(line: 245, column: 44, scope: !20)
!35 = !DILocation(line: 245, column: 9, scope: !20)
!36 = !DILocation(line: 246, column: 22, scope: !20)
!37 = !DILocation(line: 246, column: 20, scope: !20)
!38 = !DILocation(line: 247, column: 7, scope: !20)
!39 = !DILocation(line: 250, column: 16, scope: !20)
!40 = !DILocation(line: 252, column: 5, scope: !20)
!41 = !DILocation(line: 255, column: 14, scope: !20)
!42 = !DILocation(line: 257, column: 3, scope: !20)
!43 = !DILocation(line: 260, column: 12, scope: !20)
!44 = !DILocation(line: 264, column: 10, scope: !20)
!45 = !DILocation(line: 264, column: 3, scope: !20)
!46 = distinct !DISubprogram(name: "HAL_MspInit", scope: !1, file: !1, line: 198, type: !9, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 203, column: 1, scope: !46)
!48 = distinct !DISubprogram(name: "HAL_DeInit", scope: !1, file: !1, line: 169, type: !9, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!49 = !DILocation(line: 172, column: 3, scope: !48)
!50 = !DILocation(line: 173, column: 3, scope: !48)
!51 = !DILocation(line: 175, column: 3, scope: !48)
!52 = !DILocation(line: 176, column: 3, scope: !48)
!53 = !DILocation(line: 178, column: 3, scope: !48)
!54 = !DILocation(line: 179, column: 3, scope: !48)
!55 = !DILocation(line: 181, column: 3, scope: !48)
!56 = !DILocation(line: 182, column: 3, scope: !48)
!57 = !DILocation(line: 184, column: 3, scope: !48)
!58 = !DILocation(line: 185, column: 3, scope: !48)
!59 = !DILocation(line: 188, column: 3, scope: !48)
!60 = !DILocation(line: 191, column: 3, scope: !48)
!61 = distinct !DISubprogram(name: "HAL_MspDeInit", scope: !1, file: !1, line: 209, type: !9, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DILocation(line: 214, column: 1, scope: !61)
!63 = distinct !DISubprogram(name: "HAL_IncTick", scope: !1, file: !1, line: 300, type: !9, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DILocation(line: 302, column: 23, scope: !63)
!65 = !DILocation(line: 302, column: 13, scope: !63)
!66 = !DILocation(line: 302, column: 10, scope: !63)
!67 = !DILocation(line: 303, column: 1, scope: !63)
!68 = distinct !DISubprogram(name: "HAL_GetTick", scope: !1, file: !1, line: 311, type: !9, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DILocation(line: 313, column: 10, scope: !68)
!70 = !DILocation(line: 313, column: 3, scope: !68)
!71 = distinct !DISubprogram(name: "HAL_GetTickPrio", scope: !1, file: !1, line: 320, type: !9, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!72 = !DILocation(line: 322, column: 10, scope: !71)
!73 = !DILocation(line: 322, column: 3, scope: !71)
!74 = distinct !DISubprogram(name: "HAL_SetTickFreq", scope: !1, file: !1, line: 330, type: !9, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!75 = !DILocation(line: 332, column: 21, scope: !74)
!76 = !DILocation(line: 335, column: 7, scope: !74)
!77 = !DILocation(line: 335, column: 21, scope: !74)
!78 = !DILocation(line: 335, column: 18, scope: !74)
!79 = !DILocation(line: 338, column: 20, scope: !74)
!80 = !DILocation(line: 338, column: 18, scope: !74)
!81 = !DILocation(line: 341, column: 18, scope: !74)
!82 = !DILocation(line: 341, column: 16, scope: !74)
!83 = !DILocation(line: 344, column: 27, scope: !74)
!84 = !DILocation(line: 344, column: 14, scope: !74)
!85 = !DILocation(line: 344, column: 12, scope: !74)
!86 = !DILocation(line: 345, column: 9, scope: !74)
!87 = !DILocation(line: 345, column: 16, scope: !74)
!88 = !DILocation(line: 348, column: 20, scope: !74)
!89 = !DILocation(line: 348, column: 18, scope: !74)
!90 = !DILocation(line: 349, column: 5, scope: !74)
!91 = !DILocation(line: 350, column: 3, scope: !74)
!92 = !DILocation(line: 352, column: 10, scope: !74)
!93 = !DILocation(line: 352, column: 3, scope: !74)
!94 = distinct !DISubprogram(name: "HAL_GetTickFreq", scope: !1, file: !1, line: 359, type: !9, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocation(line: 361, column: 10, scope: !94)
!96 = !DILocation(line: 361, column: 3, scope: !94)
!97 = distinct !DISubprogram(name: "HAL_Delay", scope: !1, file: !1, line: 375, type: !9, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DILocation(line: 377, column: 24, scope: !97)
!99 = !DILocation(line: 377, column: 12, scope: !97)
!100 = !DILocation(line: 378, column: 19, scope: !97)
!101 = !DILocation(line: 378, column: 12, scope: !97)
!102 = !DILocation(line: 381, column: 7, scope: !97)
!103 = !DILocation(line: 381, column: 12, scope: !97)
!104 = !DILocation(line: 383, column: 23, scope: !97)
!105 = !DILocation(line: 383, column: 13, scope: !97)
!106 = !DILocation(line: 383, column: 10, scope: !97)
!107 = !DILocation(line: 384, column: 3, scope: !97)
!108 = !DILocation(line: 386, column: 3, scope: !97)
!109 = !DILocation(line: 386, column: 11, scope: !97)
!110 = !DILocation(line: 386, column: 27, scope: !97)
!111 = !DILocation(line: 386, column: 25, scope: !97)
!112 = !DILocation(line: 386, column: 40, scope: !97)
!113 = !DILocation(line: 386, column: 38, scope: !97)
!114 = distinct !{!114, !108, !115}
!115 = !DILocation(line: 388, column: 3, scope: !97)
!116 = !DILocation(line: 389, column: 1, scope: !97)
!117 = distinct !DISubprogram(name: "HAL_SuspendTick", scope: !1, file: !1, line: 401, type: !9, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!118 = !DILocation(line: 404, column: 17, scope: !117)
!119 = !DILocation(line: 405, column: 1, scope: !117)
!120 = distinct !DISubprogram(name: "HAL_ResumeTick", scope: !1, file: !1, line: 417, type: !9, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocation(line: 420, column: 18, scope: !120)
!122 = !DILocation(line: 421, column: 1, scope: !120)
!123 = distinct !DISubprogram(name: "HAL_GetHalVersion", scope: !1, file: !1, line: 427, type: !9, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!124 = !DILocation(line: 429, column: 3, scope: !123)
!125 = distinct !DISubprogram(name: "HAL_GetREVID", scope: !1, file: !1, line: 436, type: !9, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocation(line: 438, column: 19, scope: !125)
!127 = !DILocation(line: 438, column: 26, scope: !125)
!128 = !DILocation(line: 438, column: 50, scope: !125)
!129 = !DILocation(line: 438, column: 3, scope: !125)
!130 = distinct !DISubprogram(name: "HAL_GetDEVID", scope: !1, file: !1, line: 445, type: !9, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!131 = !DILocation(line: 447, column: 18, scope: !130)
!132 = !DILocation(line: 447, column: 25, scope: !130)
!133 = !DILocation(line: 447, column: 3, scope: !130)
!134 = distinct !DISubprogram(name: "HAL_GetUIDw0", scope: !1, file: !1, line: 454, type: !9, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!135 = !DILocation(line: 456, column: 10, scope: !134)
!136 = !DILocation(line: 456, column: 3, scope: !134)
!137 = distinct !DISubprogram(name: "HAL_GetUIDw1", scope: !1, file: !1, line: 463, type: !9, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocation(line: 465, column: 10, scope: !137)
!139 = !DILocation(line: 465, column: 3, scope: !137)
!140 = distinct !DISubprogram(name: "HAL_GetUIDw2", scope: !1, file: !1, line: 472, type: !9, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!141 = !DILocation(line: 474, column: 11, scope: !140)
!142 = !DILocation(line: 474, column: 4, scope: !140)
!143 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStopMode", scope: !1, file: !1, line: 500, type: !9, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!144 = !DILocation(line: 502, column: 3, scope: !143)
!145 = !DILocation(line: 503, column: 1, scope: !143)
!146 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStopMode", scope: !1, file: !1, line: 509, type: !9, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!147 = !DILocation(line: 511, column: 3, scope: !146)
!148 = !DILocation(line: 512, column: 1, scope: !146)
!149 = distinct !DISubprogram(name: "HAL_DBGMCU_EnableDBGStandbyMode", scope: !1, file: !1, line: 518, type: !9, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!150 = !DILocation(line: 520, column: 3, scope: !149)
!151 = !DILocation(line: 521, column: 1, scope: !149)
!152 = distinct !DISubprogram(name: "HAL_DBGMCU_DisableDBGStandbyMode", scope: !1, file: !1, line: 527, type: !9, scopeLine: 528, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!153 = !DILocation(line: 529, column: 3, scope: !152)
!154 = !DILocation(line: 530, column: 1, scope: !152)
!155 = distinct !DISubprogram(name: "HAL_SYSCFG_SRAM2Erase", scope: !1, file: !1, line: 560, type: !9, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!156 = !DILocation(line: 563, column: 15, scope: !155)
!157 = !DILocation(line: 564, column: 15, scope: !155)
!158 = !DILocation(line: 567, column: 3, scope: !155)
!159 = !DILocation(line: 568, column: 1, scope: !155)
!160 = distinct !DISubprogram(name: "HAL_SYSCFG_VREFBUF_VoltageScalingConfig", scope: !1, file: !1, line: 582, type: !9, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!161 = !DILocation(line: 589, column: 3, scope: !160)
!162 = !DILocation(line: 592, column: 7, scope: !160)
!163 = !DILocation(line: 592, column: 22, scope: !160)
!164 = !DILocation(line: 594, column: 33, scope: !160)
!165 = !DILocation(line: 594, column: 22, scope: !160)
!166 = !DILocation(line: 594, column: 56, scope: !160)
!167 = !DILocation(line: 594, column: 19, scope: !160)
!168 = !DILocation(line: 595, column: 3, scope: !160)
!169 = !DILocation(line: 598, column: 33, scope: !160)
!170 = !DILocation(line: 598, column: 22, scope: !160)
!171 = !DILocation(line: 598, column: 56, scope: !160)
!172 = !DILocation(line: 598, column: 19, scope: !160)
!173 = !DILocation(line: 602, column: 37, scope: !160)
!174 = !DILocation(line: 602, column: 3, scope: !160)
!175 = !DILocation(line: 603, column: 1, scope: !160)
!176 = distinct !DISubprogram(name: "HAL_SYSCFG_VREFBUF_TrimmingConfig", scope: !1, file: !1, line: 625, type: !9, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!177 = !DILocation(line: 630, column: 3, scope: !176)
!178 = !DILocation(line: 631, column: 1, scope: !176)
!179 = distinct !DISubprogram(name: "HAL_SYSCFG_VREFBUF_HighImpedanceConfig", scope: !1, file: !1, line: 613, type: !9, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!180 = !DILocation(line: 618, column: 3, scope: !179)
!181 = !DILocation(line: 619, column: 1, scope: !179)
!182 = distinct !DISubprogram(name: "HAL_SYSCFG_EnableVREFBUF", scope: !1, file: !1, line: 637, type: !9, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!183 = !DILocation(line: 641, column: 3, scope: !182)
!184 = !DILocation(line: 644, column: 15, scope: !182)
!185 = !DILocation(line: 644, column: 13, scope: !182)
!186 = !DILocation(line: 647, column: 3, scope: !182)
!187 = !DILocation(line: 647, column: 9, scope: !182)
!188 = !DILocation(line: 647, column: 49, scope: !182)
!189 = !DILocation(line: 649, column: 9, scope: !182)
!190 = !DILocation(line: 649, column: 25, scope: !182)
!191 = !DILocation(line: 649, column: 23, scope: !182)
!192 = !DILocation(line: 649, column: 36, scope: !182)
!193 = !DILocation(line: 649, column: 8, scope: !182)
!194 = !DILocation(line: 651, column: 7, scope: !182)
!195 = distinct !{!195, !186, !196}
!196 = !DILocation(line: 653, column: 3, scope: !182)
!197 = !DILocation(line: 655, column: 3, scope: !182)
!198 = !DILocation(line: 656, column: 1, scope: !182)
!199 = distinct !DISubprogram(name: "HAL_SYSCFG_DisableVREFBUF", scope: !1, file: !1, line: 663, type: !9, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!200 = !DILocation(line: 665, column: 3, scope: !199)
!201 = !DILocation(line: 666, column: 1, scope: !199)
!202 = distinct !DISubprogram(name: "HAL_SYSCFG_EnableIOAnalogBooster", scope: !1, file: !1, line: 673, type: !9, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!203 = !DILocation(line: 675, column: 3, scope: !202)
!204 = !DILocation(line: 676, column: 1, scope: !202)
!205 = distinct !DISubprogram(name: "HAL_SYSCFG_DisableIOAnalogBooster", scope: !1, file: !1, line: 683, type: !9, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DILocation(line: 685, column: 3, scope: !205)
!207 = !DILocation(line: 686, column: 1, scope: !205)
!208 = distinct !DISubprogram(name: "HAL_SYSCFG_EnableIOAnalogSwitchVdd", scope: !1, file: !1, line: 693, type: !9, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!209 = !DILocation(line: 695, column: 3, scope: !208)
!210 = !DILocation(line: 696, column: 1, scope: !208)
!211 = distinct !DISubprogram(name: "HAL_SYSCFG_DisableIOAnalogSwitchVdd", scope: !1, file: !1, line: 703, type: !9, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!212 = !DILocation(line: 705, column: 3, scope: !211)
!213 = !DILocation(line: 706, column: 1, scope: !211)
!214 = distinct !DISubprogram(name: "HAL_SYSCFG_Lock", scope: !1, file: !1, line: 732, type: !9, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!215 = !DILocation(line: 738, column: 32, scope: !214)
!216 = !DILocation(line: 738, column: 30, scope: !214)
!217 = !DILocation(line: 738, column: 19, scope: !214)
!218 = !DILocation(line: 744, column: 1, scope: !214)
!219 = distinct !DISubprogram(name: "HAL_SYSCFG_GetLock", scope: !1, file: !1, line: 753, type: !9, scopeLine: 754, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!220 = !DILocation(line: 758, column: 6, scope: !219)
!221 = !DILocation(line: 758, column: 12, scope: !219)
!222 = !DILocation(line: 760, column: 5, scope: !219)
!223 = !DILocation(line: 764, column: 22, scope: !219)
!224 = !DILocation(line: 764, column: 12, scope: !219)
!225 = !DILocation(line: 772, column: 12, scope: !219)
!226 = !DILocation(line: 772, column: 4, scope: !219)
!227 = !DILocation(line: 772, column: 10, scope: !219)
!228 = !DILocation(line: 774, column: 3, scope: !219)
!229 = !DILocation(line: 775, column: 1, scope: !219)
