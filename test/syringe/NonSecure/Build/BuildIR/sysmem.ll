; ModuleID = './Core/Src/sysmem.c'
source_filename = "./Core/Src/sysmem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

@_estack = external dso_local global i8, align 1
@_Min_Stack_Size = external dso_local global i32, align 4
@__sbrk_heap_end = internal global i8* null, align 4
@_end = external dso_local global i8, align 1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i8* @_sbrk(i32 %incr) #0 !dbg !8 {
entry:
  %retval = alloca i8*, align 4
  %incr.addr = alloca i32, align 4
  %stack_limit = alloca i32, align 4
  %max_heap = alloca i8*, align 4
  %prev_heap_end = alloca i8*, align 4
  store i32 %incr, i32* %incr.addr, align 4
  store i32 sub (i32 ptrtoint (i8* @_estack to i32), i32 ptrtoint (i32* @_Min_Stack_Size to i32)), i32* %stack_limit, align 4, !dbg !11
  %0 = load i32, i32* %stack_limit, align 4, !dbg !12
  %1 = inttoptr i32 %0 to i8*, !dbg !13
  store i8* %1, i8** %max_heap, align 4, !dbg !14
  %2 = load i8*, i8** @__sbrk_heap_end, align 4, !dbg !15
  %cmp = icmp eq i8* null, %2, !dbg !16
  br i1 %cmp, label %if.then, label %if.end, !dbg !17

if.then:                                          ; preds = %entry
  store i8* @_end, i8** @__sbrk_heap_end, align 4, !dbg !18
  br label %if.end, !dbg !19

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @__sbrk_heap_end, align 4, !dbg !20
  %4 = load i32, i32* %incr.addr, align 4, !dbg !21
  %add.ptr = getelementptr inbounds i8, i8* %3, i32 %4, !dbg !22
  %5 = load i8*, i8** %max_heap, align 4, !dbg !23
  %cmp1 = icmp ugt i8* %add.ptr, %5, !dbg !24
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !20

if.then2:                                         ; preds = %if.end
  %call = call arm_aapcs_vfpcc i32* @__errno(), !dbg !25
  store i32 12, i32* %call, align 4, !dbg !26
  store i8* inttoptr (i32 -1 to i8*), i8** %retval, align 4, !dbg !27
  br label %return, !dbg !27

if.end3:                                          ; preds = %if.end
  %6 = load i8*, i8** @__sbrk_heap_end, align 4, !dbg !28
  store i8* %6, i8** %prev_heap_end, align 4, !dbg !29
  %7 = load i32, i32* %incr.addr, align 4, !dbg !30
  %8 = load i8*, i8** @__sbrk_heap_end, align 4, !dbg !31
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i32 %7, !dbg !31
  store i8* %add.ptr4, i8** @__sbrk_heap_end, align 4, !dbg !31
  %9 = load i8*, i8** %prev_heap_end, align 4, !dbg !32
  store i8* %9, i8** %retval, align 4, !dbg !33
  br label %return, !dbg !33

return:                                           ; preds = %if.end3, %if.then2
  %10 = load i8*, i8** %retval, align 4, !dbg !34
  ret i8* %10, !dbg !34
}

declare dso_local arm_aapcs_vfpcc i32* @__errno() #1

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/sysmem.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "_sbrk", scope: !9, file: !9, line: 54, type: !10, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/sysmem.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 59, column: 18, scope: !8)
!12 = !DILocation(line: 60, column: 40, scope: !8)
!13 = !DILocation(line: 60, column: 29, scope: !8)
!14 = !DILocation(line: 60, column: 18, scope: !8)
!15 = !DILocation(line: 64, column: 15, scope: !8)
!16 = !DILocation(line: 64, column: 12, scope: !8)
!17 = !DILocation(line: 64, column: 7, scope: !8)
!18 = !DILocation(line: 66, column: 21, scope: !8)
!19 = !DILocation(line: 67, column: 3, scope: !8)
!20 = !DILocation(line: 70, column: 7, scope: !8)
!21 = !DILocation(line: 70, column: 25, scope: !8)
!22 = !DILocation(line: 70, column: 23, scope: !8)
!23 = !DILocation(line: 70, column: 32, scope: !8)
!24 = !DILocation(line: 70, column: 30, scope: !8)
!25 = !DILocation(line: 72, column: 5, scope: !8)
!26 = !DILocation(line: 72, column: 11, scope: !8)
!27 = !DILocation(line: 73, column: 5, scope: !8)
!28 = !DILocation(line: 76, column: 19, scope: !8)
!29 = !DILocation(line: 76, column: 17, scope: !8)
!30 = !DILocation(line: 77, column: 22, scope: !8)
!31 = !DILocation(line: 77, column: 19, scope: !8)
!32 = !DILocation(line: 79, column: 18, scope: !8)
!33 = !DILocation(line: 79, column: 3, scope: !8)
!34 = !DILocation(line: 80, column: 1, scope: !8)
