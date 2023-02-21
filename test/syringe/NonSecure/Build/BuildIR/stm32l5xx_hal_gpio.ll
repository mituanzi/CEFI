; ModuleID = '../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_gpio.c'
source_filename = "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_gpio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.GPIO_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.EXTI_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x i32], [4 x i32], i32, [3 x i32], i32, i32, [2 x i32], i32, i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_GPIO_Init(%struct.GPIO_TypeDef* %GPIOx, %struct.GPIO_InitTypeDef* %GPIO_Init) #0 !dbg !8 {
entry:
  %GPIOx.addr = alloca %struct.GPIO_TypeDef*, align 4
  %GPIO_Init.addr = alloca %struct.GPIO_InitTypeDef*, align 4
  %position = alloca i32, align 4
  %iocurrent = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.GPIO_TypeDef* %GPIOx, %struct.GPIO_TypeDef** %GPIOx.addr, align 4
  store %struct.GPIO_InitTypeDef* %GPIO_Init, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4
  store i32 0, i32* %position, align 4, !dbg !10
  br label %while.cond, !dbg !11

while.cond:                                       ; preds = %if.end143, %entry
  %0 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !12
  %Pin = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %0, i32 0, i32 0, !dbg !13
  %1 = load i32, i32* %Pin, align 4, !dbg !13
  %2 = load i32, i32* %position, align 4, !dbg !14
  %shr = lshr i32 %1, %2, !dbg !15
  %cmp = icmp ne i32 %shr, 0, !dbg !16
  br i1 %cmp, label %while.body, label %while.end, !dbg !11

while.body:                                       ; preds = %while.cond
  %3 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !17
  %Pin1 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %3, i32 0, i32 0, !dbg !18
  %4 = load i32, i32* %Pin1, align 4, !dbg !18
  %5 = load i32, i32* %position, align 4, !dbg !19
  %shl = shl i32 1, %5, !dbg !20
  %and = and i32 %4, %shl, !dbg !21
  store i32 %and, i32* %iocurrent, align 4, !dbg !22
  %6 = load i32, i32* %iocurrent, align 4, !dbg !23
  %cmp2 = icmp ne i32 %6, 0, !dbg !24
  br i1 %cmp2, label %if.then, label %if.end143, !dbg !23

if.then:                                          ; preds = %while.body
  %7 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !25
  %Mode = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %7, i32 0, i32 1, !dbg !26
  %8 = load i32, i32* %Mode, align 4, !dbg !26
  %cmp3 = icmp eq i32 %8, 1, !dbg !27
  br i1 %cmp3, label %if.then12, label %lor.lhs.false, !dbg !28

lor.lhs.false:                                    ; preds = %if.then
  %9 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !29
  %Mode4 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %9, i32 0, i32 1, !dbg !30
  %10 = load i32, i32* %Mode4, align 4, !dbg !30
  %cmp5 = icmp eq i32 %10, 2, !dbg !31
  br i1 %cmp5, label %if.then12, label %lor.lhs.false6, !dbg !32

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %11 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !33
  %Mode7 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %11, i32 0, i32 1, !dbg !34
  %12 = load i32, i32* %Mode7, align 4, !dbg !34
  %cmp8 = icmp eq i32 %12, 17, !dbg !35
  br i1 %cmp8, label %if.then12, label %lor.lhs.false9, !dbg !36

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %13 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !37
  %Mode10 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %13, i32 0, i32 1, !dbg !38
  %14 = load i32, i32* %Mode10, align 4, !dbg !38
  %cmp11 = icmp eq i32 %14, 18, !dbg !39
  br i1 %cmp11, label %if.then12, label %if.end, !dbg !40

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.then
  %15 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !41
  %OSPEEDR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %15, i32 0, i32 2, !dbg !42
  %16 = load volatile i32, i32* %OSPEEDR, align 4, !dbg !42
  store i32 %16, i32* %temp, align 4, !dbg !43
  %17 = load i32, i32* %position, align 4, !dbg !44
  %mul = mul i32 %17, 2, !dbg !45
  %shl13 = shl i32 3, %mul, !dbg !46
  %neg = xor i32 %shl13, -1, !dbg !47
  %18 = load i32, i32* %temp, align 4, !dbg !48
  %and14 = and i32 %18, %neg, !dbg !48
  store i32 %and14, i32* %temp, align 4, !dbg !48
  %19 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !49
  %Speed = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %19, i32 0, i32 3, !dbg !50
  %20 = load i32, i32* %Speed, align 4, !dbg !50
  %21 = load i32, i32* %position, align 4, !dbg !51
  %mul15 = mul i32 %21, 2, !dbg !52
  %shl16 = shl i32 %20, %mul15, !dbg !53
  %22 = load i32, i32* %temp, align 4, !dbg !54
  %or = or i32 %22, %shl16, !dbg !54
  store i32 %or, i32* %temp, align 4, !dbg !54
  %23 = load i32, i32* %temp, align 4, !dbg !55
  %24 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !56
  %OSPEEDR17 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %24, i32 0, i32 2, !dbg !57
  store volatile i32 %23, i32* %OSPEEDR17, align 4, !dbg !58
  %25 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !59
  %OTYPER = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %25, i32 0, i32 1, !dbg !60
  %26 = load volatile i32, i32* %OTYPER, align 4, !dbg !60
  store i32 %26, i32* %temp, align 4, !dbg !61
  %27 = load i32, i32* %position, align 4, !dbg !62
  %shl18 = shl i32 1, %27, !dbg !63
  %neg19 = xor i32 %shl18, -1, !dbg !64
  %28 = load i32, i32* %temp, align 4, !dbg !65
  %and20 = and i32 %28, %neg19, !dbg !65
  store i32 %and20, i32* %temp, align 4, !dbg !65
  %29 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !66
  %Mode21 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %29, i32 0, i32 1, !dbg !67
  %30 = load i32, i32* %Mode21, align 4, !dbg !67
  %and22 = and i32 %30, 16, !dbg !68
  %shr23 = lshr i32 %and22, 4, !dbg !69
  %31 = load i32, i32* %position, align 4, !dbg !70
  %shl24 = shl i32 %shr23, %31, !dbg !71
  %32 = load i32, i32* %temp, align 4, !dbg !72
  %or25 = or i32 %32, %shl24, !dbg !72
  store i32 %or25, i32* %temp, align 4, !dbg !72
  %33 = load i32, i32* %temp, align 4, !dbg !73
  %34 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !74
  %OTYPER26 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %34, i32 0, i32 1, !dbg !75
  store volatile i32 %33, i32* %OTYPER26, align 4, !dbg !76
  br label %if.end, !dbg !77

if.end:                                           ; preds = %if.then12, %lor.lhs.false9
  %35 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !78
  %PUPDR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %35, i32 0, i32 3, !dbg !79
  %36 = load volatile i32, i32* %PUPDR, align 4, !dbg !79
  store i32 %36, i32* %temp, align 4, !dbg !80
  %37 = load i32, i32* %position, align 4, !dbg !81
  %mul27 = mul i32 %37, 2, !dbg !82
  %shl28 = shl i32 3, %mul27, !dbg !83
  %neg29 = xor i32 %shl28, -1, !dbg !84
  %38 = load i32, i32* %temp, align 4, !dbg !85
  %and30 = and i32 %38, %neg29, !dbg !85
  store i32 %and30, i32* %temp, align 4, !dbg !85
  %39 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !86
  %Pull = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %39, i32 0, i32 2, !dbg !87
  %40 = load i32, i32* %Pull, align 4, !dbg !87
  %41 = load i32, i32* %position, align 4, !dbg !88
  %mul31 = mul i32 %41, 2, !dbg !89
  %shl32 = shl i32 %40, %mul31, !dbg !90
  %42 = load i32, i32* %temp, align 4, !dbg !91
  %or33 = or i32 %42, %shl32, !dbg !91
  store i32 %or33, i32* %temp, align 4, !dbg !91
  %43 = load i32, i32* %temp, align 4, !dbg !92
  %44 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !93
  %PUPDR34 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %44, i32 0, i32 3, !dbg !94
  store volatile i32 %43, i32* %PUPDR34, align 4, !dbg !95
  %45 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !96
  %Mode35 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %45, i32 0, i32 1, !dbg !97
  %46 = load i32, i32* %Mode35, align 4, !dbg !97
  %cmp36 = icmp eq i32 %46, 2, !dbg !98
  br i1 %cmp36, label %if.then40, label %lor.lhs.false37, !dbg !99

lor.lhs.false37:                                  ; preds = %if.end
  %47 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !100
  %Mode38 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %47, i32 0, i32 1, !dbg !101
  %48 = load i32, i32* %Mode38, align 4, !dbg !101
  %cmp39 = icmp eq i32 %48, 18, !dbg !102
  br i1 %cmp39, label %if.then40, label %if.end54, !dbg !103

if.then40:                                        ; preds = %lor.lhs.false37, %if.end
  %49 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !104
  %AFR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %49, i32 0, i32 8, !dbg !105
  %50 = load i32, i32* %position, align 4, !dbg !106
  %shr41 = lshr i32 %50, 3, !dbg !107
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %AFR, i32 0, i32 %shr41, !dbg !104
  %51 = load volatile i32, i32* %arrayidx, align 4, !dbg !104
  store i32 %51, i32* %temp, align 4, !dbg !108
  %52 = load i32, i32* %position, align 4, !dbg !109
  %and42 = and i32 %52, 7, !dbg !110
  %mul43 = mul i32 %and42, 4, !dbg !111
  %shl44 = shl i32 15, %mul43, !dbg !112
  %neg45 = xor i32 %shl44, -1, !dbg !113
  %53 = load i32, i32* %temp, align 4, !dbg !114
  %and46 = and i32 %53, %neg45, !dbg !114
  store i32 %and46, i32* %temp, align 4, !dbg !114
  %54 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !115
  %Alternate = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %54, i32 0, i32 4, !dbg !116
  %55 = load i32, i32* %Alternate, align 4, !dbg !116
  %56 = load i32, i32* %position, align 4, !dbg !117
  %and47 = and i32 %56, 7, !dbg !118
  %mul48 = mul i32 %and47, 4, !dbg !119
  %shl49 = shl i32 %55, %mul48, !dbg !120
  %57 = load i32, i32* %temp, align 4, !dbg !121
  %or50 = or i32 %57, %shl49, !dbg !121
  store i32 %or50, i32* %temp, align 4, !dbg !121
  %58 = load i32, i32* %temp, align 4, !dbg !122
  %59 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !123
  %AFR51 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %59, i32 0, i32 8, !dbg !124
  %60 = load i32, i32* %position, align 4, !dbg !125
  %shr52 = lshr i32 %60, 3, !dbg !126
  %arrayidx53 = getelementptr inbounds [2 x i32], [2 x i32]* %AFR51, i32 0, i32 %shr52, !dbg !123
  store volatile i32 %58, i32* %arrayidx53, align 4, !dbg !127
  br label %if.end54, !dbg !128

if.end54:                                         ; preds = %if.then40, %lor.lhs.false37
  %61 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !129
  %MODER = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %61, i32 0, i32 0, !dbg !130
  %62 = load volatile i32, i32* %MODER, align 4, !dbg !130
  store i32 %62, i32* %temp, align 4, !dbg !131
  %63 = load i32, i32* %position, align 4, !dbg !132
  %mul55 = mul i32 %63, 2, !dbg !133
  %shl56 = shl i32 3, %mul55, !dbg !134
  %neg57 = xor i32 %shl56, -1, !dbg !135
  %64 = load i32, i32* %temp, align 4, !dbg !136
  %and58 = and i32 %64, %neg57, !dbg !136
  store i32 %and58, i32* %temp, align 4, !dbg !136
  %65 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !137
  %Mode59 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %65, i32 0, i32 1, !dbg !138
  %66 = load i32, i32* %Mode59, align 4, !dbg !138
  %and60 = and i32 %66, 3, !dbg !139
  %67 = load i32, i32* %position, align 4, !dbg !140
  %mul61 = mul i32 %67, 2, !dbg !141
  %shl62 = shl i32 %and60, %mul61, !dbg !142
  %68 = load i32, i32* %temp, align 4, !dbg !143
  %or63 = or i32 %68, %shl62, !dbg !143
  store i32 %or63, i32* %temp, align 4, !dbg !143
  %69 = load i32, i32* %temp, align 4, !dbg !144
  %70 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !145
  %MODER64 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %70, i32 0, i32 0, !dbg !146
  store volatile i32 %69, i32* %MODER64, align 4, !dbg !147
  %71 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !148
  %Mode65 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %71, i32 0, i32 1, !dbg !149
  %72 = load i32, i32* %Mode65, align 4, !dbg !149
  %and66 = and i32 %72, 268435456, !dbg !150
  %cmp67 = icmp eq i32 %and66, 268435456, !dbg !151
  br i1 %cmp67, label %if.then68, label %if.end142, !dbg !152

if.then68:                                        ; preds = %if.end54
  %73 = load i32, i32* %position, align 4, !dbg !153
  %shr69 = lshr i32 %73, 2, !dbg !154
  %arrayidx70 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr69, !dbg !155
  %74 = load volatile i32, i32* %arrayidx70, align 4, !dbg !155
  store i32 %74, i32* %temp, align 4, !dbg !156
  %75 = load i32, i32* %position, align 4, !dbg !157
  %and71 = and i32 %75, 3, !dbg !158
  %mul72 = mul i32 8, %and71, !dbg !159
  %shl73 = shl i32 15, %mul72, !dbg !160
  %neg74 = xor i32 %shl73, -1, !dbg !161
  %76 = load i32, i32* %temp, align 4, !dbg !162
  %and75 = and i32 %76, %neg74, !dbg !162
  store i32 %and75, i32* %temp, align 4, !dbg !162
  %77 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !163
  %cmp76 = icmp eq %struct.GPIO_TypeDef* %77, inttoptr (i32 1107427328 to %struct.GPIO_TypeDef*), !dbg !163
  br i1 %cmp76, label %cond.true, label %cond.false, !dbg !163

cond.true:                                        ; preds = %if.then68
  br label %cond.end102, !dbg !163

cond.false:                                       ; preds = %if.then68
  %78 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !163
  %cmp77 = icmp eq %struct.GPIO_TypeDef* %78, inttoptr (i32 1107428352 to %struct.GPIO_TypeDef*), !dbg !163
  br i1 %cmp77, label %cond.true78, label %cond.false79, !dbg !163

cond.true78:                                      ; preds = %cond.false
  br label %cond.end100, !dbg !163

cond.false79:                                     ; preds = %cond.false
  %79 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !163
  %cmp80 = icmp eq %struct.GPIO_TypeDef* %79, inttoptr (i32 1107429376 to %struct.GPIO_TypeDef*), !dbg !163
  br i1 %cmp80, label %cond.true81, label %cond.false82, !dbg !163

cond.true81:                                      ; preds = %cond.false79
  br label %cond.end98, !dbg !163

cond.false82:                                     ; preds = %cond.false79
  %80 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !163
  %cmp83 = icmp eq %struct.GPIO_TypeDef* %80, inttoptr (i32 1107430400 to %struct.GPIO_TypeDef*), !dbg !163
  br i1 %cmp83, label %cond.true84, label %cond.false85, !dbg !163

cond.true84:                                      ; preds = %cond.false82
  br label %cond.end96, !dbg !163

cond.false85:                                     ; preds = %cond.false82
  %81 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !163
  %cmp86 = icmp eq %struct.GPIO_TypeDef* %81, inttoptr (i32 1107431424 to %struct.GPIO_TypeDef*), !dbg !163
  br i1 %cmp86, label %cond.true87, label %cond.false88, !dbg !163

cond.true87:                                      ; preds = %cond.false85
  br label %cond.end94, !dbg !163

cond.false88:                                     ; preds = %cond.false85
  %82 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !163
  %cmp89 = icmp eq %struct.GPIO_TypeDef* %82, inttoptr (i32 1107432448 to %struct.GPIO_TypeDef*), !dbg !163
  br i1 %cmp89, label %cond.true90, label %cond.false91, !dbg !163

cond.true90:                                      ; preds = %cond.false88
  br label %cond.end, !dbg !163

cond.false91:                                     ; preds = %cond.false88
  %83 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !163
  %cmp92 = icmp eq %struct.GPIO_TypeDef* %83, inttoptr (i32 1107433472 to %struct.GPIO_TypeDef*), !dbg !163
  %84 = zext i1 %cmp92 to i64, !dbg !163
  %cond = select i1 %cmp92, i32 6, i32 7, !dbg !163
  br label %cond.end, !dbg !163

cond.end:                                         ; preds = %cond.false91, %cond.true90
  %cond93 = phi i32 [ 5, %cond.true90 ], [ %cond, %cond.false91 ], !dbg !163
  br label %cond.end94, !dbg !163

cond.end94:                                       ; preds = %cond.end, %cond.true87
  %cond95 = phi i32 [ 4, %cond.true87 ], [ %cond93, %cond.end ], !dbg !163
  br label %cond.end96, !dbg !163

cond.end96:                                       ; preds = %cond.end94, %cond.true84
  %cond97 = phi i32 [ 3, %cond.true84 ], [ %cond95, %cond.end94 ], !dbg !163
  br label %cond.end98, !dbg !163

cond.end98:                                       ; preds = %cond.end96, %cond.true81
  %cond99 = phi i32 [ 2, %cond.true81 ], [ %cond97, %cond.end96 ], !dbg !163
  br label %cond.end100, !dbg !163

cond.end100:                                      ; preds = %cond.end98, %cond.true78
  %cond101 = phi i32 [ 1, %cond.true78 ], [ %cond99, %cond.end98 ], !dbg !163
  br label %cond.end102, !dbg !163

cond.end102:                                      ; preds = %cond.end100, %cond.true
  %cond103 = phi i32 [ 0, %cond.true ], [ %cond101, %cond.end100 ], !dbg !163
  %85 = load i32, i32* %position, align 4, !dbg !164
  %and104 = and i32 %85, 3, !dbg !165
  %mul105 = mul i32 8, %and104, !dbg !166
  %shl106 = shl i32 %cond103, %mul105, !dbg !167
  %86 = load i32, i32* %temp, align 4, !dbg !168
  %or107 = or i32 %86, %shl106, !dbg !168
  store i32 %or107, i32* %temp, align 4, !dbg !168
  %87 = load i32, i32* %temp, align 4, !dbg !169
  %88 = load i32, i32* %position, align 4, !dbg !170
  %shr108 = lshr i32 %88, 2, !dbg !171
  %arrayidx109 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr108, !dbg !172
  store volatile i32 %87, i32* %arrayidx109, align 4, !dbg !173
  %89 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !174
  store i32 %89, i32* %temp, align 4, !dbg !175
  %90 = load i32, i32* %iocurrent, align 4, !dbg !176
  %neg110 = xor i32 %90, -1, !dbg !177
  %91 = load i32, i32* %temp, align 4, !dbg !178
  %and111 = and i32 %91, %neg110, !dbg !178
  store i32 %and111, i32* %temp, align 4, !dbg !178
  %92 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !179
  %Mode112 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %92, i32 0, i32 1, !dbg !180
  %93 = load i32, i32* %Mode112, align 4, !dbg !180
  %and113 = and i32 %93, 65536, !dbg !181
  %cmp114 = icmp eq i32 %and113, 65536, !dbg !182
  br i1 %cmp114, label %if.then115, label %if.end117, !dbg !183

if.then115:                                       ; preds = %cond.end102
  %94 = load i32, i32* %iocurrent, align 4, !dbg !184
  %95 = load i32, i32* %temp, align 4, !dbg !185
  %or116 = or i32 %95, %94, !dbg !185
  store i32 %or116, i32* %temp, align 4, !dbg !185
  br label %if.end117, !dbg !186

if.end117:                                        ; preds = %if.then115, %cond.end102
  %96 = load i32, i32* %temp, align 4, !dbg !187
  store volatile i32 %96, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !188
  %97 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !189
  store i32 %97, i32* %temp, align 4, !dbg !190
  %98 = load i32, i32* %iocurrent, align 4, !dbg !191
  %neg118 = xor i32 %98, -1, !dbg !192
  %99 = load i32, i32* %temp, align 4, !dbg !193
  %and119 = and i32 %99, %neg118, !dbg !193
  store i32 %and119, i32* %temp, align 4, !dbg !193
  %100 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !194
  %Mode120 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %100, i32 0, i32 1, !dbg !195
  %101 = load i32, i32* %Mode120, align 4, !dbg !195
  %and121 = and i32 %101, 131072, !dbg !196
  %cmp122 = icmp eq i32 %and121, 131072, !dbg !197
  br i1 %cmp122, label %if.then123, label %if.end125, !dbg !198

if.then123:                                       ; preds = %if.end117
  %102 = load i32, i32* %iocurrent, align 4, !dbg !199
  %103 = load i32, i32* %temp, align 4, !dbg !200
  %or124 = or i32 %103, %102, !dbg !200
  store i32 %or124, i32* %temp, align 4, !dbg !200
  br label %if.end125, !dbg !201

if.end125:                                        ; preds = %if.then123, %if.end117
  %104 = load i32, i32* %temp, align 4, !dbg !202
  store volatile i32 %104, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !203
  %105 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !204
  store i32 %105, i32* %temp, align 4, !dbg !205
  %106 = load i32, i32* %iocurrent, align 4, !dbg !206
  %neg126 = xor i32 %106, -1, !dbg !207
  %107 = load i32, i32* %temp, align 4, !dbg !208
  %and127 = and i32 %107, %neg126, !dbg !208
  store i32 %and127, i32* %temp, align 4, !dbg !208
  %108 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !209
  %Mode128 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %108, i32 0, i32 1, !dbg !210
  %109 = load i32, i32* %Mode128, align 4, !dbg !210
  %and129 = and i32 %109, 1048576, !dbg !211
  %cmp130 = icmp eq i32 %and129, 1048576, !dbg !212
  br i1 %cmp130, label %if.then131, label %if.end133, !dbg !213

if.then131:                                       ; preds = %if.end125
  %110 = load i32, i32* %iocurrent, align 4, !dbg !214
  %111 = load i32, i32* %temp, align 4, !dbg !215
  %or132 = or i32 %111, %110, !dbg !215
  store i32 %or132, i32* %temp, align 4, !dbg !215
  br label %if.end133, !dbg !216

if.end133:                                        ; preds = %if.then131, %if.end125
  %112 = load i32, i32* %temp, align 4, !dbg !217
  store volatile i32 %112, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !218
  %113 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !219
  store i32 %113, i32* %temp, align 4, !dbg !220
  %114 = load i32, i32* %iocurrent, align 4, !dbg !221
  %neg134 = xor i32 %114, -1, !dbg !222
  %115 = load i32, i32* %temp, align 4, !dbg !223
  %and135 = and i32 %115, %neg134, !dbg !223
  store i32 %and135, i32* %temp, align 4, !dbg !223
  %116 = load %struct.GPIO_InitTypeDef*, %struct.GPIO_InitTypeDef** %GPIO_Init.addr, align 4, !dbg !224
  %Mode136 = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %116, i32 0, i32 1, !dbg !225
  %117 = load i32, i32* %Mode136, align 4, !dbg !225
  %and137 = and i32 %117, 2097152, !dbg !226
  %cmp138 = icmp eq i32 %and137, 2097152, !dbg !227
  br i1 %cmp138, label %if.then139, label %if.end141, !dbg !228

if.then139:                                       ; preds = %if.end133
  %118 = load i32, i32* %iocurrent, align 4, !dbg !229
  %119 = load i32, i32* %temp, align 4, !dbg !230
  %or140 = or i32 %119, %118, !dbg !230
  store i32 %or140, i32* %temp, align 4, !dbg !230
  br label %if.end141, !dbg !231

if.end141:                                        ; preds = %if.then139, %if.end133
  %120 = load i32, i32* %temp, align 4, !dbg !232
  store volatile i32 %120, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !233
  br label %if.end142, !dbg !234

if.end142:                                        ; preds = %if.end141, %if.end54
  br label %if.end143, !dbg !235

if.end143:                                        ; preds = %if.end142, %while.body
  %121 = load i32, i32* %position, align 4, !dbg !236
  %inc = add i32 %121, 1, !dbg !236
  store i32 %inc, i32* %position, align 4, !dbg !236
  br label %while.cond, !dbg !11, !llvm.loop !237

while.end:                                        ; preds = %while.cond
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_GPIO_DeInit(%struct.GPIO_TypeDef* %GPIOx, i32 %GPIO_Pin) #0 !dbg !240 {
entry:
  %GPIOx.addr = alloca %struct.GPIO_TypeDef*, align 4
  %GPIO_Pin.addr = alloca i32, align 4
  %position = alloca i32, align 4
  %iocurrent = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.GPIO_TypeDef* %GPIOx, %struct.GPIO_TypeDef** %GPIOx.addr, align 4
  store i32 %GPIO_Pin, i32* %GPIO_Pin.addr, align 4
  store i32 0, i32* %position, align 4, !dbg !241
  br label %while.cond, !dbg !242

while.cond:                                       ; preds = %if.end73, %entry
  %0 = load i32, i32* %GPIO_Pin.addr, align 4, !dbg !243
  %1 = load i32, i32* %position, align 4, !dbg !244
  %shr = lshr i32 %0, %1, !dbg !245
  %cmp = icmp ne i32 %shr, 0, !dbg !246
  br i1 %cmp, label %while.body, label %while.end, !dbg !242

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %GPIO_Pin.addr, align 4, !dbg !247
  %3 = load i32, i32* %position, align 4, !dbg !248
  %shl = shl i32 1, %3, !dbg !249
  %and = and i32 %2, %shl, !dbg !250
  store i32 %and, i32* %iocurrent, align 4, !dbg !251
  %4 = load i32, i32* %iocurrent, align 4, !dbg !252
  %cmp1 = icmp ne i32 %4, 0, !dbg !253
  br i1 %cmp1, label %if.then, label %if.end73, !dbg !252

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %position, align 4, !dbg !254
  %shr2 = lshr i32 %5, 2, !dbg !255
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr2, !dbg !256
  %6 = load volatile i32, i32* %arrayidx, align 4, !dbg !256
  store i32 %6, i32* %temp, align 4, !dbg !257
  %7 = load i32, i32* %position, align 4, !dbg !258
  %and3 = and i32 %7, 3, !dbg !259
  %mul = mul i32 8, %and3, !dbg !260
  %shl4 = shl i32 15, %mul, !dbg !261
  %8 = load i32, i32* %temp, align 4, !dbg !262
  %and5 = and i32 %8, %shl4, !dbg !262
  store i32 %and5, i32* %temp, align 4, !dbg !262
  %9 = load i32, i32* %temp, align 4, !dbg !263
  %10 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !264
  %cmp6 = icmp eq %struct.GPIO_TypeDef* %10, inttoptr (i32 1107427328 to %struct.GPIO_TypeDef*), !dbg !264
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !264

cond.true:                                        ; preds = %if.then
  br label %cond.end32, !dbg !264

cond.false:                                       ; preds = %if.then
  %11 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !264
  %cmp7 = icmp eq %struct.GPIO_TypeDef* %11, inttoptr (i32 1107428352 to %struct.GPIO_TypeDef*), !dbg !264
  br i1 %cmp7, label %cond.true8, label %cond.false9, !dbg !264

cond.true8:                                       ; preds = %cond.false
  br label %cond.end30, !dbg !264

cond.false9:                                      ; preds = %cond.false
  %12 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !264
  %cmp10 = icmp eq %struct.GPIO_TypeDef* %12, inttoptr (i32 1107429376 to %struct.GPIO_TypeDef*), !dbg !264
  br i1 %cmp10, label %cond.true11, label %cond.false12, !dbg !264

cond.true11:                                      ; preds = %cond.false9
  br label %cond.end28, !dbg !264

cond.false12:                                     ; preds = %cond.false9
  %13 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !264
  %cmp13 = icmp eq %struct.GPIO_TypeDef* %13, inttoptr (i32 1107430400 to %struct.GPIO_TypeDef*), !dbg !264
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !264

cond.true14:                                      ; preds = %cond.false12
  br label %cond.end26, !dbg !264

cond.false15:                                     ; preds = %cond.false12
  %14 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !264
  %cmp16 = icmp eq %struct.GPIO_TypeDef* %14, inttoptr (i32 1107431424 to %struct.GPIO_TypeDef*), !dbg !264
  br i1 %cmp16, label %cond.true17, label %cond.false18, !dbg !264

cond.true17:                                      ; preds = %cond.false15
  br label %cond.end24, !dbg !264

cond.false18:                                     ; preds = %cond.false15
  %15 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !264
  %cmp19 = icmp eq %struct.GPIO_TypeDef* %15, inttoptr (i32 1107432448 to %struct.GPIO_TypeDef*), !dbg !264
  br i1 %cmp19, label %cond.true20, label %cond.false21, !dbg !264

cond.true20:                                      ; preds = %cond.false18
  br label %cond.end, !dbg !264

cond.false21:                                     ; preds = %cond.false18
  %16 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !264
  %cmp22 = icmp eq %struct.GPIO_TypeDef* %16, inttoptr (i32 1107433472 to %struct.GPIO_TypeDef*), !dbg !264
  %17 = zext i1 %cmp22 to i64, !dbg !264
  %cond = select i1 %cmp22, i32 6, i32 7, !dbg !264
  br label %cond.end, !dbg !264

cond.end:                                         ; preds = %cond.false21, %cond.true20
  %cond23 = phi i32 [ 5, %cond.true20 ], [ %cond, %cond.false21 ], !dbg !264
  br label %cond.end24, !dbg !264

cond.end24:                                       ; preds = %cond.end, %cond.true17
  %cond25 = phi i32 [ 4, %cond.true17 ], [ %cond23, %cond.end ], !dbg !264
  br label %cond.end26, !dbg !264

cond.end26:                                       ; preds = %cond.end24, %cond.true14
  %cond27 = phi i32 [ 3, %cond.true14 ], [ %cond25, %cond.end24 ], !dbg !264
  br label %cond.end28, !dbg !264

cond.end28:                                       ; preds = %cond.end26, %cond.true11
  %cond29 = phi i32 [ 2, %cond.true11 ], [ %cond27, %cond.end26 ], !dbg !264
  br label %cond.end30, !dbg !264

cond.end30:                                       ; preds = %cond.end28, %cond.true8
  %cond31 = phi i32 [ 1, %cond.true8 ], [ %cond29, %cond.end28 ], !dbg !264
  br label %cond.end32, !dbg !264

cond.end32:                                       ; preds = %cond.end30, %cond.true
  %cond33 = phi i32 [ 0, %cond.true ], [ %cond31, %cond.end30 ], !dbg !264
  %18 = load i32, i32* %position, align 4, !dbg !265
  %and34 = and i32 %18, 3, !dbg !266
  %mul35 = mul i32 8, %and34, !dbg !267
  %shl36 = shl i32 %cond33, %mul35, !dbg !268
  %cmp37 = icmp eq i32 %9, %shl36, !dbg !269
  br i1 %cmp37, label %if.then38, label %if.end, !dbg !263

if.then38:                                        ; preds = %cond.end32
  %19 = load i32, i32* %iocurrent, align 4, !dbg !270
  %neg = xor i32 %19, -1, !dbg !271
  %20 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !272
  %and39 = and i32 %20, %neg, !dbg !272
  store volatile i32 %and39, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 19), align 4, !dbg !272
  %21 = load i32, i32* %iocurrent, align 4, !dbg !273
  %neg40 = xor i32 %21, -1, !dbg !274
  %22 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !275
  %and41 = and i32 %22, %neg40, !dbg !275
  store volatile i32 %and41, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 20), align 4, !dbg !275
  %23 = load i32, i32* %iocurrent, align 4, !dbg !276
  %neg42 = xor i32 %23, -1, !dbg !277
  %24 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !278
  %and43 = and i32 %24, %neg42, !dbg !278
  store volatile i32 %and43, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 0), align 4, !dbg !278
  %25 = load i32, i32* %iocurrent, align 4, !dbg !279
  %neg44 = xor i32 %25, -1, !dbg !280
  %26 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !281
  %and45 = and i32 %26, %neg44, !dbg !281
  store volatile i32 %and45, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 1), align 4, !dbg !281
  %27 = load i32, i32* %position, align 4, !dbg !282
  %and46 = and i32 %27, 3, !dbg !283
  %mul47 = mul i32 8, %and46, !dbg !284
  %shl48 = shl i32 15, %mul47, !dbg !285
  store i32 %shl48, i32* %temp, align 4, !dbg !286
  %28 = load i32, i32* %temp, align 4, !dbg !287
  %neg49 = xor i32 %28, -1, !dbg !288
  %29 = load i32, i32* %position, align 4, !dbg !289
  %shr50 = lshr i32 %29, 2, !dbg !290
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 16), i32 0, i32 %shr50, !dbg !291
  %30 = load volatile i32, i32* %arrayidx51, align 4, !dbg !292
  %and52 = and i32 %30, %neg49, !dbg !292
  store volatile i32 %and52, i32* %arrayidx51, align 4, !dbg !292
  br label %if.end, !dbg !293

if.end:                                           ; preds = %if.then38, %cond.end32
  %31 = load i32, i32* %position, align 4, !dbg !294
  %mul53 = mul i32 %31, 2, !dbg !295
  %shl54 = shl i32 3, %mul53, !dbg !296
  %32 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !297
  %MODER = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %32, i32 0, i32 0, !dbg !298
  %33 = load volatile i32, i32* %MODER, align 4, !dbg !299
  %or = or i32 %33, %shl54, !dbg !299
  store volatile i32 %or, i32* %MODER, align 4, !dbg !299
  %34 = load i32, i32* %position, align 4, !dbg !300
  %and55 = and i32 %34, 7, !dbg !301
  %mul56 = mul i32 %and55, 4, !dbg !302
  %shl57 = shl i32 15, %mul56, !dbg !303
  %neg58 = xor i32 %shl57, -1, !dbg !304
  %35 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !305
  %AFR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %35, i32 0, i32 8, !dbg !306
  %36 = load i32, i32* %position, align 4, !dbg !307
  %shr59 = lshr i32 %36, 3, !dbg !308
  %arrayidx60 = getelementptr inbounds [2 x i32], [2 x i32]* %AFR, i32 0, i32 %shr59, !dbg !305
  %37 = load volatile i32, i32* %arrayidx60, align 4, !dbg !309
  %and61 = and i32 %37, %neg58, !dbg !309
  store volatile i32 %and61, i32* %arrayidx60, align 4, !dbg !309
  %38 = load i32, i32* %position, align 4, !dbg !310
  %mul62 = mul i32 %38, 2, !dbg !311
  %shl63 = shl i32 3, %mul62, !dbg !312
  %neg64 = xor i32 %shl63, -1, !dbg !313
  %39 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !314
  %OSPEEDR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %39, i32 0, i32 2, !dbg !315
  %40 = load volatile i32, i32* %OSPEEDR, align 4, !dbg !316
  %and65 = and i32 %40, %neg64, !dbg !316
  store volatile i32 %and65, i32* %OSPEEDR, align 4, !dbg !316
  %41 = load i32, i32* %position, align 4, !dbg !317
  %shl66 = shl i32 1, %41, !dbg !318
  %neg67 = xor i32 %shl66, -1, !dbg !319
  %42 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !320
  %OTYPER = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %42, i32 0, i32 1, !dbg !321
  %43 = load volatile i32, i32* %OTYPER, align 4, !dbg !322
  %and68 = and i32 %43, %neg67, !dbg !322
  store volatile i32 %and68, i32* %OTYPER, align 4, !dbg !322
  %44 = load i32, i32* %position, align 4, !dbg !323
  %mul69 = mul i32 %44, 2, !dbg !324
  %shl70 = shl i32 3, %mul69, !dbg !325
  %neg71 = xor i32 %shl70, -1, !dbg !326
  %45 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !327
  %PUPDR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %45, i32 0, i32 3, !dbg !328
  %46 = load volatile i32, i32* %PUPDR, align 4, !dbg !329
  %and72 = and i32 %46, %neg71, !dbg !329
  store volatile i32 %and72, i32* %PUPDR, align 4, !dbg !329
  br label %if.end73, !dbg !330

if.end73:                                         ; preds = %if.end, %while.body
  %47 = load i32, i32* %position, align 4, !dbg !331
  %inc = add i32 %47, 1, !dbg !331
  store i32 %inc, i32* %position, align 4, !dbg !331
  br label %while.cond, !dbg !242, !llvm.loop !332

while.end:                                        ; preds = %while.cond
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_GPIO_ReadPin(%struct.GPIO_TypeDef* %GPIOx, i16 zeroext %GPIO_Pin) #0 !dbg !335 {
entry:
  %GPIOx.addr = alloca %struct.GPIO_TypeDef*, align 4
  %GPIO_Pin.addr = alloca i16, align 2
  %bitstatus = alloca i8, align 1
  store %struct.GPIO_TypeDef* %GPIOx, %struct.GPIO_TypeDef** %GPIOx.addr, align 4
  store i16 %GPIO_Pin, i16* %GPIO_Pin.addr, align 2
  %0 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !336
  %IDR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 4, !dbg !337
  %1 = load volatile i32, i32* %IDR, align 4, !dbg !337
  %2 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !338
  %conv = zext i16 %2 to i32, !dbg !338
  %and = and i32 %1, %conv, !dbg !339
  %cmp = icmp ne i32 %and, 0, !dbg !340
  br i1 %cmp, label %if.then, label %if.else, !dbg !341

if.then:                                          ; preds = %entry
  store i8 1, i8* %bitstatus, align 1, !dbg !342
  br label %if.end, !dbg !343

if.else:                                          ; preds = %entry
  store i8 0, i8* %bitstatus, align 1, !dbg !344
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i8, i8* %bitstatus, align 1, !dbg !345
  ret i8 %3, !dbg !346
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_GPIO_WritePin(%struct.GPIO_TypeDef* %GPIOx, i16 zeroext %GPIO_Pin, i8 zeroext %PinState) #0 !dbg !347 {
entry:
  %GPIOx.addr = alloca %struct.GPIO_TypeDef*, align 4
  %GPIO_Pin.addr = alloca i16, align 2
  %PinState.addr = alloca i8, align 1
  store %struct.GPIO_TypeDef* %GPIOx, %struct.GPIO_TypeDef** %GPIOx.addr, align 4
  store i16 %GPIO_Pin, i16* %GPIO_Pin.addr, align 2
  store i8 %PinState, i8* %PinState.addr, align 1
  %0 = load i8, i8* %PinState.addr, align 1, !dbg !348
  %conv = zext i8 %0 to i32, !dbg !348
  %cmp = icmp ne i32 %conv, 0, !dbg !349
  br i1 %cmp, label %if.then, label %if.else, !dbg !348

if.then:                                          ; preds = %entry
  %1 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !350
  %conv2 = zext i16 %1 to i32, !dbg !351
  %2 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !352
  %BSRR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %2, i32 0, i32 6, !dbg !353
  store volatile i32 %conv2, i32* %BSRR, align 4, !dbg !354
  br label %if.end, !dbg !355

if.else:                                          ; preds = %entry
  %3 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !356
  %conv3 = zext i16 %3 to i32, !dbg !357
  %4 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !358
  %BRR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %4, i32 0, i32 9, !dbg !359
  store volatile i32 %conv3, i32* %BRR, align 4, !dbg !360
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_GPIO_TogglePin(%struct.GPIO_TypeDef* %GPIOx, i16 zeroext %GPIO_Pin) #0 !dbg !362 {
entry:
  %GPIOx.addr = alloca %struct.GPIO_TypeDef*, align 4
  %GPIO_Pin.addr = alloca i16, align 2
  %odr = alloca i32, align 4
  store %struct.GPIO_TypeDef* %GPIOx, %struct.GPIO_TypeDef** %GPIOx.addr, align 4
  store i16 %GPIO_Pin, i16* %GPIO_Pin.addr, align 2
  %0 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !363
  %ODR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %0, i32 0, i32 5, !dbg !364
  %1 = load volatile i32, i32* %ODR, align 4, !dbg !364
  store i32 %1, i32* %odr, align 4, !dbg !365
  %2 = load i32, i32* %odr, align 4, !dbg !366
  %3 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !367
  %conv = zext i16 %3 to i32, !dbg !367
  %and = and i32 %2, %conv, !dbg !368
  %shl = shl i32 %and, 16, !dbg !369
  %4 = load i32, i32* %odr, align 4, !dbg !370
  %neg = xor i32 %4, -1, !dbg !371
  %5 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !372
  %conv1 = zext i16 %5 to i32, !dbg !372
  %and2 = and i32 %neg, %conv1, !dbg !373
  %or = or i32 %shl, %and2, !dbg !374
  %6 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !375
  %BSRR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %6, i32 0, i32 6, !dbg !376
  store volatile i32 %or, i32* %BSRR, align 4, !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc zeroext i8 @HAL_GPIO_LockPin(%struct.GPIO_TypeDef* %GPIOx, i16 zeroext %GPIO_Pin) #0 !dbg !379 {
entry:
  %retval = alloca i8, align 1
  %GPIOx.addr = alloca %struct.GPIO_TypeDef*, align 4
  %GPIO_Pin.addr = alloca i16, align 2
  %temp = alloca i32, align 4
  store %struct.GPIO_TypeDef* %GPIOx, %struct.GPIO_TypeDef** %GPIOx.addr, align 4
  store i16 %GPIO_Pin, i16* %GPIO_Pin.addr, align 2
  store volatile i32 65536, i32* %temp, align 4, !dbg !380
  %0 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !381
  %conv = zext i16 %0 to i32, !dbg !381
  %1 = load volatile i32, i32* %temp, align 4, !dbg !382
  %or = or i32 %1, %conv, !dbg !382
  store volatile i32 %or, i32* %temp, align 4, !dbg !382
  %2 = load volatile i32, i32* %temp, align 4, !dbg !383
  %3 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !384
  %LCKR = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %3, i32 0, i32 7, !dbg !385
  store volatile i32 %2, i32* %LCKR, align 4, !dbg !386
  %4 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !387
  %conv1 = zext i16 %4 to i32, !dbg !387
  %5 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !388
  %LCKR2 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %5, i32 0, i32 7, !dbg !389
  store volatile i32 %conv1, i32* %LCKR2, align 4, !dbg !390
  %6 = load volatile i32, i32* %temp, align 4, !dbg !391
  %7 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !392
  %LCKR3 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %7, i32 0, i32 7, !dbg !393
  store volatile i32 %6, i32* %LCKR3, align 4, !dbg !394
  %8 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !395
  %LCKR4 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %8, i32 0, i32 7, !dbg !396
  %9 = load volatile i32, i32* %LCKR4, align 4, !dbg !396
  store volatile i32 %9, i32* %temp, align 4, !dbg !397
  %10 = load %struct.GPIO_TypeDef*, %struct.GPIO_TypeDef** %GPIOx.addr, align 4, !dbg !398
  %LCKR5 = getelementptr inbounds %struct.GPIO_TypeDef, %struct.GPIO_TypeDef* %10, i32 0, i32 7, !dbg !399
  %11 = load volatile i32, i32* %LCKR5, align 4, !dbg !399
  %and = and i32 %11, 65536, !dbg !400
  %cmp = icmp ne i32 %and, 0, !dbg !401
  br i1 %cmp, label %if.then, label %if.else, !dbg !402

if.then:                                          ; preds = %entry
  store i8 0, i8* %retval, align 1, !dbg !403
  br label %return, !dbg !403

if.else:                                          ; preds = %entry
  store i8 1, i8* %retval, align 1, !dbg !404
  br label %return, !dbg !404

return:                                           ; preds = %if.else, %if.then
  %12 = load i8, i8* %retval, align 1, !dbg !405
  ret i8 %12, !dbg !405
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_GPIO_EXTI_IRQHandler(i16 zeroext %GPIO_Pin) #0 !dbg !406 {
entry:
  %GPIO_Pin.addr = alloca i16, align 2
  store i16 %GPIO_Pin, i16* %GPIO_Pin.addr, align 2
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 3), align 4, !dbg !407
  %1 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !407
  %conv = zext i16 %1 to i32, !dbg !407
  %and = and i32 %0, %conv, !dbg !407
  %cmp = icmp ne i32 %and, 0, !dbg !408
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  %2 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !409
  %conv2 = zext i16 %2 to i32, !dbg !409
  store volatile i32 %conv2, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 3), align 4, !dbg !409
  %3 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !410
  call arm_aapcs_vfpcc void @HAL_GPIO_EXTI_Rising_Callback(i16 zeroext %3), !dbg !411
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then, %entry
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 4), align 4, !dbg !413
  %5 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !413
  %conv3 = zext i16 %5 to i32, !dbg !413
  %and4 = and i32 %4, %conv3, !dbg !413
  %cmp5 = icmp ne i32 %and4, 0, !dbg !414
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !413

if.then7:                                         ; preds = %if.end
  %6 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !415
  %conv8 = zext i16 %6 to i32, !dbg !415
  store volatile i32 %conv8, i32* getelementptr inbounds (%struct.EXTI_TypeDef, %struct.EXTI_TypeDef* inttoptr (i32 1073935360 to %struct.EXTI_TypeDef*), i32 0, i32 4), align 4, !dbg !415
  %7 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !416
  call arm_aapcs_vfpcc void @HAL_GPIO_EXTI_Falling_Callback(i16 zeroext %7), !dbg !417
  br label %if.end9, !dbg !418

if.end9:                                          ; preds = %if.then7, %if.end
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_GPIO_EXTI_Rising_Callback(i16 zeroext %GPIO_Pin) #0 !dbg !420 {
entry:
  %GPIO_Pin.addr = alloca i16, align 2
  store i16 %GPIO_Pin, i16* %GPIO_Pin.addr, align 2
  %0 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc void @HAL_GPIO_EXTI_Falling_Callback(i16 zeroext %GPIO_Pin) #0 !dbg !423 {
entry:
  %GPIO_Pin.addr = alloca i16, align 2
  store i16 %GPIO_Pin, i16* %GPIO_Pin.addr, align 2
  %0 = load i16, i16* %GPIO_Pin.addr, align 2, !dbg !424
  ret void, !dbg !425
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../Drivers/STM32L5xx_HAL_Driver/Src/stm32l5xx_hal_gpio.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_GPIO_Init", scope: !1, file: !1, line: 167, type: !9, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DISubroutineType(types: !2)
!10 = !DILocation(line: 169, column: 12, scope: !8)
!11 = !DILocation(line: 180, column: 3, scope: !8)
!12 = !DILocation(line: 180, column: 12, scope: !8)
!13 = !DILocation(line: 180, column: 23, scope: !8)
!14 = !DILocation(line: 180, column: 31, scope: !8)
!15 = !DILocation(line: 180, column: 28, scope: !8)
!16 = !DILocation(line: 180, column: 41, scope: !8)
!17 = !DILocation(line: 183, column: 18, scope: !8)
!18 = !DILocation(line: 183, column: 29, scope: !8)
!19 = !DILocation(line: 183, column: 44, scope: !8)
!20 = !DILocation(line: 183, column: 41, scope: !8)
!21 = !DILocation(line: 183, column: 34, scope: !8)
!22 = !DILocation(line: 183, column: 15, scope: !8)
!23 = !DILocation(line: 185, column: 8, scope: !8)
!24 = !DILocation(line: 185, column: 18, scope: !8)
!25 = !DILocation(line: 189, column: 11, scope: !8)
!26 = !DILocation(line: 189, column: 22, scope: !8)
!27 = !DILocation(line: 189, column: 27, scope: !8)
!28 = !DILocation(line: 189, column: 51, scope: !8)
!29 = !DILocation(line: 189, column: 55, scope: !8)
!30 = !DILocation(line: 189, column: 66, scope: !8)
!31 = !DILocation(line: 189, column: 71, scope: !8)
!32 = !DILocation(line: 189, column: 91, scope: !8)
!33 = !DILocation(line: 190, column: 11, scope: !8)
!34 = !DILocation(line: 190, column: 22, scope: !8)
!35 = !DILocation(line: 190, column: 27, scope: !8)
!36 = !DILocation(line: 190, column: 51, scope: !8)
!37 = !DILocation(line: 190, column: 55, scope: !8)
!38 = !DILocation(line: 190, column: 66, scope: !8)
!39 = !DILocation(line: 190, column: 71, scope: !8)
!40 = !DILocation(line: 189, column: 10, scope: !8)
!41 = !DILocation(line: 195, column: 16, scope: !8)
!42 = !DILocation(line: 195, column: 23, scope: !8)
!43 = !DILocation(line: 195, column: 14, scope: !8)
!44 = !DILocation(line: 196, column: 44, scope: !8)
!45 = !DILocation(line: 196, column: 53, scope: !8)
!46 = !DILocation(line: 196, column: 40, scope: !8)
!47 = !DILocation(line: 196, column: 17, scope: !8)
!48 = !DILocation(line: 196, column: 14, scope: !8)
!49 = !DILocation(line: 197, column: 18, scope: !8)
!50 = !DILocation(line: 197, column: 29, scope: !8)
!51 = !DILocation(line: 197, column: 39, scope: !8)
!52 = !DILocation(line: 197, column: 48, scope: !8)
!53 = !DILocation(line: 197, column: 35, scope: !8)
!54 = !DILocation(line: 197, column: 14, scope: !8)
!55 = !DILocation(line: 198, column: 26, scope: !8)
!56 = !DILocation(line: 198, column: 9, scope: !8)
!57 = !DILocation(line: 198, column: 16, scope: !8)
!58 = !DILocation(line: 198, column: 24, scope: !8)
!59 = !DILocation(line: 201, column: 16, scope: !8)
!60 = !DILocation(line: 201, column: 23, scope: !8)
!61 = !DILocation(line: 201, column: 14, scope: !8)
!62 = !DILocation(line: 202, column: 38, scope: !8)
!63 = !DILocation(line: 202, column: 35, scope: !8)
!64 = !DILocation(line: 202, column: 17, scope: !8)
!65 = !DILocation(line: 202, column: 14, scope: !8)
!66 = !DILocation(line: 203, column: 20, scope: !8)
!67 = !DILocation(line: 203, column: 31, scope: !8)
!68 = !DILocation(line: 203, column: 36, scope: !8)
!69 = !DILocation(line: 203, column: 56, scope: !8)
!70 = !DILocation(line: 203, column: 65, scope: !8)
!71 = !DILocation(line: 203, column: 62, scope: !8)
!72 = !DILocation(line: 203, column: 14, scope: !8)
!73 = !DILocation(line: 204, column: 25, scope: !8)
!74 = !DILocation(line: 204, column: 9, scope: !8)
!75 = !DILocation(line: 204, column: 16, scope: !8)
!76 = !DILocation(line: 204, column: 23, scope: !8)
!77 = !DILocation(line: 205, column: 7, scope: !8)
!78 = !DILocation(line: 208, column: 14, scope: !8)
!79 = !DILocation(line: 208, column: 21, scope: !8)
!80 = !DILocation(line: 208, column: 12, scope: !8)
!81 = !DILocation(line: 209, column: 38, scope: !8)
!82 = !DILocation(line: 209, column: 47, scope: !8)
!83 = !DILocation(line: 209, column: 34, scope: !8)
!84 = !DILocation(line: 209, column: 15, scope: !8)
!85 = !DILocation(line: 209, column: 12, scope: !8)
!86 = !DILocation(line: 210, column: 17, scope: !8)
!87 = !DILocation(line: 210, column: 28, scope: !8)
!88 = !DILocation(line: 210, column: 38, scope: !8)
!89 = !DILocation(line: 210, column: 47, scope: !8)
!90 = !DILocation(line: 210, column: 34, scope: !8)
!91 = !DILocation(line: 210, column: 12, scope: !8)
!92 = !DILocation(line: 211, column: 22, scope: !8)
!93 = !DILocation(line: 211, column: 7, scope: !8)
!94 = !DILocation(line: 211, column: 14, scope: !8)
!95 = !DILocation(line: 211, column: 20, scope: !8)
!96 = !DILocation(line: 214, column: 11, scope: !8)
!97 = !DILocation(line: 214, column: 22, scope: !8)
!98 = !DILocation(line: 214, column: 27, scope: !8)
!99 = !DILocation(line: 214, column: 47, scope: !8)
!100 = !DILocation(line: 214, column: 51, scope: !8)
!101 = !DILocation(line: 214, column: 62, scope: !8)
!102 = !DILocation(line: 214, column: 67, scope: !8)
!103 = !DILocation(line: 214, column: 10, scope: !8)
!104 = !DILocation(line: 221, column: 16, scope: !8)
!105 = !DILocation(line: 221, column: 23, scope: !8)
!106 = !DILocation(line: 221, column: 27, scope: !8)
!107 = !DILocation(line: 221, column: 36, scope: !8)
!108 = !DILocation(line: 221, column: 14, scope: !8)
!109 = !DILocation(line: 222, column: 31, scope: !8)
!110 = !DILocation(line: 222, column: 40, scope: !8)
!111 = !DILocation(line: 222, column: 49, scope: !8)
!112 = !DILocation(line: 222, column: 26, scope: !8)
!113 = !DILocation(line: 222, column: 17, scope: !8)
!114 = !DILocation(line: 222, column: 14, scope: !8)
!115 = !DILocation(line: 223, column: 19, scope: !8)
!116 = !DILocation(line: 223, column: 30, scope: !8)
!117 = !DILocation(line: 223, column: 46, scope: !8)
!118 = !DILocation(line: 223, column: 55, scope: !8)
!119 = !DILocation(line: 223, column: 64, scope: !8)
!120 = !DILocation(line: 223, column: 41, scope: !8)
!121 = !DILocation(line: 223, column: 14, scope: !8)
!122 = !DILocation(line: 224, column: 38, scope: !8)
!123 = !DILocation(line: 224, column: 9, scope: !8)
!124 = !DILocation(line: 224, column: 16, scope: !8)
!125 = !DILocation(line: 224, column: 20, scope: !8)
!126 = !DILocation(line: 224, column: 29, scope: !8)
!127 = !DILocation(line: 224, column: 36, scope: !8)
!128 = !DILocation(line: 225, column: 7, scope: !8)
!129 = !DILocation(line: 228, column: 14, scope: !8)
!130 = !DILocation(line: 228, column: 21, scope: !8)
!131 = !DILocation(line: 228, column: 12, scope: !8)
!132 = !DILocation(line: 229, column: 38, scope: !8)
!133 = !DILocation(line: 229, column: 47, scope: !8)
!134 = !DILocation(line: 229, column: 34, scope: !8)
!135 = !DILocation(line: 229, column: 15, scope: !8)
!136 = !DILocation(line: 229, column: 12, scope: !8)
!137 = !DILocation(line: 230, column: 17, scope: !8)
!138 = !DILocation(line: 230, column: 28, scope: !8)
!139 = !DILocation(line: 230, column: 33, scope: !8)
!140 = !DILocation(line: 230, column: 50, scope: !8)
!141 = !DILocation(line: 230, column: 59, scope: !8)
!142 = !DILocation(line: 230, column: 46, scope: !8)
!143 = !DILocation(line: 230, column: 12, scope: !8)
!144 = !DILocation(line: 231, column: 22, scope: !8)
!145 = !DILocation(line: 231, column: 7, scope: !8)
!146 = !DILocation(line: 231, column: 14, scope: !8)
!147 = !DILocation(line: 231, column: 20, scope: !8)
!148 = !DILocation(line: 235, column: 11, scope: !8)
!149 = !DILocation(line: 235, column: 22, scope: !8)
!150 = !DILocation(line: 235, column: 27, scope: !8)
!151 = !DILocation(line: 235, column: 40, scope: !8)
!152 = !DILocation(line: 235, column: 10, scope: !8)
!153 = !DILocation(line: 237, column: 29, scope: !8)
!154 = !DILocation(line: 237, column: 38, scope: !8)
!155 = !DILocation(line: 237, column: 16, scope: !8)
!156 = !DILocation(line: 237, column: 14, scope: !8)
!157 = !DILocation(line: 238, column: 37, scope: !8)
!158 = !DILocation(line: 238, column: 46, scope: !8)
!159 = !DILocation(line: 238, column: 34, scope: !8)
!160 = !DILocation(line: 238, column: 27, scope: !8)
!161 = !DILocation(line: 238, column: 17, scope: !8)
!162 = !DILocation(line: 238, column: 14, scope: !8)
!163 = !DILocation(line: 239, column: 18, scope: !8)
!164 = !DILocation(line: 239, column: 50, scope: !8)
!165 = !DILocation(line: 239, column: 59, scope: !8)
!166 = !DILocation(line: 239, column: 47, scope: !8)
!167 = !DILocation(line: 239, column: 40, scope: !8)
!168 = !DILocation(line: 239, column: 14, scope: !8)
!169 = !DILocation(line: 240, column: 40, scope: !8)
!170 = !DILocation(line: 240, column: 22, scope: !8)
!171 = !DILocation(line: 240, column: 31, scope: !8)
!172 = !DILocation(line: 240, column: 9, scope: !8)
!173 = !DILocation(line: 240, column: 38, scope: !8)
!174 = !DILocation(line: 243, column: 22, scope: !8)
!175 = !DILocation(line: 243, column: 14, scope: !8)
!176 = !DILocation(line: 244, column: 19, scope: !8)
!177 = !DILocation(line: 244, column: 17, scope: !8)
!178 = !DILocation(line: 244, column: 14, scope: !8)
!179 = !DILocation(line: 245, column: 13, scope: !8)
!180 = !DILocation(line: 245, column: 24, scope: !8)
!181 = !DILocation(line: 245, column: 29, scope: !8)
!182 = !DILocation(line: 245, column: 45, scope: !8)
!183 = !DILocation(line: 245, column: 12, scope: !8)
!184 = !DILocation(line: 247, column: 19, scope: !8)
!185 = !DILocation(line: 247, column: 16, scope: !8)
!186 = !DILocation(line: 248, column: 9, scope: !8)
!187 = !DILocation(line: 249, column: 22, scope: !8)
!188 = !DILocation(line: 249, column: 20, scope: !8)
!189 = !DILocation(line: 251, column: 22, scope: !8)
!190 = !DILocation(line: 251, column: 14, scope: !8)
!191 = !DILocation(line: 252, column: 19, scope: !8)
!192 = !DILocation(line: 252, column: 17, scope: !8)
!193 = !DILocation(line: 252, column: 14, scope: !8)
!194 = !DILocation(line: 253, column: 13, scope: !8)
!195 = !DILocation(line: 253, column: 24, scope: !8)
!196 = !DILocation(line: 253, column: 29, scope: !8)
!197 = !DILocation(line: 253, column: 46, scope: !8)
!198 = !DILocation(line: 253, column: 12, scope: !8)
!199 = !DILocation(line: 255, column: 19, scope: !8)
!200 = !DILocation(line: 255, column: 16, scope: !8)
!201 = !DILocation(line: 256, column: 9, scope: !8)
!202 = !DILocation(line: 257, column: 22, scope: !8)
!203 = !DILocation(line: 257, column: 20, scope: !8)
!204 = !DILocation(line: 260, column: 22, scope: !8)
!205 = !DILocation(line: 260, column: 14, scope: !8)
!206 = !DILocation(line: 261, column: 19, scope: !8)
!207 = !DILocation(line: 261, column: 17, scope: !8)
!208 = !DILocation(line: 261, column: 14, scope: !8)
!209 = !DILocation(line: 262, column: 13, scope: !8)
!210 = !DILocation(line: 262, column: 24, scope: !8)
!211 = !DILocation(line: 262, column: 29, scope: !8)
!212 = !DILocation(line: 262, column: 44, scope: !8)
!213 = !DILocation(line: 262, column: 12, scope: !8)
!214 = !DILocation(line: 264, column: 19, scope: !8)
!215 = !DILocation(line: 264, column: 16, scope: !8)
!216 = !DILocation(line: 265, column: 9, scope: !8)
!217 = !DILocation(line: 266, column: 23, scope: !8)
!218 = !DILocation(line: 266, column: 21, scope: !8)
!219 = !DILocation(line: 268, column: 22, scope: !8)
!220 = !DILocation(line: 268, column: 14, scope: !8)
!221 = !DILocation(line: 269, column: 19, scope: !8)
!222 = !DILocation(line: 269, column: 17, scope: !8)
!223 = !DILocation(line: 269, column: 14, scope: !8)
!224 = !DILocation(line: 270, column: 13, scope: !8)
!225 = !DILocation(line: 270, column: 24, scope: !8)
!226 = !DILocation(line: 270, column: 29, scope: !8)
!227 = !DILocation(line: 270, column: 45, scope: !8)
!228 = !DILocation(line: 270, column: 12, scope: !8)
!229 = !DILocation(line: 272, column: 19, scope: !8)
!230 = !DILocation(line: 272, column: 16, scope: !8)
!231 = !DILocation(line: 273, column: 9, scope: !8)
!232 = !DILocation(line: 274, column: 23, scope: !8)
!233 = !DILocation(line: 274, column: 21, scope: !8)
!234 = !DILocation(line: 275, column: 7, scope: !8)
!235 = !DILocation(line: 276, column: 5, scope: !8)
!236 = !DILocation(line: 278, column: 13, scope: !8)
!237 = distinct !{!237, !11, !238}
!238 = !DILocation(line: 279, column: 3, scope: !8)
!239 = !DILocation(line: 280, column: 1, scope: !8)
!240 = distinct !DISubprogram(name: "HAL_GPIO_DeInit", scope: !1, file: !1, line: 289, type: !9, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!241 = !DILocation(line: 291, column: 12, scope: !240)
!242 = !DILocation(line: 300, column: 3, scope: !240)
!243 = !DILocation(line: 300, column: 11, scope: !240)
!244 = !DILocation(line: 300, column: 23, scope: !240)
!245 = !DILocation(line: 300, column: 20, scope: !240)
!246 = !DILocation(line: 300, column: 33, scope: !240)
!247 = !DILocation(line: 303, column: 18, scope: !240)
!248 = !DILocation(line: 303, column: 38, scope: !240)
!249 = !DILocation(line: 303, column: 35, scope: !240)
!250 = !DILocation(line: 303, column: 28, scope: !240)
!251 = !DILocation(line: 303, column: 15, scope: !240)
!252 = !DILocation(line: 305, column: 9, scope: !240)
!253 = !DILocation(line: 305, column: 19, scope: !240)
!254 = !DILocation(line: 310, column: 27, scope: !240)
!255 = !DILocation(line: 310, column: 36, scope: !240)
!256 = !DILocation(line: 310, column: 14, scope: !240)
!257 = !DILocation(line: 310, column: 12, scope: !240)
!258 = !DILocation(line: 311, column: 35, scope: !240)
!259 = !DILocation(line: 311, column: 44, scope: !240)
!260 = !DILocation(line: 311, column: 32, scope: !240)
!261 = !DILocation(line: 311, column: 25, scope: !240)
!262 = !DILocation(line: 311, column: 12, scope: !240)
!263 = !DILocation(line: 312, column: 10, scope: !240)
!264 = !DILocation(line: 312, column: 19, scope: !240)
!265 = !DILocation(line: 312, column: 51, scope: !240)
!266 = !DILocation(line: 312, column: 60, scope: !240)
!267 = !DILocation(line: 312, column: 48, scope: !240)
!268 = !DILocation(line: 312, column: 41, scope: !240)
!269 = !DILocation(line: 312, column: 15, scope: !240)
!270 = !DILocation(line: 315, column: 25, scope: !240)
!271 = !DILocation(line: 315, column: 23, scope: !240)
!272 = !DILocation(line: 315, column: 20, scope: !240)
!273 = !DILocation(line: 316, column: 25, scope: !240)
!274 = !DILocation(line: 316, column: 23, scope: !240)
!275 = !DILocation(line: 316, column: 20, scope: !240)
!276 = !DILocation(line: 319, column: 26, scope: !240)
!277 = !DILocation(line: 319, column: 24, scope: !240)
!278 = !DILocation(line: 319, column: 21, scope: !240)
!279 = !DILocation(line: 320, column: 26, scope: !240)
!280 = !DILocation(line: 320, column: 24, scope: !240)
!281 = !DILocation(line: 320, column: 21, scope: !240)
!282 = !DILocation(line: 322, column: 35, scope: !240)
!283 = !DILocation(line: 322, column: 44, scope: !240)
!284 = !DILocation(line: 322, column: 32, scope: !240)
!285 = !DILocation(line: 322, column: 25, scope: !240)
!286 = !DILocation(line: 322, column: 14, scope: !240)
!287 = !DILocation(line: 323, column: 42, scope: !240)
!288 = !DILocation(line: 323, column: 41, scope: !240)
!289 = !DILocation(line: 323, column: 22, scope: !240)
!290 = !DILocation(line: 323, column: 31, scope: !240)
!291 = !DILocation(line: 323, column: 9, scope: !240)
!292 = !DILocation(line: 323, column: 38, scope: !240)
!293 = !DILocation(line: 324, column: 7, scope: !240)
!294 = !DILocation(line: 328, column: 45, scope: !240)
!295 = !DILocation(line: 328, column: 54, scope: !240)
!296 = !DILocation(line: 328, column: 41, scope: !240)
!297 = !DILocation(line: 328, column: 7, scope: !240)
!298 = !DILocation(line: 328, column: 14, scope: !240)
!299 = !DILocation(line: 328, column: 20, scope: !240)
!300 = !DILocation(line: 331, column: 51, scope: !240)
!301 = !DILocation(line: 331, column: 60, scope: !240)
!302 = !DILocation(line: 331, column: 69, scope: !240)
!303 = !DILocation(line: 331, column: 46, scope: !240)
!304 = !DILocation(line: 331, column: 37, scope: !240)
!305 = !DILocation(line: 331, column: 7, scope: !240)
!306 = !DILocation(line: 331, column: 14, scope: !240)
!307 = !DILocation(line: 331, column: 18, scope: !240)
!308 = !DILocation(line: 331, column: 27, scope: !240)
!309 = !DILocation(line: 331, column: 34, scope: !240)
!310 = !DILocation(line: 334, column: 52, scope: !240)
!311 = !DILocation(line: 334, column: 61, scope: !240)
!312 = !DILocation(line: 334, column: 48, scope: !240)
!313 = !DILocation(line: 334, column: 25, scope: !240)
!314 = !DILocation(line: 334, column: 7, scope: !240)
!315 = !DILocation(line: 334, column: 14, scope: !240)
!316 = !DILocation(line: 334, column: 22, scope: !240)
!317 = !DILocation(line: 337, column: 46, scope: !240)
!318 = !DILocation(line: 337, column: 43, scope: !240)
!319 = !DILocation(line: 337, column: 25, scope: !240)
!320 = !DILocation(line: 337, column: 7, scope: !240)
!321 = !DILocation(line: 337, column: 14, scope: !240)
!322 = !DILocation(line: 337, column: 22, scope: !240)
!323 = !DILocation(line: 340, column: 46, scope: !240)
!324 = !DILocation(line: 340, column: 55, scope: !240)
!325 = !DILocation(line: 340, column: 42, scope: !240)
!326 = !DILocation(line: 340, column: 23, scope: !240)
!327 = !DILocation(line: 340, column: 7, scope: !240)
!328 = !DILocation(line: 340, column: 14, scope: !240)
!329 = !DILocation(line: 340, column: 20, scope: !240)
!330 = !DILocation(line: 341, column: 5, scope: !240)
!331 = !DILocation(line: 343, column: 13, scope: !240)
!332 = distinct !{!332, !242, !333}
!333 = !DILocation(line: 344, column: 3, scope: !240)
!334 = !DILocation(line: 345, column: 1, scope: !240)
!335 = distinct !DISubprogram(name: "HAL_GPIO_ReadPin", scope: !1, file: !1, line: 370, type: !9, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!336 = !DILocation(line: 377, column: 7, scope: !335)
!337 = !DILocation(line: 377, column: 14, scope: !335)
!338 = !DILocation(line: 377, column: 20, scope: !335)
!339 = !DILocation(line: 377, column: 18, scope: !335)
!340 = !DILocation(line: 377, column: 30, scope: !335)
!341 = !DILocation(line: 377, column: 6, scope: !335)
!342 = !DILocation(line: 379, column: 15, scope: !335)
!343 = !DILocation(line: 380, column: 3, scope: !335)
!344 = !DILocation(line: 383, column: 15, scope: !335)
!345 = !DILocation(line: 385, column: 10, scope: !335)
!346 = !DILocation(line: 385, column: 3, scope: !335)
!347 = distinct !DISubprogram(name: "HAL_GPIO_WritePin", scope: !1, file: !1, line: 404, type: !9, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!348 = !DILocation(line: 410, column: 7, scope: !347)
!349 = !DILocation(line: 410, column: 16, scope: !347)
!350 = !DILocation(line: 412, column: 29, scope: !347)
!351 = !DILocation(line: 412, column: 19, scope: !347)
!352 = !DILocation(line: 412, column: 5, scope: !347)
!353 = !DILocation(line: 412, column: 12, scope: !347)
!354 = !DILocation(line: 412, column: 17, scope: !347)
!355 = !DILocation(line: 413, column: 3, scope: !347)
!356 = !DILocation(line: 416, column: 28, scope: !347)
!357 = !DILocation(line: 416, column: 18, scope: !347)
!358 = !DILocation(line: 416, column: 5, scope: !347)
!359 = !DILocation(line: 416, column: 12, scope: !347)
!360 = !DILocation(line: 416, column: 16, scope: !347)
!361 = !DILocation(line: 418, column: 1, scope: !347)
!362 = distinct !DISubprogram(name: "HAL_GPIO_TogglePin", scope: !1, file: !1, line: 427, type: !9, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!363 = !DILocation(line: 435, column: 9, scope: !362)
!364 = !DILocation(line: 435, column: 16, scope: !362)
!365 = !DILocation(line: 435, column: 7, scope: !362)
!366 = !DILocation(line: 438, column: 19, scope: !362)
!367 = !DILocation(line: 438, column: 25, scope: !362)
!368 = !DILocation(line: 438, column: 23, scope: !362)
!369 = !DILocation(line: 438, column: 35, scope: !362)
!370 = !DILocation(line: 438, column: 55, scope: !362)
!371 = !DILocation(line: 438, column: 54, scope: !362)
!372 = !DILocation(line: 438, column: 61, scope: !362)
!373 = !DILocation(line: 438, column: 59, scope: !362)
!374 = !DILocation(line: 438, column: 51, scope: !362)
!375 = !DILocation(line: 438, column: 3, scope: !362)
!376 = !DILocation(line: 438, column: 10, scope: !362)
!377 = !DILocation(line: 438, column: 15, scope: !362)
!378 = !DILocation(line: 439, column: 1, scope: !362)
!379 = distinct !DISubprogram(name: "HAL_GPIO_LockPin", scope: !1, file: !1, line: 452, type: !9, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!380 = !DILocation(line: 454, column: 17, scope: !379)
!381 = !DILocation(line: 461, column: 11, scope: !379)
!382 = !DILocation(line: 461, column: 8, scope: !379)
!383 = !DILocation(line: 463, column: 17, scope: !379)
!384 = !DILocation(line: 463, column: 3, scope: !379)
!385 = !DILocation(line: 463, column: 10, scope: !379)
!386 = !DILocation(line: 463, column: 15, scope: !379)
!387 = !DILocation(line: 465, column: 17, scope: !379)
!388 = !DILocation(line: 465, column: 3, scope: !379)
!389 = !DILocation(line: 465, column: 10, scope: !379)
!390 = !DILocation(line: 465, column: 15, scope: !379)
!391 = !DILocation(line: 467, column: 17, scope: !379)
!392 = !DILocation(line: 467, column: 3, scope: !379)
!393 = !DILocation(line: 467, column: 10, scope: !379)
!394 = !DILocation(line: 467, column: 15, scope: !379)
!395 = !DILocation(line: 469, column: 10, scope: !379)
!396 = !DILocation(line: 469, column: 17, scope: !379)
!397 = !DILocation(line: 469, column: 8, scope: !379)
!398 = !DILocation(line: 472, column: 8, scope: !379)
!399 = !DILocation(line: 472, column: 15, scope: !379)
!400 = !DILocation(line: 472, column: 20, scope: !379)
!401 = !DILocation(line: 472, column: 38, scope: !379)
!402 = !DILocation(line: 472, column: 7, scope: !379)
!403 = !DILocation(line: 474, column: 5, scope: !379)
!404 = !DILocation(line: 478, column: 5, scope: !379)
!405 = !DILocation(line: 480, column: 1, scope: !379)
!406 = distinct !DISubprogram(name: "HAL_GPIO_EXTI_IRQHandler", scope: !1, file: !1, line: 487, type: !9, scopeLine: 488, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!407 = !DILocation(line: 490, column: 6, scope: !406)
!408 = !DILocation(line: 490, column: 46, scope: !406)
!409 = !DILocation(line: 492, column: 5, scope: !406)
!410 = !DILocation(line: 493, column: 35, scope: !406)
!411 = !DILocation(line: 493, column: 5, scope: !406)
!412 = !DILocation(line: 494, column: 3, scope: !406)
!413 = !DILocation(line: 496, column: 6, scope: !406)
!414 = !DILocation(line: 496, column: 47, scope: !406)
!415 = !DILocation(line: 498, column: 5, scope: !406)
!416 = !DILocation(line: 499, column: 36, scope: !406)
!417 = !DILocation(line: 499, column: 5, scope: !406)
!418 = !DILocation(line: 500, column: 3, scope: !406)
!419 = !DILocation(line: 501, column: 1, scope: !406)
!420 = distinct !DISubprogram(name: "HAL_GPIO_EXTI_Rising_Callback", scope: !1, file: !1, line: 508, type: !9, scopeLine: 509, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!421 = !DILocation(line: 511, column: 3, scope: !420)
!422 = !DILocation(line: 516, column: 1, scope: !420)
!423 = distinct !DISubprogram(name: "HAL_GPIO_EXTI_Falling_Callback", scope: !1, file: !1, line: 523, type: !9, scopeLine: 524, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!424 = !DILocation(line: 526, column: 3, scope: !423)
!425 = !DILocation(line: 531, column: 1, scope: !423)
