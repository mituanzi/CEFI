; ModuleID = './Core/Src/stm32l5xx_hal_msp.c'
source_filename = "./Core/Src/stm32l5xx_hal_msp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.RCC_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.__UART_HandleTypeDef = type { %struct.USART_TypeDef*, %struct.UART_InitTypeDef, %struct.UART_AdvFeatureInitTypeDef, i8*, i16, i16, i8*, i16, i16, i16, i32, i16, i16, i32, {}*, {}*, %struct.__DMA_HandleTypeDef*, %struct.__DMA_HandleTypeDef*, i8, i32, i32, i32 }
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
%struct.GPIO_InitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.RCC_PeriphCLKInitTypeDef = type { i32, %struct.RCC_PLLSAI1InitTypeDef, %struct.RCC_PLLSAI2InitTypeDef, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_PLLSAI1InitTypeDef = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.RCC_PLLSAI2InitTypeDef = type { i32, i32, i32, i32, i32 }
%struct.GPIO_TypeDef = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_MspInit() #0 !dbg !8 {
entry:
  %tmpreg = alloca i32, align 4
  %tmpreg2 = alloca i32, align 4
  br label %do.body, !dbg !11

do.body:                                          ; preds = %entry
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !11
  %or = or i32 %0, 1, !dbg !11
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !11
  %1 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !11
  %and = and i32 %1, 1, !dbg !11
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !11
  %2 = load volatile i32, i32* %tmpreg, align 4, !dbg !11
  br label %do.end, !dbg !11

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !12

do.body1:                                         ; preds = %do.end
  %3 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !12
  %or3 = or i32 %3, 268435456, !dbg !12
  store volatile i32 %or3, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !12
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 22), align 4, !dbg !12
  %and4 = and i32 %4, 268435456, !dbg !12
  store volatile i32 %and4, i32* %tmpreg2, align 4, !dbg !12
  %5 = load volatile i32, i32* %tmpreg2, align 4, !dbg !12
  br label %do.end5, !dbg !12

do.end5:                                          ; preds = %do.body1
  ret void, !dbg !13
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_UART_MspInit(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !14 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  %GPIO_InitStruct = alloca %struct.GPIO_InitTypeDef, align 4
  %PeriphClkInit = alloca %struct.RCC_PeriphCLKInitTypeDef, align 4
  %tmpreg = alloca i32, align 4
  %tmpreg5 = alloca i32, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = bitcast %struct.GPIO_InitTypeDef* %GPIO_InitStruct to i8*, !dbg !15
  call void @llvm.memset.p0i8.i32(i8* align 4 %0, i8 0, i32 20, i1 false), !dbg !15
  %1 = bitcast %struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit to i8*, !dbg !16
  call void @llvm.memset.p0i8.i32(i8* align 4 %1, i8 0, i32 148, i1 false), !dbg !16
  %2 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !17
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %2, i32 0, i32 0, !dbg !18
  %3 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !18
  %cmp = icmp eq %struct.USART_TypeDef* %3, inttoptr (i32 1073821696 to %struct.USART_TypeDef*), !dbg !19
  br i1 %cmp, label %if.then, label %if.end9, !dbg !17

if.then:                                          ; preds = %entry
  %PeriphClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit, i32 0, i32 0, !dbg !20
  store i32 1, i32* %PeriphClockSelection, align 4, !dbg !21
  %Usart1ClockSelection = getelementptr inbounds %struct.RCC_PeriphCLKInitTypeDef, %struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit, i32 0, i32 3, !dbg !22
  store i32 0, i32* %Usart1ClockSelection, align 4, !dbg !23
  %call = call arm_aapcs_vfpcc zeroext i8 @HAL_RCCEx_PeriphCLKConfig(%struct.RCC_PeriphCLKInitTypeDef* %PeriphClkInit), !dbg !24
  %conv = zext i8 %call to i32, !dbg !24
  %cmp1 = icmp ne i32 %conv, 0, !dbg !25
  br i1 %cmp1, label %if.then3, label %if.end, !dbg !24

if.then3:                                         ; preds = %if.then
  call arm_aapcs_vfpcc void @Error_Handler(), !dbg !26
  br label %if.end, !dbg !27

if.end:                                           ; preds = %if.then3, %if.then
  br label %do.body, !dbg !28

do.body:                                          ; preds = %if.end
  %4 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !28
  %or = or i32 %4, 16384, !dbg !28
  store volatile i32 %or, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !28
  %5 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !28
  %and = and i32 %5, 16384, !dbg !28
  store volatile i32 %and, i32* %tmpreg, align 4, !dbg !28
  %6 = load volatile i32, i32* %tmpreg, align 4, !dbg !28
  br label %do.end, !dbg !28

do.end:                                           ; preds = %do.body
  br label %do.body4, !dbg !29

do.body4:                                         ; preds = %do.end
  %7 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !29
  %or6 = or i32 %7, 1, !dbg !29
  store volatile i32 %or6, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !29
  %8 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 19), align 4, !dbg !29
  %and7 = and i32 %8, 1, !dbg !29
  store volatile i32 %and7, i32* %tmpreg5, align 4, !dbg !29
  %9 = load volatile i32, i32* %tmpreg5, align 4, !dbg !29
  br label %do.end8, !dbg !29

do.end8:                                          ; preds = %do.body4
  %Pin = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 0, !dbg !30
  store i32 1536, i32* %Pin, align 4, !dbg !31
  %Mode = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 1, !dbg !32
  store i32 2, i32* %Mode, align 4, !dbg !33
  %Pull = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 2, !dbg !34
  store i32 0, i32* %Pull, align 4, !dbg !35
  %Speed = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 3, !dbg !36
  store i32 0, i32* %Speed, align 4, !dbg !37
  %Alternate = getelementptr inbounds %struct.GPIO_InitTypeDef, %struct.GPIO_InitTypeDef* %GPIO_InitStruct, i32 0, i32 4, !dbg !38
  store i32 7, i32* %Alternate, align 4, !dbg !39
  call arm_aapcs_vfpcc void @HAL_GPIO_Init(%struct.GPIO_TypeDef* inttoptr (i32 1107427328 to %struct.GPIO_TypeDef*), %struct.GPIO_InitTypeDef* %GPIO_InitStruct), !dbg !40
  call arm_aapcs_vfpcc void @HAL_NVIC_SetPriority(i8 signext 61, i32 0, i32 0), !dbg !41
  call arm_aapcs_vfpcc void @HAL_NVIC_EnableIRQ(i8 signext 61), !dbg !42
  br label %if.end9, !dbg !43

if.end9:                                          ; preds = %do.end8, %entry
  ret void, !dbg !44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i32(i8* nocapture writeonly, i8, i32, i1 immarg) #1

declare dso_local arm_aapcs_vfpcc zeroext i8 @HAL_RCCEx_PeriphCLKConfig(%struct.RCC_PeriphCLKInitTypeDef*) #2

declare dso_local arm_aapcs_vfpcc void @Error_Handler() #2

declare dso_local arm_aapcs_vfpcc void @HAL_GPIO_Init(%struct.GPIO_TypeDef*, %struct.GPIO_InitTypeDef*) #2

declare dso_local arm_aapcs_vfpcc void @HAL_NVIC_SetPriority(i8 signext, i32, i32) #2

declare dso_local arm_aapcs_vfpcc void @HAL_NVIC_EnableIRQ(i8 signext) #2

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @HAL_UART_MspDeInit(%struct.__UART_HandleTypeDef* %huart) #0 !dbg !45 {
entry:
  %huart.addr = alloca %struct.__UART_HandleTypeDef*, align 4
  store %struct.__UART_HandleTypeDef* %huart, %struct.__UART_HandleTypeDef** %huart.addr, align 4
  %0 = load %struct.__UART_HandleTypeDef*, %struct.__UART_HandleTypeDef** %huart.addr, align 4, !dbg !46
  %Instance = getelementptr inbounds %struct.__UART_HandleTypeDef, %struct.__UART_HandleTypeDef* %0, i32 0, i32 0, !dbg !47
  %1 = load %struct.USART_TypeDef*, %struct.USART_TypeDef** %Instance, align 4, !dbg !47
  %cmp = icmp eq %struct.USART_TypeDef* %1, inttoptr (i32 1073821696 to %struct.USART_TypeDef*), !dbg !48
  br i1 %cmp, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %entry
  %2 = load volatile i32, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !49
  %and = and i32 %2, -16385, !dbg !49
  store volatile i32 %and, i32* getelementptr inbounds (%struct.RCC_TypeDef, %struct.RCC_TypeDef* inttoptr (i32 1073876992 to %struct.RCC_TypeDef*), i32 0, i32 24), align 4, !dbg !49
  call arm_aapcs_vfpcc void @HAL_GPIO_DeInit(%struct.GPIO_TypeDef* inttoptr (i32 1107427328 to %struct.GPIO_TypeDef*), i32 1536), !dbg !50
  call arm_aapcs_vfpcc void @HAL_NVIC_DisableIRQ(i8 signext 61), !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !53
}

declare dso_local arm_aapcs_vfpcc void @HAL_GPIO_DeInit(%struct.GPIO_TypeDef*, i32) #2

declare dso_local arm_aapcs_vfpcc void @HAL_NVIC_DisableIRQ(i8 signext) #2

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/stm32l5xx_hal_msp.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "HAL_MspInit", scope: !9, file: !9, line: 64, type: !10, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/stm32l5xx_hal_msp.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 70, column: 3, scope: !8)
!12 = !DILocation(line: 71, column: 3, scope: !8)
!13 = !DILocation(line: 78, column: 1, scope: !8)
!14 = distinct !DISubprogram(name: "HAL_UART_MspInit", scope: !9, file: !9, line: 86, type: !10, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 88, column: 20, scope: !14)
!16 = !DILocation(line: 89, column: 28, scope: !14)
!17 = !DILocation(line: 90, column: 6, scope: !14)
!18 = !DILocation(line: 90, column: 13, scope: !14)
!19 = !DILocation(line: 90, column: 21, scope: !14)
!20 = !DILocation(line: 97, column: 19, scope: !14)
!21 = !DILocation(line: 97, column: 40, scope: !14)
!22 = !DILocation(line: 98, column: 19, scope: !14)
!23 = !DILocation(line: 98, column: 40, scope: !14)
!24 = !DILocation(line: 99, column: 9, scope: !14)
!25 = !DILocation(line: 99, column: 51, scope: !14)
!26 = !DILocation(line: 101, column: 7, scope: !14)
!27 = !DILocation(line: 102, column: 5, scope: !14)
!28 = !DILocation(line: 105, column: 5, scope: !14)
!29 = !DILocation(line: 107, column: 5, scope: !14)
!30 = !DILocation(line: 112, column: 21, scope: !14)
!31 = !DILocation(line: 112, column: 25, scope: !14)
!32 = !DILocation(line: 113, column: 21, scope: !14)
!33 = !DILocation(line: 113, column: 26, scope: !14)
!34 = !DILocation(line: 114, column: 21, scope: !14)
!35 = !DILocation(line: 114, column: 26, scope: !14)
!36 = !DILocation(line: 115, column: 21, scope: !14)
!37 = !DILocation(line: 115, column: 27, scope: !14)
!38 = !DILocation(line: 116, column: 21, scope: !14)
!39 = !DILocation(line: 116, column: 31, scope: !14)
!40 = !DILocation(line: 117, column: 5, scope: !14)
!41 = !DILocation(line: 120, column: 5, scope: !14)
!42 = !DILocation(line: 121, column: 5, scope: !14)
!43 = !DILocation(line: 125, column: 3, scope: !14)
!44 = !DILocation(line: 127, column: 1, scope: !14)
!45 = distinct !DISubprogram(name: "HAL_UART_MspDeInit", scope: !9, file: !9, line: 135, type: !10, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 137, column: 6, scope: !45)
!47 = !DILocation(line: 137, column: 13, scope: !45)
!48 = !DILocation(line: 137, column: 21, scope: !45)
!49 = !DILocation(line: 143, column: 5, scope: !45)
!50 = !DILocation(line: 149, column: 5, scope: !45)
!51 = !DILocation(line: 152, column: 5, scope: !45)
!52 = !DILocation(line: 156, column: 3, scope: !45)
!53 = !DILocation(line: 158, column: 1, scope: !45)
