; ModuleID = 'example.c'
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
  %3 = load i8*, i8** %1, align 8
  call void @printLine(i8* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @helperBad(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %43

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* noundef %10) #5
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  %14 = call noalias i8* @malloc(i64 noundef %13) #6
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  call void @exit(i32 noundef -1) #7
  unreachable

18:                                               ; preds = %9
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %30, i8* %33, align 1
  br label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %19, !llvm.loop !10

37:                                               ; preds = %19
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %6, align 8
  call void @free(i8* noundef %41) #6
  %42 = load i8*, i8** %6, align 8
  store i8* %42, i8** %2, align 8
  br label %44

43:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load i8*, i8** %2, align 8
  ret i8* %45
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
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i64 @time(i64* noundef null) #6
  %7 = trunc i64 %6 to i32
  call void @srand(i32 noundef %7) #6
  call void @printLine(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  call void @CWE416_Use_After_Free__return_freed_ptr_01_good()
  call void @printLine(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  call void @printLine(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  call void @CWE416_Use_After_Free__return_freed_ptr_01_bad()
  call void @printLine(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
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
  %3 = load i8*, i8** %1, align 8
  call void @printLine(i8* noundef %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @helperGood(i8* noundef %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* noundef %10) #5
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add i64 %12, 1
  %14 = call noalias i8* @malloc(i64 noundef %13) #6
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  call void @exit(i32 noundef -1) #7
  unreachable

18:                                               ; preds = %9
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %25, %26
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 %30, i8* %33, align 1
  br label %34

34:                                               ; preds = %23
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %5, align 8
  br label %19, !llvm.loop !12

37:                                               ; preds = %19
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %6, align 8
  store i8* %41, i8** %2, align 8
  br label %43

42:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %43

43:                                               ; preds = %42, %37
  %44 = load i8*, i8** %2, align 8
  ret i8* %44
}

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
