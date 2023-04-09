; ModuleID = 'malloc.c'
source_filename = "malloc.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.Foo = type { i32, i32 (...)*, i8 }
%struct.Bar = type { %struct.Foo*, i32, i8 }

@.str = private unnamed_addr constant [15 x i8] c"Hello, world!\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"there!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @func1() #0 !dbg !36 {
  %1 = alloca i32, align 4
  %2 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !40
  %3 = load i32, i32* %1, align 4, !dbg !41
  ret i32 %3, !dbg !41
}

declare i32 @printf(i8* noundef, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Foo, align 8
  %3 = alloca %struct.Bar*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.Foo* %2, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata %struct.Bar** %3, metadata !45, metadata !DIExpression()), !dbg !48
  %4 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !49
  %5 = call noalias i8* @malloc(i64 noundef 16) #4, !dbg !50
  %6 = bitcast i8* %5 to %struct.Bar*, !dbg !51
  store %struct.Bar* %6, %struct.Bar** %3, align 8, !dbg !52
  %7 = load %struct.Bar*, %struct.Bar** %3, align 8, !dbg !53
  %8 = getelementptr inbounds %struct.Bar, %struct.Bar* %7, i32 0, i32 0, !dbg !54
  store volatile %struct.Foo* %2, %struct.Foo** %8, align 8, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Debian clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "malloc.c", directory: "/home/parallels/PAC_Impl/Test", checksumkind: CSK_MD5, checksum: "2730fda56efcfef1fc4cce1e3e7fecb6")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "Bar", file: !1, line: 14, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 128, elements: !6)
!6 = !{!7, !22, !23}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5, file: !1, line: 11, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !10)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "Foo", file: !1, line: 8, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 4, size: 192, elements: !12)
!12 = !{!13, !15, !20}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "dummy1", scope: !11, file: !1, line: 5, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "coolFunct", scope: !11, file: !1, line: 6, baseType: !16, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, null}
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "dummy2", scope: !11, file: !1, line: 7, baseType: !21, size: 8, offset: 128)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "dummy1", scope: !5, file: !1, line: 12, baseType: !14, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "dumm2", scope: !5, file: !1, line: 13, baseType: !21, size: 8, offset: 96)
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 1, !"branch-target-enforcement", i32 0}
!28 = !{i32 1, !"sign-return-address", i32 0}
!29 = !{i32 1, !"sign-return-address-all", i32 0}
!30 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 1}
!35 = !{!"Debian clang version 14.0.6"}
!36 = distinct !DISubprogram(name: "func1", scope: !1, file: !1, line: 16, type: !37, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!37 = !DISubroutineType(types: !38)
!38 = !{!14}
!39 = !{}
!40 = !DILocation(line: 16, column: 15, scope: !36)
!41 = !DILocation(line: 16, column: 42, scope: !36)
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !37, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!43 = !DILocalVariable(name: "foo", scope: !42, file: !1, line: 19, type: !10)
!44 = !DILocation(line: 19, column: 7, scope: !42)
!45 = !DILocalVariable(name: "bar", scope: !42, file: !1, line: 20, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!48 = !DILocation(line: 20, column: 17, scope: !42)
!49 = !DILocation(line: 21, column: 3, scope: !42)
!50 = !DILocation(line: 23, column: 16, scope: !42)
!51 = !DILocation(line: 23, column: 9, scope: !42)
!52 = !DILocation(line: 23, column: 7, scope: !42)
!53 = !DILocation(line: 25, column: 3, scope: !42)
!54 = !DILocation(line: 25, column: 8, scope: !42)
!55 = !DILocation(line: 25, column: 12, scope: !42)
!56 = !DILocation(line: 32, column: 3, scope: !42)
