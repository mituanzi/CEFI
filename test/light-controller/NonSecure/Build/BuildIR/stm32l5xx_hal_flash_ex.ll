; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash_ex.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash_ex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.FLASH_ProcessTypeDef = type { i8, i32, i32, i32, i32, i32, i32 }
%struct.FLASH_EraseInitTypeDef = type { i32, i32, i32, i32 }
%struct.FLASH_TypeDef = type { i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, [4 x i32], i32, i32, i32, i32, [4 x i32], i32, i32 }
%struct.FLASH_OBProgramInitTypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pFlash = external dso_local global %struct.FLASH_ProcessTypeDef, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASHEx_Erase(%struct.FLASH_EraseInitTypeDef* %pEraseInit, i32* %PageError) #0 !dbg !8 {
entry:
  %retval = alloca i8, align 1
  %pEraseInit.addr = alloca %struct.FLASH_EraseInitTypeDef*, align 4
  %PageError.addr = alloca i32*, align 4
  %status = alloca i8, align 1
  %page_index = alloca i32, align 4
  %reg = alloca i32*, align 4
  store %struct.FLASH_EraseInitTypeDef* %pEraseInit, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4
  store i32* %PageError, i32** %PageError.addr, align 4
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
  br i1 %cmp3, label %if.then5, label %if.end24, !dbg !14

if.then5:                                         ; preds = %do.end
  %2 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !16
  %TypeErase = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %2, i32 0, i32 0, !dbg !17
  %3 = load i32, i32* %TypeErase, align 4, !dbg !17
  store i32 %3, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !18
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg, align 4, !dbg !19
  %4 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !20
  %and = and i32 %4, 2147483647, !dbg !21
  %cmp6 = icmp eq i32 %and, 32772, !dbg !22
  br i1 %cmp6, label %if.then8, label %if.else10, !dbg !23

if.then8:                                         ; preds = %if.then5
  %5 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !24
  %Banks = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %5, i32 0, i32 1, !dbg !25
  %6 = load i32, i32* %Banks, align 4, !dbg !25
  call arm_aapcs_vfpcc void @FLASH_MassErase(i32 %6), !dbg !26
  %call9 = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !27
  store i8 %call9, i8* %status, align 1, !dbg !28
  br label %if.end21, !dbg !29

if.else10:                                        ; preds = %if.then5
  %7 = load i32*, i32** %PageError.addr, align 4, !dbg !30
  store i32 -1, i32* %7, align 4, !dbg !31
  %8 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !32
  %Page = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %8, i32 0, i32 2, !dbg !33
  %9 = load i32, i32* %Page, align 4, !dbg !33
  store i32 %9, i32* %page_index, align 4, !dbg !34
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.else10
  %10 = load i32, i32* %page_index, align 4, !dbg !36
  %11 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !37
  %Page11 = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %11, i32 0, i32 2, !dbg !38
  %12 = load i32, i32* %Page11, align 4, !dbg !38
  %13 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !39
  %NbPages = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %13, i32 0, i32 3, !dbg !40
  %14 = load i32, i32* %NbPages, align 4, !dbg !40
  %add = add i32 %12, %14, !dbg !41
  %cmp12 = icmp ult i32 %10, %add, !dbg !42
  br i1 %cmp12, label %for.body, label %for.end, !dbg !43

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %page_index, align 4, !dbg !44
  %16 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !45
  %Banks14 = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %16, i32 0, i32 1, !dbg !46
  %17 = load i32, i32* %Banks14, align 4, !dbg !46
  call arm_aapcs_vfpcc void @FLASH_PageErase(i32 %15, i32 %17), !dbg !47
  %call15 = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !48
  store i8 %call15, i8* %status, align 1, !dbg !49
  %18 = load i8, i8* %status, align 1, !dbg !50
  %conv16 = zext i8 %18 to i32, !dbg !50
  %cmp17 = icmp ne i32 %conv16, 0, !dbg !51
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !50

if.then19:                                        ; preds = %for.body
  %19 = load i32, i32* %page_index, align 4, !dbg !52
  %20 = load i32*, i32** %PageError.addr, align 4, !dbg !53
  store i32 %19, i32* %20, align 4, !dbg !54
  br label %for.end, !dbg !55

if.end20:                                         ; preds = %for.body
  br label %for.inc, !dbg !56

for.inc:                                          ; preds = %if.end20
  %21 = load i32, i32* %page_index, align 4, !dbg !57
  %inc = add i32 %21, 1, !dbg !57
  store i32 %inc, i32* %page_index, align 4, !dbg !57
  br label %for.cond, !dbg !43, !llvm.loop !58

for.end:                                          ; preds = %if.then19, %for.cond
  br label %if.end21

if.end21:                                         ; preds = %for.end, %if.then8
  %22 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !59
  %and22 = and i32 %22, 2147483647, !dbg !59
  %neg = xor i32 %and22, -1, !dbg !59
  %23 = load i32*, i32** %reg, align 4, !dbg !59
  %24 = load volatile i32, i32* %23, align 4, !dbg !59
  %and23 = and i32 %24, %neg, !dbg !59
  store volatile i32 %and23, i32* %23, align 4, !dbg !59
  br label %if.end24, !dbg !60

if.end24:                                         ; preds = %if.end21, %do.end
  br label %do.body25, !dbg !61

do.body25:                                        ; preds = %if.end24
  store i8 0, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !61
  br label %do.end26, !dbg !61

do.end26:                                         ; preds = %do.body25
  %25 = load i8, i8* %status, align 1, !dbg !62
  store i8 %25, i8* %retval, align 1, !dbg !63
  br label %return, !dbg !63

return:                                           ; preds = %do.end26, %if.then
  %26 = load i8, i8* %retval, align 1, !dbg !64
  ret i8 %26, !dbg !64
}

declare dso_local arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32) #1

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_MassErase(i32 %Banks) #0 !dbg !65 {
entry:
  %Banks.addr = alloca i32, align 4
  %reg = alloca i32*, align 4
  store i32 %Banks, i32* %Banks.addr, align 4
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg, align 4, !dbg !66
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !67
  %and = and i32 %0, 4194304, !dbg !67
  %cmp = icmp ne i32 %and, 0, !dbg !68
  br i1 %cmp, label %if.then, label %if.else, !dbg !67

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %Banks.addr, align 4, !dbg !69
  %and1 = and i32 %1, 1, !dbg !70
  %cmp2 = icmp ne i32 %and1, 0, !dbg !71
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !72

if.then3:                                         ; preds = %if.then
  %2 = load i32*, i32** %reg, align 4, !dbg !73
  %3 = load volatile i32, i32* %2, align 4, !dbg !73
  %or = or i32 %3, 4, !dbg !73
  store volatile i32 %or, i32* %2, align 4, !dbg !73
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then3, %if.then
  %4 = load i32, i32* %Banks.addr, align 4, !dbg !75
  %and4 = and i32 %4, 2, !dbg !76
  %cmp5 = icmp ne i32 %and4, 0, !dbg !77
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !78

if.then6:                                         ; preds = %if.end
  %5 = load i32*, i32** %reg, align 4, !dbg !79
  %6 = load volatile i32, i32* %5, align 4, !dbg !79
  %or7 = or i32 %6, 32768, !dbg !79
  store volatile i32 %or7, i32* %5, align 4, !dbg !79
  br label %if.end8, !dbg !80

if.end8:                                          ; preds = %if.then6, %if.end
  br label %if.end10, !dbg !81

if.else:                                          ; preds = %entry
  %7 = load i32*, i32** %reg, align 4, !dbg !82
  %8 = load volatile i32, i32* %7, align 4, !dbg !82
  %or9 = or i32 %8, 32772, !dbg !82
  store volatile i32 %or9, i32* %7, align 4, !dbg !82
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.end8
  %9 = load i32*, i32** %reg, align 4, !dbg !83
  %10 = load volatile i32, i32* %9, align 4, !dbg !83
  %or11 = or i32 %10, 65536, !dbg !83
  store volatile i32 %or11, i32* %9, align 4, !dbg !83
  ret void, !dbg !84
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @FLASH_PageErase(i32 %Page, i32 %Banks) #0 !dbg !85 {
entry:
  %Page.addr = alloca i32, align 4
  %Banks.addr = alloca i32, align 4
  %reg = alloca i32*, align 4
  store i32 %Page, i32* %Page.addr, align 4
  store i32 %Banks, i32* %Banks.addr, align 4
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg, align 4, !dbg !86
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !87
  %and = and i32 %0, 4194304, !dbg !87
  %cmp = icmp eq i32 %and, 0, !dbg !88
  br i1 %cmp, label %if.then, label %if.else, !dbg !87

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %reg, align 4, !dbg !89
  %2 = load volatile i32, i32* %1, align 4, !dbg !89
  %and1 = and i32 %2, -2049, !dbg !89
  store volatile i32 %and1, i32* %1, align 4, !dbg !89
  br label %if.end7, !dbg !90

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %Banks.addr, align 4, !dbg !91
  %and2 = and i32 %3, 1, !dbg !92
  %cmp3 = icmp ne i32 %and2, 0, !dbg !93
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !94

if.then4:                                         ; preds = %if.else
  %4 = load i32*, i32** %reg, align 4, !dbg !95
  %5 = load volatile i32, i32* %4, align 4, !dbg !95
  %and5 = and i32 %5, -2049, !dbg !95
  store volatile i32 %and5, i32* %4, align 4, !dbg !95
  br label %if.end, !dbg !96

if.else6:                                         ; preds = %if.else
  %6 = load i32*, i32** %reg, align 4, !dbg !97
  %7 = load volatile i32, i32* %6, align 4, !dbg !97
  %or = or i32 %7, 2048, !dbg !97
  store volatile i32 %or, i32* %6, align 4, !dbg !97
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load i32*, i32** %reg, align 4, !dbg !98
  %9 = load volatile i32, i32* %8, align 4, !dbg !98
  %and8 = and i32 %9, -1019, !dbg !98
  %10 = load i32, i32* %Page.addr, align 4, !dbg !98
  %shl = shl i32 %10, 3, !dbg !98
  %or9 = or i32 %shl, 2, !dbg !98
  %or10 = or i32 %and8, %or9, !dbg !98
  %11 = load i32*, i32** %reg, align 4, !dbg !98
  store volatile i32 %or10, i32* %11, align 4, !dbg !98
  %12 = load i32*, i32** %reg, align 4, !dbg !99
  %13 = load volatile i32, i32* %12, align 4, !dbg !99
  %or11 = or i32 %13, 65536, !dbg !99
  store volatile i32 %or11, i32* %12, align 4, !dbg !99
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASHEx_Erase_IT(%struct.FLASH_EraseInitTypeDef* %pEraseInit) #0 !dbg !101 {
entry:
  %retval = alloca i8, align 1
  %pEraseInit.addr = alloca %struct.FLASH_EraseInitTypeDef*, align 4
  %status = alloca i8, align 1
  %reg_cr = alloca i32*, align 4
  store %struct.FLASH_EraseInitTypeDef* %pEraseInit, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4
  br label %do.body, !dbg !102

do.body:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !102
  %conv = zext i8 %0 to i32, !dbg !102
  %cmp = icmp eq i32 %conv, 1, !dbg !102
  br i1 %cmp, label %if.then, label %if.else, !dbg !102

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !102
  br label %return, !dbg !102

if.else:                                          ; preds = %do.body
  store i8 1, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !102
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !102

do.end:                                           ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !103
  %call = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !104
  store i8 %call, i8* %status, align 1, !dbg !105
  %1 = load i8, i8* %status, align 1, !dbg !106
  %conv2 = zext i8 %1 to i32, !dbg !106
  %cmp3 = icmp ne i32 %conv2, 0, !dbg !107
  br i1 %cmp3, label %if.then5, label %if.else8, !dbg !106

if.then5:                                         ; preds = %do.end
  br label %do.body6, !dbg !108

do.body6:                                         ; preds = %if.then5
  store i8 0, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !108
  br label %do.end7, !dbg !108

do.end7:                                          ; preds = %do.body6
  br label %if.end17, !dbg !109

if.else8:                                         ; preds = %do.end
  %2 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !110
  %TypeErase = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %2, i32 0, i32 0, !dbg !111
  %3 = load i32, i32* %TypeErase, align 4, !dbg !111
  store i32 %3, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !112
  %4 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !113
  %Banks = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %4, i32 0, i32 1, !dbg !114
  %5 = load i32, i32* %Banks, align 4, !dbg !114
  store i32 %5, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 4), align 4, !dbg !115
  store i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), i32** %reg_cr, align 4, !dbg !116
  %6 = load i32*, i32** %reg_cr, align 4, !dbg !117
  %7 = load volatile i32, i32* %6, align 4, !dbg !118
  %or = or i32 %7, 50331648, !dbg !118
  store volatile i32 %or, i32* %6, align 4, !dbg !118
  %8 = load i32, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 2), align 4, !dbg !119
  %and = and i32 %8, 2147483647, !dbg !120
  %cmp9 = icmp eq i32 %and, 32772, !dbg !121
  br i1 %cmp9, label %if.then11, label %if.else13, !dbg !122

if.then11:                                        ; preds = %if.else8
  %9 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !123
  %Banks12 = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %9, i32 0, i32 1, !dbg !124
  %10 = load i32, i32* %Banks12, align 4, !dbg !124
  call arm_aapcs_vfpcc void @FLASH_MassErase(i32 %10), !dbg !125
  br label %if.end16, !dbg !126

if.else13:                                        ; preds = %if.else8
  %11 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !127
  %NbPages = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %11, i32 0, i32 3, !dbg !128
  %12 = load i32, i32* %NbPages, align 4, !dbg !128
  store i32 %12, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 6), align 4, !dbg !129
  %13 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !130
  %Page = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %13, i32 0, i32 2, !dbg !131
  %14 = load i32, i32* %Page, align 4, !dbg !131
  store i32 %14, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 5), align 4, !dbg !132
  %15 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !133
  %Page14 = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %15, i32 0, i32 2, !dbg !134
  %16 = load i32, i32* %Page14, align 4, !dbg !134
  %17 = load %struct.FLASH_EraseInitTypeDef*, %struct.FLASH_EraseInitTypeDef** %pEraseInit.addr, align 4, !dbg !135
  %Banks15 = getelementptr inbounds %struct.FLASH_EraseInitTypeDef, %struct.FLASH_EraseInitTypeDef* %17, i32 0, i32 1, !dbg !136
  %18 = load i32, i32* %Banks15, align 4, !dbg !136
  call arm_aapcs_vfpcc void @FLASH_PageErase(i32 %16, i32 %18), !dbg !137
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %do.end7
  %19 = load i8, i8* %status, align 1, !dbg !138
  store i8 %19, i8* %retval, align 1, !dbg !139
  br label %return, !dbg !139

return:                                           ; preds = %if.end17, %if.then
  %20 = load i8, i8* %retval, align 1, !dbg !140
  ret i8 %20, !dbg !140
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASHEx_OBProgram(%struct.FLASH_OBProgramInitTypeDef* %pOBInit) #0 !dbg !141 {
entry:
  %retval = alloca i8, align 1
  %pOBInit.addr = alloca %struct.FLASH_OBProgramInitTypeDef*, align 4
  %status = alloca i8, align 1
  store %struct.FLASH_OBProgramInitTypeDef* %pOBInit, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4
  br label %do.body, !dbg !142

do.body:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !142
  %conv = zext i8 %0 to i32, !dbg !142
  %cmp = icmp eq i32 %conv, 1, !dbg !142
  br i1 %cmp, label %if.then, label %if.else, !dbg !142

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !142
  br label %return, !dbg !142

if.else:                                          ; preds = %do.body
  store i8 1, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !142
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !142

do.end:                                           ; preds = %if.end
  store i32 0, i32* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 1), align 4, !dbg !143
  %call = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !144
  store i8 %call, i8* %status, align 1, !dbg !145
  %1 = load i8, i8* %status, align 1, !dbg !146
  %conv2 = zext i8 %1 to i32, !dbg !146
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !147
  br i1 %cmp3, label %if.then5, label %if.end29, !dbg !146

if.then5:                                         ; preds = %do.end
  %2 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !148
  %OptionType = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %2, i32 0, i32 0, !dbg !149
  %3 = load i32, i32* %OptionType, align 4, !dbg !149
  %and = and i32 %3, 1, !dbg !150
  %cmp6 = icmp ne i32 %and, 0, !dbg !151
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !152

if.then8:                                         ; preds = %if.then5
  %4 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !153
  %WRPArea = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %4, i32 0, i32 1, !dbg !154
  %5 = load i32, i32* %WRPArea, align 4, !dbg !154
  %6 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !155
  %WRPStartOffset = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %6, i32 0, i32 2, !dbg !156
  %7 = load i32, i32* %WRPStartOffset, align 4, !dbg !156
  %8 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !157
  %WRPEndOffset = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %8, i32 0, i32 3, !dbg !158
  %9 = load i32, i32* %WRPEndOffset, align 4, !dbg !158
  call arm_aapcs_vfpcc void @FLASH_OB_WRPConfig(i32 %5, i32 %7, i32 %9), !dbg !159
  br label %if.end9, !dbg !160

if.end9:                                          ; preds = %if.then8, %if.then5
  %10 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !161
  %OptionType10 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %10, i32 0, i32 0, !dbg !162
  %11 = load i32, i32* %OptionType10, align 4, !dbg !162
  %and11 = and i32 %11, 2, !dbg !163
  %cmp12 = icmp ne i32 %and11, 0, !dbg !164
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !165

if.then14:                                        ; preds = %if.end9
  %12 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !166
  %RDPLevel = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %12, i32 0, i32 4, !dbg !167
  %13 = load i32, i32* %RDPLevel, align 4, !dbg !167
  call arm_aapcs_vfpcc void @FLASH_OB_RDPConfig(i32 %13), !dbg !168
  br label %if.end15, !dbg !169

if.end15:                                         ; preds = %if.then14, %if.end9
  %14 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !170
  %OptionType16 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %14, i32 0, i32 0, !dbg !171
  %15 = load i32, i32* %OptionType16, align 4, !dbg !171
  %and17 = and i32 %15, 4, !dbg !172
  %cmp18 = icmp ne i32 %and17, 0, !dbg !173
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !174

if.then20:                                        ; preds = %if.end15
  %16 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !175
  %USERType = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %16, i32 0, i32 5, !dbg !176
  %17 = load i32, i32* %USERType, align 4, !dbg !176
  %18 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !177
  %USERConfig = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %18, i32 0, i32 6, !dbg !178
  %19 = load i32, i32* %USERConfig, align 4, !dbg !178
  call arm_aapcs_vfpcc void @FLASH_OB_UserConfig(i32 %17, i32 %19), !dbg !179
  br label %if.end21, !dbg !180

if.end21:                                         ; preds = %if.then20, %if.end15
  %20 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !181
  %OptionType22 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %20, i32 0, i32 0, !dbg !182
  %21 = load i32, i32* %OptionType22, align 4, !dbg !182
  %and23 = and i32 %21, 8, !dbg !183
  %cmp24 = icmp ne i32 %and23, 0, !dbg !184
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !185

if.then26:                                        ; preds = %if.end21
  %22 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !186
  %BootAddrConfig = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %22, i32 0, i32 7, !dbg !187
  %23 = load i32, i32* %BootAddrConfig, align 4, !dbg !187
  %24 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !188
  %BootAddr = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %24, i32 0, i32 8, !dbg !189
  %25 = load i32, i32* %BootAddr, align 4, !dbg !189
  call arm_aapcs_vfpcc void @FLASH_OB_BootAddrConfig(i32 %23, i32 %25), !dbg !190
  br label %if.end27, !dbg !191

if.end27:                                         ; preds = %if.then26, %if.end21
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !192
  %or = or i32 %26, 131072, !dbg !192
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 9), align 4, !dbg !192
  %call28 = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !193
  store i8 %call28, i8* %status, align 1, !dbg !194
  br label %if.end29, !dbg !195

if.end29:                                         ; preds = %if.end27, %do.end
  br label %do.body30, !dbg !196

do.body30:                                        ; preds = %if.end29
  store i8 0, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !196
  br label %do.end31, !dbg !196

do.end31:                                         ; preds = %do.body30
  %27 = load i8, i8* %status, align 1, !dbg !197
  store i8 %27, i8* %retval, align 1, !dbg !198
  br label %return, !dbg !198

return:                                           ; preds = %do.end31, %if.then
  %28 = load i8, i8* %retval, align 1, !dbg !199
  ret i8 %28, !dbg !199
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_OB_WRPConfig(i32 %WRPArea, i32 %WRPStartOffset, i32 %WRPEndOffset) #0 !dbg !200 {
entry:
  %WRPArea.addr = alloca i32, align 4
  %WRPStartOffset.addr = alloca i32, align 4
  %WRPEndOffset.addr = alloca i32, align 4
  store i32 %WRPArea, i32* %WRPArea.addr, align 4
  store i32 %WRPStartOffset, i32* %WRPStartOffset.addr, align 4
  store i32 %WRPEndOffset, i32* %WRPEndOffset.addr, align 4
  %0 = load i32, i32* %WRPArea.addr, align 4, !dbg !201
  %cmp = icmp eq i32 %0, 1, !dbg !202
  br i1 %cmp, label %if.then, label %if.else, !dbg !201

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 19), align 4, !dbg !203
  %and = and i32 %1, -8323200, !dbg !203
  %2 = load i32, i32* %WRPStartOffset.addr, align 4, !dbg !203
  %3 = load i32, i32* %WRPEndOffset.addr, align 4, !dbg !203
  %shl = shl i32 %3, 16, !dbg !203
  %or = or i32 %2, %shl, !dbg !203
  %or1 = or i32 %and, %or, !dbg !203
  store volatile i32 %or1, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 19), align 4, !dbg !203
  br label %if.end25, !dbg !204

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %WRPArea.addr, align 4, !dbg !205
  %cmp2 = icmp eq i32 %4, 2, !dbg !206
  br i1 %cmp2, label %if.then3, label %if.else8, !dbg !205

if.then3:                                         ; preds = %if.else
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 20), align 4, !dbg !207
  %and4 = and i32 %5, -8323200, !dbg !207
  %6 = load i32, i32* %WRPStartOffset.addr, align 4, !dbg !207
  %7 = load i32, i32* %WRPEndOffset.addr, align 4, !dbg !207
  %shl5 = shl i32 %7, 16, !dbg !207
  %or6 = or i32 %6, %shl5, !dbg !207
  %or7 = or i32 %and4, %or6, !dbg !207
  store volatile i32 %or7, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 20), align 4, !dbg !207
  br label %if.end24, !dbg !208

if.else8:                                         ; preds = %if.else
  %8 = load i32, i32* %WRPArea.addr, align 4, !dbg !209
  %cmp9 = icmp eq i32 %8, 4, !dbg !210
  br i1 %cmp9, label %if.then10, label %if.else15, !dbg !209

if.then10:                                        ; preds = %if.else8
  %9 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 23), align 4, !dbg !211
  %and11 = and i32 %9, -8323200, !dbg !211
  %10 = load i32, i32* %WRPStartOffset.addr, align 4, !dbg !211
  %11 = load i32, i32* %WRPEndOffset.addr, align 4, !dbg !211
  %shl12 = shl i32 %11, 16, !dbg !211
  %or13 = or i32 %10, %shl12, !dbg !211
  %or14 = or i32 %and11, %or13, !dbg !211
  store volatile i32 %or14, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 23), align 4, !dbg !211
  br label %if.end23, !dbg !212

if.else15:                                        ; preds = %if.else8
  %12 = load i32, i32* %WRPArea.addr, align 4, !dbg !213
  %cmp16 = icmp eq i32 %12, 8, !dbg !214
  br i1 %cmp16, label %if.then17, label %if.else22, !dbg !213

if.then17:                                        ; preds = %if.else15
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 24), align 4, !dbg !215
  %and18 = and i32 %13, -8323200, !dbg !215
  %14 = load i32, i32* %WRPStartOffset.addr, align 4, !dbg !215
  %15 = load i32, i32* %WRPEndOffset.addr, align 4, !dbg !215
  %shl19 = shl i32 %15, 16, !dbg !215
  %or20 = or i32 %14, %shl19, !dbg !215
  %or21 = or i32 %and18, %or20, !dbg !215
  store volatile i32 %or21, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 24), align 4, !dbg !215
  br label %if.end, !dbg !216

if.else22:                                        ; preds = %if.else15
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then17
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then10
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then3
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_OB_RDPConfig(i32 %RDPLevel) #0 !dbg !218 {
entry:
  %RDPLevel.addr = alloca i32, align 4
  store i32 %RDPLevel, i32* %RDPLevel.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !219
  %and = and i32 %0, -256, !dbg !219
  %1 = load i32, i32* %RDPLevel.addr, align 4, !dbg !219
  %or = or i32 %and, %1, !dbg !219
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !219
  ret void, !dbg !220
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_OB_UserConfig(i32 %UserType, i32 %UserConfig) #0 !dbg !221 {
entry:
  %UserType.addr = alloca i32, align 4
  %UserConfig.addr = alloca i32, align 4
  %optr_reg_val = alloca i32, align 4
  %optr_reg_mask = alloca i32, align 4
  store i32 %UserType, i32* %UserType.addr, align 4
  store i32 %UserConfig, i32* %UserConfig.addr, align 4
  store i32 0, i32* %optr_reg_val, align 4, !dbg !222
  store i32 0, i32* %optr_reg_mask, align 4, !dbg !223
  %0 = load i32, i32* %UserType.addr, align 4, !dbg !224
  %and = and i32 %0, 1, !dbg !225
  %cmp = icmp ne i32 %and, 0, !dbg !226
  br i1 %cmp, label %if.then, label %if.end, !dbg !227

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %UserConfig.addr, align 4, !dbg !228
  %and1 = and i32 %1, 1792, !dbg !229
  %2 = load i32, i32* %optr_reg_val, align 4, !dbg !230
  %or = or i32 %2, %and1, !dbg !230
  store i32 %or, i32* %optr_reg_val, align 4, !dbg !230
  %3 = load i32, i32* %optr_reg_mask, align 4, !dbg !231
  %or2 = or i32 %3, 1792, !dbg !231
  store i32 %or2, i32* %optr_reg_mask, align 4, !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %UserType.addr, align 4, !dbg !233
  %and3 = and i32 %4, 2, !dbg !234
  %cmp4 = icmp ne i32 %and3, 0, !dbg !235
  br i1 %cmp4, label %if.then5, label %if.end9, !dbg !236

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %UserConfig.addr, align 4, !dbg !237
  %and6 = and i32 %5, 4096, !dbg !238
  %6 = load i32, i32* %optr_reg_val, align 4, !dbg !239
  %or7 = or i32 %6, %and6, !dbg !239
  store i32 %or7, i32* %optr_reg_val, align 4, !dbg !239
  %7 = load i32, i32* %optr_reg_mask, align 4, !dbg !240
  %or8 = or i32 %7, 4096, !dbg !240
  store i32 %or8, i32* %optr_reg_mask, align 4, !dbg !240
  br label %if.end9, !dbg !241

if.end9:                                          ; preds = %if.then5, %if.end
  %8 = load i32, i32* %UserType.addr, align 4, !dbg !242
  %and10 = and i32 %8, 4, !dbg !243
  %cmp11 = icmp ne i32 %and10, 0, !dbg !244
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !245

if.then12:                                        ; preds = %if.end9
  %9 = load i32, i32* %UserConfig.addr, align 4, !dbg !246
  %and13 = and i32 %9, 8192, !dbg !247
  %10 = load i32, i32* %optr_reg_val, align 4, !dbg !248
  %or14 = or i32 %10, %and13, !dbg !248
  store i32 %or14, i32* %optr_reg_val, align 4, !dbg !248
  %11 = load i32, i32* %optr_reg_mask, align 4, !dbg !249
  %or15 = or i32 %11, 8192, !dbg !249
  store i32 %or15, i32* %optr_reg_mask, align 4, !dbg !249
  br label %if.end16, !dbg !250

if.end16:                                         ; preds = %if.then12, %if.end9
  %12 = load i32, i32* %UserType.addr, align 4, !dbg !251
  %and17 = and i32 %12, 8, !dbg !252
  %cmp18 = icmp ne i32 %and17, 0, !dbg !253
  br i1 %cmp18, label %if.then19, label %if.end23, !dbg !254

if.then19:                                        ; preds = %if.end16
  %13 = load i32, i32* %UserConfig.addr, align 4, !dbg !255
  %and20 = and i32 %13, 16384, !dbg !256
  %14 = load i32, i32* %optr_reg_val, align 4, !dbg !257
  %or21 = or i32 %14, %and20, !dbg !257
  store i32 %or21, i32* %optr_reg_val, align 4, !dbg !257
  %15 = load i32, i32* %optr_reg_mask, align 4, !dbg !258
  %or22 = or i32 %15, 16384, !dbg !258
  store i32 %or22, i32* %optr_reg_mask, align 4, !dbg !258
  br label %if.end23, !dbg !259

if.end23:                                         ; preds = %if.then19, %if.end16
  %16 = load i32, i32* %UserType.addr, align 4, !dbg !260
  %and24 = and i32 %16, 16, !dbg !261
  %cmp25 = icmp ne i32 %and24, 0, !dbg !262
  br i1 %cmp25, label %if.then26, label %if.end30, !dbg !263

if.then26:                                        ; preds = %if.end23
  %17 = load i32, i32* %UserConfig.addr, align 4, !dbg !264
  %and27 = and i32 %17, 65536, !dbg !265
  %18 = load i32, i32* %optr_reg_val, align 4, !dbg !266
  %or28 = or i32 %18, %and27, !dbg !266
  store i32 %or28, i32* %optr_reg_val, align 4, !dbg !266
  %19 = load i32, i32* %optr_reg_mask, align 4, !dbg !267
  %or29 = or i32 %19, 65536, !dbg !267
  store i32 %or29, i32* %optr_reg_mask, align 4, !dbg !267
  br label %if.end30, !dbg !268

if.end30:                                         ; preds = %if.then26, %if.end23
  %20 = load i32, i32* %UserType.addr, align 4, !dbg !269
  %and31 = and i32 %20, 32, !dbg !270
  %cmp32 = icmp ne i32 %and31, 0, !dbg !271
  br i1 %cmp32, label %if.then33, label %if.end37, !dbg !272

if.then33:                                        ; preds = %if.end30
  %21 = load i32, i32* %UserConfig.addr, align 4, !dbg !273
  %and34 = and i32 %21, 131072, !dbg !274
  %22 = load i32, i32* %optr_reg_val, align 4, !dbg !275
  %or35 = or i32 %22, %and34, !dbg !275
  store i32 %or35, i32* %optr_reg_val, align 4, !dbg !275
  %23 = load i32, i32* %optr_reg_mask, align 4, !dbg !276
  %or36 = or i32 %23, 131072, !dbg !276
  store i32 %or36, i32* %optr_reg_mask, align 4, !dbg !276
  br label %if.end37, !dbg !277

if.end37:                                         ; preds = %if.then33, %if.end30
  %24 = load i32, i32* %UserType.addr, align 4, !dbg !278
  %and38 = and i32 %24, 64, !dbg !279
  %cmp39 = icmp ne i32 %and38, 0, !dbg !280
  br i1 %cmp39, label %if.then40, label %if.end44, !dbg !281

if.then40:                                        ; preds = %if.end37
  %25 = load i32, i32* %UserConfig.addr, align 4, !dbg !282
  %and41 = and i32 %25, 262144, !dbg !283
  %26 = load i32, i32* %optr_reg_val, align 4, !dbg !284
  %or42 = or i32 %26, %and41, !dbg !284
  store i32 %or42, i32* %optr_reg_val, align 4, !dbg !284
  %27 = load i32, i32* %optr_reg_mask, align 4, !dbg !285
  %or43 = or i32 %27, 262144, !dbg !285
  store i32 %or43, i32* %optr_reg_mask, align 4, !dbg !285
  br label %if.end44, !dbg !286

if.end44:                                         ; preds = %if.then40, %if.end37
  %28 = load i32, i32* %UserType.addr, align 4, !dbg !287
  %and45 = and i32 %28, 128, !dbg !288
  %cmp46 = icmp ne i32 %and45, 0, !dbg !289
  br i1 %cmp46, label %if.then47, label %if.end51, !dbg !290

if.then47:                                        ; preds = %if.end44
  %29 = load i32, i32* %UserConfig.addr, align 4, !dbg !291
  %and48 = and i32 %29, 524288, !dbg !292
  %30 = load i32, i32* %optr_reg_val, align 4, !dbg !293
  %or49 = or i32 %30, %and48, !dbg !293
  store i32 %or49, i32* %optr_reg_val, align 4, !dbg !293
  %31 = load i32, i32* %optr_reg_mask, align 4, !dbg !294
  %or50 = or i32 %31, 524288, !dbg !294
  store i32 %or50, i32* %optr_reg_mask, align 4, !dbg !294
  br label %if.end51, !dbg !295

if.end51:                                         ; preds = %if.then47, %if.end44
  %32 = load i32, i32* %UserType.addr, align 4, !dbg !296
  %and52 = and i32 %32, 256, !dbg !297
  %cmp53 = icmp ne i32 %and52, 0, !dbg !298
  br i1 %cmp53, label %if.then54, label %if.end58, !dbg !299

if.then54:                                        ; preds = %if.end51
  %33 = load i32, i32* %UserConfig.addr, align 4, !dbg !300
  %and55 = and i32 %33, 1048576, !dbg !301
  %34 = load i32, i32* %optr_reg_val, align 4, !dbg !302
  %or56 = or i32 %34, %and55, !dbg !302
  store i32 %or56, i32* %optr_reg_val, align 4, !dbg !302
  %35 = load i32, i32* %optr_reg_mask, align 4, !dbg !303
  %or57 = or i32 %35, 1048576, !dbg !303
  store i32 %or57, i32* %optr_reg_mask, align 4, !dbg !303
  br label %if.end58, !dbg !304

if.end58:                                         ; preds = %if.then54, %if.end51
  %36 = load i32, i32* %UserType.addr, align 4, !dbg !305
  %and59 = and i32 %36, 512, !dbg !306
  %cmp60 = icmp ne i32 %and59, 0, !dbg !307
  br i1 %cmp60, label %if.then61, label %if.end65, !dbg !308

if.then61:                                        ; preds = %if.end58
  %37 = load i32, i32* %UserConfig.addr, align 4, !dbg !309
  %and62 = and i32 %37, 2097152, !dbg !310
  %38 = load i32, i32* %optr_reg_val, align 4, !dbg !311
  %or63 = or i32 %38, %and62, !dbg !311
  store i32 %or63, i32* %optr_reg_val, align 4, !dbg !311
  %39 = load i32, i32* %optr_reg_mask, align 4, !dbg !312
  %or64 = or i32 %39, 2097152, !dbg !312
  store i32 %or64, i32* %optr_reg_mask, align 4, !dbg !312
  br label %if.end65, !dbg !313

if.end65:                                         ; preds = %if.then61, %if.end58
  %40 = load i32, i32* %UserType.addr, align 4, !dbg !314
  %and66 = and i32 %40, 2048, !dbg !315
  %cmp67 = icmp ne i32 %and66, 0, !dbg !316
  br i1 %cmp67, label %if.then68, label %if.end72, !dbg !317

if.then68:                                        ; preds = %if.end65
  %41 = load i32, i32* %UserConfig.addr, align 4, !dbg !318
  %and69 = and i32 %41, 16777216, !dbg !319
  %42 = load i32, i32* %optr_reg_val, align 4, !dbg !320
  %or70 = or i32 %42, %and69, !dbg !320
  store i32 %or70, i32* %optr_reg_val, align 4, !dbg !320
  %43 = load i32, i32* %optr_reg_mask, align 4, !dbg !321
  %or71 = or i32 %43, 16777216, !dbg !321
  store i32 %or71, i32* %optr_reg_mask, align 4, !dbg !321
  br label %if.end72, !dbg !322

if.end72:                                         ; preds = %if.then68, %if.end65
  %44 = load i32, i32* %UserType.addr, align 4, !dbg !323
  %and73 = and i32 %44, 4096, !dbg !324
  %cmp74 = icmp ne i32 %and73, 0, !dbg !325
  br i1 %cmp74, label %if.then75, label %if.end79, !dbg !326

if.then75:                                        ; preds = %if.end72
  %45 = load i32, i32* %UserConfig.addr, align 4, !dbg !327
  %and76 = and i32 %45, 33554432, !dbg !328
  %46 = load i32, i32* %optr_reg_val, align 4, !dbg !329
  %or77 = or i32 %46, %and76, !dbg !329
  store i32 %or77, i32* %optr_reg_val, align 4, !dbg !329
  %47 = load i32, i32* %optr_reg_mask, align 4, !dbg !330
  %or78 = or i32 %47, 33554432, !dbg !330
  store i32 %or78, i32* %optr_reg_mask, align 4, !dbg !330
  br label %if.end79, !dbg !331

if.end79:                                         ; preds = %if.then75, %if.end72
  %48 = load i32, i32* %UserType.addr, align 4, !dbg !332
  %and80 = and i32 %48, 8192, !dbg !333
  %cmp81 = icmp ne i32 %and80, 0, !dbg !334
  br i1 %cmp81, label %if.then82, label %if.end86, !dbg !335

if.then82:                                        ; preds = %if.end79
  %49 = load i32, i32* %UserConfig.addr, align 4, !dbg !336
  %and83 = and i32 %49, 67108864, !dbg !337
  %50 = load i32, i32* %optr_reg_val, align 4, !dbg !338
  %or84 = or i32 %50, %and83, !dbg !338
  store i32 %or84, i32* %optr_reg_val, align 4, !dbg !338
  %51 = load i32, i32* %optr_reg_mask, align 4, !dbg !339
  %or85 = or i32 %51, 67108864, !dbg !339
  store i32 %or85, i32* %optr_reg_mask, align 4, !dbg !339
  br label %if.end86, !dbg !340

if.end86:                                         ; preds = %if.then82, %if.end79
  %52 = load i32, i32* %UserType.addr, align 4, !dbg !341
  %and87 = and i32 %52, 16384, !dbg !342
  %cmp88 = icmp ne i32 %and87, 0, !dbg !343
  br i1 %cmp88, label %if.then89, label %if.end93, !dbg !344

if.then89:                                        ; preds = %if.end86
  %53 = load i32, i32* %UserConfig.addr, align 4, !dbg !345
  %and90 = and i32 %53, 134217728, !dbg !346
  %54 = load i32, i32* %optr_reg_val, align 4, !dbg !347
  %or91 = or i32 %54, %and90, !dbg !347
  store i32 %or91, i32* %optr_reg_val, align 4, !dbg !347
  %55 = load i32, i32* %optr_reg_mask, align 4, !dbg !348
  %or92 = or i32 %55, 134217728, !dbg !348
  store i32 %or92, i32* %optr_reg_mask, align 4, !dbg !348
  br label %if.end93, !dbg !349

if.end93:                                         ; preds = %if.then89, %if.end86
  %56 = load i32, i32* %UserType.addr, align 4, !dbg !350
  %and94 = and i32 %56, 32768, !dbg !351
  %cmp95 = icmp ne i32 %and94, 0, !dbg !352
  br i1 %cmp95, label %if.then96, label %if.end100, !dbg !353

if.then96:                                        ; preds = %if.end93
  %57 = load i32, i32* %UserConfig.addr, align 4, !dbg !354
  %and97 = and i32 %57, 268435456, !dbg !355
  %58 = load i32, i32* %optr_reg_val, align 4, !dbg !356
  %or98 = or i32 %58, %and97, !dbg !356
  store i32 %or98, i32* %optr_reg_val, align 4, !dbg !356
  %59 = load i32, i32* %optr_reg_mask, align 4, !dbg !357
  %or99 = or i32 %59, 268435456, !dbg !357
  store i32 %or99, i32* %optr_reg_mask, align 4, !dbg !357
  br label %if.end100, !dbg !358

if.end100:                                        ; preds = %if.then96, %if.end93
  %60 = load i32, i32* %UserType.addr, align 4, !dbg !359
  %and101 = and i32 %60, 65536, !dbg !360
  %cmp102 = icmp ne i32 %and101, 0, !dbg !361
  br i1 %cmp102, label %if.then103, label %if.end107, !dbg !362

if.then103:                                       ; preds = %if.end100
  %61 = load i32, i32* %UserConfig.addr, align 4, !dbg !363
  %and104 = and i32 %61, -2147483648, !dbg !364
  %62 = load i32, i32* %optr_reg_val, align 4, !dbg !365
  %or105 = or i32 %62, %and104, !dbg !365
  store i32 %or105, i32* %optr_reg_val, align 4, !dbg !365
  %63 = load i32, i32* %optr_reg_mask, align 4, !dbg !366
  %or106 = or i32 %63, -2147483648, !dbg !366
  store i32 %or106, i32* %optr_reg_mask, align 4, !dbg !366
  br label %if.end107, !dbg !367

if.end107:                                        ; preds = %if.then103, %if.end100
  %64 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !368
  %65 = load i32, i32* %optr_reg_mask, align 4, !dbg !368
  %neg = xor i32 %65, -1, !dbg !368
  %and108 = and i32 %64, %neg, !dbg !368
  %66 = load i32, i32* %optr_reg_val, align 4, !dbg !368
  %or109 = or i32 %and108, %66, !dbg !368
  store volatile i32 %or109, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_OB_BootAddrConfig(i32 %BootAddrConfig, i32 %BootAddr) #0 !dbg !370 {
entry:
  %BootAddrConfig.addr = alloca i32, align 4
  %BootAddr.addr = alloca i32, align 4
  store i32 %BootAddrConfig, i32* %BootAddrConfig.addr, align 4
  store i32 %BootAddr, i32* %BootAddr.addr, align 4
  %0 = load i32, i32* %BootAddrConfig.addr, align 4, !dbg !371
  %cmp = icmp eq i32 %0, 1, !dbg !372
  br i1 %cmp, label %if.then, label %if.else, !dbg !371

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 14), align 4, !dbg !373
  %and = and i32 %1, 127, !dbg !373
  %2 = load i32, i32* %BootAddr.addr, align 4, !dbg !373
  %or = or i32 %and, %2, !dbg !373
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 14), align 4, !dbg !373
  br label %if.end6, !dbg !374

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %BootAddrConfig.addr, align 4, !dbg !375
  %cmp1 = icmp eq i32 %3, 2, !dbg !376
  br i1 %cmp1, label %if.then2, label %if.else5, !dbg !375

if.then2:                                         ; preds = %if.else
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 15), align 4, !dbg !377
  %and3 = and i32 %4, 127, !dbg !377
  %5 = load i32, i32* %BootAddr.addr, align 4, !dbg !377
  %or4 = or i32 %and3, %5, !dbg !377
  store volatile i32 %or4, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 15), align 4, !dbg !377
  br label %if.end, !dbg !378

if.else5:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then2
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_FLASHEx_OBGetConfig(%struct.FLASH_OBProgramInitTypeDef* %pOBInit) #0 !dbg !380 {
entry:
  %pOBInit.addr = alloca %struct.FLASH_OBProgramInitTypeDef*, align 4
  store %struct.FLASH_OBProgramInitTypeDef* %pOBInit, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4
  %0 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !381
  %OptionType = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %0, i32 0, i32 0, !dbg !382
  store i32 6, i32* %OptionType, align 4, !dbg !383
  %1 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !384
  %WRPArea = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %1, i32 0, i32 1, !dbg !385
  %2 = load i32, i32* %WRPArea, align 4, !dbg !385
  %cmp = icmp eq i32 %2, 1, !dbg !386
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !387

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !388
  %WRPArea1 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %3, i32 0, i32 1, !dbg !389
  %4 = load i32, i32* %WRPArea1, align 4, !dbg !389
  %cmp2 = icmp eq i32 %4, 2, !dbg !390
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !391

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !392
  %WRPArea4 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %5, i32 0, i32 1, !dbg !393
  %6 = load i32, i32* %WRPArea4, align 4, !dbg !393
  %cmp5 = icmp eq i32 %6, 4, !dbg !394
  br i1 %cmp5, label %if.then, label %lor.lhs.false6, !dbg !395

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %7 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !396
  %WRPArea7 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %7, i32 0, i32 1, !dbg !397
  %8 = load i32, i32* %WRPArea7, align 4, !dbg !397
  %cmp8 = icmp eq i32 %8, 8, !dbg !398
  br i1 %cmp8, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false3, %lor.lhs.false, %entry
  %9 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !400
  %OptionType9 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %9, i32 0, i32 0, !dbg !401
  %10 = load i32, i32* %OptionType9, align 4, !dbg !402
  %or = or i32 %10, 1, !dbg !402
  store i32 %or, i32* %OptionType9, align 4, !dbg !402
  %11 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !403
  %WRPArea10 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %11, i32 0, i32 1, !dbg !404
  %12 = load i32, i32* %WRPArea10, align 4, !dbg !404
  %13 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !405
  %WRPStartOffset = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %13, i32 0, i32 2, !dbg !406
  %14 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !407
  %WRPEndOffset = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %14, i32 0, i32 3, !dbg !408
  call arm_aapcs_vfpcc void @FLASH_OB_GetWRP(i32 %12, i32* %WRPStartOffset, i32* %WRPEndOffset), !dbg !409
  br label %if.end, !dbg !410

if.end:                                           ; preds = %if.then, %lor.lhs.false6
  %call = call arm_aapcs_vfpcc i32 @FLASH_OB_GetRDP(), !dbg !411
  %15 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !412
  %RDPLevel = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %15, i32 0, i32 4, !dbg !413
  store i32 %call, i32* %RDPLevel, align 4, !dbg !414
  %call11 = call arm_aapcs_vfpcc i32 @FLASH_OB_GetUser(), !dbg !415
  %16 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !416
  %USERConfig = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %16, i32 0, i32 6, !dbg !417
  store i32 %call11, i32* %USERConfig, align 4, !dbg !418
  %17 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !419
  %BootAddrConfig = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %17, i32 0, i32 7, !dbg !420
  %18 = load i32, i32* %BootAddrConfig, align 4, !dbg !420
  %cmp12 = icmp eq i32 %18, 1, !dbg !421
  br i1 %cmp12, label %if.then16, label %lor.lhs.false13, !dbg !422

lor.lhs.false13:                                  ; preds = %if.end
  %19 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !423
  %BootAddrConfig14 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %19, i32 0, i32 7, !dbg !424
  %20 = load i32, i32* %BootAddrConfig14, align 4, !dbg !424
  %cmp15 = icmp eq i32 %20, 2, !dbg !425
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !426

if.then16:                                        ; preds = %lor.lhs.false13, %if.end
  %21 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !427
  %OptionType17 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %21, i32 0, i32 0, !dbg !428
  %22 = load i32, i32* %OptionType17, align 4, !dbg !429
  %or18 = or i32 %22, 8, !dbg !429
  store i32 %or18, i32* %OptionType17, align 4, !dbg !429
  %23 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !430
  %BootAddrConfig19 = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %23, i32 0, i32 7, !dbg !431
  %24 = load i32, i32* %BootAddrConfig19, align 4, !dbg !431
  %25 = load %struct.FLASH_OBProgramInitTypeDef*, %struct.FLASH_OBProgramInitTypeDef** %pOBInit.addr, align 4, !dbg !432
  %BootAddr = getelementptr inbounds %struct.FLASH_OBProgramInitTypeDef, %struct.FLASH_OBProgramInitTypeDef* %25, i32 0, i32 8, !dbg !433
  call arm_aapcs_vfpcc void @FLASH_OB_GetBootAddr(i32 %24, i32* %BootAddr), !dbg !434
  br label %if.end20, !dbg !435

if.end20:                                         ; preds = %if.then16, %lor.lhs.false13
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_OB_GetWRP(i32 %WRPArea, i32* %WRPStartOffset, i32* %WRPEndOffset) #0 !dbg !437 {
entry:
  %WRPArea.addr = alloca i32, align 4
  %WRPStartOffset.addr = alloca i32*, align 4
  %WRPEndOffset.addr = alloca i32*, align 4
  store i32 %WRPArea, i32* %WRPArea.addr, align 4
  store i32* %WRPStartOffset, i32** %WRPStartOffset.addr, align 4
  store i32* %WRPEndOffset, i32** %WRPEndOffset.addr, align 4
  %0 = load i32, i32* %WRPArea.addr, align 4, !dbg !438
  %cmp = icmp eq i32 %0, 1, !dbg !439
  br i1 %cmp, label %if.then, label %if.else, !dbg !438

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 19), align 4, !dbg !440
  %and = and i32 %1, 127, !dbg !440
  %2 = load i32*, i32** %WRPStartOffset.addr, align 4, !dbg !441
  store i32 %and, i32* %2, align 4, !dbg !442
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 19), align 4, !dbg !443
  %and1 = and i32 %3, 8323072, !dbg !443
  %shr = lshr i32 %and1, 16, !dbg !444
  %4 = load i32*, i32** %WRPEndOffset.addr, align 4, !dbg !445
  store i32 %shr, i32* %4, align 4, !dbg !446
  br label %if.end22, !dbg !447

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %WRPArea.addr, align 4, !dbg !448
  %cmp2 = icmp eq i32 %5, 2, !dbg !449
  br i1 %cmp2, label %if.then3, label %if.else7, !dbg !448

if.then3:                                         ; preds = %if.else
  %6 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 20), align 4, !dbg !450
  %and4 = and i32 %6, 127, !dbg !450
  %7 = load i32*, i32** %WRPStartOffset.addr, align 4, !dbg !451
  store i32 %and4, i32* %7, align 4, !dbg !452
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 20), align 4, !dbg !453
  %and5 = and i32 %8, 8323072, !dbg !453
  %shr6 = lshr i32 %and5, 16, !dbg !454
  %9 = load i32*, i32** %WRPEndOffset.addr, align 4, !dbg !455
  store i32 %shr6, i32* %9, align 4, !dbg !456
  br label %if.end21, !dbg !457

if.else7:                                         ; preds = %if.else
  %10 = load i32, i32* %WRPArea.addr, align 4, !dbg !458
  %cmp8 = icmp eq i32 %10, 4, !dbg !459
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !458

if.then9:                                         ; preds = %if.else7
  %11 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 23), align 4, !dbg !460
  %and10 = and i32 %11, 127, !dbg !460
  %12 = load i32*, i32** %WRPStartOffset.addr, align 4, !dbg !461
  store i32 %and10, i32* %12, align 4, !dbg !462
  %13 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 23), align 4, !dbg !463
  %and11 = and i32 %13, 8323072, !dbg !463
  %shr12 = lshr i32 %and11, 16, !dbg !464
  %14 = load i32*, i32** %WRPEndOffset.addr, align 4, !dbg !465
  store i32 %shr12, i32* %14, align 4, !dbg !466
  br label %if.end20, !dbg !467

if.else13:                                        ; preds = %if.else7
  %15 = load i32, i32* %WRPArea.addr, align 4, !dbg !468
  %cmp14 = icmp eq i32 %15, 8, !dbg !469
  br i1 %cmp14, label %if.then15, label %if.else19, !dbg !468

if.then15:                                        ; preds = %if.else13
  %16 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 24), align 4, !dbg !470
  %and16 = and i32 %16, 127, !dbg !470
  %17 = load i32*, i32** %WRPStartOffset.addr, align 4, !dbg !471
  store i32 %and16, i32* %17, align 4, !dbg !472
  %18 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 24), align 4, !dbg !473
  %and17 = and i32 %18, 8323072, !dbg !473
  %shr18 = lshr i32 %and17, 16, !dbg !474
  %19 = load i32*, i32** %WRPEndOffset.addr, align 4, !dbg !475
  store i32 %shr18, i32* %19, align 4, !dbg !476
  br label %if.end, !dbg !477

if.else19:                                        ; preds = %if.else13
  br label %if.end

if.end:                                           ; preds = %if.else19, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end, %if.then9
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then3
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @FLASH_OB_GetRDP() #0 !dbg !479 {
entry:
  %retval = alloca i32, align 4
  %rdp_level = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !480
  %and = and i32 %0, 255, !dbg !480
  store i32 %and, i32* %rdp_level, align 4, !dbg !481
  %1 = load i32, i32* %rdp_level, align 4, !dbg !482
  %cmp = icmp ne i32 %1, 170, !dbg !483
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !484

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %rdp_level, align 4, !dbg !485
  %cmp1 = icmp ne i32 %2, 85, !dbg !486
  br i1 %cmp1, label %land.lhs.true2, label %if.else, !dbg !487

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %rdp_level, align 4, !dbg !488
  %cmp3 = icmp ne i32 %3, 204, !dbg !489
  br i1 %cmp3, label %if.then, label %if.else, !dbg !490

if.then:                                          ; preds = %land.lhs.true2
  store i32 187, i32* %retval, align 4, !dbg !491
  br label %return, !dbg !491

if.else:                                          ; preds = %land.lhs.true2, %land.lhs.true, %entry
  %4 = load i32, i32* %rdp_level, align 4, !dbg !492
  store i32 %4, i32* %retval, align 4, !dbg !493
  br label %return, !dbg !493

return:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !494
  ret i32 %5, !dbg !494
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc i32 @FLASH_OB_GetUser() #0 !dbg !495 {
entry:
  %user_config = alloca i32, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 13), align 4, !dbg !496
  store i32 %0, i32* %user_config, align 4, !dbg !497
  %1 = load i32, i32* %user_config, align 4, !dbg !498
  %and = and i32 %1, -256, !dbg !498
  store i32 %and, i32* %user_config, align 4, !dbg !498
  %2 = load i32, i32* %user_config, align 4, !dbg !499
  ret i32 %2, !dbg !500
}

; Function Attrs: noinline nounwind optnone
define internal arm_aapcs_vfpcc void @FLASH_OB_GetBootAddr(i32 %BootAddrConfig, i32* %BootAddr) #0 !dbg !501 {
entry:
  %BootAddrConfig.addr = alloca i32, align 4
  %BootAddr.addr = alloca i32*, align 4
  store i32 %BootAddrConfig, i32* %BootAddrConfig.addr, align 4
  store i32* %BootAddr, i32** %BootAddr.addr, align 4
  %0 = load i32, i32* %BootAddrConfig.addr, align 4, !dbg !502
  %cmp = icmp eq i32 %0, 1, !dbg !503
  br i1 %cmp, label %if.then, label %if.else, !dbg !502

if.then:                                          ; preds = %entry
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 14), align 4, !dbg !504
  %and = and i32 %1, -128, !dbg !505
  %2 = load i32*, i32** %BootAddr.addr, align 4, !dbg !506
  store i32 %and, i32* %2, align 4, !dbg !507
  br label %if.end5, !dbg !508

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %BootAddrConfig.addr, align 4, !dbg !509
  %cmp1 = icmp eq i32 %3, 2, !dbg !510
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !509

if.then2:                                         ; preds = %if.else
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 15), align 4, !dbg !511
  %and3 = and i32 %4, -128, !dbg !512
  %5 = load i32*, i32** %BootAddr.addr, align 4, !dbg !513
  store i32 %and3, i32* %5, align 4, !dbg !514
  br label %if.end, !dbg !515

if.else4:                                         ; preds = %if.else
  br label %if.end

if.end:                                           ; preds = %if.else4, %if.then2
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_FLASHEx_ConfigPrivMode(i32 %PrivMode) #0 !dbg !517 {
entry:
  %PrivMode.addr = alloca i32, align 4
  store i32 %PrivMode, i32* %PrivMode.addr, align 4
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 37), align 4, !dbg !518
  %and = and i32 %0, -2, !dbg !518
  %1 = load i32, i32* %PrivMode.addr, align 4, !dbg !518
  %or = or i32 %and, %1, !dbg !518
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 37), align 4, !dbg !518
  ret void, !dbg !519
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_FLASHEx_GetPrivMode() #0 !dbg !520 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 37), align 4, !dbg !521
  %and = and i32 %0, 1, !dbg !522
  ret i32 %and, !dbg !523
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_FLASHEx_ConfigLVEPin(i32 %ConfigLVE) #0 !dbg !524 {
entry:
  %retval = alloca i8, align 1
  %ConfigLVE.addr = alloca i32, align 4
  %status = alloca i8, align 1
  store i32 %ConfigLVE, i32* %ConfigLVE.addr, align 4
  br label %do.body, !dbg !525

do.body:                                          ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !525
  %conv = zext i8 %0 to i32, !dbg !525
  %cmp = icmp eq i32 %conv, 1, !dbg !525
  br i1 %cmp, label %if.then, label %if.else, !dbg !525

if.then:                                          ; preds = %do.body
  store i8 2, i8* %retval, align 1, !dbg !525
  br label %return, !dbg !525

if.else:                                          ; preds = %do.body
  store i8 1, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !525
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %do.end, !dbg !525

do.end:                                           ; preds = %if.end
  %call = call arm_aapcs_vfpcc zeroext i8 @FLASH_WaitForLastOperation(i32 1000), !dbg !526
  store i8 %call, i8* %status, align 1, !dbg !527
  %1 = load i8, i8* %status, align 1, !dbg !528
  %conv2 = zext i8 %1 to i32, !dbg !528
  %cmp3 = icmp eq i32 %conv2, 0, !dbg !529
  br i1 %cmp3, label %if.then5, label %if.end17, !dbg !528

if.then5:                                         ; preds = %do.end
  %call6 = call arm_aapcs_vfpcc i32 @HAL_PWREx_GetVoltageRange(), !dbg !530
  %cmp7 = icmp eq i32 %call6, 1024, !dbg !531
  br i1 %cmp7, label %if.then9, label %if.else15, !dbg !530

if.then9:                                         ; preds = %if.then5
  store volatile i32 -185207049, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 5), align 4, !dbg !532
  store volatile i32 169552957, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 5), align 4, !dbg !533
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !534
  %and = and i32 %2, -32769, !dbg !534
  %3 = load i32, i32* %ConfigLVE.addr, align 4, !dbg !534
  %or = or i32 %and, %3, !dbg !534
  store volatile i32 %or, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !534
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !535
  %and10 = and i32 %4, 32768, !dbg !535
  %5 = load i32, i32* %ConfigLVE.addr, align 4, !dbg !536
  %cmp11 = icmp ne i32 %and10, %5, !dbg !537
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !535

if.then13:                                        ; preds = %if.then9
  store i8 1, i8* %status, align 1, !dbg !538
  br label %if.end14, !dbg !539

if.end14:                                         ; preds = %if.then13, %if.then9
  br label %if.end16, !dbg !540

if.else15:                                        ; preds = %if.then5
  store i8 1, i8* %status, align 1, !dbg !541
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end14
  br label %if.end17, !dbg !542

if.end17:                                         ; preds = %if.end16, %do.end
  br label %do.body18, !dbg !543

do.body18:                                        ; preds = %if.end17
  store i8 0, i8* getelementptr inbounds (%struct.FLASH_ProcessTypeDef, %struct.FLASH_ProcessTypeDef* @pFlash, i32 0, i32 0), align 4, !dbg !543
  br label %do.end19, !dbg !543

do.end19:                                         ; preds = %do.body18
  %6 = load i8, i8* %status, align 1, !dbg !544
  store i8 %6, i8* %retval, align 1, !dbg !545
  br label %return, !dbg !545

return:                                           ; preds = %do.end19, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !546
  ret i8 %7, !dbg !546
}

declare dso_local arm_aapcs_vfpcc i32 @HAL_PWREx_GetVoltageRange() #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @HAL_FLASHEx_GetLVEPin() #0 !dbg !547 {
entry:
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.FLASH_TypeDef, %struct.FLASH_TypeDef* inttoptr (i32 1073881088 to %struct.FLASH_TypeDef*), i32 0, i32 0), align 4, !dbg !548
  %and = and i32 %0, 32768, !dbg !549
  ret i32 %and, !dbg !550
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_flash_ex.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/light-controller/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_FLASHEx_Erase", scope: !1, file: !1, line: 169, type: !9, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 179, column: 3, scope: !8)
!11 = !DILocation(line: 182, column: 20, scope: !8)
!12 = !DILocation(line: 185, column: 12, scope: !8)
!13 = !DILocation(line: 185, column: 10, scope: !8)
!14 = !DILocation(line: 187, column: 7, scope: !8)
!15 = !DILocation(line: 187, column: 14, scope: !8)
!16 = !DILocation(line: 189, column: 31, scope: !8)
!17 = !DILocation(line: 189, column: 43, scope: !8)
!18 = !DILocation(line: 189, column: 29, scope: !8)
!19 = !DILocation(line: 191, column: 9, scope: !8)
!20 = !DILocation(line: 193, column: 17, scope: !8)
!21 = !DILocation(line: 193, column: 34, scope: !8)
!22 = !DILocation(line: 193, column: 62, scope: !8)
!23 = !DILocation(line: 193, column: 9, scope: !8)
!24 = !DILocation(line: 196, column: 23, scope: !8)
!25 = !DILocation(line: 196, column: 35, scope: !8)
!26 = !DILocation(line: 196, column: 7, scope: !8)
!27 = !DILocation(line: 199, column: 16, scope: !8)
!28 = !DILocation(line: 199, column: 14, scope: !8)
!29 = !DILocation(line: 200, column: 5, scope: !8)
!30 = !DILocation(line: 204, column: 8, scope: !8)
!31 = !DILocation(line: 204, column: 18, scope: !8)
!32 = !DILocation(line: 206, column: 24, scope: !8)
!33 = !DILocation(line: 206, column: 36, scope: !8)
!34 = !DILocation(line: 206, column: 22, scope: !8)
!35 = !DILocation(line: 206, column: 11, scope: !8)
!36 = !DILocation(line: 206, column: 42, scope: !8)
!37 = !DILocation(line: 206, column: 56, scope: !8)
!38 = !DILocation(line: 206, column: 68, scope: !8)
!39 = !DILocation(line: 206, column: 75, scope: !8)
!40 = !DILocation(line: 206, column: 87, scope: !8)
!41 = !DILocation(line: 206, column: 73, scope: !8)
!42 = !DILocation(line: 206, column: 53, scope: !8)
!43 = !DILocation(line: 206, column: 7, scope: !8)
!44 = !DILocation(line: 208, column: 25, scope: !8)
!45 = !DILocation(line: 208, column: 37, scope: !8)
!46 = !DILocation(line: 208, column: 49, scope: !8)
!47 = !DILocation(line: 208, column: 9, scope: !8)
!48 = !DILocation(line: 211, column: 18, scope: !8)
!49 = !DILocation(line: 211, column: 16, scope: !8)
!50 = !DILocation(line: 213, column: 13, scope: !8)
!51 = !DILocation(line: 213, column: 20, scope: !8)
!52 = !DILocation(line: 216, column: 24, scope: !8)
!53 = !DILocation(line: 216, column: 12, scope: !8)
!54 = !DILocation(line: 216, column: 22, scope: !8)
!55 = !DILocation(line: 217, column: 11, scope: !8)
!56 = !DILocation(line: 219, column: 7, scope: !8)
!57 = !DILocation(line: 206, column: 107, scope: !8)
!58 = distinct !{!58, !43, !56}
!59 = !DILocation(line: 223, column: 5, scope: !8)
!60 = !DILocation(line: 224, column: 3, scope: !8)
!61 = !DILocation(line: 227, column: 3, scope: !8)
!62 = !DILocation(line: 229, column: 10, scope: !8)
!63 = !DILocation(line: 229, column: 3, scope: !8)
!64 = !DILocation(line: 230, column: 1, scope: !8)
!65 = distinct !DISubprogram(name: "FLASH_MassErase", scope: !1, file: !1, line: 743, type: !9, scopeLine: 744, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!66 = !DILocation(line: 756, column: 7, scope: !65)
!67 = !DILocation(line: 758, column: 7, scope: !65)
!68 = !DILocation(line: 758, column: 47, scope: !65)
!69 = !DILocation(line: 764, column: 9, scope: !65)
!70 = !DILocation(line: 764, column: 15, scope: !65)
!71 = !DILocation(line: 764, column: 31, scope: !65)
!72 = !DILocation(line: 764, column: 8, scope: !65)
!73 = !DILocation(line: 766, column: 7, scope: !65)
!74 = !DILocation(line: 767, column: 5, scope: !65)
!75 = !DILocation(line: 770, column: 9, scope: !65)
!76 = !DILocation(line: 770, column: 15, scope: !65)
!77 = !DILocation(line: 770, column: 31, scope: !65)
!78 = !DILocation(line: 770, column: 8, scope: !65)
!79 = !DILocation(line: 772, column: 7, scope: !65)
!80 = !DILocation(line: 773, column: 5, scope: !65)
!81 = !DILocation(line: 774, column: 3, scope: !65)
!82 = !DILocation(line: 777, column: 5, scope: !65)
!83 = !DILocation(line: 781, column: 3, scope: !65)
!84 = !DILocation(line: 787, column: 1, scope: !65)
!85 = distinct !DISubprogram(name: "FLASH_PageErase", scope: !1, file: !1, line: 799, type: !9, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!86 = !DILocation(line: 815, column: 7, scope: !85)
!87 = !DILocation(line: 817, column: 6, scope: !85)
!88 = !DILocation(line: 817, column: 46, scope: !85)
!89 = !DILocation(line: 819, column: 5, scope: !85)
!90 = !DILocation(line: 820, column: 3, scope: !85)
!91 = !DILocation(line: 825, column: 9, scope: !85)
!92 = !DILocation(line: 825, column: 15, scope: !85)
!93 = !DILocation(line: 825, column: 31, scope: !85)
!94 = !DILocation(line: 825, column: 8, scope: !85)
!95 = !DILocation(line: 827, column: 7, scope: !85)
!96 = !DILocation(line: 828, column: 5, scope: !85)
!97 = !DILocation(line: 831, column: 7, scope: !85)
!98 = !DILocation(line: 836, column: 3, scope: !85)
!99 = !DILocation(line: 837, column: 3, scope: !85)
!100 = !DILocation(line: 843, column: 1, scope: !85)
!101 = distinct !DISubprogram(name: "HAL_FLASHEx_Erase_IT", scope: !1, file: !1, line: 239, type: !9, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DILocation(line: 248, column: 3, scope: !101)
!103 = !DILocation(line: 251, column: 20, scope: !101)
!104 = !DILocation(line: 254, column: 12, scope: !101)
!105 = !DILocation(line: 254, column: 10, scope: !101)
!106 = !DILocation(line: 256, column: 7, scope: !101)
!107 = !DILocation(line: 256, column: 14, scope: !101)
!108 = !DILocation(line: 259, column: 5, scope: !101)
!109 = !DILocation(line: 260, column: 3, scope: !101)
!110 = !DILocation(line: 264, column: 31, scope: !101)
!111 = !DILocation(line: 264, column: 43, scope: !101)
!112 = !DILocation(line: 264, column: 29, scope: !101)
!113 = !DILocation(line: 265, column: 19, scope: !101)
!114 = !DILocation(line: 265, column: 31, scope: !101)
!115 = !DILocation(line: 265, column: 17, scope: !101)
!116 = !DILocation(line: 268, column: 12, scope: !101)
!117 = !DILocation(line: 271, column: 7, scope: !101)
!118 = !DILocation(line: 271, column: 15, scope: !101)
!119 = !DILocation(line: 273, column: 17, scope: !101)
!120 = !DILocation(line: 273, column: 34, scope: !101)
!121 = !DILocation(line: 273, column: 62, scope: !101)
!122 = !DILocation(line: 273, column: 9, scope: !101)
!123 = !DILocation(line: 276, column: 23, scope: !101)
!124 = !DILocation(line: 276, column: 35, scope: !101)
!125 = !DILocation(line: 276, column: 7, scope: !101)
!126 = !DILocation(line: 277, column: 5, scope: !101)
!127 = !DILocation(line: 281, column: 31, scope: !101)
!128 = !DILocation(line: 281, column: 43, scope: !101)
!129 = !DILocation(line: 281, column: 29, scope: !101)
!130 = !DILocation(line: 282, column: 21, scope: !101)
!131 = !DILocation(line: 282, column: 33, scope: !101)
!132 = !DILocation(line: 282, column: 19, scope: !101)
!133 = !DILocation(line: 285, column: 23, scope: !101)
!134 = !DILocation(line: 285, column: 35, scope: !101)
!135 = !DILocation(line: 285, column: 41, scope: !101)
!136 = !DILocation(line: 285, column: 53, scope: !101)
!137 = !DILocation(line: 285, column: 7, scope: !101)
!138 = !DILocation(line: 289, column: 10, scope: !101)
!139 = !DILocation(line: 289, column: 3, scope: !101)
!140 = !DILocation(line: 290, column: 1, scope: !101)
!141 = distinct !DISubprogram(name: "HAL_FLASHEx_OBProgram", scope: !1, file: !1, line: 305, type: !9, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!142 = !DILocation(line: 313, column: 3, scope: !141)
!143 = !DILocation(line: 316, column: 20, scope: !141)
!144 = !DILocation(line: 319, column: 12, scope: !141)
!145 = !DILocation(line: 319, column: 10, scope: !141)
!146 = !DILocation(line: 321, column: 6, scope: !141)
!147 = !DILocation(line: 321, column: 13, scope: !141)
!148 = !DILocation(line: 324, column: 9, scope: !141)
!149 = !DILocation(line: 324, column: 18, scope: !141)
!150 = !DILocation(line: 324, column: 29, scope: !141)
!151 = !DILocation(line: 324, column: 47, scope: !141)
!152 = !DILocation(line: 324, column: 8, scope: !141)
!153 = !DILocation(line: 327, column: 26, scope: !141)
!154 = !DILocation(line: 327, column: 35, scope: !141)
!155 = !DILocation(line: 327, column: 44, scope: !141)
!156 = !DILocation(line: 327, column: 53, scope: !141)
!157 = !DILocation(line: 327, column: 69, scope: !141)
!158 = !DILocation(line: 327, column: 78, scope: !141)
!159 = !DILocation(line: 327, column: 7, scope: !141)
!160 = !DILocation(line: 328, column: 5, scope: !141)
!161 = !DILocation(line: 331, column: 9, scope: !141)
!162 = !DILocation(line: 331, column: 18, scope: !141)
!163 = !DILocation(line: 331, column: 29, scope: !141)
!164 = !DILocation(line: 331, column: 47, scope: !141)
!165 = !DILocation(line: 331, column: 8, scope: !141)
!166 = !DILocation(line: 334, column: 26, scope: !141)
!167 = !DILocation(line: 334, column: 35, scope: !141)
!168 = !DILocation(line: 334, column: 7, scope: !141)
!169 = !DILocation(line: 335, column: 5, scope: !141)
!170 = !DILocation(line: 338, column: 9, scope: !141)
!171 = !DILocation(line: 338, column: 18, scope: !141)
!172 = !DILocation(line: 338, column: 29, scope: !141)
!173 = !DILocation(line: 338, column: 48, scope: !141)
!174 = !DILocation(line: 338, column: 8, scope: !141)
!175 = !DILocation(line: 341, column: 27, scope: !141)
!176 = !DILocation(line: 341, column: 36, scope: !141)
!177 = !DILocation(line: 341, column: 46, scope: !141)
!178 = !DILocation(line: 341, column: 55, scope: !141)
!179 = !DILocation(line: 341, column: 7, scope: !141)
!180 = !DILocation(line: 342, column: 5, scope: !141)
!181 = !DILocation(line: 361, column: 9, scope: !141)
!182 = !DILocation(line: 361, column: 18, scope: !141)
!183 = !DILocation(line: 361, column: 29, scope: !141)
!184 = !DILocation(line: 361, column: 52, scope: !141)
!185 = !DILocation(line: 361, column: 8, scope: !141)
!186 = !DILocation(line: 364, column: 31, scope: !141)
!187 = !DILocation(line: 364, column: 40, scope: !141)
!188 = !DILocation(line: 364, column: 56, scope: !141)
!189 = !DILocation(line: 364, column: 65, scope: !141)
!190 = !DILocation(line: 364, column: 7, scope: !141)
!191 = !DILocation(line: 365, column: 5, scope: !141)
!192 = !DILocation(line: 368, column: 5, scope: !141)
!193 = !DILocation(line: 371, column: 14, scope: !141)
!194 = !DILocation(line: 371, column: 12, scope: !141)
!195 = !DILocation(line: 372, column: 3, scope: !141)
!196 = !DILocation(line: 375, column: 3, scope: !141)
!197 = !DILocation(line: 377, column: 10, scope: !141)
!198 = !DILocation(line: 377, column: 3, scope: !141)
!199 = !DILocation(line: 378, column: 1, scope: !141)
!200 = distinct !DISubprogram(name: "FLASH_OB_WRPConfig", scope: !1, file: !1, line: 872, type: !9, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!201 = !DILocation(line: 880, column: 6, scope: !200)
!202 = !DILocation(line: 880, column: 14, scope: !200)
!203 = !DILocation(line: 882, column: 5, scope: !200)
!204 = !DILocation(line: 884, column: 3, scope: !200)
!205 = !DILocation(line: 885, column: 11, scope: !200)
!206 = !DILocation(line: 885, column: 19, scope: !200)
!207 = !DILocation(line: 887, column: 5, scope: !200)
!208 = !DILocation(line: 889, column: 3, scope: !200)
!209 = !DILocation(line: 890, column: 11, scope: !200)
!210 = !DILocation(line: 890, column: 19, scope: !200)
!211 = !DILocation(line: 892, column: 5, scope: !200)
!212 = !DILocation(line: 894, column: 3, scope: !200)
!213 = !DILocation(line: 895, column: 11, scope: !200)
!214 = !DILocation(line: 895, column: 19, scope: !200)
!215 = !DILocation(line: 897, column: 5, scope: !200)
!216 = !DILocation(line: 899, column: 3, scope: !200)
!217 = !DILocation(line: 904, column: 1, scope: !200)
!218 = distinct !DISubprogram(name: "FLASH_OB_RDPConfig", scope: !1, file: !1, line: 925, type: !9, scopeLine: 926, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DILocation(line: 931, column: 3, scope: !218)
!220 = !DILocation(line: 932, column: 1, scope: !218)
!221 = distinct !DISubprogram(name: "FLASH_OB_UserConfig", scope: !1, file: !1, line: 957, type: !9, scopeLine: 958, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!222 = !DILocation(line: 959, column: 12, scope: !221)
!223 = !DILocation(line: 960, column: 12, scope: !221)
!224 = !DILocation(line: 965, column: 7, scope: !221)
!225 = !DILocation(line: 965, column: 16, scope: !221)
!226 = !DILocation(line: 965, column: 35, scope: !221)
!227 = !DILocation(line: 965, column: 6, scope: !221)
!228 = !DILocation(line: 971, column: 22, scope: !221)
!229 = !DILocation(line: 971, column: 33, scope: !221)
!230 = !DILocation(line: 971, column: 18, scope: !221)
!231 = !DILocation(line: 972, column: 19, scope: !221)
!232 = !DILocation(line: 973, column: 3, scope: !221)
!233 = !DILocation(line: 975, column: 7, scope: !221)
!234 = !DILocation(line: 975, column: 16, scope: !221)
!235 = !DILocation(line: 975, column: 37, scope: !221)
!236 = !DILocation(line: 975, column: 6, scope: !221)
!237 = !DILocation(line: 981, column: 22, scope: !221)
!238 = !DILocation(line: 981, column: 33, scope: !221)
!239 = !DILocation(line: 981, column: 18, scope: !221)
!240 = !DILocation(line: 982, column: 19, scope: !221)
!241 = !DILocation(line: 983, column: 3, scope: !221)
!242 = !DILocation(line: 985, column: 7, scope: !221)
!243 = !DILocation(line: 985, column: 16, scope: !221)
!244 = !DILocation(line: 985, column: 38, scope: !221)
!245 = !DILocation(line: 985, column: 6, scope: !221)
!246 = !DILocation(line: 991, column: 22, scope: !221)
!247 = !DILocation(line: 991, column: 33, scope: !221)
!248 = !DILocation(line: 991, column: 18, scope: !221)
!249 = !DILocation(line: 992, column: 19, scope: !221)
!250 = !DILocation(line: 993, column: 3, scope: !221)
!251 = !DILocation(line: 995, column: 7, scope: !221)
!252 = !DILocation(line: 995, column: 16, scope: !221)
!253 = !DILocation(line: 995, column: 37, scope: !221)
!254 = !DILocation(line: 995, column: 6, scope: !221)
!255 = !DILocation(line: 1001, column: 22, scope: !221)
!256 = !DILocation(line: 1001, column: 33, scope: !221)
!257 = !DILocation(line: 1001, column: 18, scope: !221)
!258 = !DILocation(line: 1002, column: 19, scope: !221)
!259 = !DILocation(line: 1003, column: 3, scope: !221)
!260 = !DILocation(line: 1005, column: 7, scope: !221)
!261 = !DILocation(line: 1005, column: 16, scope: !221)
!262 = !DILocation(line: 1005, column: 35, scope: !221)
!263 = !DILocation(line: 1005, column: 6, scope: !221)
!264 = !DILocation(line: 1011, column: 22, scope: !221)
!265 = !DILocation(line: 1011, column: 33, scope: !221)
!266 = !DILocation(line: 1011, column: 18, scope: !221)
!267 = !DILocation(line: 1012, column: 19, scope: !221)
!268 = !DILocation(line: 1013, column: 3, scope: !221)
!269 = !DILocation(line: 1015, column: 7, scope: !221)
!270 = !DILocation(line: 1015, column: 16, scope: !221)
!271 = !DILocation(line: 1015, column: 37, scope: !221)
!272 = !DILocation(line: 1015, column: 6, scope: !221)
!273 = !DILocation(line: 1021, column: 22, scope: !221)
!274 = !DILocation(line: 1021, column: 33, scope: !221)
!275 = !DILocation(line: 1021, column: 18, scope: !221)
!276 = !DILocation(line: 1022, column: 19, scope: !221)
!277 = !DILocation(line: 1023, column: 3, scope: !221)
!278 = !DILocation(line: 1025, column: 7, scope: !221)
!279 = !DILocation(line: 1025, column: 16, scope: !221)
!280 = !DILocation(line: 1025, column: 38, scope: !221)
!281 = !DILocation(line: 1025, column: 6, scope: !221)
!282 = !DILocation(line: 1031, column: 22, scope: !221)
!283 = !DILocation(line: 1031, column: 33, scope: !221)
!284 = !DILocation(line: 1031, column: 18, scope: !221)
!285 = !DILocation(line: 1032, column: 19, scope: !221)
!286 = !DILocation(line: 1033, column: 3, scope: !221)
!287 = !DILocation(line: 1035, column: 7, scope: !221)
!288 = !DILocation(line: 1035, column: 16, scope: !221)
!289 = !DILocation(line: 1035, column: 35, scope: !221)
!290 = !DILocation(line: 1035, column: 6, scope: !221)
!291 = !DILocation(line: 1041, column: 22, scope: !221)
!292 = !DILocation(line: 1041, column: 33, scope: !221)
!293 = !DILocation(line: 1041, column: 18, scope: !221)
!294 = !DILocation(line: 1042, column: 19, scope: !221)
!295 = !DILocation(line: 1043, column: 3, scope: !221)
!296 = !DILocation(line: 1045, column: 7, scope: !221)
!297 = !DILocation(line: 1045, column: 16, scope: !221)
!298 = !DILocation(line: 1045, column: 37, scope: !221)
!299 = !DILocation(line: 1045, column: 6, scope: !221)
!300 = !DILocation(line: 1051, column: 22, scope: !221)
!301 = !DILocation(line: 1051, column: 33, scope: !221)
!302 = !DILocation(line: 1051, column: 18, scope: !221)
!303 = !DILocation(line: 1052, column: 19, scope: !221)
!304 = !DILocation(line: 1053, column: 3, scope: !221)
!305 = !DILocation(line: 1055, column: 7, scope: !221)
!306 = !DILocation(line: 1055, column: 16, scope: !221)
!307 = !DILocation(line: 1055, column: 36, scope: !221)
!308 = !DILocation(line: 1055, column: 6, scope: !221)
!309 = !DILocation(line: 1061, column: 22, scope: !221)
!310 = !DILocation(line: 1061, column: 33, scope: !221)
!311 = !DILocation(line: 1061, column: 18, scope: !221)
!312 = !DILocation(line: 1062, column: 19, scope: !221)
!313 = !DILocation(line: 1063, column: 3, scope: !221)
!314 = !DILocation(line: 1065, column: 7, scope: !221)
!315 = !DILocation(line: 1065, column: 16, scope: !221)
!316 = !DILocation(line: 1065, column: 36, scope: !221)
!317 = !DILocation(line: 1065, column: 6, scope: !221)
!318 = !DILocation(line: 1071, column: 22, scope: !221)
!319 = !DILocation(line: 1071, column: 33, scope: !221)
!320 = !DILocation(line: 1071, column: 18, scope: !221)
!321 = !DILocation(line: 1072, column: 19, scope: !221)
!322 = !DILocation(line: 1073, column: 3, scope: !221)
!323 = !DILocation(line: 1075, column: 7, scope: !221)
!324 = !DILocation(line: 1075, column: 16, scope: !221)
!325 = !DILocation(line: 1075, column: 37, scope: !221)
!326 = !DILocation(line: 1075, column: 6, scope: !221)
!327 = !DILocation(line: 1081, column: 22, scope: !221)
!328 = !DILocation(line: 1081, column: 33, scope: !221)
!329 = !DILocation(line: 1081, column: 18, scope: !221)
!330 = !DILocation(line: 1082, column: 19, scope: !221)
!331 = !DILocation(line: 1083, column: 3, scope: !221)
!332 = !DILocation(line: 1085, column: 7, scope: !221)
!333 = !DILocation(line: 1085, column: 16, scope: !221)
!334 = !DILocation(line: 1085, column: 36, scope: !221)
!335 = !DILocation(line: 1085, column: 6, scope: !221)
!336 = !DILocation(line: 1091, column: 22, scope: !221)
!337 = !DILocation(line: 1091, column: 33, scope: !221)
!338 = !DILocation(line: 1091, column: 18, scope: !221)
!339 = !DILocation(line: 1092, column: 19, scope: !221)
!340 = !DILocation(line: 1093, column: 3, scope: !221)
!341 = !DILocation(line: 1095, column: 7, scope: !221)
!342 = !DILocation(line: 1095, column: 16, scope: !221)
!343 = !DILocation(line: 1095, column: 34, scope: !221)
!344 = !DILocation(line: 1095, column: 6, scope: !221)
!345 = !DILocation(line: 1101, column: 22, scope: !221)
!346 = !DILocation(line: 1101, column: 33, scope: !221)
!347 = !DILocation(line: 1101, column: 18, scope: !221)
!348 = !DILocation(line: 1102, column: 19, scope: !221)
!349 = !DILocation(line: 1103, column: 3, scope: !221)
!350 = !DILocation(line: 1105, column: 7, scope: !221)
!351 = !DILocation(line: 1105, column: 16, scope: !221)
!352 = !DILocation(line: 1105, column: 38, scope: !221)
!353 = !DILocation(line: 1105, column: 6, scope: !221)
!354 = !DILocation(line: 1111, column: 22, scope: !221)
!355 = !DILocation(line: 1111, column: 33, scope: !221)
!356 = !DILocation(line: 1111, column: 18, scope: !221)
!357 = !DILocation(line: 1112, column: 19, scope: !221)
!358 = !DILocation(line: 1113, column: 3, scope: !221)
!359 = !DILocation(line: 1115, column: 7, scope: !221)
!360 = !DILocation(line: 1115, column: 16, scope: !221)
!361 = !DILocation(line: 1115, column: 32, scope: !221)
!362 = !DILocation(line: 1115, column: 6, scope: !221)
!363 = !DILocation(line: 1121, column: 22, scope: !221)
!364 = !DILocation(line: 1121, column: 33, scope: !221)
!365 = !DILocation(line: 1121, column: 18, scope: !221)
!366 = !DILocation(line: 1122, column: 19, scope: !221)
!367 = !DILocation(line: 1123, column: 3, scope: !221)
!368 = !DILocation(line: 1126, column: 3, scope: !221)
!369 = !DILocation(line: 1127, column: 1, scope: !221)
!370 = distinct !DISubprogram(name: "FLASH_OB_BootAddrConfig", scope: !1, file: !1, line: 1256, type: !9, scopeLine: 1257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!371 = !DILocation(line: 1261, column: 7, scope: !370)
!372 = !DILocation(line: 1261, column: 22, scope: !370)
!373 = !DILocation(line: 1263, column: 5, scope: !370)
!374 = !DILocation(line: 1264, column: 3, scope: !370)
!375 = !DILocation(line: 1265, column: 12, scope: !370)
!376 = !DILocation(line: 1265, column: 27, scope: !370)
!377 = !DILocation(line: 1267, column: 5, scope: !370)
!378 = !DILocation(line: 1268, column: 3, scope: !370)
!379 = !DILocation(line: 1279, column: 1, scope: !370)
!380 = distinct !DISubprogram(name: "HAL_FLASHEx_OBGetConfig", scope: !1, file: !1, line: 390, type: !9, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!381 = !DILocation(line: 392, column: 3, scope: !380)
!382 = !DILocation(line: 392, column: 12, scope: !380)
!383 = !DILocation(line: 392, column: 23, scope: !380)
!384 = !DILocation(line: 394, column: 7, scope: !380)
!385 = !DILocation(line: 394, column: 16, scope: !380)
!386 = !DILocation(line: 394, column: 24, scope: !380)
!387 = !DILocation(line: 394, column: 51, scope: !380)
!388 = !DILocation(line: 394, column: 55, scope: !380)
!389 = !DILocation(line: 394, column: 64, scope: !380)
!390 = !DILocation(line: 394, column: 72, scope: !380)
!391 = !DILocation(line: 394, column: 99, scope: !380)
!392 = !DILocation(line: 395, column: 7, scope: !380)
!393 = !DILocation(line: 395, column: 16, scope: !380)
!394 = !DILocation(line: 395, column: 24, scope: !380)
!395 = !DILocation(line: 395, column: 51, scope: !380)
!396 = !DILocation(line: 395, column: 55, scope: !380)
!397 = !DILocation(line: 395, column: 64, scope: !380)
!398 = !DILocation(line: 395, column: 72, scope: !380)
!399 = !DILocation(line: 394, column: 6, scope: !380)
!400 = !DILocation(line: 397, column: 5, scope: !380)
!401 = !DILocation(line: 397, column: 14, scope: !380)
!402 = !DILocation(line: 397, column: 25, scope: !380)
!403 = !DILocation(line: 399, column: 21, scope: !380)
!404 = !DILocation(line: 399, column: 30, scope: !380)
!405 = !DILocation(line: 399, column: 41, scope: !380)
!406 = !DILocation(line: 399, column: 50, scope: !380)
!407 = !DILocation(line: 399, column: 69, scope: !380)
!408 = !DILocation(line: 399, column: 78, scope: !380)
!409 = !DILocation(line: 399, column: 5, scope: !380)
!410 = !DILocation(line: 400, column: 3, scope: !380)
!411 = !DILocation(line: 403, column: 23, scope: !380)
!412 = !DILocation(line: 403, column: 3, scope: !380)
!413 = !DILocation(line: 403, column: 12, scope: !380)
!414 = !DILocation(line: 403, column: 21, scope: !380)
!415 = !DILocation(line: 406, column: 25, scope: !380)
!416 = !DILocation(line: 406, column: 3, scope: !380)
!417 = !DILocation(line: 406, column: 12, scope: !380)
!418 = !DILocation(line: 406, column: 23, scope: !380)
!419 = !DILocation(line: 427, column: 8, scope: !380)
!420 = !DILocation(line: 427, column: 17, scope: !380)
!421 = !DILocation(line: 427, column: 32, scope: !380)
!422 = !DILocation(line: 427, column: 52, scope: !380)
!423 = !DILocation(line: 427, column: 56, scope: !380)
!424 = !DILocation(line: 427, column: 65, scope: !380)
!425 = !DILocation(line: 427, column: 80, scope: !380)
!426 = !DILocation(line: 427, column: 7, scope: !380)
!427 = !DILocation(line: 430, column: 5, scope: !380)
!428 = !DILocation(line: 430, column: 14, scope: !380)
!429 = !DILocation(line: 430, column: 25, scope: !380)
!430 = !DILocation(line: 431, column: 26, scope: !380)
!431 = !DILocation(line: 431, column: 35, scope: !380)
!432 = !DILocation(line: 431, column: 53, scope: !380)
!433 = !DILocation(line: 431, column: 62, scope: !380)
!434 = !DILocation(line: 431, column: 5, scope: !380)
!435 = !DILocation(line: 432, column: 3, scope: !380)
!436 = !DILocation(line: 433, column: 1, scope: !380)
!437 = distinct !DISubprogram(name: "FLASH_OB_GetWRP", scope: !1, file: !1, line: 1299, type: !9, scopeLine: 1300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!438 = !DILocation(line: 1302, column: 6, scope: !437)
!439 = !DILocation(line: 1302, column: 14, scope: !437)
!440 = !DILocation(line: 1304, column: 23, scope: !437)
!441 = !DILocation(line: 1304, column: 6, scope: !437)
!442 = !DILocation(line: 1304, column: 21, scope: !437)
!443 = !DILocation(line: 1305, column: 22, scope: !437)
!444 = !DILocation(line: 1305, column: 71, scope: !437)
!445 = !DILocation(line: 1305, column: 6, scope: !437)
!446 = !DILocation(line: 1305, column: 19, scope: !437)
!447 = !DILocation(line: 1306, column: 3, scope: !437)
!448 = !DILocation(line: 1307, column: 11, scope: !437)
!449 = !DILocation(line: 1307, column: 19, scope: !437)
!450 = !DILocation(line: 1309, column: 23, scope: !437)
!451 = !DILocation(line: 1309, column: 6, scope: !437)
!452 = !DILocation(line: 1309, column: 21, scope: !437)
!453 = !DILocation(line: 1310, column: 22, scope: !437)
!454 = !DILocation(line: 1310, column: 71, scope: !437)
!455 = !DILocation(line: 1310, column: 6, scope: !437)
!456 = !DILocation(line: 1310, column: 19, scope: !437)
!457 = !DILocation(line: 1311, column: 3, scope: !437)
!458 = !DILocation(line: 1312, column: 11, scope: !437)
!459 = !DILocation(line: 1312, column: 19, scope: !437)
!460 = !DILocation(line: 1314, column: 23, scope: !437)
!461 = !DILocation(line: 1314, column: 6, scope: !437)
!462 = !DILocation(line: 1314, column: 21, scope: !437)
!463 = !DILocation(line: 1315, column: 22, scope: !437)
!464 = !DILocation(line: 1315, column: 71, scope: !437)
!465 = !DILocation(line: 1315, column: 6, scope: !437)
!466 = !DILocation(line: 1315, column: 19, scope: !437)
!467 = !DILocation(line: 1316, column: 3, scope: !437)
!468 = !DILocation(line: 1317, column: 11, scope: !437)
!469 = !DILocation(line: 1317, column: 19, scope: !437)
!470 = !DILocation(line: 1319, column: 23, scope: !437)
!471 = !DILocation(line: 1319, column: 6, scope: !437)
!472 = !DILocation(line: 1319, column: 21, scope: !437)
!473 = !DILocation(line: 1320, column: 22, scope: !437)
!474 = !DILocation(line: 1320, column: 71, scope: !437)
!475 = !DILocation(line: 1320, column: 6, scope: !437)
!476 = !DILocation(line: 1320, column: 19, scope: !437)
!477 = !DILocation(line: 1321, column: 3, scope: !437)
!478 = !DILocation(line: 1326, column: 1, scope: !437)
!479 = distinct !DISubprogram(name: "FLASH_OB_GetRDP", scope: !1, file: !1, line: 1337, type: !9, scopeLine: 1338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!480 = !DILocation(line: 1339, column: 24, scope: !479)
!481 = !DILocation(line: 1339, column: 12, scope: !479)
!482 = !DILocation(line: 1341, column: 8, scope: !479)
!483 = !DILocation(line: 1341, column: 18, scope: !479)
!484 = !DILocation(line: 1341, column: 37, scope: !479)
!485 = !DILocation(line: 1341, column: 41, scope: !479)
!486 = !DILocation(line: 1341, column: 51, scope: !479)
!487 = !DILocation(line: 1341, column: 72, scope: !479)
!488 = !DILocation(line: 1341, column: 76, scope: !479)
!489 = !DILocation(line: 1341, column: 86, scope: !479)
!490 = !DILocation(line: 1341, column: 7, scope: !479)
!491 = !DILocation(line: 1343, column: 5, scope: !479)
!492 = !DILocation(line: 1347, column: 13, scope: !479)
!493 = !DILocation(line: 1347, column: 5, scope: !479)
!494 = !DILocation(line: 1349, column: 1, scope: !479)
!495 = distinct !DISubprogram(name: "FLASH_OB_GetUser", scope: !1, file: !1, line: 1364, type: !9, scopeLine: 1365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!496 = !DILocation(line: 1366, column: 26, scope: !495)
!497 = !DILocation(line: 1366, column: 12, scope: !495)
!498 = !DILocation(line: 1367, column: 3, scope: !495)
!499 = !DILocation(line: 1369, column: 10, scope: !495)
!500 = !DILocation(line: 1369, column: 3, scope: !495)
!501 = distinct !DISubprogram(name: "FLASH_OB_GetBootAddr", scope: !1, file: !1, line: 1461, type: !9, scopeLine: 1462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!502 = !DILocation(line: 1463, column: 7, scope: !501)
!503 = !DILocation(line: 1463, column: 22, scope: !501)
!504 = !DILocation(line: 1465, column: 25, scope: !501)
!505 = !DILocation(line: 1465, column: 37, scope: !501)
!506 = !DILocation(line: 1465, column: 6, scope: !501)
!507 = !DILocation(line: 1465, column: 15, scope: !501)
!508 = !DILocation(line: 1466, column: 3, scope: !501)
!509 = !DILocation(line: 1467, column: 12, scope: !501)
!510 = !DILocation(line: 1467, column: 27, scope: !501)
!511 = !DILocation(line: 1469, column: 25, scope: !501)
!512 = !DILocation(line: 1469, column: 37, scope: !501)
!513 = !DILocation(line: 1469, column: 6, scope: !501)
!514 = !DILocation(line: 1469, column: 15, scope: !501)
!515 = !DILocation(line: 1470, column: 3, scope: !501)
!516 = !DILocation(line: 1481, column: 1, scope: !501)
!517 = distinct !DISubprogram(name: "HAL_FLASHEx_ConfigPrivMode", scope: !1, file: !1, line: 584, type: !9, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!518 = !DILocation(line: 589, column: 3, scope: !517)
!519 = !DILocation(line: 590, column: 1, scope: !517)
!520 = distinct !DISubprogram(name: "HAL_FLASHEx_GetPrivMode", scope: !1, file: !1, line: 600, type: !9, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!521 = !DILocation(line: 602, column: 18, scope: !520)
!522 = !DILocation(line: 602, column: 27, scope: !520)
!523 = !DILocation(line: 602, column: 3, scope: !520)
!524 = distinct !DISubprogram(name: "HAL_FLASHEx_ConfigLVEPin", scope: !1, file: !1, line: 664, type: !9, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!525 = !DILocation(line: 672, column: 3, scope: !524)
!526 = !DILocation(line: 675, column: 12, scope: !524)
!527 = !DILocation(line: 675, column: 10, scope: !524)
!528 = !DILocation(line: 677, column: 7, scope: !524)
!529 = !DILocation(line: 677, column: 14, scope: !524)
!530 = !DILocation(line: 680, column: 9, scope: !524)
!531 = !DILocation(line: 680, column: 37, scope: !524)
!532 = !DILocation(line: 683, column: 22, scope: !524)
!533 = !DILocation(line: 684, column: 22, scope: !524)
!534 = !DILocation(line: 687, column: 7, scope: !524)
!535 = !DILocation(line: 690, column: 11, scope: !524)
!536 = !DILocation(line: 690, column: 51, scope: !524)
!537 = !DILocation(line: 690, column: 48, scope: !524)
!538 = !DILocation(line: 692, column: 16, scope: !524)
!539 = !DILocation(line: 693, column: 7, scope: !524)
!540 = !DILocation(line: 694, column: 5, scope: !524)
!541 = !DILocation(line: 698, column: 14, scope: !524)
!542 = !DILocation(line: 700, column: 3, scope: !524)
!543 = !DILocation(line: 703, column: 3, scope: !524)
!544 = !DILocation(line: 705, column: 10, scope: !524)
!545 = !DILocation(line: 705, column: 3, scope: !524)
!546 = !DILocation(line: 706, column: 1, scope: !524)
!547 = distinct !DISubprogram(name: "HAL_FLASHEx_GetLVEPin", scope: !1, file: !1, line: 716, type: !9, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!548 = !DILocation(line: 718, column: 18, scope: !547)
!549 = !DILocation(line: 718, column: 22, scope: !547)
!550 = !DILocation(line: 718, column: 3, scope: !547)
