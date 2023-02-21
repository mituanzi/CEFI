; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.FLASH_ProcessTypeDef = type { i8, i32, i32, i32, i32, i32, i32 }
%struct.FLASH_TypeDef = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, [4 x i32], i32, i32 }

@pFlash = dso_local global %struct.FLASH_ProcessTypeDef { i8 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASH_Program(i32 %TypeProgram, i32 %Address, i64 %Data) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %TypeProgram.addr = alloca i32, align 4
  %Address.addr = alloca i32, align 4
  %Data.addr = alloca i64, align 8
  %status = alloca i8, align 1
  %reg = alloca i32*, align 4
  store i32 %TypeProgram, i32* %TypeProgram.addr, align 4
  store i32 %Address, i32* %Address.addr, align 4
  store i64 %Data, i64* %Data.addr, align 8
  br label %do.body, !dbg !10

do.body:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !10
  %conv = zext i8 %0 to i32, !dbg !10
  %cmp = icmp eq i32 %conv, 1, !dbg !10
  br i1 %cmp, label %if.then, label %if.else, !dbg !10

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !10
  br label %return, !dbg !10

if.else:                                          ; preds = %do.body
  store i8 1, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !10
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !10

do.end:                                           ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !11
  %call = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !12
  store i8 %call, i8* %status, align 1, !dbg !13
  %1 = load i8, i8* %status, align 1, !dbg !14
  %conv2 = zext i8 %1 to i32, !dbg !14
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !15
  br i1 %cmp3, label %if.then5, label %if.end8, !dbg !14

if.then5:                                         ; preds = %do.end
  %2 = load i32, i32* %TypeProgram.addr, align 4, !dbg !16
  store i32 %2, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !17
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg, align 4, !dbg !18
  %3 = load i32, i32* %Address.addr, align 4, !dbg !19
  %4 = load i64, i64* %Data.addr, align 8, !dbg !20
  call arm_aapcs_vfpcc void @FLASH_Program_DoubleWord(i32 %3, i64 %4), !dbg !21
  %call6 = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !22
  store i8 %call6, i8* %status, align 1, !dbg !23
  %5 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !24
  %and = and i32 %5, 2147483647, !dbg !24
  %neg = xor i32 %and, -1, !dbg !24
  %6 = load i32*, i32** %reg, align 4, !dbg !24
  %7 = load volatile i32, i32* %6, align 4, !dbg !24
  %and7 = and i32 %7, %neg, !dbg !24
  store volatile i32 %and7, i32* %6, align 4, !dbg !24
  br label %if.end8, !dbg !25

if.end8:                                          ; preds = %if.then5, %do.end
  br label %do.body9, !dbg !26

do.body9:                                         ; preds = %if.end8
  store i8 0, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !26
  br label %do.end10, !dbg !26

do.end10:                                         ; preds = %do.body9
  %8 = load i8, i8* %status, align 1, !dbg !27
  store i8 %8, i8* %retval, align 1, !dbg !28
  br label %return, !dbg !28

return:                                           ; preds = %do.end10, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !29
  ret i8 %9, !dbg !29
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 %Timeout) #0 !dbg !30 {
entry:
  %retval = alloca i8, align 1
  %Timeout.addr = alloca i32, align 4
  %timeout = alloca i32, align 4
  %error = alloca i32, align 4
  %reg_sr = alloca i32*, align 4
  store i32 %Timeout, i32* %Timeout.addr, align 4
  %call = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !31
  %0 = load i32, i32* %Timeout.addr, align 4, !dbg !32
  %add = add i32 %call, %0, !dbg !33
  store i32 %add, i32* %timeout, align 4, !dbg !34
  br label %while.cond, !dbg !35

while.cond:                                       ; preds = %if.end5, %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 7), align 4, !dbg !36
  %and = and i32 %1, 65536, !dbg !36
  %cmp = icmp eq i32 %and, 65536, !dbg !36
  br i1 %cmp, label %while.body, label %while.end, !dbg !35

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %Timeout.addr, align 4, !dbg !37
  %cmp1 = icmp ne i32 %2, -1, !dbg !38
  br i1 %cmp1, label %if.then, label %if.end5, !dbg !37

if.then:                                          ; preds = %while.body
  %call2 = call arm_aapcs_vfpcc i32 @HAL_GetTick(), !dbg !39
  %3 = load i32, i32* %timeout, align 4, !dbg !40
  %cmp3 = icmp uge i32 %call2, %3, !dbg !41
  br i1 %cmp3, label %if.then4, label %if.end, !dbg !39

if.then4:                                         ; preds = %if.then
  store i8 3, i8* %retval, align 1, !dbg !42
  br label %return, !dbg !42

if.end:                                           ; preds = %if.then
  br label %if.end5, !dbg !43

if.end5:                                          ; preds = %if.end, %while.body
  br label %while.cond, !dbg !35, !llvm.loop !44

while.end:                                        ; preds = %while.cond
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 7), i32** %reg_sr, align 4, !dbg !46
  %4 = load i32*, i32** %reg_sr, align 4, !dbg !47
  %5 = load volatile i32, i32* %4, align 4, !dbg !48
  %and6 = and i32 %5, 8442, !dbg !49
  store i32 %and6, i32* %error, align 4, !dbg !50
  %6 = load i32, i32* %error, align 4, !dbg !51
  %cmp7 = icmp ne i32 %6, 0, !dbg !52
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !51

if.then8:                                         ; preds = %while.end
  %7 = load i32, i32* %error, align 4, !dbg !53
  %8 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !54
  %or = or i32 %8, %7, !dbg !54
  store i32 %or, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !54
  %9 = load i32, i32* %error, align 4, !dbg !55
  %10 = load i32*, i32** %reg_sr, align 4, !dbg !56
  store volatile i32 %9, i32* %10, align 4, !dbg !57
  store i8 1, i8* %retval, align 1, !dbg !58
  br label %return, !dbg !58

if.end9:                                          ; preds = %while.end
  %11 = load i32*, i32** %reg_sr, align 4, !dbg !59
  %12 = load volatile i32, i32* %11, align 4, !dbg !60
  %and10 = and i32 %12, 1, !dbg !61
  %cmp11 = icmp ne i32 %and10, 0, !dbg !62
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !63

if.then12:                                        ; preds = %if.end9
  %13 = load i32*, i32** %reg_sr, align 4, !dbg !64
  store volatile i32 1, i32* %13, align 4, !dbg !65
  br label %if.end13, !dbg !66

if.end13:                                         ; preds = %if.then12, %if.end9
  store i8 0, i8* %retval, align 1, !dbg !67
  br label %return, !dbg !67

return:                                           ; preds = %if.end13, %if.then8, %if.then4
  %14 = load i8, i8* %retval, align 1, !dbg !68
  ret i8 %14, !dbg !68
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_Program_DoubleWord(i32 %Address, i64 %Data) #0 !dbg !69 {
entry:
  %priMask.addr.i = alloca i32, align 4
  %result.i = alloca i32, align 4
  %Address.addr = alloca i32, align 4
  %Data.addr = alloca i64, align 8
  %primask_bit = alloca i32, align 4
  %reg = alloca i32*, align 4
  store i32 %Address, i32* %Address.addr, align 4
  store i64 %Data, i64* %Data.addr, align 8
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg, align 4, !dbg !70
  %0 = call i32 asm sideeffect "MRS $0, primask", "=r,~{memory}"() #2, !dbg !71, !srcloc !75
  store i32 %0, i32* %result.i, align 4, !dbg !71
  %1 = load i32, i32* %result.i, align 4, !dbg !76
  store i32 %1, i32* %primask_bit, align 4, !dbg !77
  call void asm sideeffect "cpsid i", "~{memory}"() #2, !dbg !78, !srcloc !81
  %2 = load i32*, i32** %reg, align 4, !dbg !82
  %3 = load volatile i32, i32* %2, align 4, !dbg !82
  %or = or i32 %3, 1, !dbg !82
  store volatile i32 %or, i32* %2, align 4, !dbg !82
  %4 = load i64, i64* %Data.addr, align 8, !dbg !83
  %conv = trunc i64 %4 to i32, !dbg !84
  %5 = load i32, i32* %Address.addr, align 4, !dbg !85
  %6 = inttoptr i32 %5 to i32*, !dbg !86
  store i32 %conv, i32* %6, align 4, !dbg !87
  call void asm sideeffect "isb 0xF", "~{memory}"() #2, !dbg !88, !srcloc !91
  %7 = load i64, i64* %Data.addr, align 8, !dbg !92
  %shr = lshr i64 %7, 32, !dbg !93
  %conv1 = trunc i64 %shr to i32, !dbg !94
  %8 = load i32, i32* %Address.addr, align 4, !dbg !95
  %add = add i32 %8, 4, !dbg !96
  %9 = inttoptr i32 %add to i32*, !dbg !97
  store i32 %conv1, i32* %9, align 4, !dbg !98
  %10 = load i32, i32* %primask_bit, align 4, !dbg !99
  store i32 %10, i32* %priMask.addr.i, align 4
  %11 = load i32, i32* %priMask.addr.i, align 4, !dbg !100
  call void asm sideeffect "MSR primask, $0", "r,~{memory}"(i32 %11) #2, !dbg !103, !srcloc !104
  ret void, !dbg !105
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASH_Program_IT(i32 %TypeProgram, i32 %Address, i64 %Data) #0 !dbg !106 {
entry:
  %retval = alloca i8, align 1
  %TypeProgram.addr = alloca i32, align 4
  %Address.addr = alloca i32, align 4
  %Data.addr = alloca i64, align 8
  %status = alloca i8, align 1
  %reg_cr = alloca i32*, align 4
  store i32 %TypeProgram, i32* %TypeProgram.addr, align 4
  store i32 %Address, i32* %Address.addr, align 4
  store i64 %Data, i64* %Data.addr, align 8
  br label %do.body, !dbg !107

do.body:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !107
  %conv = zext i8 %0 to i32, !dbg !107
  %cmp = icmp eq i32 %conv, 1, !dbg !107
  br i1 %cmp, label %if.then, label %if.else, !dbg !107

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !107
  br label %return, !dbg !107

if.else:                                          ; preds = %do.body
  store i8 1, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !107
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !107

do.end:                                           ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !108
  %call = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !109
  store i8 %call, i8* %status, align 1, !dbg !110
  %1 = load i8, i8* %status, align 1, !dbg !111
  %conv2 = zext i8 %1 to i32, !dbg !111
  %cmp3 = icmp ne i32 %conv2, 0, !dbg !112
  br i1 %cmp3, label %if.then5, label %if.else8, !dbg !111

if.then5:                                         ; preds = %do.end
  br label %do.body6, !dbg !113

do.body6:                                         ; preds = %if.then5
  store i8 0, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !113
  br label %do.end7, !dbg !113

do.end7:                                          ; preds = %do.body6
  br label %if.end9, !dbg !114

if.else8:                                         ; preds = %do.end
  %2 = load i32, i32* %TypeProgram.addr, align 4, !dbg !115
  store i32 %2, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !116
  %3 = load i32, i32* %Address.addr, align 4, !dbg !117
  store i32 %3, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 3), align 4, !dbg !118
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg_cr, align 4, !dbg !119
  %4 = load i32*, i32** %reg_cr, align 4, !dbg !120
  %5 = load volatile i32, i32* %4, align 4, !dbg !121
  %or = or i32 %5, 50331648, !dbg !121
  store volatile i32 %or, i32* %4, align 4, !dbg !121
  %6 = load i32, i32* %Address.addr, align 4, !dbg !122
  %7 = load i64, i64* %Data.addr, align 8, !dbg !123
  call arm_aapcs_vfpcc void @FLASH_Program_DoubleWord(i32 %6, i64 %7), !dbg !124
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %do.end7
  %8 = load i8, i8* %status, align 1, !dbg !125
  store i8 %8, i8* %retval, align 1, !dbg !126
  br label %return, !dbg !126

return:                                           ; preds = %if.end9, %if.then
  %9 = load i8, i8* %retval, align 1, !dbg !127
  ret i8 %9, !dbg !127
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_FLASH_IRQHandler() #0 !dbg !128 {
entry:
  %param = alloca i32, align 4
  %error = alloca i32, align 4
  %type = alloca i32, align 4
  %reg = alloca i32*, align 4
  %reg_sr = alloca i32*, align 4
  store i32 0, i32* %param, align 4, !dbg !129
  %0 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !130
  %and = and i32 %0, 2147483647, !dbg !131
  store i32 %and, i32* %type, align 4, !dbg !132
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg, align 4, !dbg !133
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 7), i32** %reg_sr, align 4, !dbg !134
  %1 = load i32*, i32** %reg_sr, align 4, !dbg !135
  %2 = load volatile i32, i32* %1, align 4, !dbg !136
  %and1 = and i32 %2, 8442, !dbg !137
  store i32 %and1, i32* %error, align 4, !dbg !138
  %3 = load i32, i32* %type, align 4, !dbg !139
  %cmp = icmp eq i32 %3, 2, !dbg !140
  br i1 %cmp, label %if.then, label %if.else, !dbg !139

if.then:                                          ; preds = %entry
  %4 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 5), align 4, !dbg !141
  store i32 %4, i32* %param, align 4, !dbg !142
  br label %if.end9, !dbg !143

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %type, align 4, !dbg !144
  %cmp2 = icmp eq i32 %5, 32772, !dbg !145
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !144

if.then3:                                         ; preds = %if.else
  %6 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 4), align 4, !dbg !146
  store i32 %6, i32* %param, align 4, !dbg !147
  br label %if.end8, !dbg !148

if.else4:                                         ; preds = %if.else
  %7 = load i32, i32* %type, align 4, !dbg !149
  %cmp5 = icmp eq i32 %7, 1, !dbg !150
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !149

if.then6:                                         ; preds = %if.else4
  %8 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 3), align 4, !dbg !151
  store i32 %8, i32* %param, align 4, !dbg !152
  br label %if.end, !dbg !153

if.else7:                                         ; preds = %if.else4
  br label %if.end

if.end:                                           ; preds = %if.else7, %if.then6
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  %9 = load i32, i32* %type, align 4, !dbg !154
  %neg = xor i32 %9, -1, !dbg !154
  %10 = load i32*, i32** %reg, align 4, !dbg !154
  %11 = load volatile i32, i32* %10, align 4, !dbg !154
  %and10 = and i32 %11, %neg, !dbg !154
  store volatile i32 %and10, i32* %10, align 4, !dbg !154
  %12 = load i32, i32* %error, align 4, !dbg !155
  %cmp11 = icmp ne i32 %12, 0, !dbg !156
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !155

if.then12:                                        ; preds = %if.end9
  %13 = load i32, i32* %error, align 4, !dbg !157
  %14 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !158
  %or = or i32 %14, %13, !dbg !158
  store i32 %or, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !158
  %15 = load i32, i32* %error, align 4, !dbg !159
  %16 = load i32*, i32** %reg_sr, align 4, !dbg !160
  store volatile i32 %15, i32* %16, align 4, !dbg !161
  store i32 0, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !162
  %17 = load i32, i32* %param, align 4, !dbg !163
  call arm_aapcs_vfpcc void @HAL_FLASH_OperationErrorCallback(i32 %17), !dbg !164
  br label %if.end13, !dbg !165

if.end13:                                         ; preds = %if.then12, %if.end9
  %18 = load i32*, i32** %reg_sr, align 4, !dbg !166
  %19 = load volatile i32, i32* %18, align 4, !dbg !167
  %and14 = and i32 %19, 1, !dbg !168
  %cmp15 = icmp ne i32 %and14, 0, !dbg !169
  br i1 %cmp15, label %if.then16, label %if.end25, !dbg !170

if.then16:                                        ; preds = %if.end13
  %20 = load i32*, i32** %reg_sr, align 4, !dbg !171
  store volatile i32 1, i32* %20, align 4, !dbg !172
  %21 = load i32, i32* %type, align 4, !dbg !173
  %cmp17 = icmp eq i32 %21, 2, !dbg !174
  br i1 %cmp17, label %if.then18, label %if.else23, !dbg !173

if.then18:                                        ; preds = %if.then16
  %22 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 6), align 4, !dbg !175
  %dec = add i32 %22, -1, !dbg !175
  store i32 %dec, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 6), align 4, !dbg !175
  %23 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 6), align 4, !dbg !176
  %cmp19 = icmp ne i32 %23, 0, !dbg !177
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !178

if.then20:                                        ; preds = %if.then18
  %24 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 5), align 4, !dbg !179
  %inc = add i32 %24, 1, !dbg !179
  store i32 %inc, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 5), align 4, !dbg !179
  %25 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 5), align 4, !dbg !180
  %26 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 4), align 4, !dbg !181
  call arm_aapcs_vfpcc void @FLASH_PageErase(i32 %25, i32 %26), !dbg !182
  br label %if.end22, !dbg !183

if.else21:                                        ; preds = %if.then18
  store i32 0, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !184
  store i32 -1, i32* %param, align 4, !dbg !185
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  br label %if.end24, !dbg !186

if.else23:                                        ; preds = %if.then16
  store i32 0, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !187
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.end22
  %27 = load i32, i32* %param, align 4, !dbg !188
  call arm_aapcs_vfpcc void @HAL_FLASH_EndOfOperationCallback(i32 %27), !dbg !189
  br label %if.end25, !dbg !190

if.end25:                                         ; preds = %if.end24, %if.end13
  %28 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !191
  %cmp26 = icmp eq i32 %28, 0, !dbg !192
  br i1 %cmp26, label %if.then27, label %if.end29, !dbg !193

if.then27:                                        ; preds = %if.end25
  %29 = load i32*, i32** %reg, align 4, !dbg !194
  %30 = load volatile i32, i32* %29, align 4, !dbg !195
  %and28 = and i32 %30, -50331649, !dbg !195
  store volatile i32 %and28, i32* %29, align 4, !dbg !195
  br label %do.body, !dbg !196

do.body:                                          ; preds = %if.then27
  store i8 0, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !196
  br label %do.end, !dbg !196

do.end:                                           ; preds = %do.body
  br label %if.end29, !dbg !197

if.end29:                                         ; preds = %do.end, %if.end25
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_FLASH_OperationErrorCallback(i32 %ReturnValue) #0 !dbg !199 {
entry:
  %ReturnValue.addr = alloca i32, align 4
  store i32 %ReturnValue, i32* %ReturnValue.addr, align 4
  %0 = load i32, i32* %ReturnValue.addr, align 4, !dbg !200
  ret void, !dbg !201
}

declare dso_local arm_aapcs_vfpcc void @FLASH_PageErase(i32, i32) #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_FLASH_EndOfOperationCallback(i32 %ReturnValue) #0 !dbg !202 {
entry:
  %ReturnValue.addr = alloca i32, align 4
  store i32 %ReturnValue, i32* %ReturnValue.addr, align 4
  %0 = load i32, i32* %ReturnValue.addr, align 4, !dbg !203
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASH_Unlock() #0 !dbg !205 {
entry:
  %status = alloca i8, align 1
  store i8 0, i8* %status, align 1, !dbg !206
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !207
  %and = and i32 %0, -2147483648, !dbg !207
  %cmp = icmp ne i32 %and, 0, !dbg !208
  br i1 %cmp, label %if.then, label %if.end4, !dbg !207

if.then:                                          ; preds = %entry
  store volatile i32 1164378403, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 2), align 4, !dbg !209
  store volatile i32 -839939669, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 2), align 4, !dbg !210
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !211
  %and1 = and i32 %1, -2147483648, !dbg !211
  %cmp2 = icmp ne i32 %and1, 0, !dbg !212
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !211

if.then3:                                         ; preds = %if.then
  store i8 1, i8* %status, align 1, !dbg !213
  br label %if.end, !dbg !214

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4, !dbg !215

if.end4:                                          ; preds = %if.end, %entry
  %2 = load i8, i8* %status, align 1, !dbg !216
  ret i8 %2, !dbg !217
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASH_Lock() #0 !dbg !218 {
entry:
  %status = alloca i8, align 1
  store i8 1, i8* %status, align 1, !dbg !219
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !220
  %or = or i32 %0, -2147483648, !dbg !220
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !220
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !221
  %and = and i32 %1, -2147483648, !dbg !221
  %cmp = icmp ne i32 %and, 0, !dbg !222
  br i1 %cmp, label %if.then, label %if.end, !dbg !221

if.then:                                          ; preds = %entry
  store i8 0, i8* %status, align 1, !dbg !223
  br label %if.end, !dbg !224

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %status, align 1, !dbg !225
  ret i8 %2, !dbg !226
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASH_OB_Unlock() #0 !dbg !227 {
entry:
  %retval = alloca i8, align 1
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !228
  %and = and i32 %0, 1073741824, !dbg !228
  %cmp = icmp ne i32 %and, 0, !dbg !229
  br i1 %cmp, label %if.then, label %if.end4, !dbg !228

if.then:                                          ; preds = %entry
  store volatile i32 135866939, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 4), align 4, !dbg !230
  store volatile i32 1281191551, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 4), align 4, !dbg !231
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !232
  %and1 = and i32 %1, 1073741824, !dbg !232
  %cmp2 = icmp ne i32 %and1, 0, !dbg !233
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !232

if.then3:                                         ; preds = %if.then
  store i8 1, i8* %retval, align 1, !dbg !234
  br label %return, !dbg !234

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !235

if.end4:                                          ; preds = %if.end, %entry
  store i8 0, i8* %retval, align 1, !dbg !236
  br label %return, !dbg !236

return:                                           ; preds = %if.end4, %if.then3
  %2 = load i8, i8* %retval, align 1, !dbg !237
  ret i8 %2, !dbg !237
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASH_OB_Lock() #0 !dbg !238 {
entry:
  %retval = alloca i8, align 1
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !239
  %or = or i32 %0, 1073741824, !dbg !239
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !239
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !240
  %and = and i32 %1, 1073741824, !dbg !240
  %cmp = icmp ne i32 %and, 0, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !240

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !242
  br label %return, !dbg !242

if.end:                                           ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !243
  br label %return, !dbg !243

return:                                           ; preds = %if.end, %if.then
  %2 = load i8, i8* %retval, align 1, !dbg !244
  ret i8 %2, !dbg !244
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASH_OB_Launch() #0 !dbg !245 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !246
  %or = or i32 %0, 134217728, !dbg !246
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !246
  ret i8 1, !dbg !247
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_FLASH_GetError() #0 !dbg !248 {
entry:
  %0 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !249
  ret i32 %0, !dbg !250
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_GetTick() #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_FLASH_Program", scope: !1, file: !1, line: 159, type: !9, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 168, column: 3, scope: !8)
!11 = !DILocation(line: 171, column: 20, scope: !8)
!12 = !DILocation(line: 174, column: 12, scope: !8)
!13 = !DILocation(line: 174, column: 10, scope: !8)
!14 = !DILocation(line: 176, column: 6, scope: !8)
!15 = !DILocation(line: 176, column: 13, scope: !8)
!16 = !DILocation(line: 178, column: 31, scope: !8)
!17 = !DILocation(line: 178, column: 29, scope: !8)
!18 = !DILocation(line: 179, column: 9, scope: !8)
!19 = !DILocation(line: 182, column: 30, scope: !8)
!20 = !DILocation(line: 182, column: 39, scope: !8)
!21 = !DILocation(line: 182, column: 5, scope: !8)
!22 = !DILocation(line: 185, column: 14, scope: !8)
!23 = !DILocation(line: 185, column: 12, scope: !8)
!24 = !DILocation(line: 188, column: 5, scope: !8)
!25 = !DILocation(line: 189, column: 3, scope: !8)
!26 = !DILocation(line: 192, column: 3, scope: !8)
!27 = !DILocation(line: 194, column: 10, scope: !8)
!28 = !DILocation(line: 194, column: 3, scope: !8)
!29 = !DILocation(line: 195, column: 1, scope: !8)
!30 = distinct !DISubprogram(name: "FLASH_WaitForLastOperation", scope: !1, file: !1, line: 596, type: !9, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DILocation(line: 602, column: 22, scope: !30)
!32 = !DILocation(line: 602, column: 38, scope: !30)
!33 = !DILocation(line: 602, column: 36, scope: !30)
!34 = !DILocation(line: 602, column: 12, scope: !30)
!35 = !DILocation(line: 606, column: 3, scope: !30)
!36 = !DILocation(line: 606, column: 9, scope: !30)
!37 = !DILocation(line: 608, column: 8, scope: !30)
!38 = !DILocation(line: 608, column: 16, scope: !30)
!39 = !DILocation(line: 610, column: 10, scope: !30)
!40 = !DILocation(line: 610, column: 27, scope: !30)
!41 = !DILocation(line: 610, column: 24, scope: !30)
!42 = !DILocation(line: 612, column: 9, scope: !30)
!43 = !DILocation(line: 614, column: 5, scope: !30)
!44 = distinct !{!44, !35, !45}
!45 = !DILocation(line: 615, column: 3, scope: !30)
!46 = !DILocation(line: 618, column: 10, scope: !30)
!47 = !DILocation(line: 621, column: 14, scope: !30)
!48 = !DILocation(line: 621, column: 13, scope: !30)
!49 = !DILocation(line: 621, column: 22, scope: !30)
!50 = !DILocation(line: 621, column: 9, scope: !30)
!51 = !DILocation(line: 626, column: 6, scope: !30)
!52 = !DILocation(line: 626, column: 12, scope: !30)
!53 = !DILocation(line: 629, column: 25, scope: !30)
!54 = !DILocation(line: 629, column: 22, scope: !30)
!55 = !DILocation(line: 632, column: 17, scope: !30)
!56 = !DILocation(line: 632, column: 7, scope: !30)
!57 = !DILocation(line: 632, column: 15, scope: !30)
!58 = !DILocation(line: 640, column: 5, scope: !30)
!59 = !DILocation(line: 644, column: 10, scope: !30)
!60 = !DILocation(line: 644, column: 9, scope: !30)
!61 = !DILocation(line: 644, column: 18, scope: !30)
!62 = !DILocation(line: 644, column: 36, scope: !30)
!63 = !DILocation(line: 644, column: 7, scope: !30)
!64 = !DILocation(line: 647, column: 7, scope: !30)
!65 = !DILocation(line: 647, column: 15, scope: !30)
!66 = !DILocation(line: 648, column: 3, scope: !30)
!67 = !DILocation(line: 651, column: 3, scope: !30)
!68 = !DILocation(line: 652, column: 1, scope: !30)
!69 = distinct !DISubprogram(name: "FLASH_Program_DoubleWord", scope: !1, file: !1, line: 660, type: !9, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!70 = !DILocation(line: 668, column: 7, scope: !69)
!71 = !DILocation(line: 453, column: 3, scope: !72, inlinedAt: !74)
!72 = distinct !DISubprogram(name: "__get_PRIMASK", scope: !73, file: !73, line: 449, type: !9, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!73 = !DIFile(filename: "../Drivers/CMSIS/Include/cmsis_gcc.h", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!74 = distinct !DILocation(line: 671, column: 17, scope: !69)
!75 = !{i32 2118649}
!76 = !DILocation(line: 454, column: 10, scope: !72, inlinedAt: !74)
!77 = !DILocation(line: 671, column: 15, scope: !69)
!78 = !DILocation(line: 209, column: 3, scope: !79, inlinedAt: !80)
!79 = distinct !DISubprogram(name: "__disable_irq", scope: !73, file: !73, line: 207, type: !9, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!80 = distinct !DILocation(line: 672, column: 3, scope: !69)
!81 = !{i32 2112187}
!82 = !DILocation(line: 675, column: 3, scope: !69)
!83 = !DILocation(line: 678, column: 35, scope: !69)
!84 = !DILocation(line: 678, column: 25, scope: !69)
!85 = !DILocation(line: 678, column: 15, scope: !69)
!86 = !DILocation(line: 678, column: 4, scope: !69)
!87 = !DILocation(line: 678, column: 23, scope: !69)
!88 = !DILocation(line: 935, column: 3, scope: !89, inlinedAt: !90)
!89 = distinct !DISubprogram(name: "__ISB", scope: !73, file: !73, line: 933, type: !9, scopeLine: 934, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!90 = distinct !DILocation(line: 682, column: 3, scope: !69)
!91 = !{i32 2134382}
!92 = !DILocation(line: 685, column: 41, scope: !69)
!93 = !DILocation(line: 685, column: 46, scope: !69)
!94 = !DILocation(line: 685, column: 30, scope: !69)
!95 = !DILocation(line: 685, column: 16, scope: !69)
!96 = !DILocation(line: 685, column: 23, scope: !69)
!97 = !DILocation(line: 685, column: 4, scope: !69)
!98 = !DILocation(line: 685, column: 28, scope: !69)
!99 = !DILocation(line: 688, column: 17, scope: !69)
!100 = !DILocation(line: 481, column: 46, scope: !101, inlinedAt: !102)
!101 = distinct !DISubprogram(name: "__set_PRIMASK", scope: !73, file: !73, line: 479, type: !9, scopeLine: 480, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = distinct !DILocation(line: 688, column: 3, scope: !69)
!103 = !DILocation(line: 481, column: 3, scope: !101, inlinedAt: !102)
!104 = !{i32 2119430}
!105 = !DILocation(line: 689, column: 1, scope: !69)
!106 = distinct !DISubprogram(name: "HAL_FLASH_Program_IT", scope: !1, file: !1, line: 207, type: !9, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!107 = !DILocation(line: 216, column: 3, scope: !106)
!108 = !DILocation(line: 219, column: 20, scope: !106)
!109 = !DILocation(line: 222, column: 12, scope: !106)
!110 = !DILocation(line: 222, column: 10, scope: !106)
!111 = !DILocation(line: 224, column: 7, scope: !106)
!112 = !DILocation(line: 224, column: 14, scope: !106)
!113 = !DILocation(line: 227, column: 5, scope: !106)
!114 = !DILocation(line: 228, column: 3, scope: !106)
!115 = !DILocation(line: 232, column: 31, scope: !106)
!116 = !DILocation(line: 232, column: 29, scope: !106)
!117 = !DILocation(line: 233, column: 22, scope: !106)
!118 = !DILocation(line: 233, column: 20, scope: !106)
!119 = !DILocation(line: 236, column: 12, scope: !106)
!120 = !DILocation(line: 239, column: 7, scope: !106)
!121 = !DILocation(line: 239, column: 15, scope: !106)
!122 = !DILocation(line: 242, column: 30, scope: !106)
!123 = !DILocation(line: 242, column: 39, scope: !106)
!124 = !DILocation(line: 242, column: 5, scope: !106)
!125 = !DILocation(line: 245, column: 10, scope: !106)
!126 = !DILocation(line: 245, column: 3, scope: !106)
!127 = !DILocation(line: 246, column: 1, scope: !106)
!128 = distinct !DISubprogram(name: "HAL_FLASH_IRQHandler", scope: !1, file: !1, line: 252, type: !9, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DILocation(line: 254, column: 12, scope: !128)
!130 = !DILocation(line: 259, column: 18, scope: !128)
!131 = !DILocation(line: 259, column: 35, scope: !128)
!132 = !DILocation(line: 259, column: 8, scope: !128)
!133 = !DILocation(line: 260, column: 7, scope: !128)
!134 = !DILocation(line: 261, column: 10, scope: !128)
!135 = !DILocation(line: 264, column: 13, scope: !128)
!136 = !DILocation(line: 264, column: 12, scope: !128)
!137 = !DILocation(line: 264, column: 21, scope: !128)
!138 = !DILocation(line: 264, column: 9, scope: !128)
!139 = !DILocation(line: 270, column: 6, scope: !128)
!140 = !DILocation(line: 270, column: 11, scope: !128)
!141 = !DILocation(line: 272, column: 20, scope: !128)
!142 = !DILocation(line: 272, column: 11, scope: !128)
!143 = !DILocation(line: 273, column: 3, scope: !128)
!144 = !DILocation(line: 274, column: 11, scope: !128)
!145 = !DILocation(line: 274, column: 16, scope: !128)
!146 = !DILocation(line: 276, column: 20, scope: !128)
!147 = !DILocation(line: 276, column: 11, scope: !128)
!148 = !DILocation(line: 277, column: 3, scope: !128)
!149 = !DILocation(line: 278, column: 11, scope: !128)
!150 = !DILocation(line: 278, column: 16, scope: !128)
!151 = !DILocation(line: 280, column: 20, scope: !128)
!152 = !DILocation(line: 280, column: 11, scope: !128)
!153 = !DILocation(line: 281, column: 3, scope: !128)
!154 = !DILocation(line: 288, column: 3, scope: !128)
!155 = !DILocation(line: 291, column: 6, scope: !128)
!156 = !DILocation(line: 291, column: 12, scope: !128)
!157 = !DILocation(line: 294, column: 25, scope: !128)
!158 = !DILocation(line: 294, column: 22, scope: !128)
!159 = !DILocation(line: 297, column: 17, scope: !128)
!160 = !DILocation(line: 297, column: 7, scope: !128)
!161 = !DILocation(line: 297, column: 15, scope: !128)
!162 = !DILocation(line: 306, column: 29, scope: !128)
!163 = !DILocation(line: 309, column: 38, scope: !128)
!164 = !DILocation(line: 309, column: 5, scope: !128)
!165 = !DILocation(line: 310, column: 3, scope: !128)
!166 = !DILocation(line: 313, column: 10, scope: !128)
!167 = !DILocation(line: 313, column: 9, scope: !128)
!168 = !DILocation(line: 313, column: 18, scope: !128)
!169 = !DILocation(line: 313, column: 36, scope: !128)
!170 = !DILocation(line: 313, column: 7, scope: !128)
!171 = !DILocation(line: 316, column: 7, scope: !128)
!172 = !DILocation(line: 316, column: 15, scope: !128)
!173 = !DILocation(line: 318, column: 8, scope: !128)
!174 = !DILocation(line: 318, column: 13, scope: !128)
!175 = !DILocation(line: 321, column: 28, scope: !128)
!176 = !DILocation(line: 324, column: 17, scope: !128)
!177 = !DILocation(line: 324, column: 32, scope: !128)
!178 = !DILocation(line: 324, column: 10, scope: !128)
!179 = !DILocation(line: 327, column: 20, scope: !128)
!180 = !DILocation(line: 328, column: 32, scope: !128)
!181 = !DILocation(line: 328, column: 45, scope: !128)
!182 = !DILocation(line: 328, column: 9, scope: !128)
!183 = !DILocation(line: 329, column: 7, scope: !128)
!184 = !DILocation(line: 333, column: 33, scope: !128)
!185 = !DILocation(line: 334, column: 15, scope: !128)
!186 = !DILocation(line: 336, column: 5, scope: !128)
!187 = !DILocation(line: 340, column: 31, scope: !128)
!188 = !DILocation(line: 344, column: 38, scope: !128)
!189 = !DILocation(line: 344, column: 5, scope: !128)
!190 = !DILocation(line: 345, column: 3, scope: !128)
!191 = !DILocation(line: 347, column: 13, scope: !128)
!192 = !DILocation(line: 347, column: 30, scope: !128)
!193 = !DILocation(line: 347, column: 6, scope: !128)
!194 = !DILocation(line: 350, column: 7, scope: !128)
!195 = !DILocation(line: 350, column: 12, scope: !128)
!196 = !DILocation(line: 353, column: 5, scope: !128)
!197 = !DILocation(line: 354, column: 3, scope: !128)
!198 = !DILocation(line: 355, column: 1, scope: !128)
!199 = distinct !DISubprogram(name: "HAL_FLASH_OperationErrorCallback", scope: !1, file: !1, line: 384, type: !9, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!200 = !DILocation(line: 387, column: 3, scope: !199)
!201 = !DILocation(line: 392, column: 1, scope: !199)
!202 = distinct !DISubprogram(name: "HAL_FLASH_EndOfOperationCallback", scope: !1, file: !1, line: 366, type: !9, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!203 = !DILocation(line: 369, column: 3, scope: !202)
!204 = !DILocation(line: 374, column: 1, scope: !202)
!205 = distinct !DISubprogram(name: "HAL_FLASH_Unlock", scope: !1, file: !1, line: 417, type: !9, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DILocation(line: 419, column: 21, scope: !205)
!207 = !DILocation(line: 421, column: 6, scope: !205)
!208 = !DILocation(line: 421, column: 47, scope: !205)
!209 = !DILocation(line: 424, column: 5, scope: !205)
!210 = !DILocation(line: 425, column: 5, scope: !205)
!211 = !DILocation(line: 428, column: 9, scope: !205)
!212 = !DILocation(line: 428, column: 50, scope: !205)
!213 = !DILocation(line: 430, column: 14, scope: !205)
!214 = !DILocation(line: 431, column: 5, scope: !205)
!215 = !DILocation(line: 432, column: 3, scope: !205)
!216 = !DILocation(line: 452, column: 10, scope: !205)
!217 = !DILocation(line: 452, column: 3, scope: !205)
!218 = distinct !DISubprogram(name: "HAL_FLASH_Lock", scope: !1, file: !1, line: 459, type: !9, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DILocation(line: 461, column: 21, scope: !218)
!220 = !DILocation(line: 464, column: 3, scope: !218)
!221 = !DILocation(line: 467, column: 7, scope: !218)
!222 = !DILocation(line: 467, column: 48, scope: !218)
!223 = !DILocation(line: 469, column: 12, scope: !218)
!224 = !DILocation(line: 470, column: 3, scope: !218)
!225 = !DILocation(line: 485, column: 10, scope: !218)
!226 = !DILocation(line: 485, column: 3, scope: !218)
!227 = distinct !DISubprogram(name: "HAL_FLASH_OB_Unlock", scope: !1, file: !1, line: 492, type: !9, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!228 = !DILocation(line: 494, column: 6, scope: !227)
!229 = !DILocation(line: 494, column: 48, scope: !227)
!230 = !DILocation(line: 497, column: 5, scope: !227)
!231 = !DILocation(line: 498, column: 5, scope: !227)
!232 = !DILocation(line: 501, column: 9, scope: !227)
!233 = !DILocation(line: 501, column: 51, scope: !227)
!234 = !DILocation(line: 503, column: 7, scope: !227)
!235 = !DILocation(line: 505, column: 3, scope: !227)
!236 = !DILocation(line: 507, column: 3, scope: !227)
!237 = !DILocation(line: 508, column: 1, scope: !227)
!238 = distinct !DISubprogram(name: "HAL_FLASH_OB_Lock", scope: !1, file: !1, line: 514, type: !9, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!239 = !DILocation(line: 517, column: 3, scope: !238)
!240 = !DILocation(line: 520, column: 7, scope: !238)
!241 = !DILocation(line: 520, column: 49, scope: !238)
!242 = !DILocation(line: 522, column: 5, scope: !238)
!243 = !DILocation(line: 525, column: 3, scope: !238)
!244 = !DILocation(line: 526, column: 1, scope: !238)
!245 = distinct !DISubprogram(name: "HAL_FLASH_OB_Launch", scope: !1, file: !1, line: 532, type: !9, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!246 = !DILocation(line: 535, column: 3, scope: !245)
!247 = !DILocation(line: 539, column: 3, scope: !245)
!248 = distinct !DISubprogram(name: "HAL_FLASH_GetError", scope: !1, file: !1, line: 572, type: !9, scopeLine: 573, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!249 = !DILocation(line: 574, column: 18, scope: !248)
!250 = !DILocation(line: 574, column: 4, scope: !248)
