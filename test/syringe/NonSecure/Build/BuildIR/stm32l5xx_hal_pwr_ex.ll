; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr_ex.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr_ex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.PWR_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32 }
%struct.PWR_PVMTypeDef = type { i32, i32 }
%struct.EXTI_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], [4 x i32], i32, [3 x i32], i32, i32, [2 x i32], i32, i32 }
%struct.SCB_Type = type { i32, i32, i32, i32, i32, i32, [12 x i8], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, [4 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, [92 x i32], i32, [15 x i32], i32, i32, i32, [1 x i32], i32, [1 x i32], i32, i32, i32, i32, i32, i32, i32, i32 }

@SystemCoreClock = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_PWREx_GetVoltageRange() #0 !dbg !8 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !10
  %and = and i32 %0, 1536, !dbg !11
  ret i32 %and, !dbg !12
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_ControlVoltageScaling(i32 %VoltageScaling) #0 !dbg !13 {
entry:
  %retval = alloca i8, align 1
  %VoltageScaling.addr = alloca i32, align 4
  %wait_loop_index = alloca i32, align 4
  %vos_old = alloca i32, align 4
  store i32 %VoltageScaling, i32* %VoltageScaling.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !14
  %and = and i32 %0, 1536, !dbg !14
  store i32 %and, i32* %vos_old, align 4, !dbg !15
  %call = call arm_aapcs_vfpcc i32 @HAL_PWREx_SMPS_GetEffectiveMode(), !dbg !16
  %cmp = icmp eq i32 %call, 32768, !dbg !17
  br i1 %cmp, label %if.then, label %if.end, !dbg !16

if.then:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !18
  br label %return, !dbg !18

if.end:                                           ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !19
  %and1 = and i32 %1, 32768, !dbg !19
  %cmp2 = icmp eq i32 %and1, 32768, !dbg !20
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !19

if.then3:                                         ; preds = %if.end
  store i8 1, i8* %retval, align 1, !dbg !21
  br label %return, !dbg !21

if.end4:                                          ; preds = %if.end
  %2 = load i32, i32* %vos_old, align 4, !dbg !22
  %3 = load i32, i32* %VoltageScaling.addr, align 4, !dbg !23
  %cmp5 = icmp eq i32 %2, %3, !dbg !24
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !22

if.then6:                                         ; preds = %if.end4
  store i8 0, i8* %retval, align 1, !dbg !25
  br label %return, !dbg !25

if.end7:                                          ; preds = %if.end4
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !26
  %and8 = and i32 %4, -1537, !dbg !26
  %5 = load i32, i32* %VoltageScaling.addr, align 4, !dbg !26
  %or = or i32 %and8, %5, !dbg !26
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !26
  %6 = load i32, i32* @SystemCoreClock, align 4, !dbg !27
  %div = udiv i32 %6, 100000, !dbg !28
  %mul = mul i32 50, %div, !dbg !29
  %div9 = udiv i32 %mul, 10, !dbg !30
  %add = add i32 %div9, 1, !dbg !31
  store i32 %add, i32* %wait_loop_index, align 4, !dbg !32
  br label %while.cond, !dbg !33

while.cond:                                       ; preds = %while.body, %if.end7
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 5), align 4, !dbg !34
  %and10 = and i32 %7, 1024, !dbg !34
  %cmp11 = icmp eq i32 %and10, 1024, !dbg !34
  br i1 %cmp11, label %land.rhs, label %land.end, !dbg !35

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %wait_loop_index, align 4, !dbg !36
  %cmp12 = icmp ne i32 %8, 0, !dbg !37
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp12, %land.rhs ], !dbg !38
  br i1 %9, label %while.body, label %while.end, !dbg !33

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %wait_loop_index, align 4, !dbg !39
  %dec = add i32 %10, -1, !dbg !39
  store i32 %dec, i32* %wait_loop_index, align 4, !dbg !39
  br label %while.cond, !dbg !33, !llvm.loop !40

while.end:                                        ; preds = %land.end
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 5), align 4, !dbg !42
  %and13 = and i32 %11, 1024, !dbg !42
  %cmp14 = icmp eq i32 %and13, 1024, !dbg !42
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !42

if.then15:                                        ; preds = %while.end
  store i8 3, i8* %retval, align 1, !dbg !43
  br label %return, !dbg !43

if.end16:                                         ; preds = %while.end
  store i8 0, i8* %retval, align 1, !dbg !44
  br label %return, !dbg !44

return:                                           ; preds = %if.end16, %if.then15, %if.then6, %if.then3, %if.then
  %12 = load i8, i8* %retval, align 1, !dbg !45
  ret i8 %12, !dbg !45
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_PWREx_SMPS_GetEffectiveMode() #0 !dbg !46 {
entry:
  %mode = alloca i32, align 4
  %pwr_sr1 = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 4), align 4, !dbg !47
  store i32 %0, i32* %pwr_sr1, align 4, !dbg !48
  %1 = load i32, i32* %pwr_sr1, align 4, !dbg !49
  %and = and i32 %1, 4096, !dbg !49
  %cmp = icmp ne i32 %and, 0, !dbg !50
  br i1 %cmp, label %if.then, label %if.else, !dbg !49

if.then:                                          ; preds = %entry
  store i32 4096, i32* %mode, align 4, !dbg !51
  br label %if.end5, !dbg !52

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %pwr_sr1, align 4, !dbg !53
  %and1 = and i32 %2, 32768, !dbg !53
  %cmp2 = icmp eq i32 %and1, 0, !dbg !54
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !53

if.then3:                                         ; preds = %if.else
  store i32 32768, i32* %mode, align 4, !dbg !55
  br label %if.end, !dbg !56

if.else4:                                         ; preds = %if.else
  store i32 0, i32* %mode, align 4, !dbg !57
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %3 = load i32, i32* %mode, align 4, !dbg !58
  ret i32 %3, !dbg !59
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableBatteryCharging(i32 %ResistorSelection) #0 !dbg !60 {
entry:
  %ResistorSelection.addr = alloca i32, align 4
  store i32 %ResistorSelection, i32* %ResistorSelection.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !61
  %and = and i32 %0, -513, !dbg !61
  %1 = load i32, i32* %ResistorSelection.addr, align 4, !dbg !61
  %or = or i32 %and, %1, !dbg !61
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !61
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !62
  %or1 = or i32 %2, 256, !dbg !62
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !62
  ret void, !dbg !63
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisableBatteryCharging() #0 !dbg !64 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !65
  %and = and i32 %0, -257, !dbg !65
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !65
  ret void, !dbg !66
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableVddUSB() #0 !dbg !67 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !68
  %or = or i32 %0, 1024, !dbg !68
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !68
  ret void, !dbg !69
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisableVddUSB() #0 !dbg !70 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !71
  %and = and i32 %0, -1025, !dbg !71
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !71
  ret void, !dbg !72
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableVddIO2() #0 !dbg !73 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !74
  %or = or i32 %0, 512, !dbg !74
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !74
  ret void, !dbg !75
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisableVddIO2() #0 !dbg !76 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !77
  %and = and i32 %0, -513, !dbg !77
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !77
  ret void, !dbg !78
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_EnableGPIOPullUp(i32 %GPIO, i32 %GPIONumber) #0 !dbg !79 {
entry:
  %GPIO.addr = alloca i32, align 4
  %GPIONumber.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store i32 %GPIO, i32* %GPIO.addr, align 4
  store i32 %GPIONumber, i32* %GPIONumber.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !80
  %0 = load i32, i32* %GPIO.addr, align 4, !dbg !81
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
    i32 4, label %sw.bb16
    i32 5, label %sw.bb20
    i32 6, label %sw.bb24
    i32 7, label %sw.bb28
  ], !dbg !82

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %GPIONumber.addr, align 4, !dbg !83
  %and = and i32 %1, -16385, !dbg !83
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 8), align 4, !dbg !83
  %or = or i32 %2, %and, !dbg !83
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 8), align 4, !dbg !83
  %3 = load i32, i32* %GPIONumber.addr, align 4, !dbg !84
  %and1 = and i32 %3, -40961, !dbg !84
  %neg = xor i32 %and1, -1, !dbg !84
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 9), align 4, !dbg !84
  %and2 = and i32 %4, %neg, !dbg !84
  store volatile i32 %and2, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 9), align 4, !dbg !84
  br label %sw.epilog, !dbg !85

sw.bb3:                                           ; preds = %entry
  %5 = load i32, i32* %GPIONumber.addr, align 4, !dbg !86
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 10), align 4, !dbg !86
  %or4 = or i32 %6, %5, !dbg !86
  store volatile i32 %or4, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 10), align 4, !dbg !86
  %7 = load i32, i32* %GPIONumber.addr, align 4, !dbg !87
  %and5 = and i32 %7, -17, !dbg !87
  %neg6 = xor i32 %and5, -1, !dbg !87
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 11), align 4, !dbg !87
  %and7 = and i32 %8, %neg6, !dbg !87
  store volatile i32 %and7, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 11), align 4, !dbg !87
  br label %sw.epilog, !dbg !88

sw.bb8:                                           ; preds = %entry
  %9 = load i32, i32* %GPIONumber.addr, align 4, !dbg !89
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 12), align 4, !dbg !89
  %or9 = or i32 %10, %9, !dbg !89
  store volatile i32 %or9, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 12), align 4, !dbg !89
  %11 = load i32, i32* %GPIONumber.addr, align 4, !dbg !90
  %neg10 = xor i32 %11, -1, !dbg !90
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 13), align 4, !dbg !90
  %and11 = and i32 %12, %neg10, !dbg !90
  store volatile i32 %and11, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 13), align 4, !dbg !90
  br label %sw.epilog, !dbg !91

sw.bb12:                                          ; preds = %entry
  %13 = load i32, i32* %GPIONumber.addr, align 4, !dbg !92
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 14), align 4, !dbg !92
  %or13 = or i32 %14, %13, !dbg !92
  store volatile i32 %or13, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 14), align 4, !dbg !92
  %15 = load i32, i32* %GPIONumber.addr, align 4, !dbg !93
  %neg14 = xor i32 %15, -1, !dbg !93
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 15), align 4, !dbg !93
  %and15 = and i32 %16, %neg14, !dbg !93
  store volatile i32 %and15, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 15), align 4, !dbg !93
  br label %sw.epilog, !dbg !94

sw.bb16:                                          ; preds = %entry
  %17 = load i32, i32* %GPIONumber.addr, align 4, !dbg !95
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 16), align 4, !dbg !95
  %or17 = or i32 %18, %17, !dbg !95
  store volatile i32 %or17, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 16), align 4, !dbg !95
  %19 = load i32, i32* %GPIONumber.addr, align 4, !dbg !96
  %neg18 = xor i32 %19, -1, !dbg !96
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 17), align 4, !dbg !96
  %and19 = and i32 %20, %neg18, !dbg !96
  store volatile i32 %and19, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 17), align 4, !dbg !96
  br label %sw.epilog, !dbg !97

sw.bb20:                                          ; preds = %entry
  %21 = load i32, i32* %GPIONumber.addr, align 4, !dbg !98
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 18), align 4, !dbg !98
  %or21 = or i32 %22, %21, !dbg !98
  store volatile i32 %or21, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 18), align 4, !dbg !98
  %23 = load i32, i32* %GPIONumber.addr, align 4, !dbg !99
  %neg22 = xor i32 %23, -1, !dbg !99
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 19), align 4, !dbg !99
  %and23 = and i32 %24, %neg22, !dbg !99
  store volatile i32 %and23, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 19), align 4, !dbg !99
  br label %sw.epilog, !dbg !100

sw.bb24:                                          ; preds = %entry
  %25 = load i32, i32* %GPIONumber.addr, align 4, !dbg !101
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 20), align 4, !dbg !101
  %or25 = or i32 %26, %25, !dbg !101
  store volatile i32 %or25, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 20), align 4, !dbg !101
  %27 = load i32, i32* %GPIONumber.addr, align 4, !dbg !102
  %neg26 = xor i32 %27, -1, !dbg !102
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 21), align 4, !dbg !102
  %and27 = and i32 %28, %neg26, !dbg !102
  store volatile i32 %and27, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 21), align 4, !dbg !102
  br label %sw.epilog, !dbg !103

sw.bb28:                                          ; preds = %entry
  %29 = load i32, i32* %GPIONumber.addr, align 4, !dbg !104
  %and29 = and i32 %29, 11, !dbg !104
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 22), align 4, !dbg !104
  %or30 = or i32 %30, %and29, !dbg !104
  store volatile i32 %or30, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 22), align 4, !dbg !104
  %31 = load i32, i32* %GPIONumber.addr, align 4, !dbg !105
  %and31 = and i32 %31, 11, !dbg !105
  %neg32 = xor i32 %and31, -1, !dbg !105
  %32 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 23), align 4, !dbg !105
  %and33 = and i32 %32, %neg32, !dbg !105
  store volatile i32 %and33, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 23), align 4, !dbg !105
  br label %sw.epilog, !dbg !106

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !107
  br label %sw.epilog, !dbg !108

sw.epilog:                                        ; preds = %sw.default, %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb3, %sw.bb
  %33 = load i8, i8* %status, align 1, !dbg !109
  ret i8 %33, !dbg !110
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_DisableGPIOPullUp(i32 %GPIO, i32 %GPIONumber) #0 !dbg !111 {
entry:
  %GPIO.addr = alloca i32, align 4
  %GPIONumber.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store i32 %GPIO, i32* %GPIO.addr, align 4
  store i32 %GPIONumber, i32* %GPIONumber.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !112
  %0 = load i32, i32* %GPIO.addr, align 4, !dbg !113
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
    i32 3, label %sw.bb8
    i32 4, label %sw.bb11
    i32 5, label %sw.bb14
    i32 6, label %sw.bb17
    i32 7, label %sw.bb20
  ], !dbg !114

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %GPIONumber.addr, align 4, !dbg !115
  %and = and i32 %1, -16385, !dbg !115
  %neg = xor i32 %and, -1, !dbg !115
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 8), align 4, !dbg !115
  %and1 = and i32 %2, %neg, !dbg !115
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 8), align 4, !dbg !115
  br label %sw.epilog, !dbg !116

sw.bb2:                                           ; preds = %entry
  %3 = load i32, i32* %GPIONumber.addr, align 4, !dbg !117
  %neg3 = xor i32 %3, -1, !dbg !117
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 10), align 4, !dbg !117
  %and4 = and i32 %4, %neg3, !dbg !117
  store volatile i32 %and4, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 10), align 4, !dbg !117
  br label %sw.epilog, !dbg !118

sw.bb5:                                           ; preds = %entry
  %5 = load i32, i32* %GPIONumber.addr, align 4, !dbg !119
  %neg6 = xor i32 %5, -1, !dbg !119
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 12), align 4, !dbg !119
  %and7 = and i32 %6, %neg6, !dbg !119
  store volatile i32 %and7, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 12), align 4, !dbg !119
  br label %sw.epilog, !dbg !120

sw.bb8:                                           ; preds = %entry
  %7 = load i32, i32* %GPIONumber.addr, align 4, !dbg !121
  %neg9 = xor i32 %7, -1, !dbg !121
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 14), align 4, !dbg !121
  %and10 = and i32 %8, %neg9, !dbg !121
  store volatile i32 %and10, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 14), align 4, !dbg !121
  br label %sw.epilog, !dbg !122

sw.bb11:                                          ; preds = %entry
  %9 = load i32, i32* %GPIONumber.addr, align 4, !dbg !123
  %neg12 = xor i32 %9, -1, !dbg !123
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 16), align 4, !dbg !123
  %and13 = and i32 %10, %neg12, !dbg !123
  store volatile i32 %and13, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 16), align 4, !dbg !123
  br label %sw.epilog, !dbg !124

sw.bb14:                                          ; preds = %entry
  %11 = load i32, i32* %GPIONumber.addr, align 4, !dbg !125
  %neg15 = xor i32 %11, -1, !dbg !125
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 18), align 4, !dbg !125
  %and16 = and i32 %12, %neg15, !dbg !125
  store volatile i32 %and16, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 18), align 4, !dbg !125
  br label %sw.epilog, !dbg !126

sw.bb17:                                          ; preds = %entry
  %13 = load i32, i32* %GPIONumber.addr, align 4, !dbg !127
  %neg18 = xor i32 %13, -1, !dbg !127
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 20), align 4, !dbg !127
  %and19 = and i32 %14, %neg18, !dbg !127
  store volatile i32 %and19, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 20), align 4, !dbg !127
  br label %sw.epilog, !dbg !128

sw.bb20:                                          ; preds = %entry
  %15 = load i32, i32* %GPIONumber.addr, align 4, !dbg !129
  %and21 = and i32 %15, 11, !dbg !129
  %neg22 = xor i32 %and21, -1, !dbg !129
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 22), align 4, !dbg !129
  %and23 = and i32 %16, %neg22, !dbg !129
  store volatile i32 %and23, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 22), align 4, !dbg !129
  br label %sw.epilog, !dbg !130

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !131
  br label %sw.epilog, !dbg !132

sw.epilog:                                        ; preds = %sw.default, %sw.bb20, %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb2, %sw.bb
  %17 = load i8, i8* %status, align 1, !dbg !133
  ret i8 %17, !dbg !134
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_EnableGPIOPullDown(i32 %GPIO, i32 %GPIONumber) #0 !dbg !135 {
entry:
  %GPIO.addr = alloca i32, align 4
  %GPIONumber.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store i32 %GPIO, i32* %GPIO.addr, align 4
  store i32 %GPIONumber, i32* %GPIONumber.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !136
  %0 = load i32, i32* %GPIO.addr, align 4, !dbg !137
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
    i32 4, label %sw.bb16
    i32 5, label %sw.bb20
    i32 6, label %sw.bb24
    i32 7, label %sw.bb28
  ], !dbg !138

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %GPIONumber.addr, align 4, !dbg !139
  %and = and i32 %1, -40961, !dbg !139
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 9), align 4, !dbg !139
  %or = or i32 %2, %and, !dbg !139
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 9), align 4, !dbg !139
  %3 = load i32, i32* %GPIONumber.addr, align 4, !dbg !140
  %and1 = and i32 %3, -16385, !dbg !140
  %neg = xor i32 %and1, -1, !dbg !140
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 8), align 4, !dbg !140
  %and2 = and i32 %4, %neg, !dbg !140
  store volatile i32 %and2, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 8), align 4, !dbg !140
  br label %sw.epilog, !dbg !141

sw.bb3:                                           ; preds = %entry
  %5 = load i32, i32* %GPIONumber.addr, align 4, !dbg !142
  %and4 = and i32 %5, -17, !dbg !142
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 11), align 4, !dbg !142
  %or5 = or i32 %6, %and4, !dbg !142
  store volatile i32 %or5, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 11), align 4, !dbg !142
  %7 = load i32, i32* %GPIONumber.addr, align 4, !dbg !143
  %neg6 = xor i32 %7, -1, !dbg !143
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 10), align 4, !dbg !143
  %and7 = and i32 %8, %neg6, !dbg !143
  store volatile i32 %and7, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 10), align 4, !dbg !143
  br label %sw.epilog, !dbg !144

sw.bb8:                                           ; preds = %entry
  %9 = load i32, i32* %GPIONumber.addr, align 4, !dbg !145
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 13), align 4, !dbg !145
  %or9 = or i32 %10, %9, !dbg !145
  store volatile i32 %or9, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 13), align 4, !dbg !145
  %11 = load i32, i32* %GPIONumber.addr, align 4, !dbg !146
  %neg10 = xor i32 %11, -1, !dbg !146
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 12), align 4, !dbg !146
  %and11 = and i32 %12, %neg10, !dbg !146
  store volatile i32 %and11, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 12), align 4, !dbg !146
  br label %sw.epilog, !dbg !147

sw.bb12:                                          ; preds = %entry
  %13 = load i32, i32* %GPIONumber.addr, align 4, !dbg !148
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 15), align 4, !dbg !148
  %or13 = or i32 %14, %13, !dbg !148
  store volatile i32 %or13, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 15), align 4, !dbg !148
  %15 = load i32, i32* %GPIONumber.addr, align 4, !dbg !149
  %neg14 = xor i32 %15, -1, !dbg !149
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 14), align 4, !dbg !149
  %and15 = and i32 %16, %neg14, !dbg !149
  store volatile i32 %and15, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 14), align 4, !dbg !149
  br label %sw.epilog, !dbg !150

sw.bb16:                                          ; preds = %entry
  %17 = load i32, i32* %GPIONumber.addr, align 4, !dbg !151
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 17), align 4, !dbg !151
  %or17 = or i32 %18, %17, !dbg !151
  store volatile i32 %or17, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 17), align 4, !dbg !151
  %19 = load i32, i32* %GPIONumber.addr, align 4, !dbg !152
  %neg18 = xor i32 %19, -1, !dbg !152
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 16), align 4, !dbg !152
  %and19 = and i32 %20, %neg18, !dbg !152
  store volatile i32 %and19, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 16), align 4, !dbg !152
  br label %sw.epilog, !dbg !153

sw.bb20:                                          ; preds = %entry
  %21 = load i32, i32* %GPIONumber.addr, align 4, !dbg !154
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 19), align 4, !dbg !154
  %or21 = or i32 %22, %21, !dbg !154
  store volatile i32 %or21, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 19), align 4, !dbg !154
  %23 = load i32, i32* %GPIONumber.addr, align 4, !dbg !155
  %neg22 = xor i32 %23, -1, !dbg !155
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 18), align 4, !dbg !155
  %and23 = and i32 %24, %neg22, !dbg !155
  store volatile i32 %and23, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 18), align 4, !dbg !155
  br label %sw.epilog, !dbg !156

sw.bb24:                                          ; preds = %entry
  %25 = load i32, i32* %GPIONumber.addr, align 4, !dbg !157
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 21), align 4, !dbg !157
  %or25 = or i32 %26, %25, !dbg !157
  store volatile i32 %or25, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 21), align 4, !dbg !157
  %27 = load i32, i32* %GPIONumber.addr, align 4, !dbg !158
  %neg26 = xor i32 %27, -1, !dbg !158
  %28 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 20), align 4, !dbg !158
  %and27 = and i32 %28, %neg26, !dbg !158
  store volatile i32 %and27, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 20), align 4, !dbg !158
  br label %sw.epilog, !dbg !159

sw.bb28:                                          ; preds = %entry
  %29 = load i32, i32* %GPIONumber.addr, align 4, !dbg !160
  %and29 = and i32 %29, 11, !dbg !160
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 23), align 4, !dbg !160
  %or30 = or i32 %30, %and29, !dbg !160
  store volatile i32 %or30, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 23), align 4, !dbg !160
  %31 = load i32, i32* %GPIONumber.addr, align 4, !dbg !161
  %and31 = and i32 %31, 11, !dbg !161
  %neg32 = xor i32 %and31, -1, !dbg !161
  %32 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 22), align 4, !dbg !161
  %and33 = and i32 %32, %neg32, !dbg !161
  store volatile i32 %and33, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 22), align 4, !dbg !161
  br label %sw.epilog, !dbg !162

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !163
  br label %sw.epilog, !dbg !164

sw.epilog:                                        ; preds = %sw.default, %sw.bb28, %sw.bb24, %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb3, %sw.bb
  %33 = load i8, i8* %status, align 1, !dbg !165
  ret i8 %33, !dbg !166
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_DisableGPIOPullDown(i32 %GPIO, i32 %GPIONumber) #0 !dbg !167 {
entry:
  %GPIO.addr = alloca i32, align 4
  %GPIONumber.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store i32 %GPIO, i32* %GPIO.addr, align 4
  store i32 %GPIONumber, i32* %GPIONumber.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !168
  %0 = load i32, i32* %GPIO.addr, align 4, !dbg !169
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb6
    i32 3, label %sw.bb9
    i32 4, label %sw.bb12
    i32 5, label %sw.bb15
    i32 6, label %sw.bb18
    i32 7, label %sw.bb21
  ], !dbg !170

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %GPIONumber.addr, align 4, !dbg !171
  %and = and i32 %1, -40961, !dbg !171
  %neg = xor i32 %and, -1, !dbg !171
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 9), align 4, !dbg !171
  %and1 = and i32 %2, %neg, !dbg !171
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 9), align 4, !dbg !171
  br label %sw.epilog, !dbg !172

sw.bb2:                                           ; preds = %entry
  %3 = load i32, i32* %GPIONumber.addr, align 4, !dbg !173
  %and3 = and i32 %3, -17, !dbg !173
  %neg4 = xor i32 %and3, -1, !dbg !173
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 11), align 4, !dbg !173
  %and5 = and i32 %4, %neg4, !dbg !173
  store volatile i32 %and5, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 11), align 4, !dbg !173
  br label %sw.epilog, !dbg !174

sw.bb6:                                           ; preds = %entry
  %5 = load i32, i32* %GPIONumber.addr, align 4, !dbg !175
  %neg7 = xor i32 %5, -1, !dbg !175
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 13), align 4, !dbg !175
  %and8 = and i32 %6, %neg7, !dbg !175
  store volatile i32 %and8, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 13), align 4, !dbg !175
  br label %sw.epilog, !dbg !176

sw.bb9:                                           ; preds = %entry
  %7 = load i32, i32* %GPIONumber.addr, align 4, !dbg !177
  %neg10 = xor i32 %7, -1, !dbg !177
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 15), align 4, !dbg !177
  %and11 = and i32 %8, %neg10, !dbg !177
  store volatile i32 %and11, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 15), align 4, !dbg !177
  br label %sw.epilog, !dbg !178

sw.bb12:                                          ; preds = %entry
  %9 = load i32, i32* %GPIONumber.addr, align 4, !dbg !179
  %neg13 = xor i32 %9, -1, !dbg !179
  %10 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 17), align 4, !dbg !179
  %and14 = and i32 %10, %neg13, !dbg !179
  store volatile i32 %and14, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 17), align 4, !dbg !179
  br label %sw.epilog, !dbg !180

sw.bb15:                                          ; preds = %entry
  %11 = load i32, i32* %GPIONumber.addr, align 4, !dbg !181
  %neg16 = xor i32 %11, -1, !dbg !181
  %12 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 19), align 4, !dbg !181
  %and17 = and i32 %12, %neg16, !dbg !181
  store volatile i32 %and17, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 19), align 4, !dbg !181
  br label %sw.epilog, !dbg !182

sw.bb18:                                          ; preds = %entry
  %13 = load i32, i32* %GPIONumber.addr, align 4, !dbg !183
  %neg19 = xor i32 %13, -1, !dbg !183
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 21), align 4, !dbg !183
  %and20 = and i32 %14, %neg19, !dbg !183
  store volatile i32 %and20, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 21), align 4, !dbg !183
  br label %sw.epilog, !dbg !184

sw.bb21:                                          ; preds = %entry
  %15 = load i32, i32* %GPIONumber.addr, align 4, !dbg !185
  %and22 = and i32 %15, 11, !dbg !185
  %neg23 = xor i32 %and22, -1, !dbg !185
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 23), align 4, !dbg !185
  %and24 = and i32 %16, %neg23, !dbg !185
  store volatile i32 %and24, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 23), align 4, !dbg !185
  br label %sw.epilog, !dbg !186

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !187
  br label %sw.epilog, !dbg !188

sw.epilog:                                        ; preds = %sw.default, %sw.bb21, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9, %sw.bb6, %sw.bb2, %sw.bb
  %17 = load i8, i8* %status, align 1, !dbg !189
  ret i8 %17, !dbg !190
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnablePullUpPullDownConfig() #0 !dbg !191 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !192
  %or = or i32 %0, 1024, !dbg !192
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !192
  ret void, !dbg !193
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisablePullUpPullDownConfig() #0 !dbg !194 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !195
  %and = and i32 %0, -1025, !dbg !195
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !195
  ret void, !dbg !196
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_ConfigSRAM2ContentRetention(i32 %SRAM2ContentRetention) #0 !dbg !197 {
entry:
  %SRAM2ContentRetention.addr = alloca i32, align 4
  store i32 %SRAM2ContentRetention, i32* %SRAM2ContentRetention.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !198
  %and = and i32 %0, -769, !dbg !198
  %1 = load i32, i32* %SRAM2ContentRetention.addr, align 4, !dbg !198
  %or = or i32 %and, %1, !dbg !198
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !198
  ret i8 0, !dbg !199
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableSRAM2ContentRetention() #0 !dbg !200 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_ConfigSRAM2ContentRetention(i32 256), !dbg !201
  ret void, !dbg !202
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisableSRAM2ContentRetention() #0 !dbg !203 {
entry:
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_ConfigSRAM2ContentRetention(i32 0), !dbg !204
  ret void, !dbg !205
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnablePVM1() #0 !dbg !206 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !207
  %or = or i32 %0, 16, !dbg !207
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !207
  ret void, !dbg !208
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisablePVM1() #0 !dbg !209 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !210
  %and = and i32 %0, -17, !dbg !210
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !210
  ret void, !dbg !211
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnablePVM2() #0 !dbg !212 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !213
  %or = or i32 %0, 32, !dbg !213
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !213
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisablePVM2() #0 !dbg !215 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !216
  %and = and i32 %0, -33, !dbg !216
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !216
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnablePVM3() #0 !dbg !218 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !219
  %or = or i32 %0, 64, !dbg !219
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !219
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisablePVM3() #0 !dbg !221 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !222
  %and = and i32 %0, -65, !dbg !222
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !222
  ret void, !dbg !223
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnablePVM4() #0 !dbg !224 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !225
  %or = or i32 %0, 128, !dbg !225
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !225
  ret void, !dbg !226
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisablePVM4() #0 !dbg !227 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !228
  %and = and i32 %0, -129, !dbg !228
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 1), align 4, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_ConfigPVM(%struct.PWR_PVMTypeDef* %sConfigPVM) #0 !dbg !230 {
entry:
  %sConfigPVM.addr = alloca %struct.PWR_PVMTypeDef*, align 4
  %status = alloca i8, align 1
  store %struct.PWR_PVMTypeDef* %sConfigPVM, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4
  store i8 0, i8* %status, align 1, !dbg !231
  %0 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !232
  %PVMType = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %0, i32 0, i32 0, !dbg !233
  %1 = load i32, i32* %PVMType, align 4, !dbg !233
  switch i32 %1, label %sw.default [
    i32 16, label %sw.bb
    i32 32, label %sw.bb23
    i32 64, label %sw.bb52
    i32 128, label %sw.bb81
  ], !dbg !234

sw.bb:                                            ; preds = %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !235
  %and = and i32 %2, -9, !dbg !235
  store volatile i32 %and, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !235
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !236
  %and1 = and i32 %3, -9, !dbg !236
  store volatile i32 %and1, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !236
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !237
  %and2 = and i32 %4, -9, !dbg !237
  store volatile i32 %and2, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !237
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !238
  %and3 = and i32 %5, -9, !dbg !238
  store volatile i32 %and3, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !238
  %6 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !239
  %Mode = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %6, i32 0, i32 1, !dbg !240
  %7 = load i32, i32* %Mode, align 4, !dbg !240
  %and4 = and i32 %7, 65536, !dbg !241
  %cmp = icmp eq i32 %and4, 65536, !dbg !242
  br i1 %cmp, label %if.then, label %if.end, !dbg !243

if.then:                                          ; preds = %sw.bb
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !244
  %or = or i32 %8, 8, !dbg !244
  store volatile i32 %or, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !244
  br label %if.end, !dbg !245

if.end:                                           ; preds = %if.then, %sw.bb
  %9 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !246
  %Mode5 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %9, i32 0, i32 1, !dbg !247
  %10 = load i32, i32* %Mode5, align 4, !dbg !247
  %and6 = and i32 %10, 131072, !dbg !248
  %cmp7 = icmp eq i32 %and6, 131072, !dbg !249
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !250

if.then8:                                         ; preds = %if.end
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !251
  %or9 = or i32 %11, 8, !dbg !251
  store volatile i32 %or9, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !251
  br label %if.end10, !dbg !252

if.end10:                                         ; preds = %if.then8, %if.end
  %12 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !253
  %Mode11 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %12, i32 0, i32 1, !dbg !254
  %13 = load i32, i32* %Mode11, align 4, !dbg !254
  %and12 = and i32 %13, 1, !dbg !255
  %cmp13 = icmp eq i32 %and12, 1, !dbg !256
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !257

if.then14:                                        ; preds = %if.end10
  %14 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !258
  %or15 = or i32 %14, 8, !dbg !258
  store volatile i32 %or15, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !258
  br label %if.end16, !dbg !259

if.end16:                                         ; preds = %if.then14, %if.end10
  %15 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !260
  %Mode17 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %15, i32 0, i32 1, !dbg !261
  %16 = load i32, i32* %Mode17, align 4, !dbg !261
  %and18 = and i32 %16, 2, !dbg !262
  %cmp19 = icmp eq i32 %and18, 2, !dbg !263
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !264

if.then20:                                        ; preds = %if.end16
  %17 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !265
  %or21 = or i32 %17, 8, !dbg !265
  store volatile i32 %or21, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !265
  br label %if.end22, !dbg !266

if.end22:                                         ; preds = %if.then20, %if.end16
  br label %sw.epilog, !dbg !267

sw.bb23:                                          ; preds = %entry
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !268
  %and24 = and i32 %18, -17, !dbg !268
  store volatile i32 %and24, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !268
  %19 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !269
  %and25 = and i32 %19, -17, !dbg !269
  store volatile i32 %and25, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !269
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !270
  %and26 = and i32 %20, -17, !dbg !270
  store volatile i32 %and26, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !270
  %21 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !271
  %and27 = and i32 %21, -17, !dbg !271
  store volatile i32 %and27, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !271
  %22 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !272
  %Mode28 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %22, i32 0, i32 1, !dbg !273
  %23 = load i32, i32* %Mode28, align 4, !dbg !273
  %and29 = and i32 %23, 65536, !dbg !274
  %cmp30 = icmp eq i32 %and29, 65536, !dbg !275
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !276

if.then31:                                        ; preds = %sw.bb23
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !277
  %or32 = or i32 %24, 16, !dbg !277
  store volatile i32 %or32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !277
  br label %if.end33, !dbg !278

if.end33:                                         ; preds = %if.then31, %sw.bb23
  %25 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !279
  %Mode34 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %25, i32 0, i32 1, !dbg !280
  %26 = load i32, i32* %Mode34, align 4, !dbg !280
  %and35 = and i32 %26, 131072, !dbg !281
  %cmp36 = icmp eq i32 %and35, 131072, !dbg !282
  br i1 %cmp36, label %if.then37, label %if.end39, !dbg !283

if.then37:                                        ; preds = %if.end33
  %27 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !284
  %or38 = or i32 %27, 16, !dbg !284
  store volatile i32 %or38, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !284
  br label %if.end39, !dbg !285

if.end39:                                         ; preds = %if.then37, %if.end33
  %28 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !286
  %Mode40 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %28, i32 0, i32 1, !dbg !287
  %29 = load i32, i32* %Mode40, align 4, !dbg !287
  %and41 = and i32 %29, 1, !dbg !288
  %cmp42 = icmp eq i32 %and41, 1, !dbg !289
  br i1 %cmp42, label %if.then43, label %if.end45, !dbg !290

if.then43:                                        ; preds = %if.end39
  %30 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !291
  %or44 = or i32 %30, 16, !dbg !291
  store volatile i32 %or44, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !291
  br label %if.end45, !dbg !292

if.end45:                                         ; preds = %if.then43, %if.end39
  %31 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !293
  %Mode46 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %31, i32 0, i32 1, !dbg !294
  %32 = load i32, i32* %Mode46, align 4, !dbg !294
  %and47 = and i32 %32, 2, !dbg !295
  %cmp48 = icmp eq i32 %and47, 2, !dbg !296
  br i1 %cmp48, label %if.then49, label %if.end51, !dbg !297

if.then49:                                        ; preds = %if.end45
  %33 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !298
  %or50 = or i32 %33, 16, !dbg !298
  store volatile i32 %or50, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !298
  br label %if.end51, !dbg !299

if.end51:                                         ; preds = %if.then49, %if.end45
  br label %sw.epilog, !dbg !300

sw.bb52:                                          ; preds = %entry
  %34 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !301
  %and53 = and i32 %34, -33, !dbg !301
  store volatile i32 %and53, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !301
  %35 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !302
  %and54 = and i32 %35, -33, !dbg !302
  store volatile i32 %and54, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !302
  %36 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !303
  %and55 = and i32 %36, -33, !dbg !303
  store volatile i32 %and55, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !303
  %37 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !304
  %and56 = and i32 %37, -33, !dbg !304
  store volatile i32 %and56, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !304
  %38 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !305
  %Mode57 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %38, i32 0, i32 1, !dbg !306
  %39 = load i32, i32* %Mode57, align 4, !dbg !306
  %and58 = and i32 %39, 65536, !dbg !307
  %cmp59 = icmp eq i32 %and58, 65536, !dbg !308
  br i1 %cmp59, label %if.then60, label %if.end62, !dbg !309

if.then60:                                        ; preds = %sw.bb52
  %40 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !310
  %or61 = or i32 %40, 32, !dbg !310
  store volatile i32 %or61, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !310
  br label %if.end62, !dbg !311

if.end62:                                         ; preds = %if.then60, %sw.bb52
  %41 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !312
  %Mode63 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %41, i32 0, i32 1, !dbg !313
  %42 = load i32, i32* %Mode63, align 4, !dbg !313
  %and64 = and i32 %42, 131072, !dbg !314
  %cmp65 = icmp eq i32 %and64, 131072, !dbg !315
  br i1 %cmp65, label %if.then66, label %if.end68, !dbg !316

if.then66:                                        ; preds = %if.end62
  %43 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !317
  %or67 = or i32 %43, 32, !dbg !317
  store volatile i32 %or67, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !317
  br label %if.end68, !dbg !318

if.end68:                                         ; preds = %if.then66, %if.end62
  %44 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !319
  %Mode69 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %44, i32 0, i32 1, !dbg !320
  %45 = load i32, i32* %Mode69, align 4, !dbg !320
  %and70 = and i32 %45, 1, !dbg !321
  %cmp71 = icmp eq i32 %and70, 1, !dbg !322
  br i1 %cmp71, label %if.then72, label %if.end74, !dbg !323

if.then72:                                        ; preds = %if.end68
  %46 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !324
  %or73 = or i32 %46, 32, !dbg !324
  store volatile i32 %or73, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !324
  br label %if.end74, !dbg !325

if.end74:                                         ; preds = %if.then72, %if.end68
  %47 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !326
  %Mode75 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %47, i32 0, i32 1, !dbg !327
  %48 = load i32, i32* %Mode75, align 4, !dbg !327
  %and76 = and i32 %48, 2, !dbg !328
  %cmp77 = icmp eq i32 %and76, 2, !dbg !329
  br i1 %cmp77, label %if.then78, label %if.end80, !dbg !330

if.then78:                                        ; preds = %if.end74
  %49 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !331
  %or79 = or i32 %49, 32, !dbg !331
  store volatile i32 %or79, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !331
  br label %if.end80, !dbg !332

if.end80:                                         ; preds = %if.then78, %if.end74
  br label %sw.epilog, !dbg !333

sw.bb81:                                          ; preds = %entry
  %50 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !334
  %and82 = and i32 %50, -65, !dbg !334
  store volatile i32 %and82, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !334
  %51 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !335
  %and83 = and i32 %51, -65, !dbg !335
  store volatile i32 %and83, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !335
  %52 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !336
  %and84 = and i32 %52, -65, !dbg !336
  store volatile i32 %and84, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !336
  %53 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !337
  %and85 = and i32 %53, -65, !dbg !337
  store volatile i32 %and85, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !337
  %54 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !338
  %Mode86 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %54, i32 0, i32 1, !dbg !339
  %55 = load i32, i32* %Mode86, align 4, !dbg !339
  %and87 = and i32 %55, 65536, !dbg !340
  %cmp88 = icmp eq i32 %and87, 65536, !dbg !341
  br i1 %cmp88, label %if.then89, label %if.end91, !dbg !342

if.then89:                                        ; preds = %sw.bb81
  %56 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !343
  %or90 = or i32 %56, 64, !dbg !343
  store volatile i32 %or90, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 22), align 4, !dbg !343
  br label %if.end91, !dbg !344

if.end91:                                         ; preds = %if.then89, %sw.bb81
  %57 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !345
  %Mode92 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %57, i32 0, i32 1, !dbg !346
  %58 = load i32, i32* %Mode92, align 4, !dbg !346
  %and93 = and i32 %58, 131072, !dbg !347
  %cmp94 = icmp eq i32 %and93, 131072, !dbg !348
  br i1 %cmp94, label %if.then95, label %if.end97, !dbg !349

if.then95:                                        ; preds = %if.end91
  %59 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !350
  %or96 = or i32 %59, 64, !dbg !350
  store volatile i32 %or96, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 23), align 4, !dbg !350
  br label %if.end97, !dbg !351

if.end97:                                         ; preds = %if.then95, %if.end91
  %60 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !352
  %Mode98 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %60, i32 0, i32 1, !dbg !353
  %61 = load i32, i32* %Mode98, align 4, !dbg !353
  %and99 = and i32 %61, 1, !dbg !354
  %cmp100 = icmp eq i32 %and99, 1, !dbg !355
  br i1 %cmp100, label %if.then101, label %if.end103, !dbg !356

if.then101:                                       ; preds = %if.end97
  %62 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !357
  %or102 = or i32 %62, 64, !dbg !357
  store volatile i32 %or102, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 8), align 4, !dbg !357
  br label %if.end103, !dbg !358

if.end103:                                        ; preds = %if.then101, %if.end97
  %63 = load %struct.PWR_PVMTypeDef*, %struct.PWR_PVMTypeDef** %sConfigPVM.addr, align 4, !dbg !359
  %Mode104 = getelementptr inbounds %struct.PWR_PVMTypeDef, %struct.PWR_PVMTypeDef* %63, i32 0, i32 1, !dbg !360
  %64 = load i32, i32* %Mode104, align 4, !dbg !360
  %and105 = and i32 %64, 2, !dbg !361
  %cmp106 = icmp eq i32 %and105, 2, !dbg !362
  br i1 %cmp106, label %if.then107, label %if.end109, !dbg !363

if.then107:                                       ; preds = %if.end103
  %65 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !364
  %or108 = or i32 %65, 64, !dbg !364
  store volatile i32 %or108, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 9), align 4, !dbg !364
  br label %if.end109, !dbg !365

if.end109:                                        ; preds = %if.then107, %if.end103
  br label %sw.epilog, !dbg !366

sw.default:                                       ; preds = %entry
  store i8 1, i8* %status, align 1, !dbg !367
  br label %sw.epilog, !dbg !368

sw.epilog:                                        ; preds = %sw.default, %if.end109, %if.end80, %if.end51, %if.end22
  %66 = load i8, i8* %status, align 1, !dbg !369
  ret i8 %66, !dbg !370
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableLowPowerRunMode() #0 !dbg !371 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !372
  %or = or i32 %0, 16384, !dbg !372
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_DisableLowPowerRunMode() #0 !dbg !374 {
entry:
  %retval = alloca i8, align 1
  %wait_loop_index = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !375
  %and = and i32 %0, -16385, !dbg !375
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !375
  %1 = load i32, i32* @SystemCoreClock, align 4, !dbg !376
  %div = udiv i32 %1, 100000, !dbg !377
  %mul = mul i32 300, %div, !dbg !378
  %div1 = udiv i32 %mul, 10, !dbg !379
  %add = add i32 %div1, 1, !dbg !380
  store i32 %add, i32* %wait_loop_index, align 4, !dbg !381
  br label %while.cond, !dbg !382

while.cond:                                       ; preds = %while.body, %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 5), align 4, !dbg !383
  %and2 = and i32 %2, 512, !dbg !383
  %cmp = icmp eq i32 %and2, 512, !dbg !383
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !384

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %wait_loop_index, align 4, !dbg !385
  %cmp3 = icmp ne i32 %3, 0, !dbg !386
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !387
  br i1 %4, label %while.body, label %while.end, !dbg !382

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %wait_loop_index, align 4, !dbg !388
  %dec = add i32 %5, -1, !dbg !388
  store i32 %dec, i32* %wait_loop_index, align 4, !dbg !388
  br label %while.cond, !dbg !382, !llvm.loop !389

while.end:                                        ; preds = %land.end
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 5), align 4, !dbg !391
  %and4 = and i32 %6, 512, !dbg !391
  %cmp5 = icmp eq i32 %and4, 512, !dbg !391
  br i1 %cmp5, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %while.end
  store i8 3, i8* %retval, align 1, !dbg !392
  br label %return, !dbg !392

if.end:                                           ; preds = %while.end
  store i8 0, i8* %retval, align 1, !dbg !393
  br label %return, !dbg !393

return:                                           ; preds = %if.end, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !394
  ret i8 %7, !dbg !394
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnterSTOP0Mode(i8 zeroext %STOPEntry) #0 !dbg !395 {
entry:
  %STOPEntry.addr = alloca i8, align 1
  store i8 %STOPEntry, i8* %STOPEntry.addr, align 1
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !396
  %and = and i32 %0, -8, !dbg !396
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !396
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !397
  %or = or i32 %1, 4, !dbg !397
  store volatile i32 %or, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !397
  %2 = load i8, i8* %STOPEntry.addr, align 1, !dbg !398
  %conv = zext i8 %2 to i32, !dbg !398
  %cmp = icmp eq i32 %conv, 1, !dbg !399
  br i1 %cmp, label %if.then, label %if.else, !dbg !398

if.then:                                          ; preds = %entry
  call void asm sideeffect "wfi", ""() #2, !dbg !400, !srcloc !401
  br label %if.end, !dbg !402

if.else:                                          ; preds = %entry
  call void asm sideeffect "sev", ""() #2, !dbg !403, !srcloc !404
  call void asm sideeffect "wfe", ""() #2, !dbg !405, !srcloc !406
  call void asm sideeffect "wfe", ""() #2, !dbg !407, !srcloc !408
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !409
  %and2 = and i32 %3, -5, !dbg !409
  store volatile i32 %and2, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnterSTOP1Mode(i8 zeroext %STOPEntry) #0 !dbg !411 {
entry:
  %STOPEntry.addr = alloca i8, align 1
  store i8 %STOPEntry, i8* %STOPEntry.addr, align 1
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !412
  %and = and i32 %0, -8, !dbg !412
  %or = or i32 %and, 1, !dbg !412
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !412
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !413
  %or1 = or i32 %1, 4, !dbg !413
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !413
  %2 = load i8, i8* %STOPEntry.addr, align 1, !dbg !414
  %conv = zext i8 %2 to i32, !dbg !414
  %cmp = icmp eq i32 %conv, 1, !dbg !415
  br i1 %cmp, label %if.then, label %if.else, !dbg !414

if.then:                                          ; preds = %entry
  call void asm sideeffect "wfi", ""() #2, !dbg !416, !srcloc !417
  br label %if.end, !dbg !418

if.else:                                          ; preds = %entry
  call void asm sideeffect "sev", ""() #2, !dbg !419, !srcloc !420
  call void asm sideeffect "wfe", ""() #2, !dbg !421, !srcloc !422
  call void asm sideeffect "wfe", ""() #2, !dbg !423, !srcloc !424
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !425
  %and3 = and i32 %3, -5, !dbg !425
  store volatile i32 %and3, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnterSTOP2Mode(i8 zeroext %STOPEntry) #0 !dbg !427 {
entry:
  %STOPEntry.addr = alloca i8, align 1
  store i8 %STOPEntry, i8* %STOPEntry.addr, align 1
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !428
  %and = and i32 %0, -8, !dbg !428
  %or = or i32 %and, 2, !dbg !428
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !428
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !429
  %or1 = or i32 %1, 4, !dbg !429
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !429
  %2 = load i8, i8* %STOPEntry.addr, align 1, !dbg !430
  %conv = zext i8 %2 to i32, !dbg !430
  %cmp = icmp eq i32 %conv, 1, !dbg !431
  br i1 %cmp, label %if.then, label %if.else, !dbg !430

if.then:                                          ; preds = %entry
  call void asm sideeffect "wfi", ""() #2, !dbg !432, !srcloc !433
  br label %if.end, !dbg !434

if.else:                                          ; preds = %entry
  call void asm sideeffect "sev", ""() #2, !dbg !435, !srcloc !436
  call void asm sideeffect "wfe", ""() #2, !dbg !437, !srcloc !438
  call void asm sideeffect "wfe", ""() #2, !dbg !439, !srcloc !440
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !441
  %and3 = and i32 %3, -5, !dbg !441
  store volatile i32 %and3, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !441
  ret void, !dbg !442
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnterSHUTDOWNMode() #0 !dbg !443 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !444
  %and = and i32 %0, -8, !dbg !444
  %or = or i32 %and, 4, !dbg !444
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 0), align 4, !dbg !444
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !445
  %or1 = or i32 %1, 4, !dbg !445
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.SCB_Type, %struct.SCB_Type* inttoptr (i32 -536810240 to %struct.SCB_Type*), i32 0, i32 4), align 4, !dbg !445
  call void asm sideeffect "wfi", ""() #2, !dbg !446, !srcloc !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_PVD_PVM_IRQHandler() #0 !dbg !449 {
entry:
  %rising_flag = alloca i32, align 4
  %falling_flag = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 3), align 4, !dbg !450
  store i32 %0, i32* %rising_flag, align 4, !dbg !451
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 4), align 4, !dbg !452
  store i32 %1, i32* %falling_flag, align 4, !dbg !453
  %2 = load i32, i32* %rising_flag, align 4, !dbg !454
  %3 = load i32, i32* %falling_flag, align 4, !dbg !455
  %or = or i32 %2, %3, !dbg !456
  %and = and i32 %or, 65536, !dbg !457
  %cmp = icmp ne i32 %and, 0, !dbg !458
  br i1 %cmp, label %if.then, label %if.end, !dbg !459

if.then:                                          ; preds = %entry
  call arm_aapcs_vfpcc void @HAL_PWR_PVDCallback(), !dbg !460
  store volatile i32 65536, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 3), align 4, !dbg !461
  store volatile i32 65536, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 4), align 4, !dbg !462
  br label %if.end, !dbg !463

if.end:                                           ; preds = %if.then, %entry
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 11), align 4, !dbg !464
  store i32 %4, i32* %rising_flag, align 4, !dbg !465
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 12), align 4, !dbg !466
  store i32 %5, i32* %falling_flag, align 4, !dbg !467
  %6 = load i32, i32* %rising_flag, align 4, !dbg !468
  %7 = load i32, i32* %falling_flag, align 4, !dbg !469
  %or1 = or i32 %6, %7, !dbg !470
  %and2 = and i32 %or1, 8, !dbg !471
  %cmp3 = icmp ne i32 %and2, 0, !dbg !472
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !473

if.then4:                                         ; preds = %if.end
  call arm_aapcs_vfpcc void @HAL_PWREx_PVM1Callback(), !dbg !474
  store volatile i32 8, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 11), align 4, !dbg !475
  store volatile i32 8, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 12), align 4, !dbg !476
  br label %if.end5, !dbg !477

if.end5:                                          ; preds = %if.then4, %if.end
  %8 = load i32, i32* %rising_flag, align 4, !dbg !478
  %9 = load i32, i32* %falling_flag, align 4, !dbg !479
  %or6 = or i32 %8, %9, !dbg !480
  %and7 = and i32 %or6, 16, !dbg !481
  %cmp8 = icmp ne i32 %and7, 0, !dbg !482
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !483

if.then9:                                         ; preds = %if.end5
  call arm_aapcs_vfpcc void @HAL_PWREx_PVM2Callback(), !dbg !484
  store volatile i32 16, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 11), align 4, !dbg !485
  store volatile i32 16, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 12), align 4, !dbg !486
  br label %if.end10, !dbg !487

if.end10:                                         ; preds = %if.then9, %if.end5
  %10 = load i32, i32* %rising_flag, align 4, !dbg !488
  %11 = load i32, i32* %falling_flag, align 4, !dbg !489
  %or11 = or i32 %10, %11, !dbg !490
  %and12 = and i32 %or11, 32, !dbg !491
  %cmp13 = icmp ne i32 %and12, 0, !dbg !492
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !493

if.then14:                                        ; preds = %if.end10
  call arm_aapcs_vfpcc void @HAL_PWREx_PVM3Callback(), !dbg !494
  store volatile i32 32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 11), align 4, !dbg !495
  store volatile i32 32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 12), align 4, !dbg !496
  br label %if.end15, !dbg !497

if.end15:                                         ; preds = %if.then14, %if.end10
  %12 = load i32, i32* %rising_flag, align 4, !dbg !498
  %13 = load i32, i32* %falling_flag, align 4, !dbg !499
  %or16 = or i32 %12, %13, !dbg !500
  %and17 = and i32 %or16, 64, !dbg !501
  %cmp18 = icmp ne i32 %and17, 0, !dbg !502
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !503

if.then19:                                        ; preds = %if.end15
  call arm_aapcs_vfpcc void @HAL_PWREx_PVM4Callback(), !dbg !504
  store volatile i32 64, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 11), align 4, !dbg !505
  store volatile i32 64, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 12), align 4, !dbg !506
  br label %if.end20, !dbg !507

if.end20:                                         ; preds = %if.then19, %if.end15
  ret void, !dbg !508
}

declare dso_local arm_aapcs_vfpcc void @HAL_PWR_PVDCallback() #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_PWREx_PVM1Callback() #0 !dbg !509 {
entry:
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_PWREx_PVM2Callback() #0 !dbg !511 {
entry:
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_PWREx_PVM3Callback() #0 !dbg !513 {
entry:
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_PWREx_PVM4Callback() #0 !dbg !515 {
entry:
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableUCPDStandbyMode() #0 !dbg !517 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !518
  %or = or i32 %0, 8192, !dbg !518
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisableUCPDStandbyMode() #0 !dbg !520 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !521
  %and = and i32 %0, -8193, !dbg !521
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableUCPDDeadBattery() #0 !dbg !523 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !524
  %and = and i32 %0, -16385, !dbg !524
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !524
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisableUCPDDeadBattery() #0 !dbg !526 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !527
  %or = or i32 %0, 16384, !dbg !527
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_EnableUltraLowPowerMode() #0 !dbg !529 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !530
  %or = or i32 %0, 2048, !dbg !530
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !530
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_DisableUltraLowPowerMode() #0 !dbg !532 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !533
  %and = and i32 %0, -2049, !dbg !533
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 2), align 4, !dbg !533
  ret void, !dbg !534
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_PWREx_SMPS_SetMode(i32 %OperatingMode) #0 !dbg !535 {
entry:
  %retval = alloca i8, align 1
  %OperatingMode.addr = alloca i32, align 4
  %status = alloca i8, align 1
  %pwr_sr1 = alloca i32, align 4
  %wait_loop_index = alloca i32, align 4
  store i32 %OperatingMode, i32* %OperatingMode.addr, align 4
  %0 = load i32, i32* %OperatingMode.addr, align 4, !dbg !536
  %cmp = icmp eq i32 %0, 0, !dbg !537
  br i1 %cmp, label %if.then, label %if.else, !dbg !536

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !538
  %and = and i32 %1, -36865, !dbg !538
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !538
  br label %if.end14, !dbg !539

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %OperatingMode.addr, align 4, !dbg !540
  %cmp1 = icmp eq i32 %2, 32768, !dbg !541
  br i1 %cmp1, label %if.then2, label %if.else12, !dbg !540

if.then2:                                         ; preds = %if.else
  %call = call arm_aapcs_vfpcc i32 @HAL_PWREx_GetVoltageRange(), !dbg !542
  %cmp3 = icmp ne i32 %call, 1024, !dbg !543
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !542

if.then4:                                         ; preds = %if.then2
  store i8 1, i8* %retval, align 1, !dbg !544
  br label %return, !dbg !544

if.else5:                                         ; preds = %if.then2
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 4), align 4, !dbg !545
  store i32 %3, i32* %pwr_sr1, align 4, !dbg !546
  %4 = load i32, i32* %pwr_sr1, align 4, !dbg !547
  %and6 = and i32 %4, 36864, !dbg !547
  %cmp7 = icmp eq i32 %and6, 0, !dbg !548
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !547

if.then8:                                         ; preds = %if.else5
  br label %if.end, !dbg !549

if.else9:                                         ; preds = %if.else5
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !550
  %and10 = and i32 %5, -36865, !dbg !550
  %or = or i32 %and10, 32768, !dbg !550
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !550
  br label %if.end

if.end:                                           ; preds = %if.else9, %if.then8
  br label %if.end11

if.end11:                                         ; preds = %if.end
  br label %if.end13, !dbg !551

if.else12:                                        ; preds = %if.else
  call arm_aapcs_vfpcc void @HAL_PWREx_SMPS_EnableBypassMode(), !dbg !552
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end11
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then
  %6 = load i32, i32* @SystemCoreClock, align 4, !dbg !553
  %div = udiv i32 %6, 100000, !dbg !554
  %mul = mul i32 1000, %div, !dbg !555
  %div15 = udiv i32 %mul, 10, !dbg !556
  %add = add i32 %div15, 1, !dbg !557
  store i32 %add, i32* %wait_loop_index, align 4, !dbg !558
  br label %while.cond, !dbg !559

while.cond:                                       ; preds = %while.body, %if.end14
  %call16 = call arm_aapcs_vfpcc i32 @HAL_PWREx_SMPS_GetEffectiveMode(), !dbg !560
  %7 = load i32, i32* %OperatingMode.addr, align 4, !dbg !561
  %cmp17 = icmp ne i32 %call16, %7, !dbg !562
  br i1 %cmp17, label %land.rhs, label %land.end, !dbg !563

land.rhs:                                         ; preds = %while.cond
  %8 = load i32, i32* %wait_loop_index, align 4, !dbg !564
  %cmp18 = icmp ne i32 %8, 0, !dbg !565
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp18, %land.rhs ], !dbg !566
  br i1 %9, label %while.body, label %while.end, !dbg !559

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %wait_loop_index, align 4, !dbg !567
  %dec = add i32 %10, -1, !dbg !567
  store i32 %dec, i32* %wait_loop_index, align 4, !dbg !567
  br label %while.cond, !dbg !559, !llvm.loop !568

while.end:                                        ; preds = %land.end
  %call19 = call arm_aapcs_vfpcc i32 @HAL_PWREx_SMPS_GetEffectiveMode(), !dbg !570
  %11 = load i32, i32* %OperatingMode.addr, align 4, !dbg !571
  %cmp20 = icmp eq i32 %call19, %11, !dbg !572
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !570

if.then21:                                        ; preds = %while.end
  store i8 0, i8* %status, align 1, !dbg !573
  br label %if.end23, !dbg !574

if.else22:                                        ; preds = %while.end
  store i8 3, i8* %status, align 1, !dbg !575
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  %12 = load i8, i8* %status, align 1, !dbg !576
  store i8 %12, i8* %retval, align 1, !dbg !577
  br label %return, !dbg !577

return:                                           ; preds = %if.end23, %if.then4
  %13 = load i8, i8* %retval, align 1, !dbg !578
  ret i8 %13, !dbg !578
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_SMPS_EnableBypassMode() #0 !dbg !579 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !580
  %or = or i32 %0, 4096, !dbg !580
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !580
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_SMPS_EnableFastStart() #0 !dbg !582 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !583
  %or = or i32 %0, 16384, !dbg !583
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_SMPS_DisableFastStart() #0 !dbg !585 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !586
  %and = and i32 %0, -16385, !dbg !586
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !586
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_SMPS_DisableBypassMode() #0 !dbg !588 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !589
  %and = and i32 %0, -4097, !dbg !589
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !589
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_SMPS_EnableExternal() #0 !dbg !591 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !592
  %or = or i32 %0, 8192, !dbg !592
  store volatile i32 %or, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !592
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_PWREx_SMPS_DisableExternal() #0 !dbg !594 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !595
  %and = and i32 %0, -8193, !dbg !595
  store volatile i32 %and, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 3), align 4, !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_PWREx_SMPS_GetMainRegulatorExtSMPSReadyStatus() #0 !dbg !597 {
entry:
  %main_regulator_status = alloca i32, align 4
  %pwr_sr1 = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.PWR_TypeDef, %struct.PWR_TypeDef* inttoptr (i32 1073770496 to %struct.PWR_TypeDef*), i32 0, i32 4), align 4, !dbg !598
  store i32 %0, i32* %pwr_sr1, align 4, !dbg !599
  %1 = load i32, i32* %pwr_sr1, align 4, !dbg !600
  %and = and i32 %1, 8192, !dbg !600
  %cmp = icmp ne i32 %and, 0, !dbg !601
  br i1 %cmp, label %if.then, label %if.else, !dbg !600

if.then:                                          ; preds = %entry
  store i32 8192, i32* %main_regulator_status, align 4, !dbg !602
  br label %if.end, !dbg !603

if.else:                                          ; preds = %entry
  store i32 0, i32* %main_regulator_status, align 4, !dbg !604
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %main_regulator_status, align 4, !dbg !605
  ret i32 %2, !dbg !606
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_pwr_ex.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_PWREx_GetVoltageRange", scope: !1, file: !1, line: 103, type: !9, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 105, column: 16, scope: !8)
!11 = !DILocation(line: 105, column: 20, scope: !8)
!12 = !DILocation(line: 105, column: 3, scope: !8)
!13 = distinct !DISubprogram(name: "HAL_PWREx_ControlVoltageScaling", scope: !1, file: !1, line: 133, type: !9, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!14 = !DILocation(line: 139, column: 22, scope: !13)
!15 = !DILocation(line: 139, column: 12, scope: !13)
!16 = !DILocation(line: 143, column: 7, scope: !13)
!17 = !DILocation(line: 143, column: 41, scope: !13)
!18 = !DILocation(line: 145, column: 5, scope: !13)
!19 = !DILocation(line: 147, column: 7, scope: !13)
!20 = !DILocation(line: 147, column: 44, scope: !13)
!21 = !DILocation(line: 149, column: 5, scope: !13)
!22 = !DILocation(line: 153, column: 7, scope: !13)
!23 = !DILocation(line: 153, column: 18, scope: !13)
!24 = !DILocation(line: 153, column: 15, scope: !13)
!25 = !DILocation(line: 155, column: 5, scope: !13)
!26 = !DILocation(line: 158, column: 3, scope: !13)
!27 = !DILocation(line: 162, column: 55, scope: !13)
!28 = !DILocation(line: 162, column: 71, scope: !13)
!29 = !DILocation(line: 162, column: 52, scope: !13)
!30 = !DILocation(line: 162, column: 83, scope: !13)
!31 = !DILocation(line: 162, column: 90, scope: !13)
!32 = !DILocation(line: 162, column: 19, scope: !13)
!33 = !DILocation(line: 164, column: 3, scope: !13)
!34 = !DILocation(line: 164, column: 11, scope: !13)
!35 = !DILocation(line: 164, column: 51, scope: !13)
!36 = !DILocation(line: 164, column: 55, scope: !13)
!37 = !DILocation(line: 164, column: 71, scope: !13)
!38 = !DILocation(line: 0, scope: !13)
!39 = !DILocation(line: 166, column: 20, scope: !13)
!40 = distinct !{!40, !33, !41}
!41 = !DILocation(line: 167, column: 3, scope: !13)
!42 = !DILocation(line: 169, column: 7, scope: !13)
!43 = !DILocation(line: 171, column: 5, scope: !13)
!44 = !DILocation(line: 174, column: 3, scope: !13)
!45 = !DILocation(line: 175, column: 1, scope: !13)
!46 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_GetEffectiveMode", scope: !1, file: !1, line: 1349, type: !9, scopeLine: 1350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DILocation(line: 1354, column: 13, scope: !46)
!48 = !DILocation(line: 1354, column: 11, scope: !46)
!49 = !DILocation(line: 1355, column: 7, scope: !46)
!50 = !DILocation(line: 1355, column: 45, scope: !46)
!51 = !DILocation(line: 1357, column: 10, scope: !46)
!52 = !DILocation(line: 1358, column: 3, scope: !46)
!53 = !DILocation(line: 1359, column: 12, scope: !46)
!54 = !DILocation(line: 1359, column: 49, scope: !46)
!55 = !DILocation(line: 1361, column: 10, scope: !46)
!56 = !DILocation(line: 1362, column: 3, scope: !46)
!57 = !DILocation(line: 1365, column: 10, scope: !46)
!58 = !DILocation(line: 1368, column: 10, scope: !46)
!59 = !DILocation(line: 1368, column: 3, scope: !46)
!60 = distinct !DISubprogram(name: "HAL_PWREx_EnableBatteryCharging", scope: !1, file: !1, line: 186, type: !9, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DILocation(line: 191, column: 3, scope: !60)
!62 = !DILocation(line: 194, column: 3, scope: !60)
!63 = !DILocation(line: 195, column: 1, scope: !60)
!64 = distinct !DISubprogram(name: "HAL_PWREx_DisableBatteryCharging", scope: !1, file: !1, line: 202, type: !9, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DILocation(line: 204, column: 3, scope: !64)
!66 = !DILocation(line: 205, column: 1, scope: !64)
!67 = distinct !DISubprogram(name: "HAL_PWREx_EnableVddUSB", scope: !1, file: !1, line: 214, type: !9, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!68 = !DILocation(line: 216, column: 3, scope: !67)
!69 = !DILocation(line: 217, column: 1, scope: !67)
!70 = distinct !DISubprogram(name: "HAL_PWREx_DisableVddUSB", scope: !1, file: !1, line: 224, type: !9, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DILocation(line: 226, column: 3, scope: !70)
!72 = !DILocation(line: 227, column: 1, scope: !70)
!73 = distinct !DISubprogram(name: "HAL_PWREx_EnableVddIO2", scope: !1, file: !1, line: 235, type: !9, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!74 = !DILocation(line: 237, column: 3, scope: !73)
!75 = !DILocation(line: 238, column: 1, scope: !73)
!76 = distinct !DISubprogram(name: "HAL_PWREx_DisableVddIO2", scope: !1, file: !1, line: 244, type: !9, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!77 = !DILocation(line: 246, column: 3, scope: !76)
!78 = !DILocation(line: 247, column: 1, scope: !76)
!79 = distinct !DISubprogram(name: "HAL_PWREx_EnableGPIOPullUp", scope: !1, file: !1, line: 270, type: !9, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!80 = !DILocation(line: 272, column: 21, scope: !79)
!81 = !DILocation(line: 277, column: 11, scope: !79)
!82 = !DILocation(line: 277, column: 3, scope: !79)
!83 = !DILocation(line: 280, column: 7, scope: !79)
!84 = !DILocation(line: 281, column: 7, scope: !79)
!85 = !DILocation(line: 282, column: 7, scope: !79)
!86 = !DILocation(line: 284, column: 7, scope: !79)
!87 = !DILocation(line: 285, column: 7, scope: !79)
!88 = !DILocation(line: 286, column: 7, scope: !79)
!89 = !DILocation(line: 288, column: 7, scope: !79)
!90 = !DILocation(line: 289, column: 7, scope: !79)
!91 = !DILocation(line: 290, column: 7, scope: !79)
!92 = !DILocation(line: 292, column: 7, scope: !79)
!93 = !DILocation(line: 293, column: 7, scope: !79)
!94 = !DILocation(line: 294, column: 7, scope: !79)
!95 = !DILocation(line: 296, column: 7, scope: !79)
!96 = !DILocation(line: 297, column: 7, scope: !79)
!97 = !DILocation(line: 298, column: 7, scope: !79)
!98 = !DILocation(line: 300, column: 7, scope: !79)
!99 = !DILocation(line: 301, column: 7, scope: !79)
!100 = !DILocation(line: 302, column: 7, scope: !79)
!101 = !DILocation(line: 304, column: 7, scope: !79)
!102 = !DILocation(line: 305, column: 7, scope: !79)
!103 = !DILocation(line: 306, column: 7, scope: !79)
!104 = !DILocation(line: 308, column: 7, scope: !79)
!105 = !DILocation(line: 309, column: 7, scope: !79)
!106 = !DILocation(line: 310, column: 7, scope: !79)
!107 = !DILocation(line: 312, column: 14, scope: !79)
!108 = !DILocation(line: 313, column: 7, scope: !79)
!109 = !DILocation(line: 316, column: 10, scope: !79)
!110 = !DILocation(line: 316, column: 3, scope: !79)
!111 = distinct !DISubprogram(name: "HAL_PWREx_DisableGPIOPullUp", scope: !1, file: !1, line: 335, type: !9, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!112 = !DILocation(line: 337, column: 21, scope: !111)
!113 = !DILocation(line: 342, column: 11, scope: !111)
!114 = !DILocation(line: 342, column: 3, scope: !111)
!115 = !DILocation(line: 345, column: 7, scope: !111)
!116 = !DILocation(line: 346, column: 7, scope: !111)
!117 = !DILocation(line: 348, column: 7, scope: !111)
!118 = !DILocation(line: 349, column: 7, scope: !111)
!119 = !DILocation(line: 351, column: 7, scope: !111)
!120 = !DILocation(line: 352, column: 7, scope: !111)
!121 = !DILocation(line: 354, column: 7, scope: !111)
!122 = !DILocation(line: 355, column: 7, scope: !111)
!123 = !DILocation(line: 357, column: 7, scope: !111)
!124 = !DILocation(line: 358, column: 7, scope: !111)
!125 = !DILocation(line: 360, column: 7, scope: !111)
!126 = !DILocation(line: 361, column: 7, scope: !111)
!127 = !DILocation(line: 363, column: 7, scope: !111)
!128 = !DILocation(line: 364, column: 7, scope: !111)
!129 = !DILocation(line: 366, column: 7, scope: !111)
!130 = !DILocation(line: 367, column: 7, scope: !111)
!131 = !DILocation(line: 369, column: 15, scope: !111)
!132 = !DILocation(line: 370, column: 8, scope: !111)
!133 = !DILocation(line: 373, column: 10, scope: !111)
!134 = !DILocation(line: 373, column: 3, scope: !111)
!135 = distinct !DISubprogram(name: "HAL_PWREx_EnableGPIOPullDown", scope: !1, file: !1, line: 399, type: !9, scopeLine: 400, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocation(line: 401, column: 21, scope: !135)
!137 = !DILocation(line: 406, column: 11, scope: !135)
!138 = !DILocation(line: 406, column: 3, scope: !135)
!139 = !DILocation(line: 409, column: 7, scope: !135)
!140 = !DILocation(line: 410, column: 7, scope: !135)
!141 = !DILocation(line: 411, column: 7, scope: !135)
!142 = !DILocation(line: 413, column: 7, scope: !135)
!143 = !DILocation(line: 414, column: 7, scope: !135)
!144 = !DILocation(line: 415, column: 7, scope: !135)
!145 = !DILocation(line: 417, column: 7, scope: !135)
!146 = !DILocation(line: 418, column: 7, scope: !135)
!147 = !DILocation(line: 419, column: 7, scope: !135)
!148 = !DILocation(line: 421, column: 7, scope: !135)
!149 = !DILocation(line: 422, column: 7, scope: !135)
!150 = !DILocation(line: 423, column: 7, scope: !135)
!151 = !DILocation(line: 425, column: 7, scope: !135)
!152 = !DILocation(line: 426, column: 7, scope: !135)
!153 = !DILocation(line: 427, column: 7, scope: !135)
!154 = !DILocation(line: 429, column: 7, scope: !135)
!155 = !DILocation(line: 430, column: 7, scope: !135)
!156 = !DILocation(line: 431, column: 7, scope: !135)
!157 = !DILocation(line: 433, column: 7, scope: !135)
!158 = !DILocation(line: 434, column: 7, scope: !135)
!159 = !DILocation(line: 435, column: 7, scope: !135)
!160 = !DILocation(line: 437, column: 7, scope: !135)
!161 = !DILocation(line: 438, column: 7, scope: !135)
!162 = !DILocation(line: 439, column: 7, scope: !135)
!163 = !DILocation(line: 441, column: 14, scope: !135)
!164 = !DILocation(line: 442, column: 7, scope: !135)
!165 = !DILocation(line: 445, column: 10, scope: !135)
!166 = !DILocation(line: 445, column: 3, scope: !135)
!167 = distinct !DISubprogram(name: "HAL_PWREx_DisableGPIOPullDown", scope: !1, file: !1, line: 464, type: !9, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!168 = !DILocation(line: 466, column: 21, scope: !167)
!169 = !DILocation(line: 471, column: 11, scope: !167)
!170 = !DILocation(line: 471, column: 3, scope: !167)
!171 = !DILocation(line: 474, column: 7, scope: !167)
!172 = !DILocation(line: 475, column: 7, scope: !167)
!173 = !DILocation(line: 477, column: 7, scope: !167)
!174 = !DILocation(line: 478, column: 7, scope: !167)
!175 = !DILocation(line: 480, column: 7, scope: !167)
!176 = !DILocation(line: 481, column: 7, scope: !167)
!177 = !DILocation(line: 483, column: 7, scope: !167)
!178 = !DILocation(line: 484, column: 7, scope: !167)
!179 = !DILocation(line: 486, column: 7, scope: !167)
!180 = !DILocation(line: 487, column: 7, scope: !167)
!181 = !DILocation(line: 489, column: 7, scope: !167)
!182 = !DILocation(line: 490, column: 7, scope: !167)
!183 = !DILocation(line: 492, column: 7, scope: !167)
!184 = !DILocation(line: 493, column: 7, scope: !167)
!185 = !DILocation(line: 495, column: 7, scope: !167)
!186 = !DILocation(line: 496, column: 7, scope: !167)
!187 = !DILocation(line: 498, column: 14, scope: !167)
!188 = !DILocation(line: 499, column: 7, scope: !167)
!189 = !DILocation(line: 502, column: 10, scope: !167)
!190 = !DILocation(line: 502, column: 3, scope: !167)
!191 = distinct !DISubprogram(name: "HAL_PWREx_EnablePullUpPullDownConfig", scope: !1, file: !1, line: 517, type: !9, scopeLine: 518, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!192 = !DILocation(line: 519, column: 3, scope: !191)
!193 = !DILocation(line: 520, column: 1, scope: !191)
!194 = distinct !DISubprogram(name: "HAL_PWREx_DisablePullUpPullDownConfig", scope: !1, file: !1, line: 529, type: !9, scopeLine: 530, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!195 = !DILocation(line: 531, column: 3, scope: !194)
!196 = !DILocation(line: 532, column: 1, scope: !194)
!197 = distinct !DISubprogram(name: "HAL_PWREx_ConfigSRAM2ContentRetention", scope: !1, file: !1, line: 544, type: !9, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!198 = !DILocation(line: 550, column: 3, scope: !197)
!199 = !DILocation(line: 552, column: 3, scope: !197)
!200 = distinct !DISubprogram(name: "HAL_PWREx_EnableSRAM2ContentRetention", scope: !1, file: !1, line: 562, type: !9, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!201 = !DILocation(line: 564, column: 10, scope: !200)
!202 = !DILocation(line: 565, column: 1, scope: !200)
!203 = distinct !DISubprogram(name: "HAL_PWREx_DisableSRAM2ContentRetention", scope: !1, file: !1, line: 574, type: !9, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!204 = !DILocation(line: 576, column: 10, scope: !203)
!205 = !DILocation(line: 577, column: 1, scope: !203)
!206 = distinct !DISubprogram(name: "HAL_PWREx_EnablePVM1", scope: !1, file: !1, line: 584, type: !9, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!207 = !DILocation(line: 586, column: 3, scope: !206)
!208 = !DILocation(line: 587, column: 1, scope: !206)
!209 = distinct !DISubprogram(name: "HAL_PWREx_DisablePVM1", scope: !1, file: !1, line: 593, type: !9, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!210 = !DILocation(line: 595, column: 3, scope: !209)
!211 = !DILocation(line: 596, column: 1, scope: !209)
!212 = distinct !DISubprogram(name: "HAL_PWREx_EnablePVM2", scope: !1, file: !1, line: 602, type: !9, scopeLine: 603, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!213 = !DILocation(line: 604, column: 3, scope: !212)
!214 = !DILocation(line: 605, column: 1, scope: !212)
!215 = distinct !DISubprogram(name: "HAL_PWREx_DisablePVM2", scope: !1, file: !1, line: 611, type: !9, scopeLine: 612, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!216 = !DILocation(line: 613, column: 3, scope: !215)
!217 = !DILocation(line: 614, column: 1, scope: !215)
!218 = distinct !DISubprogram(name: "HAL_PWREx_EnablePVM3", scope: !1, file: !1, line: 621, type: !9, scopeLine: 622, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DILocation(line: 623, column: 3, scope: !218)
!220 = !DILocation(line: 624, column: 1, scope: !218)
!221 = distinct !DISubprogram(name: "HAL_PWREx_DisablePVM3", scope: !1, file: !1, line: 630, type: !9, scopeLine: 631, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!222 = !DILocation(line: 632, column: 3, scope: !221)
!223 = !DILocation(line: 633, column: 1, scope: !221)
!224 = distinct !DISubprogram(name: "HAL_PWREx_EnablePVM4", scope: !1, file: !1, line: 640, type: !9, scopeLine: 641, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!225 = !DILocation(line: 642, column: 3, scope: !224)
!226 = !DILocation(line: 643, column: 1, scope: !224)
!227 = distinct !DISubprogram(name: "HAL_PWREx_DisablePVM4", scope: !1, file: !1, line: 649, type: !9, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!228 = !DILocation(line: 651, column: 3, scope: !227)
!229 = !DILocation(line: 652, column: 1, scope: !227)
!230 = distinct !DISubprogram(name: "HAL_PWREx_ConfigPVM", scope: !1, file: !1, line: 669, type: !9, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!231 = !DILocation(line: 671, column: 21, scope: !230)
!232 = !DILocation(line: 681, column: 11, scope: !230)
!233 = !DILocation(line: 681, column: 23, scope: !230)
!234 = !DILocation(line: 681, column: 3, scope: !230)
!235 = !DILocation(line: 685, column: 7, scope: !230)
!236 = !DILocation(line: 686, column: 7, scope: !230)
!237 = !DILocation(line: 687, column: 7, scope: !230)
!238 = !DILocation(line: 688, column: 7, scope: !230)
!239 = !DILocation(line: 691, column: 12, scope: !230)
!240 = !DILocation(line: 691, column: 24, scope: !230)
!241 = !DILocation(line: 691, column: 29, scope: !230)
!242 = !DILocation(line: 691, column: 44, scope: !230)
!243 = !DILocation(line: 691, column: 11, scope: !230)
!244 = !DILocation(line: 693, column: 9, scope: !230)
!245 = !DILocation(line: 694, column: 7, scope: !230)
!246 = !DILocation(line: 697, column: 12, scope: !230)
!247 = !DILocation(line: 697, column: 24, scope: !230)
!248 = !DILocation(line: 697, column: 29, scope: !230)
!249 = !DILocation(line: 697, column: 45, scope: !230)
!250 = !DILocation(line: 697, column: 11, scope: !230)
!251 = !DILocation(line: 699, column: 9, scope: !230)
!252 = !DILocation(line: 700, column: 7, scope: !230)
!253 = !DILocation(line: 703, column: 12, scope: !230)
!254 = !DILocation(line: 703, column: 24, scope: !230)
!255 = !DILocation(line: 703, column: 29, scope: !230)
!256 = !DILocation(line: 703, column: 48, scope: !230)
!257 = !DILocation(line: 703, column: 11, scope: !230)
!258 = !DILocation(line: 705, column: 9, scope: !230)
!259 = !DILocation(line: 706, column: 7, scope: !230)
!260 = !DILocation(line: 708, column: 12, scope: !230)
!261 = !DILocation(line: 708, column: 24, scope: !230)
!262 = !DILocation(line: 708, column: 29, scope: !230)
!263 = !DILocation(line: 708, column: 49, scope: !230)
!264 = !DILocation(line: 708, column: 11, scope: !230)
!265 = !DILocation(line: 710, column: 9, scope: !230)
!266 = !DILocation(line: 711, column: 7, scope: !230)
!267 = !DILocation(line: 712, column: 7, scope: !230)
!268 = !DILocation(line: 716, column: 7, scope: !230)
!269 = !DILocation(line: 717, column: 7, scope: !230)
!270 = !DILocation(line: 718, column: 7, scope: !230)
!271 = !DILocation(line: 719, column: 7, scope: !230)
!272 = !DILocation(line: 722, column: 12, scope: !230)
!273 = !DILocation(line: 722, column: 24, scope: !230)
!274 = !DILocation(line: 722, column: 29, scope: !230)
!275 = !DILocation(line: 722, column: 44, scope: !230)
!276 = !DILocation(line: 722, column: 11, scope: !230)
!277 = !DILocation(line: 724, column: 9, scope: !230)
!278 = !DILocation(line: 725, column: 7, scope: !230)
!279 = !DILocation(line: 728, column: 12, scope: !230)
!280 = !DILocation(line: 728, column: 24, scope: !230)
!281 = !DILocation(line: 728, column: 29, scope: !230)
!282 = !DILocation(line: 728, column: 45, scope: !230)
!283 = !DILocation(line: 728, column: 11, scope: !230)
!284 = !DILocation(line: 730, column: 9, scope: !230)
!285 = !DILocation(line: 731, column: 7, scope: !230)
!286 = !DILocation(line: 734, column: 12, scope: !230)
!287 = !DILocation(line: 734, column: 24, scope: !230)
!288 = !DILocation(line: 734, column: 29, scope: !230)
!289 = !DILocation(line: 734, column: 48, scope: !230)
!290 = !DILocation(line: 734, column: 11, scope: !230)
!291 = !DILocation(line: 736, column: 9, scope: !230)
!292 = !DILocation(line: 737, column: 7, scope: !230)
!293 = !DILocation(line: 739, column: 12, scope: !230)
!294 = !DILocation(line: 739, column: 24, scope: !230)
!295 = !DILocation(line: 739, column: 29, scope: !230)
!296 = !DILocation(line: 739, column: 49, scope: !230)
!297 = !DILocation(line: 739, column: 11, scope: !230)
!298 = !DILocation(line: 741, column: 9, scope: !230)
!299 = !DILocation(line: 742, column: 7, scope: !230)
!300 = !DILocation(line: 743, column: 7, scope: !230)
!301 = !DILocation(line: 747, column: 7, scope: !230)
!302 = !DILocation(line: 748, column: 7, scope: !230)
!303 = !DILocation(line: 749, column: 7, scope: !230)
!304 = !DILocation(line: 750, column: 7, scope: !230)
!305 = !DILocation(line: 753, column: 12, scope: !230)
!306 = !DILocation(line: 753, column: 24, scope: !230)
!307 = !DILocation(line: 753, column: 29, scope: !230)
!308 = !DILocation(line: 753, column: 44, scope: !230)
!309 = !DILocation(line: 753, column: 11, scope: !230)
!310 = !DILocation(line: 755, column: 9, scope: !230)
!311 = !DILocation(line: 756, column: 7, scope: !230)
!312 = !DILocation(line: 759, column: 12, scope: !230)
!313 = !DILocation(line: 759, column: 24, scope: !230)
!314 = !DILocation(line: 759, column: 29, scope: !230)
!315 = !DILocation(line: 759, column: 45, scope: !230)
!316 = !DILocation(line: 759, column: 11, scope: !230)
!317 = !DILocation(line: 761, column: 9, scope: !230)
!318 = !DILocation(line: 762, column: 7, scope: !230)
!319 = !DILocation(line: 765, column: 12, scope: !230)
!320 = !DILocation(line: 765, column: 24, scope: !230)
!321 = !DILocation(line: 765, column: 29, scope: !230)
!322 = !DILocation(line: 765, column: 48, scope: !230)
!323 = !DILocation(line: 765, column: 11, scope: !230)
!324 = !DILocation(line: 767, column: 9, scope: !230)
!325 = !DILocation(line: 768, column: 7, scope: !230)
!326 = !DILocation(line: 770, column: 12, scope: !230)
!327 = !DILocation(line: 770, column: 24, scope: !230)
!328 = !DILocation(line: 770, column: 29, scope: !230)
!329 = !DILocation(line: 770, column: 49, scope: !230)
!330 = !DILocation(line: 770, column: 11, scope: !230)
!331 = !DILocation(line: 772, column: 9, scope: !230)
!332 = !DILocation(line: 773, column: 7, scope: !230)
!333 = !DILocation(line: 774, column: 7, scope: !230)
!334 = !DILocation(line: 778, column: 7, scope: !230)
!335 = !DILocation(line: 779, column: 7, scope: !230)
!336 = !DILocation(line: 780, column: 7, scope: !230)
!337 = !DILocation(line: 781, column: 7, scope: !230)
!338 = !DILocation(line: 784, column: 12, scope: !230)
!339 = !DILocation(line: 784, column: 24, scope: !230)
!340 = !DILocation(line: 784, column: 29, scope: !230)
!341 = !DILocation(line: 784, column: 44, scope: !230)
!342 = !DILocation(line: 784, column: 11, scope: !230)
!343 = !DILocation(line: 786, column: 9, scope: !230)
!344 = !DILocation(line: 787, column: 7, scope: !230)
!345 = !DILocation(line: 790, column: 12, scope: !230)
!346 = !DILocation(line: 790, column: 24, scope: !230)
!347 = !DILocation(line: 790, column: 29, scope: !230)
!348 = !DILocation(line: 790, column: 45, scope: !230)
!349 = !DILocation(line: 790, column: 11, scope: !230)
!350 = !DILocation(line: 792, column: 9, scope: !230)
!351 = !DILocation(line: 793, column: 7, scope: !230)
!352 = !DILocation(line: 796, column: 12, scope: !230)
!353 = !DILocation(line: 796, column: 24, scope: !230)
!354 = !DILocation(line: 796, column: 29, scope: !230)
!355 = !DILocation(line: 796, column: 48, scope: !230)
!356 = !DILocation(line: 796, column: 11, scope: !230)
!357 = !DILocation(line: 798, column: 9, scope: !230)
!358 = !DILocation(line: 799, column: 7, scope: !230)
!359 = !DILocation(line: 801, column: 12, scope: !230)
!360 = !DILocation(line: 801, column: 24, scope: !230)
!361 = !DILocation(line: 801, column: 29, scope: !230)
!362 = !DILocation(line: 801, column: 49, scope: !230)
!363 = !DILocation(line: 801, column: 11, scope: !230)
!364 = !DILocation(line: 803, column: 9, scope: !230)
!365 = !DILocation(line: 804, column: 7, scope: !230)
!366 = !DILocation(line: 805, column: 7, scope: !230)
!367 = !DILocation(line: 808, column: 14, scope: !230)
!368 = !DILocation(line: 809, column: 7, scope: !230)
!369 = !DILocation(line: 812, column: 10, scope: !230)
!370 = !DILocation(line: 812, column: 3, scope: !230)
!371 = distinct !DISubprogram(name: "HAL_PWREx_EnableLowPowerRunMode", scope: !1, file: !1, line: 827, type: !9, scopeLine: 828, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!372 = !DILocation(line: 830, column: 3, scope: !371)
!373 = !DILocation(line: 831, column: 1, scope: !371)
!374 = distinct !DISubprogram(name: "HAL_PWREx_DisableLowPowerRunMode", scope: !1, file: !1, line: 842, type: !9, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!375 = !DILocation(line: 847, column: 3, scope: !374)
!376 = !DILocation(line: 851, column: 56, scope: !374)
!377 = !DILocation(line: 851, column: 72, scope: !374)
!378 = !DILocation(line: 851, column: 53, scope: !374)
!379 = !DILocation(line: 851, column: 84, scope: !374)
!380 = !DILocation(line: 851, column: 91, scope: !374)
!381 = !DILocation(line: 851, column: 19, scope: !374)
!382 = !DILocation(line: 853, column: 3, scope: !374)
!383 = !DILocation(line: 853, column: 11, scope: !374)
!384 = !DILocation(line: 853, column: 53, scope: !374)
!385 = !DILocation(line: 853, column: 57, scope: !374)
!386 = !DILocation(line: 853, column: 73, scope: !374)
!387 = !DILocation(line: 0, scope: !374)
!388 = !DILocation(line: 855, column: 20, scope: !374)
!389 = distinct !{!389, !382, !390}
!390 = !DILocation(line: 856, column: 3, scope: !374)
!391 = !DILocation(line: 857, column: 7, scope: !374)
!392 = !DILocation(line: 859, column: 5, scope: !374)
!393 = !DILocation(line: 862, column: 3, scope: !374)
!394 = !DILocation(line: 863, column: 1, scope: !374)
!395 = distinct !DISubprogram(name: "HAL_PWREx_EnterSTOP0Mode", scope: !1, file: !1, line: 888, type: !9, scopeLine: 889, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!396 = !DILocation(line: 894, column: 3, scope: !395)
!397 = !DILocation(line: 897, column: 3, scope: !395)
!398 = !DILocation(line: 900, column: 7, scope: !395)
!399 = !DILocation(line: 900, column: 17, scope: !395)
!400 = !DILocation(line: 903, column: 5, scope: !395)
!401 = !{i32 -2144474277}
!402 = !DILocation(line: 904, column: 3, scope: !395)
!403 = !DILocation(line: 908, column: 5, scope: !395)
!404 = !{i32 -2144474248}
!405 = !DILocation(line: 909, column: 5, scope: !395)
!406 = !{i32 -2144474219}
!407 = !DILocation(line: 910, column: 5, scope: !395)
!408 = !{i32 -2144474190}
!409 = !DILocation(line: 914, column: 3, scope: !395)
!410 = !DILocation(line: 915, column: 1, scope: !395)
!411 = distinct !DISubprogram(name: "HAL_PWREx_EnterSTOP1Mode", scope: !1, file: !1, line: 939, type: !9, scopeLine: 940, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!412 = !DILocation(line: 945, column: 3, scope: !411)
!413 = !DILocation(line: 948, column: 3, scope: !411)
!414 = !DILocation(line: 951, column: 7, scope: !411)
!415 = !DILocation(line: 951, column: 17, scope: !411)
!416 = !DILocation(line: 954, column: 5, scope: !411)
!417 = !{i32 -2144473040}
!418 = !DILocation(line: 955, column: 3, scope: !411)
!419 = !DILocation(line: 959, column: 5, scope: !411)
!420 = !{i32 -2144473011}
!421 = !DILocation(line: 960, column: 5, scope: !411)
!422 = !{i32 -2144472982}
!423 = !DILocation(line: 961, column: 5, scope: !411)
!424 = !{i32 -2144472953}
!425 = !DILocation(line: 965, column: 3, scope: !411)
!426 = !DILocation(line: 966, column: 1, scope: !411)
!427 = distinct !DISubprogram(name: "HAL_PWREx_EnterSTOP2Mode", scope: !1, file: !1, line: 991, type: !9, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!428 = !DILocation(line: 997, column: 3, scope: !427)
!429 = !DILocation(line: 1000, column: 3, scope: !427)
!430 = !DILocation(line: 1003, column: 7, scope: !427)
!431 = !DILocation(line: 1003, column: 17, scope: !427)
!432 = !DILocation(line: 1006, column: 5, scope: !427)
!433 = !{i32 -2144471803}
!434 = !DILocation(line: 1007, column: 3, scope: !427)
!435 = !DILocation(line: 1011, column: 5, scope: !427)
!436 = !{i32 -2144471774}
!437 = !DILocation(line: 1012, column: 5, scope: !427)
!438 = !{i32 -2144471745}
!439 = !DILocation(line: 1013, column: 5, scope: !427)
!440 = !{i32 -2144471716}
!441 = !DILocation(line: 1017, column: 3, scope: !427)
!442 = !DILocation(line: 1018, column: 1, scope: !427)
!443 = distinct !DISubprogram(name: "HAL_PWREx_EnterSHUTDOWNMode", scope: !1, file: !1, line: 1033, type: !9, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!444 = !DILocation(line: 1037, column: 3, scope: !443)
!445 = !DILocation(line: 1040, column: 3, scope: !443)
!446 = !DILocation(line: 1047, column: 3, scope: !443)
!447 = !{i32 -2144470593}
!448 = !DILocation(line: 1048, column: 1, scope: !443)
!449 = distinct !DISubprogram(name: "HAL_PWREx_PVD_PVM_IRQHandler", scope: !1, file: !1, line: 1058, type: !9, scopeLine: 1059, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!450 = !DILocation(line: 1063, column: 17, scope: !449)
!451 = !DILocation(line: 1063, column: 15, scope: !449)
!452 = !DILocation(line: 1064, column: 18, scope: !449)
!453 = !DILocation(line: 1064, column: 16, scope: !449)
!454 = !DILocation(line: 1067, column: 9, scope: !449)
!455 = !DILocation(line: 1067, column: 23, scope: !449)
!456 = !DILocation(line: 1067, column: 21, scope: !449)
!457 = !DILocation(line: 1067, column: 37, scope: !449)
!458 = !DILocation(line: 1067, column: 58, scope: !449)
!459 = !DILocation(line: 1067, column: 7, scope: !449)
!460 = !DILocation(line: 1070, column: 5, scope: !449)
!461 = !DILocation(line: 1073, column: 5, scope: !449)
!462 = !DILocation(line: 1074, column: 5, scope: !449)
!463 = !DILocation(line: 1075, column: 3, scope: !449)
!464 = !DILocation(line: 1078, column: 17, scope: !449)
!465 = !DILocation(line: 1078, column: 15, scope: !449)
!466 = !DILocation(line: 1079, column: 18, scope: !449)
!467 = !DILocation(line: 1079, column: 16, scope: !449)
!468 = !DILocation(line: 1081, column: 9, scope: !449)
!469 = !DILocation(line: 1081, column: 23, scope: !449)
!470 = !DILocation(line: 1081, column: 21, scope: !449)
!471 = !DILocation(line: 1081, column: 37, scope: !449)
!472 = !DILocation(line: 1081, column: 59, scope: !449)
!473 = !DILocation(line: 1081, column: 7, scope: !449)
!474 = !DILocation(line: 1084, column: 5, scope: !449)
!475 = !DILocation(line: 1087, column: 5, scope: !449)
!476 = !DILocation(line: 1088, column: 5, scope: !449)
!477 = !DILocation(line: 1089, column: 3, scope: !449)
!478 = !DILocation(line: 1090, column: 9, scope: !449)
!479 = !DILocation(line: 1090, column: 23, scope: !449)
!480 = !DILocation(line: 1090, column: 21, scope: !449)
!481 = !DILocation(line: 1090, column: 37, scope: !449)
!482 = !DILocation(line: 1090, column: 59, scope: !449)
!483 = !DILocation(line: 1090, column: 7, scope: !449)
!484 = !DILocation(line: 1093, column: 5, scope: !449)
!485 = !DILocation(line: 1096, column: 5, scope: !449)
!486 = !DILocation(line: 1097, column: 5, scope: !449)
!487 = !DILocation(line: 1098, column: 3, scope: !449)
!488 = !DILocation(line: 1099, column: 9, scope: !449)
!489 = !DILocation(line: 1099, column: 23, scope: !449)
!490 = !DILocation(line: 1099, column: 21, scope: !449)
!491 = !DILocation(line: 1099, column: 37, scope: !449)
!492 = !DILocation(line: 1099, column: 59, scope: !449)
!493 = !DILocation(line: 1099, column: 7, scope: !449)
!494 = !DILocation(line: 1102, column: 5, scope: !449)
!495 = !DILocation(line: 1105, column: 5, scope: !449)
!496 = !DILocation(line: 1106, column: 5, scope: !449)
!497 = !DILocation(line: 1107, column: 3, scope: !449)
!498 = !DILocation(line: 1108, column: 9, scope: !449)
!499 = !DILocation(line: 1108, column: 23, scope: !449)
!500 = !DILocation(line: 1108, column: 21, scope: !449)
!501 = !DILocation(line: 1108, column: 37, scope: !449)
!502 = !DILocation(line: 1108, column: 59, scope: !449)
!503 = !DILocation(line: 1108, column: 7, scope: !449)
!504 = !DILocation(line: 1111, column: 5, scope: !449)
!505 = !DILocation(line: 1114, column: 5, scope: !449)
!506 = !DILocation(line: 1115, column: 5, scope: !449)
!507 = !DILocation(line: 1116, column: 3, scope: !449)
!508 = !DILocation(line: 1117, column: 1, scope: !449)
!509 = distinct !DISubprogram(name: "HAL_PWREx_PVM1Callback", scope: !1, file: !1, line: 1124, type: !9, scopeLine: 1125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!510 = !DILocation(line: 1129, column: 1, scope: !509)
!511 = distinct !DISubprogram(name: "HAL_PWREx_PVM2Callback", scope: !1, file: !1, line: 1135, type: !9, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!512 = !DILocation(line: 1140, column: 1, scope: !511)
!513 = distinct !DISubprogram(name: "HAL_PWREx_PVM3Callback", scope: !1, file: !1, line: 1146, type: !9, scopeLine: 1147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!514 = !DILocation(line: 1151, column: 1, scope: !513)
!515 = distinct !DISubprogram(name: "HAL_PWREx_PVM4Callback", scope: !1, file: !1, line: 1157, type: !9, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!516 = !DILocation(line: 1162, column: 1, scope: !515)
!517 = distinct !DISubprogram(name: "HAL_PWREx_EnableUCPDStandbyMode", scope: !1, file: !1, line: 1169, type: !9, scopeLine: 1170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!518 = !DILocation(line: 1172, column: 3, scope: !517)
!519 = !DILocation(line: 1173, column: 1, scope: !517)
!520 = distinct !DISubprogram(name: "HAL_PWREx_DisableUCPDStandbyMode", scope: !1, file: !1, line: 1182, type: !9, scopeLine: 1183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!521 = !DILocation(line: 1186, column: 3, scope: !520)
!522 = !DILocation(line: 1187, column: 1, scope: !520)
!523 = distinct !DISubprogram(name: "HAL_PWREx_EnableUCPDDeadBattery", scope: !1, file: !1, line: 1195, type: !9, scopeLine: 1196, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!524 = !DILocation(line: 1198, column: 3, scope: !523)
!525 = !DILocation(line: 1199, column: 1, scope: !523)
!526 = distinct !DISubprogram(name: "HAL_PWREx_DisableUCPDDeadBattery", scope: !1, file: !1, line: 1212, type: !9, scopeLine: 1213, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!527 = !DILocation(line: 1215, column: 3, scope: !526)
!528 = !DILocation(line: 1216, column: 1, scope: !526)
!529 = distinct !DISubprogram(name: "HAL_PWREx_EnableUltraLowPowerMode", scope: !1, file: !1, line: 1224, type: !9, scopeLine: 1225, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!530 = !DILocation(line: 1227, column: 3, scope: !529)
!531 = !DILocation(line: 1228, column: 1, scope: !529)
!532 = distinct !DISubprogram(name: "HAL_PWREx_DisableUltraLowPowerMode", scope: !1, file: !1, line: 1235, type: !9, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!533 = !DILocation(line: 1238, column: 3, scope: !532)
!534 = !DILocation(line: 1239, column: 1, scope: !532)
!535 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_SetMode", scope: !1, file: !1, line: 1280, type: !9, scopeLine: 1281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!536 = !DILocation(line: 1289, column: 7, scope: !535)
!537 = !DILocation(line: 1289, column: 21, scope: !535)
!538 = !DILocation(line: 1291, column: 5, scope: !535)
!539 = !DILocation(line: 1292, column: 3, scope: !535)
!540 = !DILocation(line: 1293, column: 12, scope: !535)
!541 = !DILocation(line: 1293, column: 26, scope: !535)
!542 = !DILocation(line: 1297, column: 9, scope: !535)
!543 = !DILocation(line: 1297, column: 37, scope: !535)
!544 = !DILocation(line: 1299, column: 7, scope: !535)
!545 = !DILocation(line: 1303, column: 17, scope: !535)
!546 = !DILocation(line: 1303, column: 15, scope: !535)
!547 = !DILocation(line: 1305, column: 11, scope: !535)
!548 = !DILocation(line: 1305, column: 69, scope: !535)
!549 = !DILocation(line: 1309, column: 7, scope: !535)
!550 = !DILocation(line: 1313, column: 9, scope: !535)
!551 = !DILocation(line: 1316, column: 3, scope: !535)
!552 = !DILocation(line: 1319, column: 5, scope: !535)
!553 = !DILocation(line: 1324, column: 54, scope: !535)
!554 = !DILocation(line: 1324, column: 70, scope: !535)
!555 = !DILocation(line: 1324, column: 51, scope: !535)
!556 = !DILocation(line: 1324, column: 82, scope: !535)
!557 = !DILocation(line: 1324, column: 89, scope: !535)
!558 = !DILocation(line: 1324, column: 19, scope: !535)
!559 = !DILocation(line: 1326, column: 3, scope: !535)
!560 = !DILocation(line: 1326, column: 11, scope: !535)
!561 = !DILocation(line: 1326, column: 48, scope: !535)
!562 = !DILocation(line: 1326, column: 45, scope: !535)
!563 = !DILocation(line: 1326, column: 63, scope: !535)
!564 = !DILocation(line: 1326, column: 67, scope: !535)
!565 = !DILocation(line: 1326, column: 83, scope: !535)
!566 = !DILocation(line: 0, scope: !535)
!567 = !DILocation(line: 1328, column: 20, scope: !535)
!568 = distinct !{!568, !559, !569}
!569 = !DILocation(line: 1329, column: 3, scope: !535)
!570 = !DILocation(line: 1331, column: 7, scope: !535)
!571 = !DILocation(line: 1331, column: 44, scope: !535)
!572 = !DILocation(line: 1331, column: 41, scope: !535)
!573 = !DILocation(line: 1333, column: 12, scope: !535)
!574 = !DILocation(line: 1334, column: 3, scope: !535)
!575 = !DILocation(line: 1337, column: 12, scope: !535)
!576 = !DILocation(line: 1339, column: 10, scope: !535)
!577 = !DILocation(line: 1339, column: 3, scope: !535)
!578 = !DILocation(line: 1340, column: 1, scope: !535)
!579 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_EnableBypassMode", scope: !1, file: !1, line: 1406, type: !9, scopeLine: 1407, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!580 = !DILocation(line: 1408, column: 3, scope: !579)
!581 = !DILocation(line: 1409, column: 1, scope: !579)
!582 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_EnableFastStart", scope: !1, file: !1, line: 1376, type: !9, scopeLine: 1377, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!583 = !DILocation(line: 1378, column: 3, scope: !582)
!584 = !DILocation(line: 1379, column: 1, scope: !582)
!585 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_DisableFastStart", scope: !1, file: !1, line: 1386, type: !9, scopeLine: 1387, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!586 = !DILocation(line: 1388, column: 3, scope: !585)
!587 = !DILocation(line: 1389, column: 1, scope: !585)
!588 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_DisableBypassMode", scope: !1, file: !1, line: 1396, type: !9, scopeLine: 1397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!589 = !DILocation(line: 1398, column: 3, scope: !588)
!590 = !DILocation(line: 1399, column: 1, scope: !588)
!591 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_EnableExternal", scope: !1, file: !1, line: 1417, type: !9, scopeLine: 1418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!592 = !DILocation(line: 1419, column: 3, scope: !591)
!593 = !DILocation(line: 1420, column: 1, scope: !591)
!594 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_DisableExternal", scope: !1, file: !1, line: 1427, type: !9, scopeLine: 1428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!595 = !DILocation(line: 1429, column: 3, scope: !594)
!596 = !DILocation(line: 1430, column: 1, scope: !594)
!597 = distinct !DISubprogram(name: "HAL_PWREx_SMPS_GetMainRegulatorExtSMPSReadyStatus", scope: !1, file: !1, line: 1438, type: !9, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!598 = !DILocation(line: 1443, column: 13, scope: !597)
!599 = !DILocation(line: 1443, column: 11, scope: !597)
!600 = !DILocation(line: 1444, column: 7, scope: !597)
!601 = !DILocation(line: 1444, column: 45, scope: !597)
!602 = !DILocation(line: 1446, column: 27, scope: !597)
!603 = !DILocation(line: 1447, column: 3, scope: !597)
!604 = !DILocation(line: 1450, column: 27, scope: !597)
!605 = !DILocation(line: 1452, column: 10, scope: !597)
!606 = !DILocation(line: 1452, column: 3, scope: !597)
