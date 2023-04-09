; ModuleID = 'malloc_opt.bc'
source_filename = "malloc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c" %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !23, metadata !DIExpression()), !dbg !24
  %4 = call noalias i8* @malloc(i64 noundef 100) #4, !dbg !25
  store i8* %4, i8** %2, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata i32* %3, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, i32* %3, align 4, !dbg !27
  %5 = load i8*, i8** %2, align 8, !dbg !28
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* noundef %5), !dbg !29
  %7 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* noundef %3), !dbg !30
  %8 = load i8*, i8** %2, align 8, !dbg !31
  %9 = load i32, i32* %3, align 4, !dbg !32
  %10 = sext i32 %9 to i64, !dbg !31
  %11 = getelementptr inbounds i8, i8* %8, i64 %10, !dbg !31
  store i8 65, i8* %11, align 1, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare i32 @printf(i8* noundef, ...) #3

declare i32 @__isoc99_scanf(i8* noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "malloc.c", directory: "/home/parallels/PAC_Impl/Test", checksumkind: CSK_MD5, checksum: "ea40dfd08ba335771be2cefddd7fa897")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 1, !"branch-target-enforcement", i32 0}
!10 = !{i32 1, !"sign-return-address", i32 0}
!11 = !{i32 1, !"sign-return-address-all", i32 0}
!12 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 1}
!17 = !{!"Debian clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !19, scopeLine: 4, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "buf1", scope: !18, file: !1, line: 5, type: !3)
!24 = !DILocation(line: 5, column: 9, scope: !18)
!25 = !DILocation(line: 5, column: 24, scope: !18)
!26 = !DILocalVariable(name: "ptr_offset", scope: !18, file: !1, line: 7, type: !21)
!27 = !DILocation(line: 7, column: 7, scope: !18)
!28 = !DILocation(line: 8, column: 27, scope: !18)
!29 = !DILocation(line: 8, column: 3, scope: !18)
!30 = !DILocation(line: 9, column: 3, scope: !18)
!31 = !DILocation(line: 10, column: 3, scope: !18)
!32 = !DILocation(line: 10, column: 8, scope: !18)
!33 = !DILocation(line: 10, column: 20, scope: !18)
!34 = !DILocation(line: 12, column: 3, scope: !18)
