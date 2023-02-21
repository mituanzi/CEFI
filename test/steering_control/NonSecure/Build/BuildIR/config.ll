; ModuleID = './Core/Src/config.c'
source_filename = "./Core/Src/config.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.CoreDebug_Type = type { i32, i32, i32, i32, [1 x i32], i32, i32 }
%struct.DWT_Type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [1 x i32], i32, [934 x i32], i32, [1 x i32], i32 }

@bitmap = common dso_local global [10000 x i8] zeroinitializer, align 1
@memory = common dso_local global [2048 x i8] zeroinitializer, align 1
@cfi_trigger_count = common dso_local global i32 0, align 4
@dfi_trigger_count = common dso_local global i32 0, align 4
@global_ebp = common dso_local global i32* null, align 4
@global_esp = common dso_local global i32* null, align 4
@sensitiveAddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @config_memory() #0 !dbg !8 {
entry:
  store i8 0, i8* getelementptr inbounds ([10000 x i8], [10000 x i8]* @bitmap, i32 0, i32 0), align 1, !dbg !11
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @memory, i32 0, i32 0), align 1, !dbg !12
  store i32 0, i32* @cfi_trigger_count, align 4, !dbg !13
  store i32 0, i32* @dfi_trigger_count, align 4, !dbg !14
  store i32* bitcast (i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @memory, i32 0, i32 500) to i32*), i32** @global_ebp, align 4, !dbg !15
  store i32* bitcast (i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @memory, i32 0, i32 504) to i32*), i32** @global_esp, align 4, !dbg !16
  store i32 0, i32* @sensitiveAddr, align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @tagFunction(i32 %id) #0 !dbg !19 {
entry:
  %id.addr = alloca i32, align 4
  store i32 %id, i32* %id.addr, align 4
  %0 = load i32, i32* %id.addr, align 4, !dbg !20
  store i32 %0, i32* @sensitiveAddr, align 4, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @config_dwt() #0 !dbg !23 {
entry:
  %comp1 = alloca i32*, align 4
  %comp0 = alloca i32*, align 4
  call arm_aapcs_vfpcc void @tagFunction(i32 0), !dbg !24
  %0 = load volatile i32, i32* getelementptr inbounds (%struct.CoreDebug_Type, %struct.CoreDebug_Type* inttoptr (i32 -536810000 to %struct.CoreDebug_Type*), i32 0, i32 3), align 4, !dbg !25
  %or = or i32 %0, 16842752, !dbg !25
  store volatile i32 %or, i32* getelementptr inbounds (%struct.CoreDebug_Type, %struct.CoreDebug_Type* inttoptr (i32 -536810000 to %struct.CoreDebug_Type*), i32 0, i32 3), align 4, !dbg !25
  store i32* inttoptr (i32 -536866768 to i32*), i32** %comp1, align 4, !dbg !26
  %1 = load i32*, i32** %comp1, align 4, !dbg !27
  store i32 ptrtoint (i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @memory, i32 0, i32 1000) to i32), i32* %1, align 4, !dbg !28
  store volatile i32 23, i32* getelementptr inbounds (%struct.DWT_Type, %struct.DWT_Type* inttoptr (i32 -536866816 to %struct.DWT_Type*), i32 0, i32 14), align 4, !dbg !29
  store i32* inttoptr (i32 -536866784 to i32*), i32** %comp0, align 4, !dbg !30
  %2 = load i32*, i32** %comp0, align 4, !dbg !31
  store i32 ptrtoint ([2048 x i8]* @memory to i32), i32* %2, align 4, !dbg !32
  store volatile i32 21, i32* getelementptr inbounds (%struct.DWT_Type, %struct.DWT_Type* inttoptr (i32 -536866816 to %struct.DWT_Type*), i32 0, i32 10), align 4, !dbg !33
  ret void, !dbg !34
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/config.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "config_memory", scope: !9, file: !9, line: 4, type: !10, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/config.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/steering_control/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 5, column: 15, scope: !8)
!12 = !DILocation(line: 6, column: 16, scope: !8)
!13 = !DILocation(line: 7, column: 23, scope: !8)
!14 = !DILocation(line: 8, column: 23, scope: !8)
!15 = !DILocation(line: 9, column: 15, scope: !8)
!16 = !DILocation(line: 10, column: 15, scope: !8)
!17 = !DILocation(line: 11, column: 19, scope: !8)
!18 = !DILocation(line: 12, column: 1, scope: !8)
!19 = distinct !DISubprogram(name: "tagFunction", scope: !9, file: !9, line: 14, type: !10, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DILocation(line: 15, column: 19, scope: !19)
!21 = !DILocation(line: 15, column: 17, scope: !19)
!22 = !DILocation(line: 17, column: 1, scope: !19)
!23 = distinct !DISubprogram(name: "config_dwt", scope: !9, file: !9, line: 19, type: !10, scopeLine: 19, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DILocation(line: 20, column: 2, scope: !23)
!25 = !DILocation(line: 21, column: 19, scope: !23)
!26 = !DILocation(line: 24, column: 14, scope: !23)
!27 = !DILocation(line: 25, column: 4, scope: !23)
!28 = !DILocation(line: 25, column: 10, scope: !23)
!29 = !DILocation(line: 27, column: 18, scope: !23)
!30 = !DILocation(line: 29, column: 13, scope: !23)
!31 = !DILocation(line: 30, column: 4, scope: !23)
!32 = !DILocation(line: 30, column: 10, scope: !23)
!33 = !DILocation(line: 31, column: 18, scope: !23)
!34 = !DILocation(line: 33, column: 1, scope: !23)
