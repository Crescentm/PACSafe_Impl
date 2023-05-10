; ModuleID = 'example_opt.bc'
source_filename = "example.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"BadSink\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Calling good()...\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Finished good()\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Calling bad()...\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Finished bad()\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"GoodSink\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE416_Use_After_Free__return_freed_ptr_01_bad() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @helperBad(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = bitcast i8** %1 to i8**
  call void @setMetadataObj(i8** %3, i32 1, i32 8)
  call void @addPAC(i8** %1)
  call void @authPAC(i8** %1, i32 0)
  %4 = load i8*, i8** %1, align 8
  call void @addPAC(i8** %1)
  call void @printLine(i8* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @helperBad(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8**
  call void @setMetadata(i8** %5, i32 1, i32 8)
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = bitcast i64* %7 to i8**
  call void @setMetadata(i8** %8, i32 1, i32 8)
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @addPAC(i8** %4)
  store i64 0, i64* %6, align 8
  store i8* null, i8** %9, align 8
  call void @authPAC(i8** %4, i32 0)
  %10 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %68

12:                                               ; preds = %1
  call void @authPAC(i8** %4, i32 0)
  %13 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %14 = call i64 @strlen(i8* noundef %13) #5
  store i64 %14, i64* %6, align 8
  %15 = bitcast i64* %6 to i8**
  call void @setMetadataObj(i8** %15, i32 1, i32 8)
  %16 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %16)
  %17 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %17, i32 0)
  %18 = load i64, i64* %6, align 8
  %19 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %19)
  %20 = add i64 %18, 1
  %21 = call noalias i8* @malloc(i64 noundef %20) #6
  store i8* %21, i8** %9, align 8
  call void @addPAC(i8** %9)
  call void @authPAC(i8** %9, i32 0)
  %22 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  call void @exit(i32 noundef -1) #7
  unreachable

25:                                               ; preds = %12
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %54, %25
  %27 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %27, i32 0)
  %28 = load i64, i64* %7, align 8
  %29 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %29)
  %30 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %30, i32 0)
  %31 = load i64, i64* %6, align 8
  %32 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %32)
  %33 = icmp ult i64 %28, %31
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  call void @authPAC(i8** %4, i32 0)
  %35 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %36 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %36, i32 0)
  %37 = load i64, i64* %6, align 8
  %38 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %38)
  %39 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %39, i32 0)
  %40 = load i64, i64* %7, align 8
  %41 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %41)
  %42 = sub i64 %37, %40
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %35, i64 %43
  %45 = bitcast i8* %44 to i8**
  call void @authPAC(i8** %45, i32 0)
  %46 = load i8, i8* %44, align 1
  %47 = bitcast i8* %44 to i8**
  call void @addPAC(i8** %47)
  call void @authPAC(i8** %9, i32 0)
  %48 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  %49 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %49, i32 0)
  %50 = load i64, i64* %7, align 8
  %51 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %51)
  %52 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %46, i8* %52, align 1
  %53 = bitcast i8* %52 to i8**
  call void @addPAC(i8** %53)
  call void @addPAC(i8** %9)
  br label %54

54:                                               ; preds = %34
  %55 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %55, i32 0)
  %56 = load i64, i64* %7, align 8
  %57 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %57)
  %58 = add i64 %56, 1
  store i64 %58, i64* %7, align 8
  %59 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %59)
  br label %26, !llvm.loop !10

60:                                               ; preds = %26
  call void @authPAC(i8** %9, i32 0)
  %61 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  %62 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %62, i32 0)
  %63 = load i64, i64* %6, align 8
  %64 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %64)
  %65 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %65, align 1
  call void @addPAC(i8** %9)
  call void @authPAC(i8** %9, i32 0)
  %66 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  call void @removeMetadata(i8** %9)
  call void @free(i8* noundef %66) #6
  call void @authPAC(i8** %9, i32 0)
  %67 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  store i8* %67, i8** %2, align 8
  call void @addPAC(i8** %2)
  br label %69

68:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %69

69:                                               ; preds = %68, %60
  call void @authPAC(i8** %2, i32 0)
  %70 = load i8*, i8** %2, align 8
  call void @addPAC(i8** %2)
  call void @removeMetadataStack(i8** %4)
  %71 = bitcast i64* %7 to i8**
  call void @removeMetadataStack(i8** %71)
  call void @removeMetadataStack(i8** %2)
  ret i8* %70
}

declare void @printLine(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE416_Use_After_Free__return_freed_ptr_01_good() #0 {
  call void @good1()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = bitcast i32* %3 to i8**
  call void @setMetadata(i8** %4, i32 1, i32 4)
  %5 = alloca i32, align 4
  %6 = bitcast i32* %5 to i8**
  call void @setMetadata(i8** %6, i32 1, i32 4)
  %7 = alloca i8**, align 8
  %8 = bitcast i8*** %7 to i8**
  call void @setMetadata(i8** %8, i32 1, i32 8)
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %5, align 4
  %9 = bitcast i32* %5 to i8**
  call void @addPAC(i8** %9)
  store i8** %1, i8*** %7, align 8
  %10 = bitcast i8*** %7 to i8**
  call void @addPAC(i8** %10)
  %11 = call i64 @time(i64* noundef null) #6
  %12 = trunc i64 %11 to i32
  call void @srand(i32 noundef %12) #6
  call void @printLine(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE416_Use_After_Free__return_freed_ptr_01_good()
  call void @printLine(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  call void @printLine(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  call void @CWE416_Use_After_Free__return_freed_ptr_01_bad()
  call void @printLine(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %13 = bitcast i32* %3 to i8**
  call void @removeMetadataStack(i8** %13)
  %14 = bitcast i8*** %7 to i8**
  call void @removeMetadataStack(i8** %14)
  %15 = bitcast i32* %5 to i8**
  call void @removeMetadataStack(i8** %15)
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) #2

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #2

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @good1() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* @helperGood(i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  store i8* %2, i8** %1, align 8
  %3 = bitcast i8** %1 to i8**
  call void @setMetadataObj(i8** %3, i32 1, i32 8)
  call void @addPAC(i8** %1)
  call void @authPAC(i8** %1, i32 0)
  %4 = load i8*, i8** %1, align 8
  call void @addPAC(i8** %1)
  call void @printLine(i8* noundef %4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @helperGood(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = bitcast i8** %2 to i8**
  call void @setMetadata(i8** %3, i32 1, i32 8)
  %4 = alloca i8*, align 8
  %5 = bitcast i8** %4 to i8**
  call void @setMetadata(i8** %5, i32 1, i32 8)
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = bitcast i64* %7 to i8**
  call void @setMetadata(i8** %8, i32 1, i32 8)
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @addPAC(i8** %4)
  store i64 0, i64* %6, align 8
  store i8* null, i8** %9, align 8
  call void @authPAC(i8** %4, i32 0)
  %10 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %67

12:                                               ; preds = %1
  call void @authPAC(i8** %4, i32 0)
  %13 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %14 = call i64 @strlen(i8* noundef %13) #5
  store i64 %14, i64* %6, align 8
  %15 = bitcast i64* %6 to i8**
  call void @setMetadataObj(i8** %15, i32 1, i32 8)
  %16 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %16)
  %17 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %17, i32 0)
  %18 = load i64, i64* %6, align 8
  %19 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %19)
  %20 = add i64 %18, 1
  %21 = call noalias i8* @malloc(i64 noundef %20) #6
  store i8* %21, i8** %9, align 8
  call void @addPAC(i8** %9)
  call void @authPAC(i8** %9, i32 0)
  %22 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %12
  call void @exit(i32 noundef -1) #7
  unreachable

25:                                               ; preds = %12
  store i64 0, i64* %7, align 8
  br label %26

26:                                               ; preds = %54, %25
  %27 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %27, i32 0)
  %28 = load i64, i64* %7, align 8
  %29 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %29)
  %30 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %30, i32 0)
  %31 = load i64, i64* %6, align 8
  %32 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %32)
  %33 = icmp ult i64 %28, %31
  br i1 %33, label %34, label %60

34:                                               ; preds = %26
  call void @authPAC(i8** %4, i32 0)
  %35 = load i8*, i8** %4, align 8
  call void @addPAC(i8** %4)
  %36 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %36, i32 0)
  %37 = load i64, i64* %6, align 8
  %38 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %38)
  %39 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %39, i32 0)
  %40 = load i64, i64* %7, align 8
  %41 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %41)
  %42 = sub i64 %37, %40
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %35, i64 %43
  %45 = bitcast i8* %44 to i8**
  call void @authPAC(i8** %45, i32 0)
  %46 = load i8, i8* %44, align 1
  %47 = bitcast i8* %44 to i8**
  call void @addPAC(i8** %47)
  call void @authPAC(i8** %9, i32 0)
  %48 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  %49 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %49, i32 0)
  %50 = load i64, i64* %7, align 8
  %51 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %51)
  %52 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 %46, i8* %52, align 1
  %53 = bitcast i8* %52 to i8**
  call void @addPAC(i8** %53)
  call void @addPAC(i8** %9)
  br label %54

54:                                               ; preds = %34
  %55 = bitcast i64* %7 to i8**
  call void @authPAC(i8** %55, i32 0)
  %56 = load i64, i64* %7, align 8
  %57 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %57)
  %58 = add i64 %56, 1
  store i64 %58, i64* %7, align 8
  %59 = bitcast i64* %7 to i8**
  call void @addPAC(i8** %59)
  br label %26, !llvm.loop !12

60:                                               ; preds = %26
  call void @authPAC(i8** %9, i32 0)
  %61 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  %62 = bitcast i64* %6 to i8**
  call void @authPAC(i8** %62, i32 0)
  %63 = load i64, i64* %6, align 8
  %64 = bitcast i64* %6 to i8**
  call void @addPAC(i8** %64)
  %65 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %65, align 1
  call void @addPAC(i8** %9)
  call void @authPAC(i8** %9, i32 0)
  %66 = load i8*, i8** %9, align 8
  call void @addPAC(i8** %9)
  store i8* %66, i8** %2, align 8
  call void @addPAC(i8** %2)
  br label %68

67:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %68

68:                                               ; preds = %67, %60
  call void @authPAC(i8** %2, i32 0)
  %69 = load i8*, i8** %2, align 8
  call void @addPAC(i8** %2)
  call void @removeMetadataStack(i8** %4)
  call void @removeMetadataStack(i8** %2)
  %70 = bitcast i64* %7 to i8**
  call void @removeMetadataStack(i8** %70)
  ret i8* %69
}

declare void @addPAC(i8**)

declare void @setMetadataObj(i8**, i32, i32)

declare void @authPAC(i8**, i32)

declare void @setMetadata(i8**, i32, i32)

declare void @removeMetadata(i8**)

declare void @removeMetadataStack(i8**)

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #4 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8.5a" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"branch-target-enforcement", i32 0}
!2 = !{i32 1, !"sign-return-address", i32 0}
!3 = !{i32 1, !"sign-return-address-all", i32 0}
!4 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 1}
!9 = !{!"Debian clang version 14.0.6"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
