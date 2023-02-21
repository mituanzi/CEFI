; ModuleID = './Core/Src/syscalls.c'
source_filename = "./Core/Src/syscalls.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "thumbv8m.main-none-unknown-eabi"

%struct.stat = type { i16, i16, i32, i16, i16, i16, i16, i32, i64, i32, i64, i32, i64, i32, i32, i32, [2 x i32] }
%struct.tms = type { i32, i32, i32, i32 }

@__env = dso_local global [1 x i8*] zeroinitializer, align 4
@environ = dso_local global i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @__env, i32 0, i32 0), align 4

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc void @initialise_monitor_handles() #0 !dbg !8 {
entry:
  ret void, !dbg !11
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_getpid() #0 !dbg !12 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_kill(i32 %pid, i32 %sig) #0 !dbg !14 {
entry:
  %pid.addr = alloca i32, align 4
  %sig.addr = alloca i32, align 4
  store i32 %pid, i32* %pid.addr, align 4
  store i32 %sig, i32* %sig.addr, align 4
  %call = call arm_aapcs_vfpcc i32* @__errno(), !dbg !15
  store i32 22, i32* %call, align 4, !dbg !16
  ret i32 -1, !dbg !17
}

declare dso_local arm_aapcs_vfpcc i32* @__errno() #1

; Function Attrs: noinline noreturn nounwind optnone
define dso_local arm_aapcs_vfpcc void @_exit(i32 %status) #2 !dbg !18 {
entry:
  %status.addr = alloca i32, align 4
  store i32 %status, i32* %status.addr, align 4
  %0 = load i32, i32* %status.addr, align 4, !dbg !19
  %call = call arm_aapcs_vfpcc i32 @_kill(i32 %0, i32 -1), !dbg !20
  br label %while.body, !dbg !21

while.body:                                       ; preds = %entry, %while.body
  br label %while.body, !dbg !21, !llvm.loop !22
}

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc i32 @_read(i32 %file, i8* %ptr, i32 %len) #0 !dbg !24 {
entry:
  %file.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %DataIdx = alloca i32, align 4
  store i32 %file, i32* %file.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %DataIdx, align 4, !dbg !25
  br label %for.cond, !dbg !26

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %DataIdx, align 4, !dbg !27
  %1 = load i32, i32* %len.addr, align 4, !dbg !28
  %cmp = icmp slt i32 %0, %1, !dbg !29
  br i1 %cmp, label %for.body, label %for.end, !dbg !30

for.body:                                         ; preds = %for.cond
  %call = call arm_aapcs_vfpcc i32 @__io_getchar(), !dbg !31
  %conv = trunc i32 %call to i8, !dbg !31
  %2 = load i8*, i8** %ptr.addr, align 4, !dbg !32
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1, !dbg !32
  store i8* %incdec.ptr, i8** %ptr.addr, align 4, !dbg !32
  store i8 %conv, i8* %2, align 1, !dbg !33
  br label %for.inc, !dbg !34

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %DataIdx, align 4, !dbg !35
  %inc = add nsw i32 %3, 1, !dbg !35
  store i32 %inc, i32* %DataIdx, align 4, !dbg !35
  br label %for.cond, !dbg !30, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %len.addr, align 4, !dbg !37
  ret i32 %4, !dbg !38
}

declare extern_weak dso_local arm_aapcs_vfpcc i32 @__io_getchar() #1

; Function Attrs: noinline nounwind optnone
define weak dso_local arm_aapcs_vfpcc i32 @_write(i32 %file, i8* %ptr, i32 %len) #0 !dbg !39 {
entry:
  %file.addr = alloca i32, align 4
  %ptr.addr = alloca i8*, align 4
  %len.addr = alloca i32, align 4
  %DataIdx = alloca i32, align 4
  store i32 %file, i32* %file.addr, align 4
  store i8* %ptr, i8** %ptr.addr, align 4
  store i32 %len, i32* %len.addr, align 4
  store i32 0, i32* %DataIdx, align 4, !dbg !40
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %DataIdx, align 4, !dbg !42
  %1 = load i32, i32* %len.addr, align 4, !dbg !43
  %cmp = icmp slt i32 %0, %1, !dbg !44
  br i1 %cmp, label %for.body, label %for.end, !dbg !45

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %ptr.addr, align 4, !dbg !46
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1, !dbg !46
  store i8* %incdec.ptr, i8** %ptr.addr, align 4, !dbg !46
  %3 = load i8, i8* %2, align 1, !dbg !47
  %conv = zext i8 %3 to i32, !dbg !47
  %call = call arm_aapcs_vfpcc i32 @__io_putchar(i32 %conv), !dbg !48
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %DataIdx, align 4, !dbg !50
  %inc = add nsw i32 %4, 1, !dbg !50
  store i32 %inc, i32* %DataIdx, align 4, !dbg !50
  br label %for.cond, !dbg !45, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %len.addr, align 4, !dbg !52
  ret i32 %5, !dbg !53
}

declare extern_weak dso_local arm_aapcs_vfpcc i32 @__io_putchar(i32) #1

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_close(i32 %file) #0 !dbg !54 {
entry:
  %file.addr = alloca i32, align 4
  store i32 %file, i32* %file.addr, align 4
  ret i32 -1, !dbg !55
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_fstat(i32 %file, %struct.stat* %st) #0 !dbg !56 {
entry:
  %file.addr = alloca i32, align 4
  %st.addr = alloca %struct.stat*, align 4
  store i32 %file, i32* %file.addr, align 4
  store %struct.stat* %st, %struct.stat** %st.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 4, !dbg !57
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 2, !dbg !58
  store i32 8192, i32* %st_mode, align 4, !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_isatty(i32 %file) #0 !dbg !61 {
entry:
  %file.addr = alloca i32, align 4
  store i32 %file, i32* %file.addr, align 4
  ret i32 1, !dbg !62
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_lseek(i32 %file, i32 %ptr, i32 %dir) #0 !dbg !63 {
entry:
  %file.addr = alloca i32, align 4
  %ptr.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  store i32 %file, i32* %file.addr, align 4
  store i32 %ptr, i32* %ptr.addr, align 4
  store i32 %dir, i32* %dir.addr, align 4
  ret i32 0, !dbg !64
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_open(i8* %path, i32 %flags, ...) #0 !dbg !65 {
entry:
  %path.addr = alloca i8*, align 4
  %flags.addr = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  ret i32 -1, !dbg !66
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_wait(i32* %status) #0 !dbg !67 {
entry:
  %status.addr = alloca i32*, align 4
  store i32* %status, i32** %status.addr, align 4
  %call = call arm_aapcs_vfpcc i32* @__errno(), !dbg !68
  store i32 10, i32* %call, align 4, !dbg !69
  ret i32 -1, !dbg !70
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_unlink(i8* %name) #0 !dbg !71 {
entry:
  %name.addr = alloca i8*, align 4
  store i8* %name, i8** %name.addr, align 4
  %call = call arm_aapcs_vfpcc i32* @__errno(), !dbg !72
  store i32 2, i32* %call, align 4, !dbg !73
  ret i32 -1, !dbg !74
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_times(%struct.tms* %buf) #0 !dbg !75 {
entry:
  %buf.addr = alloca %struct.tms*, align 4
  store %struct.tms* %buf, %struct.tms** %buf.addr, align 4
  ret i32 -1, !dbg !76
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_stat(i8* %file, %struct.stat* %st) #0 !dbg !77 {
entry:
  %file.addr = alloca i8*, align 4
  %st.addr = alloca %struct.stat*, align 4
  store i8* %file, i8** %file.addr, align 4
  store %struct.stat* %st, %struct.stat** %st.addr, align 4
  %0 = load %struct.stat*, %struct.stat** %st.addr, align 4, !dbg !78
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %0, i32 0, i32 2, !dbg !79
  store i32 8192, i32* %st_mode, align 4, !dbg !80
  ret i32 0, !dbg !81
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_link(i8* %old, i8* %new) #0 !dbg !82 {
entry:
  %old.addr = alloca i8*, align 4
  %new.addr = alloca i8*, align 4
  store i8* %old, i8** %old.addr, align 4
  store i8* %new, i8** %new.addr, align 4
  %call = call arm_aapcs_vfpcc i32* @__errno(), !dbg !83
  store i32 31, i32* %call, align 4, !dbg !84
  ret i32 -1, !dbg !85
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_fork() #0 !dbg !86 {
entry:
  %call = call arm_aapcs_vfpcc i32* @__errno(), !dbg !87
  store i32 11, i32* %call, align 4, !dbg !88
  ret i32 -1, !dbg !89
}

; Function Attrs: noinline nounwind optnone
define dso_local arm_aapcs_vfpcc i32 @_execve(i8* %name, i8** %argv, i8** %env) #0 !dbg !90 {
entry:
  %name.addr = alloca i8*, align 4
  %argv.addr = alloca i8**, align 4
  %env.addr = alloca i8**, align 4
  store i8* %name, i8** %name.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 4
  store i8** %env, i8*** %env.addr, align 4
  %call = call arm_aapcs_vfpcc i32* @__errno(), !dbg !91
  store i32 12, i32* %call, align 4, !dbg !92
  ret i32 -1, !dbg !93
}

attributes #0 = { noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noreturn nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="cortex-m33" "target-features"="+armv8-m.main,+dsp,+fp-armv8d16sp,+fp16,+hwdiv,+strict-align,+thumb-mode,+vfp2sp,+vfp3d16sp,+vfp4d16sp,-aes,-crc,-crypto,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8sp,-fp16fml,-fp64,-fullfp16,-hwdiv-arm,-lob,-mve,-mve.fp,-neon,-ras,-sb,-sha2,-vfp2,-vfp3,-vfp3d16,-vfp3sp,-vfp4,-vfp4d16,-vfp4sp" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Core/Src/syscalls.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{i32 1, !"min_enum_size", i32 1}
!7 = !{!"clang version 10.0.0 "}
!8 = distinct !DISubprogram(name: "initialise_monitor_handles", scope: !9, file: !9, line: 48, type: !10, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!9 = !DIFile(filename: "./Core/Src/syscalls.c", directory: "/home/fdl/Desktop/llvm_build_source/test_apps/syringe/NonSecure")
!10 = !DISubroutineType(types: !2)
!11 = !DILocation(line: 50, column: 1, scope: !8)
!12 = distinct !DISubprogram(name: "_getpid", scope: !9, file: !9, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DILocation(line: 54, column: 2, scope: !12)
!14 = distinct !DISubprogram(name: "_kill", scope: !9, file: !9, line: 57, type: !10, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 59, column: 2, scope: !14)
!16 = !DILocation(line: 59, column: 8, scope: !14)
!17 = !DILocation(line: 60, column: 2, scope: !14)
!18 = distinct !DISubprogram(name: "_exit", scope: !9, file: !9, line: 63, type: !10, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocation(line: 65, column: 8, scope: !18)
!20 = !DILocation(line: 65, column: 2, scope: !18)
!21 = !DILocation(line: 66, column: 2, scope: !18)
!22 = distinct !{!22, !21, !23}
!23 = !DILocation(line: 66, column: 13, scope: !18)
!24 = distinct !DISubprogram(name: "_read", scope: !9, file: !9, line: 69, type: !10, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DILocation(line: 73, column: 15, scope: !24)
!26 = !DILocation(line: 73, column: 7, scope: !24)
!27 = !DILocation(line: 73, column: 20, scope: !24)
!28 = !DILocation(line: 73, column: 30, scope: !24)
!29 = !DILocation(line: 73, column: 28, scope: !24)
!30 = !DILocation(line: 73, column: 2, scope: !24)
!31 = !DILocation(line: 75, column: 12, scope: !24)
!32 = !DILocation(line: 75, column: 7, scope: !24)
!33 = !DILocation(line: 75, column: 10, scope: !24)
!34 = !DILocation(line: 76, column: 2, scope: !24)
!35 = !DILocation(line: 73, column: 42, scope: !24)
!36 = distinct !{!36, !30, !34}
!37 = !DILocation(line: 78, column: 8, scope: !24)
!38 = !DILocation(line: 78, column: 1, scope: !24)
!39 = distinct !DISubprogram(name: "_write", scope: !9, file: !9, line: 81, type: !10, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DILocation(line: 85, column: 15, scope: !39)
!41 = !DILocation(line: 85, column: 7, scope: !39)
!42 = !DILocation(line: 85, column: 20, scope: !39)
!43 = !DILocation(line: 85, column: 30, scope: !39)
!44 = !DILocation(line: 85, column: 28, scope: !39)
!45 = !DILocation(line: 85, column: 2, scope: !39)
!46 = !DILocation(line: 87, column: 20, scope: !39)
!47 = !DILocation(line: 87, column: 16, scope: !39)
!48 = !DILocation(line: 87, column: 3, scope: !39)
!49 = !DILocation(line: 88, column: 2, scope: !39)
!50 = !DILocation(line: 85, column: 42, scope: !39)
!51 = distinct !{!51, !45, !49}
!52 = !DILocation(line: 89, column: 9, scope: !39)
!53 = !DILocation(line: 89, column: 2, scope: !39)
!54 = distinct !DISubprogram(name: "_close", scope: !9, file: !9, line: 92, type: !10, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocation(line: 94, column: 2, scope: !54)
!56 = distinct !DISubprogram(name: "_fstat", scope: !9, file: !9, line: 98, type: !10, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DILocation(line: 100, column: 2, scope: !56)
!58 = !DILocation(line: 100, column: 6, scope: !56)
!59 = !DILocation(line: 100, column: 14, scope: !56)
!60 = !DILocation(line: 101, column: 2, scope: !56)
!61 = distinct !DISubprogram(name: "_isatty", scope: !9, file: !9, line: 104, type: !10, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DILocation(line: 106, column: 2, scope: !61)
!63 = distinct !DISubprogram(name: "_lseek", scope: !9, file: !9, line: 109, type: !10, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!64 = !DILocation(line: 111, column: 2, scope: !63)
!65 = distinct !DISubprogram(name: "_open", scope: !9, file: !9, line: 114, type: !10, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!66 = !DILocation(line: 117, column: 2, scope: !65)
!67 = distinct !DISubprogram(name: "_wait", scope: !9, file: !9, line: 120, type: !10, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!68 = !DILocation(line: 122, column: 2, scope: !67)
!69 = !DILocation(line: 122, column: 8, scope: !67)
!70 = !DILocation(line: 123, column: 2, scope: !67)
!71 = distinct !DISubprogram(name: "_unlink", scope: !9, file: !9, line: 126, type: !10, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!72 = !DILocation(line: 128, column: 2, scope: !71)
!73 = !DILocation(line: 128, column: 8, scope: !71)
!74 = !DILocation(line: 129, column: 2, scope: !71)
!75 = distinct !DISubprogram(name: "_times", scope: !9, file: !9, line: 132, type: !10, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!76 = !DILocation(line: 134, column: 2, scope: !75)
!77 = distinct !DISubprogram(name: "_stat", scope: !9, file: !9, line: 137, type: !10, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocation(line: 139, column: 2, scope: !77)
!79 = !DILocation(line: 139, column: 6, scope: !77)
!80 = !DILocation(line: 139, column: 14, scope: !77)
!81 = !DILocation(line: 140, column: 2, scope: !77)
!82 = distinct !DISubprogram(name: "_link", scope: !9, file: !9, line: 143, type: !10, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!83 = !DILocation(line: 145, column: 2, scope: !82)
!84 = !DILocation(line: 145, column: 8, scope: !82)
!85 = !DILocation(line: 146, column: 2, scope: !82)
!86 = distinct !DISubprogram(name: "_fork", scope: !9, file: !9, line: 149, type: !10, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!87 = !DILocation(line: 151, column: 2, scope: !86)
!88 = !DILocation(line: 151, column: 8, scope: !86)
!89 = !DILocation(line: 152, column: 2, scope: !86)
!90 = distinct !DISubprogram(name: "_execve", scope: !9, file: !9, line: 155, type: !10, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DILocation(line: 157, column: 2, scope: !90)
!92 = !DILocation(line: 157, column: 8, scope: !90)
!93 = !DILocation(line: 158, column: 2, scope: !90)
