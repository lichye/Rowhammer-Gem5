
; __CLANG_OFFLOAD_BUNDLE____START__ hip-amdgcn-amd-amdhsa-gfx900
; ModuleID = 'BC.cpp'
source_filename = "BC.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z10bfs_kernelPiS_S_PfS_iii(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture %2, float addrspace(1)* nocapture %3, i32 addrspace(1)* nocapture %4, i32 %5, i32 %6, i32 %7) local_unnamed_addr #0 {
  %9 = call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = zext i32 %9 to i64
  %11 = call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %12 = getelementptr i8, i8 addrspace(4)* %11, i64 4
  %13 = bitcast i8 addrspace(4)* %12 to i16 addrspace(4)*
  %14 = load i16, i16 addrspace(4)* %13, align 4, !range !4, !invariant.load !5
  %15 = zext i16 %14 to i64
  %16 = mul nuw nsw i64 %15, %10
  %17 = call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %16, %18
  %20 = trunc i64 %19 to i32
  %21 = icmp slt i32 %20, %5
  br i1 %21, label %22, label %78

22:                                               ; preds = %8
  %23 = shl i64 %19, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %24
  %26 = load i32, i32 addrspace(1)* %25, align 4, !tbaa !7
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %24
  %30 = load i32, i32 addrspace(1)* %29, align 4, !tbaa !7
  %31 = add nsw i32 %20, 1
  %32 = icmp slt i32 %31, %5
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %34
  %36 = load i32, i32 addrspace(1)* %35, align 4, !tbaa !7
  br label %37

37:                                               ; preds = %28, %33
  %38 = phi i32 [ %36, %33 ], [ %6, %28 ]
  %39 = icmp slt i32 %30, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %37
  %41 = add nsw i32 %7, 1
  %42 = add nsw i32 %7, 1
  %43 = getelementptr inbounds float, float addrspace(1)* %3, i64 %24
  br label %44

44:                                               ; preds = %40, %75
  %45 = phi i32 [ %30, %40 ], [ %76, %75 ]
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %46
  %48 = load i32, i32 addrspace(1)* %47, align 4, !tbaa !7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %49
  %51 = load i32, i32 addrspace(1)* %50, align 4, !tbaa !7
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 1, i32 addrspace(1)* %4, align 4, !tbaa !7
  store i32 %41, i32 addrspace(1)* %50, align 4, !tbaa !7
  br label %54

54:                                               ; preds = %53, %44
  %55 = load i32, i32 addrspace(1)* %50, align 4, !tbaa !7
  %56 = icmp eq i32 %55, %42
  br i1 %56, label %57, label %75

57:                                               ; preds = %54
  %58 = getelementptr inbounds float, float addrspace(1)* %3, i64 %49
  %59 = load float, float addrspace(1)* %43, align 4, !tbaa !11
  %60 = bitcast float addrspace(1)* %58 to i32 addrspace(1)*
  %61 = load atomic i32, i32 addrspace(1)* %60 monotonic, align 4
  br label %62

62:                                               ; preds = %73, %57
  %63 = phi i32 [ %61, %57 ], [ %74, %73 ]
  %64 = load atomic i32, i32 addrspace(1)* %60 monotonic, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = bitcast i32 %63 to float
  %68 = fadd contract float %59, %67
  %69 = bitcast float %68 to i32
  %70 = cmpxchg i32 addrspace(1)* %60, i32 %63, i32 %69 monotonic monotonic
  %71 = extractvalue { i32, i1 } %70, 0
  %72 = icmp eq i32 %71, %64
  br i1 %72, label %75, label %73

73:                                               ; preds = %66, %62
  %74 = phi i32 [ %71, %66 ], [ %64, %62 ]
  br label %62

75:                                               ; preds = %66, %54
  %76 = add nsw i32 %45, 1
  %77 = icmp slt i32 %76, %38
  br i1 %77, label %44, label %78, !llvm.loop !13

78:                                               ; preds = %75, %37, %22, %8
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6, i32 %7, i32 %8, float addrspace(1)* nocapture %9) local_unnamed_addr #0 {
  %11 = call i32 @llvm.amdgcn.workgroup.id.x() #3
  %12 = zext i32 %11 to i64
  %13 = call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %14 = getelementptr i8, i8 addrspace(4)* %13, i64 4
  %15 = bitcast i8 addrspace(4)* %14 to i16 addrspace(4)*
  %16 = load i16, i16 addrspace(4)* %15, align 4, !range !4, !invariant.load !5
  %17 = zext i16 %16 to i64
  %18 = mul nuw nsw i64 %17, %12
  %19 = call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %20 = zext i32 %19 to i64
  %21 = add nuw nsw i64 %18, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, %5
  br i1 %23, label %24, label %91

24:                                               ; preds = %10
  %25 = shl i64 %21, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %26
  %28 = load i32, i32 addrspace(1)* %27, align 4, !tbaa !7
  %29 = add nsw i32 %7, -1
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %24
  %32 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %26
  %33 = load i32, i32 addrspace(1)* %32, align 4, !tbaa !7
  %34 = add nsw i32 %22, 1
  %35 = icmp slt i32 %34, %5
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = sext i32 %34 to i64
  %38 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %37
  %39 = load i32, i32 addrspace(1)* %38, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %31, %36
  %41 = phi i32 [ %39, %36 ], [ %6, %31 ]
  %42 = icmp slt i32 %33, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = add nsw i32 %7, -2
  %45 = getelementptr inbounds float, float addrspace(1)* %3, i64 %26
  %46 = getelementptr inbounds float, float addrspace(1)* %4, i64 %26
  br label %49

47:                                               ; preds = %82, %40
  %48 = icmp eq i32 %22, %8
  br i1 %48, label %91, label %85

49:                                               ; preds = %43, %82
  %50 = phi i32 [ %33, %43 ], [ %83, %82 ]
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %51
  %53 = load i32, i32 addrspace(1)* %52, align 4, !tbaa !7
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %54
  %56 = load i32, i32 addrspace(1)* %55, align 4, !tbaa !7
  %57 = icmp eq i32 %56, %44
  br i1 %57, label %58, label %82

58:                                               ; preds = %49
  %59 = getelementptr inbounds float, float addrspace(1)* %4, i64 %54
  %60 = getelementptr inbounds float, float addrspace(1)* %3, i64 %54
  %61 = load float, float addrspace(1)* %60, align 4, !tbaa !11
  %62 = load float, float addrspace(1)* %45, align 4, !tbaa !11
  %63 = fdiv contract float %61, %62
  %64 = load float, float addrspace(1)* %46, align 4, !tbaa !11
  %65 = fadd contract float %64, 1.000000e+00
  %66 = fmul contract float %63, %65
  %67 = bitcast float addrspace(1)* %59 to i32 addrspace(1)*
  %68 = load atomic i32, i32 addrspace(1)* %67 monotonic, align 4
  br label %69

69:                                               ; preds = %80, %58
  %70 = phi i32 [ %68, %58 ], [ %81, %80 ]
  %71 = load atomic i32, i32 addrspace(1)* %67 monotonic, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = bitcast i32 %70 to float
  %75 = fadd contract float %66, %74
  %76 = bitcast float %75 to i32
  %77 = cmpxchg i32 addrspace(1)* %67, i32 %70, i32 %76 monotonic monotonic
  %78 = extractvalue { i32, i1 } %77, 0
  %79 = icmp eq i32 %78, %71
  br i1 %79, label %82, label %80

80:                                               ; preds = %73, %69
  %81 = phi i32 [ %78, %73 ], [ %71, %69 ]
  br label %69

82:                                               ; preds = %73, %49
  %83 = add nsw i32 %50, 1
  %84 = icmp slt i32 %83, %41
  br i1 %84, label %49, label %47, !llvm.loop !15

85:                                               ; preds = %47
  %86 = getelementptr inbounds float, float addrspace(1)* %9, i64 %26
  %87 = load float, float addrspace(1)* %86, align 4, !tbaa !11
  %88 = getelementptr inbounds float, float addrspace(1)* %4, i64 %26
  %89 = load float, float addrspace(1)* %88, align 4, !tbaa !11
  %90 = fadd contract float %87, %89
  store float %90, float addrspace(1)* %86, align 4, !tbaa !11
  br label %91

91:                                               ; preds = %47, %85, %24, %10
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z15back_sum_kerneliiPiPfS0_i(i32 %0, i32 %1, i32 addrspace(1)* nocapture readonly %2, float addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture %4, i32 %5) local_unnamed_addr #0 {
  %7 = call i32 @llvm.amdgcn.workgroup.id.x() #3
  %8 = zext i32 %7 to i64
  %9 = call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %10 = getelementptr i8, i8 addrspace(4)* %9, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i64
  %14 = mul nuw nsw i64 %13, %8
  %15 = call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %16 = zext i32 %15 to i64
  %17 = add nuw nsw i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = icmp sge i32 %18, %5
  %20 = icmp eq i32 %18, %0
  %21 = or i1 %19, %20
  br i1 %21, label %35, label %22

22:                                               ; preds = %6
  %23 = shl i64 %17, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds i32, i32 addrspace(1)* %2, i64 %24
  %26 = load i32, i32 addrspace(1)* %25, align 4, !tbaa !7
  %27 = add nsw i32 %1, -1
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = getelementptr inbounds float, float addrspace(1)* %4, i64 %24
  %31 = load float, float addrspace(1)* %30, align 4, !tbaa !11
  %32 = getelementptr inbounds float, float addrspace(1)* %3, i64 %24
  %33 = load float, float addrspace(1)* %32, align 4, !tbaa !11
  %34 = fadd contract float %31, %33
  store float %34, float addrspace(1)* %30, align 4, !tbaa !11
  br label %35

35:                                               ; preds = %22, %29, %6
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind writeonly
define protected amdgpu_kernel void @_Z14clean_1d_arrayiPiPfS0_i(i32 %0, i32 addrspace(1)* nocapture %1, float addrspace(1)* nocapture %2, float addrspace(1)* nocapture %3, i32 %4) local_unnamed_addr #1 {
  %6 = call i32 @llvm.amdgcn.workgroup.id.x() #3
  %7 = zext i32 %6 to i64
  %8 = call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %10 = bitcast i8 addrspace(4)* %9 to i16 addrspace(4)*
  %11 = load i16, i16 addrspace(4)* %10, align 4, !range !4, !invariant.load !5
  %12 = zext i16 %11 to i64
  %13 = mul nuw nsw i64 %12, %7
  %14 = call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %13, %15
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = shl i64 %16, 32
  %21 = ashr exact i64 %20, 32
  %22 = getelementptr inbounds float, float addrspace(1)* %2, i64 %21
  store float 0.000000e+00, float addrspace(1)* %22, align 4, !tbaa !11
  %23 = icmp eq i32 %17, %0
  %24 = getelementptr inbounds float, float addrspace(1)* %3, i64 %21
  %25 = select i1 %23, float 1.000000e+00, float 0.000000e+00
  %26 = xor i1 %23, true
  %27 = sext i1 %26 to i32
  store float %25, float addrspace(1)* %24, align 4, !tbaa !11
  %28 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %21
  store i32 %27, i32 addrspace(1)* %28, align 4, !tbaa !7
  br label %29

29:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind writeonly
define protected amdgpu_kernel void @_Z14clean_2d_arrayPii(i32 addrspace(1)* nocapture %0, i32 %1) local_unnamed_addr #1 {
  %3 = call i32 @llvm.amdgcn.workgroup.id.x() #3
  %4 = zext i32 %3 to i64
  %5 = call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !4, !invariant.load !5
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, %4
  %11 = call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %10, %12
  %14 = trunc i64 %13 to i32
  %15 = mul nsw i32 %1, %1
  %16 = icmp sgt i32 %15, %14
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = shl i64 %13, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %19
  store i32 0, i32 addrspace(1)* %20, align 4, !tbaa !7
  br label %21

21:                                               ; preds = %17, %2
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind writeonly
define protected amdgpu_kernel void @_Z8clean_bcPfi(float addrspace(1)* nocapture %0, i32 %1) local_unnamed_addr #1 {
  %3 = call i32 @llvm.amdgcn.workgroup.id.x() #3
  %4 = zext i32 %3 to i64
  %5 = call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %6 = getelementptr i8, i8 addrspace(4)* %5, i64 4
  %7 = bitcast i8 addrspace(4)* %6 to i16 addrspace(4)*
  %8 = load i16, i16 addrspace(4)* %7, align 4, !range !4, !invariant.load !5
  %9 = zext i16 %8 to i64
  %10 = mul nuw nsw i64 %9, %4
  %11 = call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %12 = zext i32 %11 to i64
  %13 = add nuw nsw i64 %10, %12
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, %1
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = shl i64 %13, 32
  %18 = ashr exact i64 %17, 32
  %19 = getelementptr inbounds float, float addrspace(1)* %0, i64 %18
  store float 0.000000e+00, float addrspace(1)* %19, align 4, !tbaa !11
  br label %20

20:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { convergent nofree norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "amdgpu-implicitarg-num-bytes"="56" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx900" "target-features"="+16-bit-insts,+ci-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nofree norecurse nounwind writeonly "amdgpu-flat-work-group-size"="1,256" "amdgpu-implicitarg-num-bytes"="56" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx900" "target-features"="+16-bit-insts,+ci-insts,+dpp,+flat-address-space,+gfx8-insts,+gfx9-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone speculatable willreturn "correctly-rounded-divide-sqrt-fp-math"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!opencl.ocl.version = !{!2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 1}
!2 = !{i32 2, i32 0}
!3 = !{!"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"}
!4 = !{i16 1, i16 1025}
!5 = !{}
!6 = !{i32 0, i32 1024}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !14}

; __CLANG_OFFLOAD_BUNDLE____END__ hip-amdgcn-amd-amdhsa-gfx900

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = 'BC.cpp'
source_filename = "BC.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%"struct.std::nothrow_t" = type { i8 }
%struct.cooedgetuple = type { i32, i32, i32 }
%struct.csr_array_t = type { i32*, i32*, i32*, i32*, i32*, i32* }
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%"class.std::_Temporary_buffer" = type { i64, i64, %struct.cooedgetuple* }
%"struct.__gnu_cxx::__ops::_Iter_comp_iter" = type { i1 (i64, i32, i64, i32)* }
%"struct.std::pair" = type { %struct.cooedgetuple*, i64 }
%"struct.__gnu_cxx::__ops::_Val_comp_iter" = type { i1 (i64, i32, i64, i32)* }
%"struct.__gnu_cxx::__ops::_Iter_comp_val" = type { i1 (i64, i32, i64, i32)* }

$_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_ = comdat any

$_ZN4dim3C2Ejjj = comdat any

$_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_ = comdat any

$_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l = comdat any

$_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv = comdat any

$_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_ = comdat any

$_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv = comdat any

$_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev = comdat any

$_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl = comdat any

$_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_ = comdat any

$_ZSt23return_temporary_bufferI12cooedgetupleEvPT_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_ = comdat any

$_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_ = comdat any

$_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE = comdat any

$_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE = comdat any

$_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE = comdat any

$_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE = comdat any

$_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_ = comdat any

$_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ = comdat any

$_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_ = comdat any

$_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_ = comdat any

$_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_ = comdat any

$_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE = comdat any

$_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseIP12cooedgetupleET_S2_ = comdat any

$_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_ = comdat any

$_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseIP12cooedgetupleET_S2_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_ = comdat any

$_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_ = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_ = comdat any

$_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_ = comdat any

$_ZSt7advanceIP12cooedgetuplelEvRT_T0_ = comdat any

$_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_ = comdat any

$_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE = comdat any

$_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_ = comdat any

$_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_ = comdat any

$_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ = comdat any

$_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE = comdat any

$_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_ = comdat any

$_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag = comdat any

$_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_ = comdat any

$_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_ = comdat any

$_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ = comdat any

$_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_ = comdat any

$_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_ = comdat any

$_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_ = comdat any

$_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_ = comdat any

$_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_ = comdat any

$_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_ = comdat any

$_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_ = comdat any

$_ZSt3minIlERKT_S2_S2_ = comdat any

$_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_ = comdat any

$_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_ = comdat any

$_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_ = comdat any

$_ZSt8_DestroyIP12cooedgetupleEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_ = comdat any

$_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_ = comdat any

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"Error when opennning file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ERROR: \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Opening file: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"%c %s %d %d\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"Read from file: num_nodes = %d, num_edges = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%c %d %d %d\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"exiting loop\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"You did something wrong!\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"malloc failed bc_h\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"ERROR: hipMalloc bc_d %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"ERROR: hipMalloc dist_d %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"ERROR: hipMalloc sigma_d %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"ERROR: hipMalloc rho_d %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"ERROR: hipMalloc stop_d %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"ERROR: hipMalloc row_d %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"ERROR: hipMalloc col_d %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"ERROR: hipMalloc row_trans_d %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"ERROR: hipMalloc col_trans_d %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"ERROR: hipMemcpy row_d (size:%d) => %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"ERROR: hipMemcpy col_d (size:%d) => %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"ERROR: hipMemcpy row_trans_d (size:%d) => %s\0A\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"ERROR: hipMemcpy col_trans_d (size:%d) => %s\0A\00", align 1
@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [24 x i8] c"Completed iteration %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"ERROR: read buffer bc_d (%s)\0A\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"%d: %d \0A\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"result.out\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@_ZSt7nothrow = external dso_local global %"struct.std::nothrow_t", align 1
@0 = private unnamed_addr constant [28 x i8] c"_Z10bfs_kernelPiS_S_PfS_iii\00", align 1
@1 = private unnamed_addr constant [39 x i8] c"_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_\00", align 1
@2 = private unnamed_addr constant [30 x i8] c"_Z15back_sum_kerneliiPiPfS0_i\00", align 1
@3 = private unnamed_addr constant [28 x i8] c"_Z14clean_1d_arrayiPiPfS0_i\00", align 1
@4 = private unnamed_addr constant [22 x i8] c"_Z14clean_2d_arrayPii\00", align 1
@5 = private unnamed_addr constant [15 x i8] c"_Z8clean_bcPfi\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [20 x i8] c"reporting self loop\00", align 1
@str.35 = private unnamed_addr constant [28 x i8] c"This is an undirected graph\00", align 1
@str.36 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@str.37 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@str.38 = private unnamed_addr constant [25 x i8] c"This is a directed graph\00", align 1
@str.39 = private unnamed_addr constant [33 x i8] c"ERROR: unable to open result.txt\00", align 1

; Function Attrs: norecurse nounwind readnone uwtable
define dso_local zeroext i1 @_Z7compare12cooedgetupleS_(i64 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = trunc i64 %0 to i32
  %6 = trunc i64 %2 to i32
  %7 = icmp slt i32 %5, %6
  ret i1 %7
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @_Z9transformP12cooedgetupleiPiS1_S1_(%struct.cooedgetuple* nocapture readonly %0, i32 %1, i32* nocapture %2, i32* nocapture %3, i32* nocapture %4) local_unnamed_addr #2 {
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %5
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %21
  %10 = phi i64 [ 0, %7 ], [ %30, %21 ]
  %11 = phi i32 [ 0, %7 ], [ %23, %21 ]
  %12 = phi i32 [ -1, %7 ], [ %22, %21 ]
  %13 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 %10, i32 0
  %14 = load i32, i32* %13, align 4, !tbaa !2
  %15 = icmp eq i32 %14, %12
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = add nsw i32 %11, 1
  %18 = sext i32 %11 to i64
  %19 = getelementptr inbounds i32, i32* %2, i64 %18
  %20 = trunc i64 %10 to i32
  store i32 %20, i32* %19, align 4, !tbaa !7
  br label %21

21:                                               ; preds = %16, %9
  %22 = phi i32 [ %14, %16 ], [ %12, %9 ]
  %23 = phi i32 [ %17, %16 ], [ %11, %9 ]
  %24 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 %10, i32 1
  %25 = load i32, i32* %24, align 4, !tbaa !8
  %26 = getelementptr inbounds i32, i32* %3, i64 %10
  store i32 %25, i32* %26, align 4, !tbaa !7
  %27 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 %10, i32 2
  %28 = load i32, i32* %27, align 4, !tbaa !9
  %29 = getelementptr inbounds i32, i32* %4, i64 %10
  store i32 %28, i32* %29, align 4, !tbaa !7
  %30 = add nuw nsw i64 %10, 1
  %31 = icmp eq i64 %30, %8
  br i1 %31, label %32, label %9, !llvm.loop !10

32:                                               ; preds = %21
  %33 = trunc i64 %30 to i32
  br label %34

34:                                               ; preds = %32, %5
  %35 = phi i32 [ 0, %5 ], [ %33, %32 ]
  %36 = phi i32 [ 0, %5 ], [ %23, %32 ]
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %2, i64 %37
  store i32 %35, i32* %38, align 4, !tbaa !7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: uwtable
define dso_local noalias %struct.csr_array_t* @_Z8parseCOOPcPiS0_b(i8* %0, i32* %1, i32* %2, i1 zeroext %3) local_unnamed_addr #3 {
  %5 = alloca [2 x i8], align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = getelementptr inbounds [2 x i8], [2 x i8]* %5, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #19
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6) #19
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %7) #19
  %12 = call noalias dereferenceable_or_null(8192) i8* @malloc(i64 8192) #19
  %13 = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq %struct._IO_FILE* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %0) #20
  call void @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #20
  call void @exit(i32 1) #21
  unreachable

18:                                               ; preds = %4
  %19 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %0)
  %20 = call i8* @fgets(i8* %12, i32 8192, %struct._IO_FILE* nonnull %13)
  %21 = icmp eq i8* %20, null
  br i1 %21, label %110, label %22

22:                                               ; preds = %18
  %23 = bitcast i32* %8 to i8*
  %24 = bitcast i32* %9 to i8*
  %25 = bitcast i32* %10 to i8*
  br label %26

26:                                               ; preds = %22, %101
  %27 = phi i32 [ 0, %22 ], [ %107, %101 ]
  %28 = phi i32 [ 0, %22 ], [ %106, %101 ]
  %29 = phi i32 [ 0, %22 ], [ %105, %101 ]
  %30 = phi i32 [ 0, %22 ], [ %104, %101 ]
  %31 = phi %struct.cooedgetuple* [ null, %22 ], [ %103, %101 ]
  %32 = phi %struct.cooedgetuple* [ null, %22 ], [ %102, %101 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #19
  %33 = load i8, i8* %12, align 1, !tbaa !14
  %34 = sext i8 %33 to i32
  switch i32 %34, label %98 [
    i32 99, label %101
    i32 112, label %35
    i32 97, label %59
  ]

35:                                               ; preds = %26
  %36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %7, i8* nonnull %11, i32* %1, i32* %2) #19
  br i1 %3, label %40, label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %2, align 4, !tbaa !7
  %39 = shl nsw i32 %38, 1
  store i32 %39, i32* %2, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %35, %37
  %41 = phi i8* [ getelementptr inbounds ([28 x i8], [28 x i8]* @str.35, i64 0, i64 0), %37 ], [ getelementptr inbounds ([25 x i8], [25 x i8]* @str.38, i64 0, i64 0), %35 ]
  %42 = call i32 @puts(i8* nonnull dereferenceable(1) %41)
  %43 = load i32, i32* %1, align 4, !tbaa !7
  %44 = load i32, i32* %2, align 4, !tbaa !7
  %45 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %43, i32 %44)
  %46 = sext i32 %44 to i64
  %47 = mul nsw i64 %46, 12
  %48 = call noalias i8* @malloc(i64 %47) #19
  %49 = bitcast i8* %48 to %struct.cooedgetuple*
  %50 = icmp eq i8* %48, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.36, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %40
  %54 = call noalias i8* @malloc(i64 %47) #19
  %55 = bitcast i8* %54 to %struct.cooedgetuple*
  %56 = icmp eq i8* %54, null
  br i1 %56, label %57, label %101

57:                                               ; preds = %53
  %58 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @str.37, i64 0, i64 0))
  br label %101

59:                                               ; preds = %26
  %60 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* nonnull %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8* nonnull %6, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10) #19
  %61 = load i32, i32* %9, align 4, !tbaa !7
  %62 = load i32, i32* %8, align 4, !tbaa !7
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([20 x i8], [20 x i8]* @str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %59
  %67 = load i32, i32* %8, align 4, !tbaa !7
  %68 = add nsw i32 %67, -1
  %69 = load i32, i32* %9, align 4, !tbaa !7
  %70 = add nsw i32 %69, -1
  %71 = load i32, i32* %10, align 4, !tbaa !7
  %72 = add nsw i32 %27, 1
  %73 = sext i32 %27 to i64
  %74 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %31, i64 %73, i32 0
  store i32 %68, i32* %74, align 4, !tbaa.struct !15
  %75 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %31, i64 %73, i32 1
  store i32 %70, i32* %75, align 4, !tbaa.struct !15
  %76 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %31, i64 %73, i32 2
  store i32 %71, i32* %76, align 4, !tbaa.struct !15
  %77 = add nsw i32 %28, 1
  %78 = sext i32 %28 to i64
  %79 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %32, i64 %78, i32 0
  store i32 %70, i32* %79, align 4, !tbaa.struct !15
  %80 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %32, i64 %78, i32 1
  store i32 %68, i32* %80, align 4, !tbaa.struct !15
  %81 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %32, i64 %78, i32 2
  store i32 %71, i32* %81, align 4, !tbaa.struct !15
  br i1 %3, label %101, label %82

82:                                               ; preds = %66
  %83 = load i32, i32* %9, align 4, !tbaa !7
  %84 = add nsw i32 %83, -1
  %85 = load i32, i32* %8, align 4, !tbaa !7
  %86 = add nsw i32 %85, -1
  %87 = load i32, i32* %10, align 4, !tbaa !7
  %88 = add nsw i32 %27, 2
  %89 = sext i32 %72 to i64
  %90 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %31, i64 %89, i32 0
  store i32 %84, i32* %90, align 4, !tbaa.struct !15
  %91 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %31, i64 %89, i32 1
  store i32 %86, i32* %91, align 4, !tbaa.struct !15
  %92 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %31, i64 %89, i32 2
  store i32 %87, i32* %92, align 4, !tbaa.struct !15
  %93 = add nsw i32 %28, 2
  %94 = sext i32 %77 to i64
  %95 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %32, i64 %94, i32 0
  store i32 %86, i32* %95, align 4, !tbaa.struct !15
  %96 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %32, i64 %94, i32 1
  store i32 %84, i32* %96, align 4, !tbaa.struct !15
  %97 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %32, i64 %94, i32 2
  store i32 %87, i32* %97, align 4, !tbaa.struct !15
  br label %101

98:                                               ; preds = %26
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %100 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %99) #20
  br label %101

101:                                              ; preds = %66, %82, %53, %57, %98, %26
  %102 = phi %struct.cooedgetuple* [ %32, %98 ], [ %32, %66 ], [ %32, %82 ], [ %55, %53 ], [ null, %57 ], [ %32, %26 ]
  %103 = phi %struct.cooedgetuple* [ %31, %98 ], [ %31, %66 ], [ %31, %82 ], [ %49, %53 ], [ %49, %57 ], [ %31, %26 ]
  %104 = phi i32 [ %30, %98 ], [ %30, %66 ], [ %30, %82 ], [ %44, %53 ], [ %44, %57 ], [ %30, %26 ]
  %105 = phi i32 [ %29, %98 ], [ %29, %66 ], [ %29, %82 ], [ %43, %53 ], [ %43, %57 ], [ %29, %26 ]
  %106 = phi i32 [ %28, %98 ], [ %77, %66 ], [ %93, %82 ], [ %28, %53 ], [ %28, %57 ], [ %28, %26 ]
  %107 = phi i32 [ %27, %98 ], [ %72, %66 ], [ %88, %82 ], [ %27, %53 ], [ %27, %57 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #19
  %108 = call i8* @fgets(i8* nonnull %12, i32 8192, %struct._IO_FILE* nonnull %13)
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %26, !llvm.loop !16

110:                                              ; preds = %101, %18
  %111 = phi %struct.cooedgetuple* [ null, %18 ], [ %102, %101 ]
  %112 = phi %struct.cooedgetuple* [ null, %18 ], [ %103, %101 ]
  %113 = phi i32 [ 0, %18 ], [ %104, %101 ]
  %114 = phi i32 [ 0, %18 ], [ %105, %101 ]
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %112, i64 %115
  call void @_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_(%struct.cooedgetuple* %112, %struct.cooedgetuple* %116, i1 (i64, i32, i64, i32)* nonnull @_Z7compare12cooedgetupleS_)
  %117 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %111, i64 %115
  call void @_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_(%struct.cooedgetuple* %111, %struct.cooedgetuple* %117, i1 (i64, i32, i64, i32)* nonnull @_Z7compare12cooedgetupleS_)
  %118 = add nsw i32 %114, 1
  %119 = sext i32 %118 to i64
  %120 = shl nsw i64 %119, 2
  %121 = call noalias i8* @malloc(i64 %120) #19
  %122 = bitcast i8* %121 to i32*
  %123 = shl nsw i64 %115, 2
  %124 = call noalias i8* @malloc(i64 %123) #19
  %125 = bitcast i8* %124 to i32*
  %126 = call noalias i8* @malloc(i64 %123) #19
  %127 = bitcast i8* %126 to i32*
  %128 = call noalias i8* @malloc(i64 %120) #19
  %129 = bitcast i8* %128 to i32*
  %130 = call noalias i8* @malloc(i64 %123) #19
  %131 = bitcast i8* %130 to i32*
  %132 = call noalias i8* @malloc(i64 %123) #19
  %133 = bitcast i8* %132 to i32*
  call void @_Z9transformP12cooedgetupleiPiS1_S1_(%struct.cooedgetuple* %112, i32 %113, i32* %122, i32* %125, i32* %127)
  call void @_Z9transformP12cooedgetupleiPiS1_S1_(%struct.cooedgetuple* %111, i32 %113, i32* %129, i32* %131, i32* %133)
  %134 = call i32 @fclose(%struct._IO_FILE* nonnull %13)
  %135 = bitcast %struct.cooedgetuple* %112 to i8*
  call void @free(i8* %135) #19
  %136 = bitcast %struct.cooedgetuple* %111 to i8*
  call void @free(i8* %136) #19
  %137 = call noalias dereferenceable_or_null(48) i8* @malloc(i64 48) #19
  %138 = bitcast i8* %137 to %struct.csr_array_t*
  %139 = bitcast i8* %137 to i8**
  store i8* %121, i8** %139, align 8, !tbaa !17
  %140 = getelementptr inbounds i8, i8* %137, i64 8
  %141 = bitcast i8* %140 to i8**
  store i8* %124, i8** %141, align 8, !tbaa !19
  %142 = getelementptr inbounds i8, i8* %137, i64 16
  %143 = bitcast i8* %142 to i8**
  store i8* %126, i8** %143, align 8, !tbaa !20
  %144 = getelementptr inbounds i8, i8* %137, i64 24
  %145 = bitcast i8* %144 to i8**
  store i8* %128, i8** %145, align 8, !tbaa !21
  %146 = getelementptr inbounds i8, i8* %137, i64 32
  %147 = bitcast i8* %146 to i8**
  store i8* %130, i8** %147, align 8, !tbaa !22
  %148 = getelementptr inbounds i8, i8* %137, i64 40
  %149 = bitcast i8* %148 to i8**
  store i8* %132, i8** %149, align 8, !tbaa !23
  call void @free(i8* %12) #19
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %7) #19
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6) #19
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #19
  ret %struct.csr_array_t* %138
}

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local void @perror(i8* nocapture readonly) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @__isoc99_sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %2) local_unnamed_addr #6 comdat {
  %4 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_(i1 (i64, i32, i64, i32)* %2)
  call void @_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %4)
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #4

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #7

; Function Attrs: norecurse uwtable
define dso_local void @_Z25__device_stub__bfs_kernelPiS_S_PfS_iii(i32* %0, i32* %1, i32* %2, float* %3, i32* %4, i32 %5, i32 %6, i32 %7) #8 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dim3, align 8
  %18 = alloca %struct.dim3, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8, !tbaa !12
  store i32* %1, i32** %10, align 8, !tbaa !12
  store i32* %2, i32** %11, align 8, !tbaa !12
  store float* %3, float** %12, align 8, !tbaa !12
  store i32* %4, i32** %13, align 8, !tbaa !12
  store i32 %5, i32* %14, align 4, !tbaa !7
  store i32 %6, i32* %15, align 4, !tbaa !7
  store i32 %7, i32* %16, align 4, !tbaa !7
  %21 = alloca [8 x i8*], align 16
  %22 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 0
  %23 = bitcast [8 x i8*]* %21 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 1
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 8
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 2
  %27 = bitcast i8** %26 to i32***
  store i32** %11, i32*** %27, align 16
  %28 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 3
  %29 = bitcast i8** %28 to float***
  store float** %12, float*** %29, align 8
  %30 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 4
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 16
  %32 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 5
  %33 = bitcast i8** %32 to i32**
  store i32* %14, i32** %33, align 8
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 6
  %35 = bitcast i8** %34 to i32**
  store i32* %15, i32** %35, align 16
  %36 = getelementptr inbounds [8 x i8*], [8 x i8*]* %21, i64 0, i64 7
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
  %38 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %17, %struct.dim3* nonnull %18, i64* nonnull %19, i8** nonnull %20)
  %39 = load i64, i64* %19, align 8
  %40 = bitcast i8** %20 to %struct.ihipStream_t**
  %41 = load %struct.ihipStream_t*, %struct.ihipStream_t** %40, align 8
  %42 = bitcast %struct.dim3* %17 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %17, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %struct.dim3* %18 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.dim3, %struct.dim3* %18, i64 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, float*, i32*, i32, i32, i32)* @_Z25__device_stub__bfs_kernelPiS_S_PfS_iii to i8*), i64 %43, i32 %45, i64 %47, i32 %49, i8** nonnull %22, i64 %39, %struct.ihipStream_t* %41)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_(i32* %0, i32* %1, i32* %2, float* %3, float* %4, i32 %5, i32 %6, i32 %7, i32 %8, float* %9) #8 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca %struct.dim3, align 8
  %22 = alloca %struct.dim3, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  store i32* %0, i32** %11, align 8, !tbaa !12
  store i32* %1, i32** %12, align 8, !tbaa !12
  store i32* %2, i32** %13, align 8, !tbaa !12
  store float* %3, float** %14, align 8, !tbaa !12
  store float* %4, float** %15, align 8, !tbaa !12
  store i32 %5, i32* %16, align 4, !tbaa !7
  store i32 %6, i32* %17, align 4, !tbaa !7
  store i32 %7, i32* %18, align 4, !tbaa !7
  store i32 %8, i32* %19, align 4, !tbaa !7
  store float* %9, float** %20, align 8, !tbaa !12
  %25 = alloca [10 x i8*], align 16
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 0
  %27 = bitcast [10 x i8*]* %25 to i32***
  store i32** %11, i32*** %27, align 16
  %28 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 1
  %29 = bitcast i8** %28 to i32***
  store i32** %12, i32*** %29, align 8
  %30 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 2
  %31 = bitcast i8** %30 to i32***
  store i32** %13, i32*** %31, align 16
  %32 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 3
  %33 = bitcast i8** %32 to float***
  store float** %14, float*** %33, align 8
  %34 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 4
  %35 = bitcast i8** %34 to float***
  store float** %15, float*** %35, align 16
  %36 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 5
  %37 = bitcast i8** %36 to i32**
  store i32* %16, i32** %37, align 8
  %38 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 6
  %39 = bitcast i8** %38 to i32**
  store i32* %17, i32** %39, align 16
  %40 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 7
  %41 = bitcast i8** %40 to i32**
  store i32* %18, i32** %41, align 8
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 8
  %43 = bitcast i8** %42 to i32**
  store i32* %19, i32** %43, align 16
  %44 = getelementptr inbounds [10 x i8*], [10 x i8*]* %25, i64 0, i64 9
  %45 = bitcast i8** %44 to float***
  store float** %20, float*** %45, align 8
  %46 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %21, %struct.dim3* nonnull %22, i64* nonnull %23, i8** nonnull %24)
  %47 = load i64, i64* %23, align 8
  %48 = bitcast i8** %24 to %struct.ihipStream_t**
  %49 = load %struct.ihipStream_t*, %struct.ihipStream_t** %48, align 8
  %50 = bitcast %struct.dim3* %21 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i64 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = bitcast %struct.dim3* %22 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.dim3, %struct.dim3* %22, i64 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32, i32, i32, float*)* @_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_ to i8*), i64 %51, i32 %53, i64 %55, i32 %57, i8** nonnull %26, i64 %47, %struct.ihipStream_t* %49)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z30__device_stub__back_sum_kerneliiPiPfS0_i(i32 %0, i32 %1, i32* %2, float* %3, float* %4, i32 %5) #8 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.dim3, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4, !tbaa !7
  store i32 %1, i32* %8, align 4, !tbaa !7
  store i32* %2, i32** %9, align 8, !tbaa !12
  store float* %3, float** %10, align 8, !tbaa !12
  store float* %4, float** %11, align 8, !tbaa !12
  store i32 %5, i32* %12, align 4, !tbaa !7
  %17 = alloca [6 x i8*], align 16
  %18 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 0
  %19 = bitcast [6 x i8*]* %17 to i32**
  store i32* %7, i32** %19, align 16
  %20 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 1
  %21 = bitcast i8** %20 to i32**
  store i32* %8, i32** %21, align 8
  %22 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 2
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 16
  %24 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 3
  %25 = bitcast i8** %24 to float***
  store float** %10, float*** %25, align 8
  %26 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 4
  %27 = bitcast i8** %26 to float***
  store float** %11, float*** %27, align 16
  %28 = getelementptr inbounds [6 x i8*], [6 x i8*]* %17, i64 0, i64 5
  %29 = bitcast i8** %28 to i32**
  store i32* %12, i32** %29, align 8
  %30 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %13, %struct.dim3* nonnull %14, i64* nonnull %15, i8** nonnull %16)
  %31 = load i64, i64* %15, align 8
  %32 = bitcast i8** %16 to %struct.ihipStream_t**
  %33 = load %struct.ihipStream_t*, %struct.ihipStream_t** %32, align 8
  %34 = bitcast %struct.dim3* %13 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %13, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = bitcast %struct.dim3* %14 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hipLaunchKernel(i8* bitcast (void (i32, i32, i32*, float*, float*, i32)* @_Z30__device_stub__back_sum_kerneliiPiPfS0_i to i8*), i64 %35, i32 %37, i64 %39, i32 %41, i8** nonnull %18, i64 %31, %struct.ihipStream_t* %33)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z29__device_stub__clean_1d_arrayiPiPfS0_i(i32 %0, i32* %1, float* %2, float* %3, i32 %4) #8 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4, !tbaa !7
  store i32* %1, i32** %7, align 8, !tbaa !12
  store float* %2, float** %8, align 8, !tbaa !12
  store float* %3, float** %9, align 8, !tbaa !12
  store i32 %4, i32* %10, align 4, !tbaa !7
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to i32**
  store i32* %6, i32** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to i32***
  store i32** %7, i32*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to float***
  store float** %8, float*** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 3
  %23 = bitcast i8** %22 to float***
  store float** %9, float*** %23, align 8
  %24 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 4
  %25 = bitcast i8** %24 to i32**
  store i32* %10, i32** %25, align 16
  %26 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %11, %struct.dim3* nonnull %12, i64* nonnull %13, i8** nonnull %14)
  %27 = load i64, i64* %13, align 8
  %28 = bitcast i8** %14 to %struct.ihipStream_t**
  %29 = load %struct.ihipStream_t*, %struct.ihipStream_t** %28, align 8
  %30 = bitcast %struct.dim3* %11 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = bitcast %struct.dim3* %12 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.dim3, %struct.dim3* %12, i64 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (i32, i32*, float*, float*, i32)* @_Z29__device_stub__clean_1d_arrayiPiPfS0_i to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z29__device_stub__clean_2d_arrayPii(i32* %0, i32 %1) #8 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8, !tbaa !12
  store i32 %1, i32* %4, align 4, !tbaa !7
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to i32***
  store i32** %3, i32*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to i32**
  store i32* %4, i32** %13, align 8
  %14 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %15 = load i64, i64* %7, align 8
  %16 = bitcast i8** %8 to %struct.ihipStream_t**
  %17 = load %struct.ihipStream_t*, %struct.ihipStream_t** %16, align 8
  %18 = bitcast %struct.dim3* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = bitcast %struct.dim3* %6 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32)* @_Z29__device_stub__clean_2d_arrayPii to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z23__device_stub__clean_bcPfi(float* %0, i32 %1) #8 {
  %3 = alloca float*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dim3, align 8
  %6 = alloca %struct.dim3, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store float* %0, float** %3, align 8, !tbaa !12
  store i32 %1, i32* %4, align 4, !tbaa !7
  %9 = alloca [2 x i8*], align 16
  %10 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 0
  %11 = bitcast [2 x i8*]* %9 to float***
  store float** %3, float*** %11, align 16
  %12 = getelementptr inbounds [2 x i8*], [2 x i8*]* %9, i64 0, i64 1
  %13 = bitcast i8** %12 to i32**
  store i32* %4, i32** %13, align 8
  %14 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %5, %struct.dim3* nonnull %6, i64* nonnull %7, i8** nonnull %8)
  %15 = load i64, i64* %7, align 8
  %16 = bitcast i8** %8 to %struct.ihipStream_t**
  %17 = load %struct.ihipStream_t*, %struct.ihipStream_t** %16, align 8
  %18 = bitcast %struct.dim3* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.dim3, %struct.dim3* %5, i64 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = bitcast %struct.dim3* %6 to i64*
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.dim3, %struct.dim3* %6, i64 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @hipLaunchKernel(i8* bitcast (void (float*, i32)* @_Z23__device_stub__clean_bcPfi to i8*), i64 %19, i32 %21, i64 %23, i32 %25, i8** nonnull %10, i64 %15, %struct.ihipStream_t* %17)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #8 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dim3, align 8
  %15 = alloca %struct.dim3, align 8
  %16 = alloca i32, align 4
  %17 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #19
  %18 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #19
  %19 = icmp eq i32 %0, 2
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = getelementptr inbounds i8*, i8** %1, i64 1
  %22 = load i8*, i8** %21, align 8, !tbaa !12
  %23 = call %struct.csr_array_t* @_Z8parseCOOPcPiS0_b(i8* %22, i32* nonnull %3, i32* nonnull %4, i1 zeroext true)
  %24 = load i32, i32* %3, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = shl nsw i64 %25, 2
  %27 = call noalias i8* @malloc(i64 %26) #19
  %28 = bitcast i8* %27 to float*
  %29 = icmp eq i8* %27, null
  br i1 %29, label %33, label %36

30:                                               ; preds = %2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %32 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %31) #20
  call void @exit(i32 1) #21
  unreachable

33:                                               ; preds = %20
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %35 = call i64 @fwrite(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i64 19, i64 1, %struct._IO_FILE* %34) #20
  br label %36

36:                                               ; preds = %33, %20
  %37 = bitcast float** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37) #19
  %38 = bitcast float** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38) #19
  %39 = bitcast float** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #19
  %40 = bitcast i32** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40) #19
  %41 = bitcast i32** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41) #19
  %42 = bitcast i32** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #19
  %43 = bitcast i32** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43) #19
  %44 = bitcast i32** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %44) #19
  %45 = bitcast i32** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45) #19
  %46 = load i32, i32* %3, align 4, !tbaa !7
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 2
  %49 = call fastcc i32 @_ZL9hipMallocIfE10hipError_tPPT_m(float** nonnull %5, i64 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %36
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %53 = call i8* @hipGetErrorString(i32 %49)
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %53) #20
  br label %339

55:                                               ; preds = %36
  %56 = load i32, i32* %3, align 4, !tbaa !7
  %57 = sext i32 %56 to i64
  %58 = shl nsw i64 %57, 2
  %59 = call fastcc i32 @_ZL9hipMallocIiE10hipError_tPPT_m(i32** nonnull %8, i64 %58)
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %63 = call i8* @hipGetErrorString(i32 %59)
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8* %63) #20
  br label %339

65:                                               ; preds = %55
  %66 = load i32, i32* %3, align 4, !tbaa !7
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 2
  %69 = call fastcc i32 @_ZL9hipMallocIfE10hipError_tPPT_m(float** nonnull %6, i64 %68)
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %65
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %73 = call i8* @hipGetErrorString(i32 %69)
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.16, i64 0, i64 0), i8* %73) #20
  br label %339

75:                                               ; preds = %65
  %76 = load i32, i32* %3, align 4, !tbaa !7
  %77 = sext i32 %76 to i64
  %78 = shl nsw i64 %77, 2
  %79 = call fastcc i32 @_ZL9hipMallocIfE10hipError_tPPT_m(float** nonnull %7, i64 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %83 = call i8* @hipGetErrorString(i32 %79)
  %84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i8* %83) #20
  br label %339

85:                                               ; preds = %75
  %86 = call fastcc i32 @_ZL9hipMallocIiE10hipError_tPPT_m(i32** nonnull %9, i64 4)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %90 = call i8* @hipGetErrorString(i32 %86)
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %90) #20
  br label %339

92:                                               ; preds = %85
  %93 = load i32, i32* %3, align 4, !tbaa !7
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 2
  %97 = call fastcc i32 @_ZL9hipMallocIiE10hipError_tPPT_m(i32** nonnull %10, i64 %96)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %92
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %101 = call i8* @hipGetErrorString(i32 %97)
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i8* %101) #20
  br label %339

103:                                              ; preds = %92
  %104 = load i32, i32* %4, align 4, !tbaa !7
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 2
  %107 = call fastcc i32 @_ZL9hipMallocIiE10hipError_tPPT_m(i32** nonnull %11, i64 %106)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %111 = call i8* @hipGetErrorString(i32 %107)
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i64 0, i64 0), i8* %111) #20
  br label %339

113:                                              ; preds = %103
  %114 = load i32, i32* %3, align 4, !tbaa !7
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 2
  %118 = call fastcc i32 @_ZL9hipMallocIiE10hipError_tPPT_m(i32** nonnull %12, i64 %117)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %122 = call i8* @hipGetErrorString(i32 %118)
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8* %122) #20
  br label %339

124:                                              ; preds = %113
  %125 = load i32, i32* %4, align 4, !tbaa !7
  %126 = sext i32 %125 to i64
  %127 = shl nsw i64 %126, 2
  %128 = call fastcc i32 @_ZL9hipMallocIiE10hipError_tPPT_m(i32** nonnull %13, i64 %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %132 = call i8* @hipGetErrorString(i32 %128)
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8* %132) #20
  br label %339

134:                                              ; preds = %124
  call void @m5_work_begin(i64 0, i64 0)
  %135 = bitcast i32** %10 to i8**
  %136 = load i8*, i8** %135, align 8, !tbaa !12
  %137 = bitcast %struct.csr_array_t* %23 to i8**
  %138 = load i8*, i8** %137, align 8, !tbaa !17
  %139 = load i32, i32* %3, align 4, !tbaa !7
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = shl nsw i64 %141, 2
  %143 = call i32 @hipMemcpy(i8* %136, i8* %138, i64 %142, i32 1)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %134
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %147 = load i32, i32* %3, align 4, !tbaa !7
  %148 = call i8* @hipGetErrorString(i32 %143)
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 %147, i8* %148) #20
  br label %339

150:                                              ; preds = %134
  %151 = bitcast i32** %11 to i8**
  %152 = load i8*, i8** %151, align 8, !tbaa !12
  %153 = getelementptr inbounds %struct.csr_array_t, %struct.csr_array_t* %23, i64 0, i32 1
  %154 = bitcast i32** %153 to i8**
  %155 = load i8*, i8** %154, align 8, !tbaa !19
  %156 = load i32, i32* %4, align 4, !tbaa !7
  %157 = sext i32 %156 to i64
  %158 = shl nsw i64 %157, 2
  %159 = call i32 @hipMemcpy(i8* %152, i8* %155, i64 %158, i32 1)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %150
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %163 = load i32, i32* %3, align 4, !tbaa !7
  %164 = call i8* @hipGetErrorString(i32 %159)
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 %163, i8* %164) #20
  br label %339

166:                                              ; preds = %150
  %167 = bitcast i32** %12 to i8**
  %168 = load i8*, i8** %167, align 8, !tbaa !12
  %169 = getelementptr inbounds %struct.csr_array_t, %struct.csr_array_t* %23, i64 0, i32 3
  %170 = bitcast i32** %169 to i8**
  %171 = load i8*, i8** %170, align 8, !tbaa !21
  %172 = load i32, i32* %3, align 4, !tbaa !7
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = shl nsw i64 %174, 2
  %176 = call i32 @hipMemcpy(i8* %168, i8* %171, i64 %175, i32 1)
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %166
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %180 = load i32, i32* %3, align 4, !tbaa !7
  %181 = call i8* @hipGetErrorString(i32 %176)
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.25, i64 0, i64 0), i32 %180, i8* %181) #20
  br label %339

183:                                              ; preds = %166
  %184 = bitcast i32** %13 to i8**
  %185 = load i8*, i8** %184, align 8, !tbaa !12
  %186 = getelementptr inbounds %struct.csr_array_t, %struct.csr_array_t* %23, i64 0, i32 4
  %187 = bitcast i32** %186 to i8**
  %188 = load i8*, i8** %187, align 8, !tbaa !22
  %189 = load i32, i32* %4, align 4, !tbaa !7
  %190 = sext i32 %189 to i64
  %191 = shl nsw i64 %190, 2
  %192 = call i32 @hipMemcpy(i8* %185, i8* %188, i64 %191, i32 1)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %183
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %196 = load i32, i32* %3, align 4, !tbaa !7
  %197 = call i8* @hipGetErrorString(i32 %192)
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 %196, i8* %197) #20
  br label %339

199:                                              ; preds = %183
  %200 = bitcast %struct.dim3* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %200) #19
  call void @_ZN4dim3C2Ejjj(%struct.dim3* nonnull %14, i32 128, i32 1, i32 1)
  %201 = load i32, i32* %3, align 4, !tbaa !7
  %202 = add nsw i32 %201, 127
  %203 = sdiv i32 %202, 128
  %204 = bitcast %struct.dim3* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %204) #19
  call void @_ZN4dim3C2Ejjj(%struct.dim3* nonnull %15, i32 %203, i32 1, i32 1)
  %205 = bitcast %struct.dim3* %15 to i64*
  %206 = load i64, i64* %205, align 8, !tbaa.struct !15
  %207 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %208 = load i32, i32* %207, align 8, !tbaa.struct !15
  %209 = bitcast %struct.dim3* %14 to i64*
  %210 = load i64, i64* %209, align 8, !tbaa.struct !15
  %211 = getelementptr inbounds %struct.dim3, %struct.dim3* %14, i64 0, i32 2
  %212 = load i32, i32* %211, align 8, !tbaa.struct !15
  %213 = call i32 @__hipPushCallConfiguration(i64 %206, i32 %208, i64 %210, i32 %212, i64 0, %struct.ihipStream_t* null)
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %199
  %216 = load float*, float** %5, align 8, !tbaa !12
  %217 = load i32, i32* %3, align 4, !tbaa !7
  call void @_Z23__device_stub__clean_bcPfi(float* %216, i32 %217)
  br label %218

218:                                              ; preds = %215, %199
  %219 = load i32, i32* %3, align 4, !tbaa !7
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = bitcast i32* %16 to i8*
  %223 = bitcast i32** %9 to i8**
  br label %233

224:                                              ; preds = %293, %218
  %225 = call i32 @hipDeviceSynchronize()
  %226 = bitcast float** %5 to i8**
  %227 = load i8*, i8** %226, align 8, !tbaa !12
  %228 = load i32, i32* %3, align 4, !tbaa !7
  %229 = sext i32 %228 to i64
  %230 = shl nsw i64 %229, 2
  %231 = call i32 @hipMemcpy(i8* %27, i8* %227, i64 %230, i32 2)
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %306, label %302

233:                                              ; preds = %221, %293
  %234 = phi i32 [ 0, %221 ], [ %297, %293 ]
  %235 = load i64, i64* %205, align 8, !tbaa.struct !15
  %236 = load i32, i32* %207, align 8, !tbaa.struct !15
  %237 = load i64, i64* %209, align 8, !tbaa.struct !15
  %238 = load i32, i32* %211, align 8, !tbaa.struct !15
  %239 = call i32 @__hipPushCallConfiguration(i64 %235, i32 %236, i64 %237, i32 %238, i64 0, %struct.ihipStream_t* null)
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %233
  %242 = load i32*, i32** %8, align 8, !tbaa !12
  %243 = load float*, float** %6, align 8, !tbaa !12
  %244 = load float*, float** %7, align 8, !tbaa !12
  %245 = load i32, i32* %3, align 4, !tbaa !7
  call void @_Z29__device_stub__clean_1d_arrayiPiPfS0_i(i32 %234, i32* %242, float* %243, float* %244, i32 %245)
  br label %246

246:                                              ; preds = %241, %233
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %222) #19
  store i32 1, i32* %16, align 4, !tbaa !7
  br label %247

247:                                              ; preds = %265, %246
  %248 = phi i32 [ 0, %246 ], [ %268, %265 ]
  store i32 0, i32* %16, align 4, !tbaa !7
  %249 = load i8*, i8** %223, align 8, !tbaa !12
  %250 = call i32 @hipMemcpy(i8* %249, i8* nonnull %222, i64 4, i32 1)
  %251 = load i64, i64* %205, align 8, !tbaa.struct !15
  %252 = load i32, i32* %207, align 8, !tbaa.struct !15
  %253 = load i64, i64* %209, align 8, !tbaa.struct !15
  %254 = load i32, i32* %211, align 8, !tbaa.struct !15
  %255 = call i32 @__hipPushCallConfiguration(i64 %251, i32 %252, i64 %253, i32 %254, i64 0, %struct.ihipStream_t* null)
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %247
  %258 = load i32*, i32** %10, align 8, !tbaa !12
  %259 = load i32*, i32** %11, align 8, !tbaa !12
  %260 = load i32*, i32** %8, align 8, !tbaa !12
  %261 = load float*, float** %7, align 8, !tbaa !12
  %262 = load i32*, i32** %9, align 8, !tbaa !12
  %263 = load i32, i32* %3, align 4, !tbaa !7
  %264 = load i32, i32* %4, align 4, !tbaa !7
  call void @_Z25__device_stub__bfs_kernelPiS_S_PfS_iii(i32* %258, i32* %259, i32* %260, float* %261, i32* %262, i32 %263, i32 %264, i32 %248)
  br label %265

265:                                              ; preds = %257, %247
  %266 = load i8*, i8** %223, align 8, !tbaa !12
  %267 = call i32 @hipMemcpy(i8* nonnull %222, i8* %266, i64 4, i32 2)
  %268 = add nuw nsw i32 %248, 1
  %269 = load i32, i32* %16, align 4, !tbaa !7
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %247, !llvm.loop !24

271:                                              ; preds = %265
  %272 = call i32 @hipDeviceSynchronize()
  br label %273

273:                                              ; preds = %271, %290
  %274 = phi i32 [ %268, %271 ], [ %291, %290 ]
  %275 = load i64, i64* %205, align 8, !tbaa.struct !15
  %276 = load i32, i32* %207, align 8, !tbaa.struct !15
  %277 = load i64, i64* %209, align 8, !tbaa.struct !15
  %278 = load i32, i32* %211, align 8, !tbaa.struct !15
  %279 = call i32 @__hipPushCallConfiguration(i64 %275, i32 %276, i64 %277, i32 %278, i64 0, %struct.ihipStream_t* null)
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %273
  %282 = load i32*, i32** %12, align 8, !tbaa !12
  %283 = load i32*, i32** %13, align 8, !tbaa !12
  %284 = load i32*, i32** %8, align 8, !tbaa !12
  %285 = load float*, float** %7, align 8, !tbaa !12
  %286 = load float*, float** %6, align 8, !tbaa !12
  %287 = load i32, i32* %3, align 4, !tbaa !7
  %288 = load i32, i32* %4, align 4, !tbaa !7
  %289 = load float*, float** %5, align 8, !tbaa !12
  call void @_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_(i32* %282, i32* %283, i32* %284, float* %285, float* %286, i32 %287, i32 %288, i32 %274, i32 %234, float* %289)
  br label %290

290:                                              ; preds = %281, %273
  %291 = add nsw i32 %274, -1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %273, !llvm.loop !25

293:                                              ; preds = %290
  %294 = call i32 @hipDeviceSynchronize()
  %295 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !tbaa !12
  %296 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %295, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.27, i64 0, i64 0), i32 %234)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %222) #19
  %297 = add nuw nsw i32 %234, 1
  %298 = load i32, i32* %3, align 4, !tbaa !7
  %299 = icmp slt i32 %297, %298
  %300 = icmp ult i32 %234, 149
  %301 = and i1 %300, %299
  br i1 %301, label %233, label %224, !llvm.loop !26

302:                                              ; preds = %224
  %303 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %304 = call i8* @hipGetErrorString(i32 %231)
  %305 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %303, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), i8* %304) #20
  br label %337

306:                                              ; preds = %224
  call void @m5_work_end(i64 0, i64 0)
  %307 = load i32, i32* %3, align 4, !tbaa !7
  call void @_Z13print_vectorfPfi(float* %28, i32 %307)
  call void @free(i8* %27) #19
  call void @free(i8* %138) #19
  call void @free(i8* %155) #19
  %308 = getelementptr inbounds %struct.csr_array_t, %struct.csr_array_t* %23, i64 0, i32 2
  %309 = bitcast i32** %308 to i8**
  %310 = load i8*, i8** %309, align 8, !tbaa !20
  call void @free(i8* %310) #19
  call void @free(i8* %171) #19
  call void @free(i8* %188) #19
  %311 = getelementptr inbounds %struct.csr_array_t, %struct.csr_array_t* %23, i64 0, i32 5
  %312 = bitcast i32** %311 to i8**
  %313 = load i8*, i8** %312, align 8, !tbaa !23
  call void @free(i8* %313) #19
  %314 = bitcast %struct.csr_array_t* %23 to i8*
  call void @free(i8* %314) #19
  %315 = load i8*, i8** %226, align 8, !tbaa !12
  %316 = call i32 @hipFree(i8* %315)
  %317 = bitcast i32** %8 to i8**
  %318 = load i8*, i8** %317, align 8, !tbaa !12
  %319 = call i32 @hipFree(i8* %318)
  %320 = bitcast float** %6 to i8**
  %321 = load i8*, i8** %320, align 8, !tbaa !12
  %322 = call i32 @hipFree(i8* %321)
  %323 = bitcast float** %7 to i8**
  %324 = load i8*, i8** %323, align 8, !tbaa !12
  %325 = call i32 @hipFree(i8* %324)
  %326 = bitcast i32** %9 to i8**
  %327 = load i8*, i8** %326, align 8, !tbaa !12
  %328 = call i32 @hipFree(i8* %327)
  %329 = load i8*, i8** %135, align 8, !tbaa !12
  %330 = call i32 @hipFree(i8* %329)
  %331 = load i8*, i8** %151, align 8, !tbaa !12
  %332 = call i32 @hipFree(i8* %331)
  %333 = load i8*, i8** %167, align 8, !tbaa !12
  %334 = call i32 @hipFree(i8* %333)
  %335 = load i8*, i8** %184, align 8, !tbaa !12
  %336 = call i32 @hipFree(i8* %335)
  br label %337

337:                                              ; preds = %306, %302
  %338 = phi i32 [ -1, %302 ], [ 0, %306 ]
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %204) #19
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %200) #19
  br label %339

339:                                              ; preds = %337, %194, %178, %161, %145, %130, %120, %109, %99, %88, %81, %71, %61, %51
  %340 = phi i32 [ -1, %51 ], [ -1, %61 ], [ -1, %71 ], [ -1, %81 ], [ -1, %88 ], [ -1, %99 ], [ -1, %109 ], [ -1, %120 ], [ -1, %130 ], [ -1, %145 ], [ -1, %161 ], [ -1, %178 ], [ -1, %194 ], [ %338, %337 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %44) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #19
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #19
  ret i32 %340
}

; Function Attrs: inlinehint norecurse uwtable
define internal fastcc i32 @_ZL9hipMallocIfE10hipError_tPPT_m(float** %0, i64 %1) unnamed_addr #9 {
  %3 = bitcast float** %0 to i8**
  %4 = call i32 @hipMalloc(i8** %3, i64 %1)
  ret i32 %4
}

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #10

; Function Attrs: inlinehint norecurse uwtable
define internal fastcc i32 @_ZL9hipMallocIiE10hipError_tPPT_m(i32** %0, i64 %1) unnamed_addr #9 {
  %3 = bitcast i32** %0 to i8**
  %4 = call i32 @hipMalloc(i8** %3, i64 %1)
  ret i32 %4
}

declare dso_local void @m5_work_begin(i64, i64) local_unnamed_addr #10

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN4dim3C2Ejjj(%struct.dim3* %0, i32 %1, i32 %2, i32 %3) unnamed_addr #11 comdat align 2 {
  %5 = getelementptr inbounds %struct.dim3, %struct.dim3* %0, i64 0, i32 0
  store i32 %1, i32* %5, align 4, !tbaa !27
  %6 = getelementptr inbounds %struct.dim3, %struct.dim3* %0, i64 0, i32 1
  store i32 %2, i32* %6, align 4, !tbaa !29
  %7 = getelementptr inbounds %struct.dim3, %struct.dim3* %0, i64 0, i32 2
  store i32 %3, i32* %7, align 4, !tbaa !30
  ret void
}

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #10

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #10

declare dso_local void @m5_work_end(i64, i64) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z13print_vectorfPfi(float* nocapture readonly %0, i32 %1) local_unnamed_addr #12 {
  %3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0))
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str.39, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = zext i32 %1 to i64
  br label %13

11:                                               ; preds = %13, %7
  %12 = call i32 @fclose(%struct._IO_FILE* %3)
  ret void

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %19, %13 ]
  %15 = getelementptr inbounds float, float* %0, i64 %14
  %16 = load float, float* %15, align 4, !tbaa !31
  %17 = fpext float %16 to double
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0), double %17)
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %11, label %13, !llvm.loop !33
}

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z12print_vectorPii(i32* nocapture readonly %0, i32 %1) local_unnamed_addr #12 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %8

6:                                                ; preds = %8, %2
  %7 = call i32 @putchar(i32 10)
  ret void

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %10, %8 ]
  %10 = add nuw nsw i64 %9, 1
  %11 = getelementptr inbounds i32, i32* %0, i64 %9
  %12 = load i32, i32* %11, align 4, !tbaa !7
  %13 = trunc i64 %10 to i32
  %14 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i32 %13, i32 %12)
  %15 = icmp eq i64 %10, %5
  br i1 %15, label %6, label %8, !llvm.loop !34
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %2) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = alloca %"class.std::_Temporary_buffer", align 8
  %5 = bitcast %"class.std::_Temporary_buffer"* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #19
  %6 = call i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1)
  call void @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l(%"class.std::_Temporary_buffer"* nonnull %4, %struct.cooedgetuple* %0, i64 %6)
  %7 = call %struct.cooedgetuple* @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv(%"class.std::_Temporary_buffer"* nonnull %4)
  %8 = icmp eq %struct.cooedgetuple* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  invoke void @_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %2)
          to label %15 unwind label %10

10:                                               ; preds = %12, %9
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev(%"class.std::_Temporary_buffer"* nonnull %4) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #19
  resume { i8*, i32 } %11

12:                                               ; preds = %3
  %13 = call %struct.cooedgetuple* @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv(%"class.std::_Temporary_buffer"* nonnull %4)
  %14 = call i64 @_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv(%"class.std::_Temporary_buffer"* nonnull %4)
  invoke void @_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %13, i64 %14, i1 (i64, i32, i64, i32)* %2)
          to label %15 unwind label %10

15:                                               ; preds = %12, %9
  call void @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev(%"class.std::_Temporary_buffer"* nonnull %4) #19
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #19
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_(i1 (i64, i32, i64, i32)* %0) local_unnamed_addr #6 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %3 = alloca i1 (i64, i32, i64, i32)*, align 8
  store i1 (i64, i32, i64, i32)* %0, i1 (i64, i32, i64, i32)** %3, align 8, !tbaa !12
  %4 = call nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** nonnull align 8 dereferenceable(8) %3) #19
  %5 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %4, align 8, !tbaa !12
  call void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull %2, i1 (i64, i32, i64, i32)* %5)
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %2, i64 0, i32 0
  %7 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %6, align 8
  ret i1 (i64, i32, i64, i32)* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1) local_unnamed_addr #6 comdat {
  %3 = alloca %struct.cooedgetuple*, align 8
  store %struct.cooedgetuple* %0, %struct.cooedgetuple** %3, align 8, !tbaa !12
  call void @_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %3)
  %4 = call i64 @_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1)
  ret i64 %4
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l(%"class.std::_Temporary_buffer"* %0, %struct.cooedgetuple* %1, i64 %2) unnamed_addr #3 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", %"class.std::_Temporary_buffer"* %0, i64 0, i32 0
  store i64 %2, i64* %4, align 8, !tbaa !35
  %5 = getelementptr inbounds %"class.std::_Temporary_buffer", %"class.std::_Temporary_buffer"* %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.std::_Temporary_buffer", %"class.std::_Temporary_buffer"* %0, i64 0, i32 2
  %7 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = call { %struct.cooedgetuple*, i64 } @_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl(i64 %2) #19
  %9 = extractvalue { %struct.cooedgetuple*, i64 } %8, 0
  %10 = extractvalue { %struct.cooedgetuple*, i64 } %8, 1
  store %struct.cooedgetuple* %9, %struct.cooedgetuple** %6, align 8, !tbaa !38
  store i64 %10, i64* %5, align 8, !tbaa !39
  %11 = icmp eq %struct.cooedgetuple* %9, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %9, i64 %10
  invoke void @_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_(%struct.cooedgetuple* nonnull %9, %struct.cooedgetuple* nonnull %13, %struct.cooedgetuple* %1)
          to label %20 unwind label %14

14:                                               ; preds = %12
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = call i8* @__cxa_begin_catch(i8* %16) #19
  %18 = load %struct.cooedgetuple*, %struct.cooedgetuple** %6, align 8, !tbaa !38
  call void @_ZSt23return_temporary_bufferI12cooedgetupleEvPT_(%struct.cooedgetuple* %18)
  %19 = bitcast i64* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #22
          to label %27 unwind label %21

20:                                               ; preds = %12, %3
  ret void

21:                                               ; preds = %14
  %22 = landingpad { i8*, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %23 unwind label %24

23:                                               ; preds = %21
  resume { i8*, i32 } %22

24:                                               ; preds = %21
  %25 = landingpad { i8*, i32 }
          catch i8* null
  %26 = extractvalue { i8*, i32 } %25, 0
  call void @__clang_call_terminate(i8* %26) #21
  unreachable

27:                                               ; preds = %14
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv(%"class.std::_Temporary_buffer"* %0) local_unnamed_addr #11 comdat align 2 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", %"class.std::_Temporary_buffer"* %0, i64 0, i32 2
  %3 = load %struct.cooedgetuple*, %struct.cooedgetuple** %2, align 8, !tbaa !38
  ret %struct.cooedgetuple* %3
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %2) local_unnamed_addr #3 comdat {
  %4 = ptrtoint %struct.cooedgetuple* %1 to i64
  %5 = ptrtoint %struct.cooedgetuple* %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 180
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  call void @_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %2)
  br label %15

9:                                                ; preds = %3
  %10 = sdiv i64 %6, 24
  %11 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 %10
  call void @_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %11, i1 (i64, i32, i64, i32)* %2)
  call void @_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %11, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %2)
  %12 = ptrtoint %struct.cooedgetuple* %11 to i64
  %13 = sub i64 %4, %12
  %14 = sdiv exact i64 %13, 12
  call void @_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %11, %struct.cooedgetuple* %1, i64 %10, i64 %14, i1 (i64, i32, i64, i32)* %2)
  br label %15

15:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i64 %3, i1 (i64, i32, i64, i32)* %4) local_unnamed_addr #3 comdat {
  %6 = ptrtoint %struct.cooedgetuple* %1 to i64
  %7 = ptrtoint %struct.cooedgetuple* %0 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 12
  %10 = add nsw i64 %9, 1
  %11 = sdiv i64 %10, 2
  %12 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 %11
  %13 = icmp sgt i64 %11, %3
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  call void @_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %12, %struct.cooedgetuple* %2, i64 %3, i1 (i64, i32, i64, i32)* %4)
  call void @_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_(%struct.cooedgetuple* %12, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i64 %3, i1 (i64, i32, i64, i32)* %4)
  br label %16

15:                                               ; preds = %5
  call void @_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %12, %struct.cooedgetuple* %2, i1 (i64, i32, i64, i32)* %4)
  call void @_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.cooedgetuple* %12, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i1 (i64, i32, i64, i32)* %4)
  br label %16

16:                                               ; preds = %15, %14
  %17 = ptrtoint %struct.cooedgetuple* %12 to i64
  %18 = sub i64 %6, %17
  %19 = sdiv exact i64 %18, 12
  %20 = ptrtoint i1 (i64, i32, i64, i32)* %4 to i64
  call void @_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %12, %struct.cooedgetuple* %1, i64 %11, i64 %19, %struct.cooedgetuple* %2, i64 %3, i64 %20)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv(%"class.std::_Temporary_buffer"* %0) local_unnamed_addr #11 comdat align 2 {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", %"class.std::_Temporary_buffer"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !39
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev(%"class.std::_Temporary_buffer"* %0) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = getelementptr inbounds %"class.std::_Temporary_buffer", %"class.std::_Temporary_buffer"* %0, i64 0, i32 2
  %3 = load %struct.cooedgetuple*, %struct.cooedgetuple** %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.std::_Temporary_buffer", %"class.std::_Temporary_buffer"* %0, i64 0, i32 1
  %5 = load i64, i64* %4, align 8, !tbaa !39
  %6 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %3, i64 %5
  invoke void @_ZSt8_DestroyIP12cooedgetupleEvT_S2_(%struct.cooedgetuple* %3, %struct.cooedgetuple* %6)
          to label %7 unwind label %9

7:                                                ; preds = %1
  %8 = load %struct.cooedgetuple*, %struct.cooedgetuple** %2, align 8, !tbaa !38
  call void @_ZSt23return_temporary_bufferI12cooedgetupleEvPT_(%struct.cooedgetuple* %8)
  ret void

9:                                                ; preds = %1
  %10 = landingpad { i8*, i32 }
          catch i8* null
  %11 = extractvalue { i8*, i32 } %10, 0
  call void @__clang_call_terminate(i8* %11) #21
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i64 @_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1) local_unnamed_addr #13 comdat {
  %3 = ptrtoint %struct.cooedgetuple* %1 to i64
  %4 = ptrtoint %struct.cooedgetuple* %0 to i64
  %5 = sub i64 %3, %4
  %6 = sdiv exact i64 %5, 12
  ret i64 %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #13 comdat {
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local { %struct.cooedgetuple*, i64 } @_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl(i64 %0) local_unnamed_addr #11 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %2 = alloca %"struct.std::pair", align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.cooedgetuple*, align 8
  %5 = alloca %struct.cooedgetuple*, align 8
  %6 = alloca i32, align 4
  %7 = icmp slt i64 %0, 768614336404564650
  %8 = select i1 %7, i64 %0, i64 768614336404564650
  store i64 %8, i64* %3, align 8, !tbaa !40
  %9 = bitcast %struct.cooedgetuple** %4 to i8*
  %10 = bitcast %struct.cooedgetuple** %4 to i8**
  br label %11

11:                                               ; preds = %22, %1
  %12 = load i64, i64* %3, align 8, !tbaa !40
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #19
  %15 = mul i64 %12, 12
  %16 = call noalias i8* @_ZnwmRKSt9nothrow_t(i64 %15, %"struct.std::nothrow_t"* nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #23
  store i8* %16, i8** %10, align 8, !tbaa !12
  %17 = icmp eq i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  call void @_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_(%"struct.std::pair"* nonnull %2, %struct.cooedgetuple** nonnull align 8 dereferenceable(8) %4, i64* nonnull align 8 dereferenceable(8) %3)
  br label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %3, align 8, !tbaa !40
  %21 = sdiv i64 %20, 2
  store i64 %21, i64* %3, align 8, !tbaa !40
  br label %22

22:                                               ; preds = %19, %18
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #19
  br i1 %17, label %11, label %26, !llvm.loop !41

23:                                               ; preds = %11
  %24 = bitcast %struct.cooedgetuple** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #19
  store %struct.cooedgetuple* null, %struct.cooedgetuple** %5, align 8, !tbaa !12
  %25 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #19
  store i32 0, i32* %6, align 4, !tbaa !7
  call void @_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_(%"struct.std::pair"* nonnull %2, %struct.cooedgetuple** nonnull align 8 dereferenceable(8) %5, i32* nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #19
  br label %26

26:                                               ; preds = %22, %23
  %27 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %2, i64 0, i32 0
  %28 = load %struct.cooedgetuple*, %struct.cooedgetuple** %27, align 8
  %29 = insertvalue { %struct.cooedgetuple*, i64 } undef, %struct.cooedgetuple* %28, 0
  %30 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %2, i64 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = insertvalue { %struct.cooedgetuple*, i64 } %29, i64 %31, 1
  ret { %struct.cooedgetuple*, i64 } %32
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  call void @_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2)
  ret void
}

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt23return_temporary_bufferI12cooedgetupleEvPT_(%struct.cooedgetuple* %0) local_unnamed_addr #13 comdat {
  %2 = bitcast %struct.cooedgetuple* %0 to i8*
  call void @_ZdlPv(i8* %2) #19
  ret void
}

declare dso_local void @__cxa_rethrow() local_unnamed_addr

declare dso_local void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #14 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #19
  call void @_ZSt9terminatev() #21
  unreachable
}

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nofree nounwind allocsize(0)
declare dso_local noalias i8* @_ZnwmRKSt9nothrow_t(i64, %"struct.std::nothrow_t"* nonnull align 1 dereferenceable(1)) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_(%"struct.std::pair"* %0, %struct.cooedgetuple** nonnull align 8 dereferenceable(8) %1, i64* nonnull align 8 dereferenceable(8) %2) unnamed_addr #11 comdat align 2 {
  %4 = call nonnull align 8 dereferenceable(8) %struct.cooedgetuple** @_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %1) #19
  %5 = bitcast %struct.cooedgetuple** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !12
  %7 = bitcast %"struct.std::pair"* %0 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i64 0, i32 1
  %9 = call nonnull align 8 dereferenceable(8) i64* @_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE(i64* nonnull align 8 dereferenceable(8) %2) #19
  %10 = load i64, i64* %9, align 8, !tbaa !40
  store i64 %10, i64* %8, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_(%"struct.std::pair"* %0, %struct.cooedgetuple** nonnull align 8 dereferenceable(8) %1, i32* nonnull align 4 dereferenceable(4) %2) unnamed_addr #11 comdat align 2 {
  %4 = call nonnull align 8 dereferenceable(8) %struct.cooedgetuple** @_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %1) #19
  %5 = bitcast %struct.cooedgetuple** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !12
  %7 = bitcast %"struct.std::pair"* %0 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !42
  %8 = getelementptr inbounds %"struct.std::pair", %"struct.std::pair"* %0, i64 0, i32 1
  %9 = call nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %2) #19
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %8, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct.cooedgetuple** @_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
  ret %struct.cooedgetuple** %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE(i64* nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
  ret i64* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %struct.cooedgetuple** @_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
  ret %struct.cooedgetuple** %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE(i32* nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #11 comdat {
  ret i32* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #11 comdat align 2 {
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #16

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %2) local_unnamed_addr #3 comdat {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %5 = alloca %struct.cooedgetuple, align 4
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %4, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %2, i1 (i64, i32, i64, i32)** %6, align 8
  %7 = icmp eq %struct.cooedgetuple* %0, %1
  br i1 %7, label %31, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 1
  %10 = icmp eq %struct.cooedgetuple* %9, %1
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = bitcast %struct.cooedgetuple* %5 to i8*
  %13 = bitcast %struct.cooedgetuple* %0 to i8*
  br label %14

14:                                               ; preds = %11, %28
  %15 = phi %struct.cooedgetuple* [ %9, %11 ], [ %29, %28 ]
  %16 = phi %struct.cooedgetuple* [ %0, %11 ], [ %15, %28 ]
  %17 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull %4, %struct.cooedgetuple* nonnull %15, %struct.cooedgetuple* %0)
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %12) #19
  %19 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %15) #19
  %20 = bitcast %struct.cooedgetuple* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %12, i8* nonnull align 4 dereferenceable(12) %20, i64 12, i1 false), !tbaa.struct !15
  %21 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %16, i64 2
  %22 = call %struct.cooedgetuple* @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* nonnull %15, %struct.cooedgetuple* nonnull %21)
  %23 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %5) #19
  %24 = bitcast %struct.cooedgetuple* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %13, i8* nonnull align 4 dereferenceable(12) %24, i64 12, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %12) #19
  br label %28

25:                                               ; preds = %14
  %26 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %6, align 8, !tbaa.struct !45
  %27 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %26)
  call void @_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.cooedgetuple* nonnull %15, i1 (i64, i32, i64, i32)* %27)
  br label %28

28:                                               ; preds = %18, %25
  %29 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %15, i64 1
  %30 = icmp eq %struct.cooedgetuple* %29, %1
  br i1 %30, label %31, label %14, !llvm.loop !46

31:                                               ; preds = %28, %8, %3
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i64 %3, i64 %4, i1 (i64, i32, i64, i32)* %5) local_unnamed_addr #3 comdat {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = alloca %struct.cooedgetuple*, align 8
  %9 = alloca %struct.cooedgetuple*, align 8
  %10 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %5, i1 (i64, i32, i64, i32)** %10, align 8
  %11 = icmp eq i64 %3, 0
  %12 = icmp eq i64 %4, 0
  %13 = or i1 %11, %12
  br i1 %13, label %50, label %14

14:                                               ; preds = %6
  %15 = add nsw i64 %4, %3
  %16 = icmp eq i64 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull %7, %struct.cooedgetuple* %1, %struct.cooedgetuple* %0)
  br i1 %18, label %19, label %50

19:                                               ; preds = %17
  call void @_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1)
  br label %50

20:                                               ; preds = %14
  %21 = bitcast %struct.cooedgetuple** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #19
  store %struct.cooedgetuple* %0, %struct.cooedgetuple** %8, align 8, !tbaa !12
  %22 = bitcast %struct.cooedgetuple** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #19
  store %struct.cooedgetuple* %1, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %23 = icmp sgt i64 %3, %4
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = sdiv i64 %3, 2
  call void @_ZSt7advanceIP12cooedgetuplelEvRT_T0_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %8, i64 %25)
  %26 = load %struct.cooedgetuple*, %struct.cooedgetuple** %8, align 8, !tbaa !12
  %27 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %10, align 8, !tbaa.struct !45
  %28 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %27)
  %29 = call %struct.cooedgetuple* @_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_(%struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %26, i1 (i64, i32, i64, i32)* %28)
  store %struct.cooedgetuple* %29, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %30 = call i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %1, %struct.cooedgetuple* %29)
  br label %38

31:                                               ; preds = %20
  %32 = sdiv i64 %4, 2
  call void @_ZSt7advanceIP12cooedgetuplelEvRT_T0_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %9, i64 %32)
  %33 = load %struct.cooedgetuple*, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %34 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %10, align 8, !tbaa.struct !45
  %35 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %34)
  %36 = call %struct.cooedgetuple* @_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %33, i1 (i64, i32, i64, i32)* %35)
  store %struct.cooedgetuple* %36, %struct.cooedgetuple** %8, align 8, !tbaa !12
  %37 = call i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = phi i64 [ %30, %24 ], [ %32, %31 ]
  %40 = phi i64 [ %25, %24 ], [ %37, %31 ]
  %41 = load %struct.cooedgetuple*, %struct.cooedgetuple** %8, align 8, !tbaa !12
  %42 = load %struct.cooedgetuple*, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %43 = call %struct.cooedgetuple* @_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_(%struct.cooedgetuple* %41, %struct.cooedgetuple* %1, %struct.cooedgetuple* %42)
  %44 = load %struct.cooedgetuple*, %struct.cooedgetuple** %8, align 8, !tbaa !12
  %45 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %10, align 8, !tbaa.struct !45
  call void @_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %44, %struct.cooedgetuple* %43, i64 %40, i64 %39, i1 (i64, i32, i64, i32)* %45)
  %46 = load %struct.cooedgetuple*, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %47 = sub nsw i64 %3, %40
  %48 = sub nsw i64 %4, %39
  %49 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %10, align 8, !tbaa.struct !45
  call void @_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_(%struct.cooedgetuple* %43, %struct.cooedgetuple* %46, %struct.cooedgetuple* %2, i64 %47, i64 %48, i1 (i64, i32, i64, i32)* %49)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #19
  br label %50

50:                                               ; preds = %17, %19, %6, %38
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #3 comdat align 2 {
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i64 0, i32 0
  %5 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %4, align 8, !tbaa !47
  %6 = bitcast %struct.cooedgetuple* %1 to i64*
  %7 = load i64, i64* %6, align 4, !tbaa.struct !15
  %8 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa.struct !15
  %10 = bitcast %struct.cooedgetuple* %2 to i64*
  %11 = load i64, i64* %10, align 4, !tbaa.struct !15
  %12 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa.struct !15
  %14 = call zeroext i1 %5(i64 %7, i32 %9, i64 %11, i32 %13)
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %0) local_unnamed_addr #11 comdat {
  ret %struct.cooedgetuple* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  %4 = call %struct.cooedgetuple* @_ZSt12__miter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %0)
  %5 = call %struct.cooedgetuple* @_ZSt12__miter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %1)
  %6 = call %struct.cooedgetuple* @_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %4, %struct.cooedgetuple* %5, %struct.cooedgetuple* %2)
  ret %struct.cooedgetuple* %6
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_(%struct.cooedgetuple* %0, i1 (i64, i32, i64, i32)* %1) local_unnamed_addr #3 comdat {
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %4 = alloca %struct.cooedgetuple, align 4
  %5 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %3, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %1, i1 (i64, i32, i64, i32)** %5, align 8
  %6 = bitcast %struct.cooedgetuple* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %6) #19
  %7 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %0) #19
  %8 = bitcast %struct.cooedgetuple* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %6, i8* nonnull align 4 dereferenceable(12) %8, i64 12, i1 false), !tbaa.struct !15
  %9 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 -1
  %10 = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* nonnull %3, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %4, %struct.cooedgetuple* nonnull %9)
  br i1 %10, label %11, label %19

11:                                               ; preds = %2, %11
  %12 = phi %struct.cooedgetuple* [ %17, %11 ], [ %9, %2 ]
  %13 = phi %struct.cooedgetuple* [ %12, %11 ], [ %0, %2 ]
  %14 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %12) #19
  %15 = bitcast %struct.cooedgetuple* %13 to i8*
  %16 = bitcast %struct.cooedgetuple* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %15, i8* nonnull align 4 dereferenceable(12) %16, i64 12, i1 false), !tbaa.struct !15
  %17 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %12, i64 -1
  %18 = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* nonnull %3, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %4, %struct.cooedgetuple* nonnull %17)
  br i1 %18, label %11, label %19, !llvm.loop !49

19:                                               ; preds = %11, %2
  %20 = phi %struct.cooedgetuple* [ %0, %2 ], [ %12, %11 ]
  %21 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %4) #19
  %22 = bitcast %struct.cooedgetuple* %20 to i8*
  %23 = bitcast %struct.cooedgetuple* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %22, i8* nonnull align 4 dereferenceable(12) %23, i64 12, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %6) #19
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %0) local_unnamed_addr #6 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %0, i1 (i64, i32, i64, i32)** %4, align 8
  %5 = call nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull align 8 dereferenceable(8) %3) #19
  call void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* nonnull %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull align 8 dereferenceable(8) %5)
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %2, i64 0, i32 0
  %7 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %6, align 8
  ret i1 (i64, i32, i64, i32)* %7
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  %4 = alloca %struct.cooedgetuple*, align 8
  store %struct.cooedgetuple* %2, %struct.cooedgetuple** %4, align 8, !tbaa !12
  %5 = call %struct.cooedgetuple* @_ZSt12__niter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %0) #19
  %6 = call %struct.cooedgetuple* @_ZSt12__niter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %1) #19
  %7 = load %struct.cooedgetuple*, %struct.cooedgetuple** %4, align 8, !tbaa !12
  %8 = call %struct.cooedgetuple* @_ZSt12__niter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %7) #19
  %9 = call %struct.cooedgetuple* @_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %5, %struct.cooedgetuple* %6, %struct.cooedgetuple* %8)
  %10 = call %struct.cooedgetuple* @_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %4, %struct.cooedgetuple* %9)
  ret %struct.cooedgetuple* %10
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt12__miter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %0) local_unnamed_addr #13 comdat {
  ret %struct.cooedgetuple* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0, %struct.cooedgetuple* %1) local_unnamed_addr #13 comdat {
  ret %struct.cooedgetuple* %1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  %4 = call %struct.cooedgetuple* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2)
  ret %struct.cooedgetuple* %4
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt12__niter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %0) local_unnamed_addr #13 comdat {
  ret %struct.cooedgetuple* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #11 comdat align 2 {
  %4 = ptrtoint %struct.cooedgetuple* %1 to i64
  %5 = ptrtoint %struct.cooedgetuple* %0 to i64
  %6 = sub i64 %4, %5
  %7 = sdiv exact i64 %6, 12
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = sub nsw i64 0, %7
  %11 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 %10
  %12 = bitcast %struct.cooedgetuple* %11 to i8*
  %13 = bitcast %struct.cooedgetuple* %0 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 %6, i1 false)
  br label %14

14:                                               ; preds = %9, %3
  %15 = sub nsw i64 0, %7
  %16 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 %15
  ret %struct.cooedgetuple* %16
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #1

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %1, %struct.cooedgetuple* %2) local_unnamed_addr #3 comdat align 2 {
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, i64 0, i32 0
  %5 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %4, align 8, !tbaa !50
  %6 = bitcast %struct.cooedgetuple* %1 to i64*
  %7 = load i64, i64* %6, align 4, !tbaa.struct !15
  %8 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa.struct !15
  %10 = bitcast %struct.cooedgetuple* %2 to i64*
  %11 = load i64, i64* %10, align 4, !tbaa.struct !15
  %12 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa.struct !15
  %14 = call zeroext i1 %5(i64 %7, i32 %9, i64 %11, i32 %13)
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
  ret %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 {
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, i64 0, i32 0
  %4 = call nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** nonnull align 8 dereferenceable(8) %3) #19
  %5 = bitcast i1 (i64, i32, i64, i32)** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !12
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
  ret i1 (i64, i32, i64, i32)** %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1) local_unnamed_addr #13 comdat {
  call void @_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %0, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %1) #19
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt7advanceIP12cooedgetuplelEvRT_T0_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #6 comdat {
  call void @_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0)
  call void @_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0, i64 %1)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %2, i1 (i64, i32, i64, i32)* %3) local_unnamed_addr #3 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %6 = alloca %struct.cooedgetuple*, align 8
  %7 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %5, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %3, i1 (i64, i32, i64, i32)** %7, align 8
  %8 = call i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = bitcast %struct.cooedgetuple** %6 to i8*
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi %struct.cooedgetuple* [ %0, %10 ], [ %23, %12 ]
  %14 = phi i64 [ %8, %10 ], [ %22, %12 ]
  %15 = ashr i64 %14, 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #19
  store %struct.cooedgetuple* %13, %struct.cooedgetuple** %6, align 8, !tbaa !12
  call void @_ZSt7advanceIP12cooedgetuplelEvRT_T0_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %6, i64 %15)
  %16 = load %struct.cooedgetuple*, %struct.cooedgetuple** %6, align 8, !tbaa !12
  %17 = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* nonnull %5, %struct.cooedgetuple* %16, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %2)
  %18 = load %struct.cooedgetuple*, %struct.cooedgetuple** %6, align 8
  %19 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %18, i64 1
  %20 = xor i64 %15, -1
  %21 = add i64 %14, %20
  %22 = select i1 %17, i64 %21, i64 %15
  %23 = select i1 %17, %struct.cooedgetuple* %19, %struct.cooedgetuple* %13
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #19
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %12, label %25, !llvm.loop !52

25:                                               ; preds = %12, %4
  %26 = phi %struct.cooedgetuple* [ %0, %4 ], [ %23, %12 ]
  ret %struct.cooedgetuple* %26
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %0) local_unnamed_addr #6 comdat {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_val", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %3, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %0, i1 (i64, i32, i64, i32)** %4, align 8
  %5 = call nonnull align 8 dereferenceable(8) %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull align 8 dereferenceable(8) %3) #19
  call void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* nonnull %2, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull align 8 dereferenceable(8) %5)
  %6 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %2, i64 0, i32 0
  %7 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %6, align 8
  ret i1 (i64, i32, i64, i32)* %7
}

; Function Attrs: uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %2, i1 (i64, i32, i64, i32)* %3) local_unnamed_addr #3 comdat {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Val_comp_iter", align 8
  %6 = alloca %struct.cooedgetuple*, align 8
  %7 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %5, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %3, i1 (i64, i32, i64, i32)** %7, align 8
  %8 = call i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1)
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %4
  %11 = bitcast %struct.cooedgetuple** %6 to i8*
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi %struct.cooedgetuple* [ %0, %10 ], [ %23, %12 ]
  %14 = phi i64 [ %8, %10 ], [ %22, %12 ]
  %15 = ashr i64 %14, 1
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #19
  store %struct.cooedgetuple* %13, %struct.cooedgetuple** %6, align 8, !tbaa !12
  call void @_ZSt7advanceIP12cooedgetuplelEvRT_T0_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %6, i64 %15)
  %16 = load %struct.cooedgetuple*, %struct.cooedgetuple** %6, align 8, !tbaa !12
  %17 = call zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* nonnull %5, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %2, %struct.cooedgetuple* %16)
  %18 = load %struct.cooedgetuple*, %struct.cooedgetuple** %6, align 8
  %19 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %18, i64 1
  %20 = xor i64 %15, -1
  %21 = add i64 %14, %20
  %22 = select i1 %17, i64 %15, i64 %21
  %23 = select i1 %17, %struct.cooedgetuple* %13, %struct.cooedgetuple* %19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #19
  %24 = icmp sgt i64 %22, 0
  br i1 %24, label %12, label %25, !llvm.loop !53

25:                                               ; preds = %12, %4
  %26 = phi %struct.cooedgetuple* [ %0, %4 ], [ %23, %12 ]
  ret %struct.cooedgetuple* %26
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  %4 = alloca %struct.cooedgetuple*, align 8
  store %struct.cooedgetuple* %0, %struct.cooedgetuple** %4, align 8, !tbaa !12
  call void @_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %4)
  %5 = call %struct.cooedgetuple* @_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2)
  ret %struct.cooedgetuple* %5
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %0, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #13 comdat {
  %3 = alloca %struct.cooedgetuple, align 4
  %4 = bitcast %struct.cooedgetuple* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #19
  %5 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %0) #19
  %6 = bitcast %struct.cooedgetuple* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %4, i8* nonnull align 4 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !15
  %7 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %1) #19
  %8 = bitcast %struct.cooedgetuple* %0 to i8*
  %9 = bitcast %struct.cooedgetuple* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %8, i8* nonnull align 4 dereferenceable(12) %9, i64 12, i1 false), !tbaa.struct !15
  %10 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %3) #19
  %11 = bitcast %struct.cooedgetuple* %1 to i8*
  %12 = bitcast %struct.cooedgetuple* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %11, i8* nonnull align 4 dereferenceable(12) %12, i64 12, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #19
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %0, i64 %1) local_unnamed_addr #13 comdat {
  %3 = load %struct.cooedgetuple*, %struct.cooedgetuple** %0, align 8, !tbaa !12
  %4 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %3, i64 %1
  store %struct.cooedgetuple* %4, %struct.cooedgetuple** %0, align 8, !tbaa !12
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %2) local_unnamed_addr #3 comdat align 2 {
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_val", %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, i64 0, i32 0
  %5 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %4, align 8, !tbaa !54
  %6 = bitcast %struct.cooedgetuple* %1 to i64*
  %7 = load i64, i64* %6, align 4, !tbaa.struct !15
  %8 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa.struct !15
  %10 = bitcast %struct.cooedgetuple* %2 to i64*
  %11 = load i64, i64* %10, align 4, !tbaa.struct !15
  %12 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa.struct !15
  %14 = call zeroext i1 %5(i64 %7, i32 %9, i64 %11, i32 %13)
  ret i1 %14
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE(%"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0, %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull align 8 dereferenceable(8) %1) unnamed_addr #11 comdat align 2 {
  %3 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %1, i64 0, i32 0
  %4 = call nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** nonnull align 8 dereferenceable(8) %3) #19
  %5 = bitcast i1 (i64, i32, i64, i32)** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !12
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_val"* %0 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !54
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_(%"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %1, %struct.cooedgetuple* %2) local_unnamed_addr #3 comdat align 2 {
  %4 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Val_comp_iter", %"struct.__gnu_cxx::__ops::_Val_comp_iter"* %0, i64 0, i32 0
  %5 = load i1 (i64, i32, i64, i32)*, i1 (i64, i32, i64, i32)** %4, align 8, !tbaa !50
  %6 = bitcast %struct.cooedgetuple* %1 to i64*
  %7 = load i64, i64* %6, align 4, !tbaa.struct !15
  %8 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %1, i64 0, i32 2
  %9 = load i32, i32* %8, align 4, !tbaa.struct !15
  %10 = bitcast %struct.cooedgetuple* %2 to i64*
  %11 = load i64, i64* %10, align 4, !tbaa.struct !15
  %12 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 0, i32 2
  %13 = load i32, i32* %12, align 4, !tbaa.struct !15
  %14 = call zeroext i1 %5(i64 %7, i32 %9, i64 %11, i32 %13)
  ret i1 %14
}

; Function Attrs: uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #3 comdat {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cooedgetuple, align 4
  %7 = alloca %struct.cooedgetuple, align 4
  %8 = icmp eq %struct.cooedgetuple* %0, %1
  br i1 %8, label %128, label %9

9:                                                ; preds = %3
  %10 = icmp eq %struct.cooedgetuple* %2, %1
  br i1 %10, label %128, label %11

11:                                               ; preds = %9
  %12 = bitcast i64* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #19
  %13 = ptrtoint %struct.cooedgetuple* %2 to i64
  %14 = ptrtoint %struct.cooedgetuple* %0 to i64
  %15 = sub i64 %13, %14
  %16 = sdiv exact i64 %15, 12
  store i64 %16, i64* %4, align 8, !tbaa !40
  %17 = bitcast i64* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #19
  %18 = ptrtoint %struct.cooedgetuple* %1 to i64
  %19 = sub i64 %18, %14
  %20 = sdiv exact i64 %19, 12
  store i64 %20, i64* %5, align 8, !tbaa !40
  %21 = sub nsw i64 %16, %20
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call %struct.cooedgetuple* @_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %1)
  br label %126

25:                                               ; preds = %11
  %26 = sub i64 %13, %18
  %27 = sdiv exact i64 %26, 12
  %28 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %0, i64 %27
  br label %29

29:                                               ; preds = %123, %25
  %30 = phi %struct.cooedgetuple* [ %0, %25 ], [ %124, %123 ]
  %31 = phi %struct.cooedgetuple* [ undef, %25 ], [ %125, %123 ]
  %32 = load i64, i64* %5, align 8, !tbaa !40
  %33 = load i64, i64* %4, align 8, !tbaa !40
  %34 = sub nsw i64 %33, %32
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %29
  %37 = icmp eq i64 %32, 1
  br i1 %37, label %38, label %52

38:                                               ; preds = %36
  %39 = bitcast %struct.cooedgetuple* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %39) #19
  %40 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %30) #19
  %41 = bitcast %struct.cooedgetuple* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %39, i8* nonnull align 4 dereferenceable(12) %41, i64 12, i1 false), !tbaa.struct !15
  %42 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %30, i64 1
  %43 = load i64, i64* %4, align 8, !tbaa !40
  %44 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %30, i64 %43
  %45 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* nonnull %42, %struct.cooedgetuple* nonnull %44, %struct.cooedgetuple* nonnull %30)
  %46 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %6) #19
  %47 = load i64, i64* %4, align 8, !tbaa !40
  %48 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %30, i64 %47
  %49 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %48, i64 -1
  %50 = bitcast %struct.cooedgetuple* %49 to i8*
  %51 = bitcast %struct.cooedgetuple* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %50, i8* nonnull align 4 dereferenceable(12) %51, i64 12, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %39) #19
  br label %126

52:                                               ; preds = %36
  %53 = load i64, i64* %4, align 8, !tbaa !40
  %54 = load i64, i64* %5, align 8, !tbaa !40
  %55 = icmp sgt i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %30, i64 %32
  br label %64

58:                                               ; preds = %64, %52
  %59 = phi %struct.cooedgetuple* [ %30, %52 ], [ %68, %64 ]
  %60 = phi i64 [ %53, %52 ], [ %71, %64 ]
  %61 = phi i64 [ %54, %52 ], [ %72, %64 ]
  %62 = srem i64 %60, %61
  store i64 %62, i64* %4, align 8, !tbaa !40
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %79, label %75

64:                                               ; preds = %56, %64
  %65 = phi i64 [ %70, %64 ], [ 0, %56 ]
  %66 = phi %struct.cooedgetuple* [ %69, %64 ], [ %57, %56 ]
  %67 = phi %struct.cooedgetuple* [ %68, %64 ], [ %30, %56 ]
  call void @_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_(%struct.cooedgetuple* %67, %struct.cooedgetuple* %66)
  %68 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %67, i64 1
  %69 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %66, i64 1
  %70 = add nuw nsw i64 %65, 1
  %71 = load i64, i64* %4, align 8, !tbaa !40
  %72 = load i64, i64* %5, align 8, !tbaa !40
  %73 = sub nsw i64 %71, %72
  %74 = icmp slt i64 %70, %73
  br i1 %74, label %64, label %58, !llvm.loop !56

75:                                               ; preds = %58
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i64* nonnull align 8 dereferenceable(8) %4, i64* nonnull align 8 dereferenceable(8) %5) #19
  %76 = load i64, i64* %4, align 8, !tbaa !40
  %77 = load i64, i64* %5, align 8, !tbaa !40
  %78 = sub nsw i64 %76, %77
  store i64 %78, i64* %5, align 8, !tbaa !40
  br label %79

79:                                               ; preds = %58, %75
  %80 = phi %struct.cooedgetuple* [ %31, %75 ], [ %28, %58 ]
  br i1 %63, label %126, label %123

81:                                               ; preds = %29
  store i64 %34, i64* %5, align 8, !tbaa !40
  %82 = icmp eq i64 %34, 1
  br i1 %82, label %83, label %96

83:                                               ; preds = %81
  %84 = bitcast %struct.cooedgetuple* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %84) #19
  %85 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %30, i64 %33
  %86 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %85, i64 -1
  %87 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %86) #19
  %88 = bitcast %struct.cooedgetuple* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %84, i8* nonnull align 4 dereferenceable(12) %88, i64 12, i1 false), !tbaa.struct !15
  %89 = load i64, i64* %4, align 8, !tbaa !40
  %90 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %30, i64 %89
  %91 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %90, i64 -1
  %92 = call %struct.cooedgetuple* @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %30, %struct.cooedgetuple* nonnull %91, %struct.cooedgetuple* %90)
  %93 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %7) #19
  %94 = bitcast %struct.cooedgetuple* %30 to i8*
  %95 = bitcast %struct.cooedgetuple* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %94, i8* nonnull align 4 dereferenceable(12) %95, i64 12, i1 false), !tbaa.struct !15
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %84) #19
  br label %126

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %30, i64 %33
  %98 = sub i64 0, %34
  %99 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %97, i64 %98
  %100 = load i64, i64* %4, align 8, !tbaa !40
  %101 = load i64, i64* %5, align 8, !tbaa !40
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %109, %96
  %104 = phi %struct.cooedgetuple* [ %99, %96 ], [ %113, %109 ]
  %105 = phi i64 [ %100, %96 ], [ %116, %109 ]
  %106 = phi i64 [ %101, %96 ], [ %117, %109 ]
  %107 = srem i64 %105, %106
  store i64 %107, i64* %4, align 8, !tbaa !40
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %121, label %120

109:                                              ; preds = %96, %109
  %110 = phi i64 [ %115, %109 ], [ 0, %96 ]
  %111 = phi %struct.cooedgetuple* [ %114, %109 ], [ %97, %96 ]
  %112 = phi %struct.cooedgetuple* [ %113, %109 ], [ %99, %96 ]
  %113 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %112, i64 -1
  %114 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %111, i64 -1
  call void @_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_(%struct.cooedgetuple* nonnull %113, %struct.cooedgetuple* nonnull %114)
  %115 = add nuw nsw i64 %110, 1
  %116 = load i64, i64* %4, align 8, !tbaa !40
  %117 = load i64, i64* %5, align 8, !tbaa !40
  %118 = sub nsw i64 %116, %117
  %119 = icmp slt i64 %115, %118
  br i1 %119, label %109, label %103, !llvm.loop !57

120:                                              ; preds = %103
  call void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i64* nonnull align 8 dereferenceable(8) %4, i64* nonnull align 8 dereferenceable(8) %5) #19
  br label %121

121:                                              ; preds = %103, %120
  %122 = phi %struct.cooedgetuple* [ %31, %120 ], [ %28, %103 ]
  br i1 %108, label %126, label %123

123:                                              ; preds = %121, %79
  %124 = phi %struct.cooedgetuple* [ %59, %79 ], [ %104, %121 ]
  %125 = phi %struct.cooedgetuple* [ %80, %79 ], [ %122, %121 ]
  br label %29, !llvm.loop !58

126:                                              ; preds = %121, %79, %38, %83, %23
  %127 = phi %struct.cooedgetuple* [ %1, %23 ], [ %28, %38 ], [ %28, %83 ], [ %80, %79 ], [ %122, %121 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #19
  br label %128

128:                                              ; preds = %9, %3, %126
  %129 = phi %struct.cooedgetuple* [ %127, %126 ], [ %2, %3 ], [ %0, %9 ]
  ret %struct.cooedgetuple* %129
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #11 comdat {
  %4 = icmp eq %struct.cooedgetuple* %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3, %5
  %6 = phi %struct.cooedgetuple* [ %9, %5 ], [ %2, %3 ]
  %7 = phi %struct.cooedgetuple* [ %8, %5 ], [ %0, %3 ]
  call void @_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_(%struct.cooedgetuple* %7, %struct.cooedgetuple* %6)
  %8 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %7, i64 1
  %9 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %6, i64 1
  %10 = icmp eq %struct.cooedgetuple* %8, %1
  br i1 %10, label %11, label %5, !llvm.loop !59

11:                                               ; preds = %5, %3
  %12 = phi %struct.cooedgetuple* [ %2, %3 ], [ %9, %5 ]
  ret %struct.cooedgetuple* %12
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  %4 = call %struct.cooedgetuple* @_ZSt12__miter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %0)
  %5 = call %struct.cooedgetuple* @_ZSt12__miter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %1)
  %6 = call %struct.cooedgetuple* @_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %4, %struct.cooedgetuple* %5, %struct.cooedgetuple* %2)
  ret %struct.cooedgetuple* %6
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #13 comdat {
  %3 = alloca i64, align 8
  %4 = bitcast i64* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #19
  %5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_(i64* nonnull align 8 dereferenceable(8) %0) #19
  %6 = load i64, i64* %5, align 8, !tbaa !40
  store i64 %6, i64* %3, align 8, !tbaa !40
  %7 = call nonnull align 8 dereferenceable(8) i64* @_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_(i64* nonnull align 8 dereferenceable(8) %1) #19
  %8 = load i64, i64* %7, align 8, !tbaa !40
  store i64 %8, i64* %0, align 8, !tbaa !40
  %9 = call nonnull align 8 dereferenceable(8) i64* @_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_(i64* nonnull align 8 dereferenceable(8) %3) #19
  %10 = load i64, i64* %9, align 8, !tbaa !40
  store i64 %10, i64* %1, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #19
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  %4 = alloca %struct.cooedgetuple*, align 8
  store %struct.cooedgetuple* %2, %struct.cooedgetuple** %4, align 8, !tbaa !12
  %5 = call %struct.cooedgetuple* @_ZSt12__niter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %0) #19
  %6 = call %struct.cooedgetuple* @_ZSt12__niter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %1) #19
  %7 = load %struct.cooedgetuple*, %struct.cooedgetuple** %4, align 8, !tbaa !12
  %8 = call %struct.cooedgetuple* @_ZSt12__niter_baseIP12cooedgetupleET_S2_(%struct.cooedgetuple* %7) #19
  %9 = call %struct.cooedgetuple* @_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %5, %struct.cooedgetuple* %6, %struct.cooedgetuple* %8)
  %10 = call %struct.cooedgetuple* @_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %4, %struct.cooedgetuple* %9)
  ret %struct.cooedgetuple* %10
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #6 comdat {
  %4 = call %struct.cooedgetuple* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2)
  ret %struct.cooedgetuple* %4
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2) local_unnamed_addr #11 comdat align 2 {
  %4 = ptrtoint %struct.cooedgetuple* %1 to i64
  %5 = ptrtoint %struct.cooedgetuple* %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = bitcast %struct.cooedgetuple* %2 to i8*
  %10 = bitcast %struct.cooedgetuple* %0 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 %6, i1 false)
  br label %11

11:                                               ; preds = %8, %3
  %12 = sdiv exact i64 %6, 12
  %13 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 %12
  ret %struct.cooedgetuple* %13
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_(i64* nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #11 comdat {
  ret i64* %0
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i1 (i64, i32, i64, i32)* %3) local_unnamed_addr #3 comdat {
  %5 = ptrtoint %struct.cooedgetuple* %1 to i64
  %6 = ptrtoint %struct.cooedgetuple* %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 12
  %9 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %2, i64 %8
  call void @_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i64 7, i1 (i64, i32, i64, i32)* %3)
  %10 = icmp sgt i64 %7, 84
  br i1 %10, label %11, label %16

11:                                               ; preds = %4, %11
  %12 = phi i64 [ %14, %11 ], [ 7, %4 ]
  call void @_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i64 %12, i1 (i64, i32, i64, i32)* %3)
  %13 = shl nuw nsw i64 %12, 1
  call void @_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_(%struct.cooedgetuple* %2, %struct.cooedgetuple* %9, %struct.cooedgetuple* %0, i64 %13, i1 (i64, i32, i64, i32)* %3)
  %14 = shl nsw i64 %12, 2
  %15 = icmp slt i64 %14, %8
  br i1 %15, label %11, label %16, !llvm.loop !60

16:                                               ; preds = %11, %4
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i64 %3, i64 %4, %struct.cooedgetuple* %5, i64 %6, i64 %7) local_unnamed_addr #3 comdat {
  %9 = alloca %struct.cooedgetuple*, align 8
  %10 = alloca %struct.cooedgetuple*, align 8
  %11 = inttoptr i64 %7 to i1 (i64, i32, i64, i32)*
  %12 = icmp sgt i64 %3, %4
  %13 = icmp sgt i64 %3, %6
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %5)
  call void @_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_(%struct.cooedgetuple* %5, %struct.cooedgetuple* %16, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* %0, i1 (i64, i32, i64, i32)* %11)
  br label %46

17:                                               ; preds = %8
  %18 = icmp sgt i64 %4, %6
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* %5)
  call void @_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %5, %struct.cooedgetuple* %20, %struct.cooedgetuple* %2, i1 (i64, i32, i64, i32)* %11)
  br label %46

21:                                               ; preds = %17
  %22 = bitcast %struct.cooedgetuple** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #19
  store %struct.cooedgetuple* %0, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %23 = bitcast %struct.cooedgetuple** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #19
  store %struct.cooedgetuple* %1, %struct.cooedgetuple** %10, align 8, !tbaa !12
  br i1 %12, label %24, label %30

24:                                               ; preds = %21
  %25 = sdiv i64 %3, 2
  call void @_ZSt7advanceIP12cooedgetuplelEvRT_T0_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %9, i64 %25)
  %26 = load %struct.cooedgetuple*, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %27 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %11)
  %28 = call %struct.cooedgetuple* @_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_(%struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %26, i1 (i64, i32, i64, i32)* %27)
  store %struct.cooedgetuple* %28, %struct.cooedgetuple** %10, align 8, !tbaa !12
  %29 = call i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %1, %struct.cooedgetuple* %28)
  br label %36

30:                                               ; preds = %21
  %31 = sdiv i64 %4, 2
  call void @_ZSt7advanceIP12cooedgetuplelEvRT_T0_(%struct.cooedgetuple** nonnull align 8 dereferenceable(8) %10, i64 %31)
  %32 = load %struct.cooedgetuple*, %struct.cooedgetuple** %10, align 8, !tbaa !12
  %33 = call i1 (i64, i32, i64, i32)* @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE(i1 (i64, i32, i64, i32)* %11)
  %34 = call %struct.cooedgetuple* @_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* nonnull align 4 dereferenceable(12) %32, i1 (i64, i32, i64, i32)* %33)
  store %struct.cooedgetuple* %34, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %35 = call i64 @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %34)
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i64 [ %29, %24 ], [ %31, %30 ]
  %38 = phi i64 [ %25, %24 ], [ %35, %30 ]
  %39 = load %struct.cooedgetuple*, %struct.cooedgetuple** %9, align 8, !tbaa !12
  %40 = load %struct.cooedgetuple*, %struct.cooedgetuple** %10, align 8, !tbaa !12
  %41 = sub nsw i64 %3, %38
  %42 = call %struct.cooedgetuple* @_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_(%struct.cooedgetuple* %39, %struct.cooedgetuple* %1, %struct.cooedgetuple* %40, i64 %41, i64 %37, %struct.cooedgetuple* %5, i64 %6)
  %43 = load %struct.cooedgetuple*, %struct.cooedgetuple** %9, align 8, !tbaa !12
  call void @_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %43, %struct.cooedgetuple* %42, i64 %38, i64 %37, %struct.cooedgetuple* %5, i64 %6, i64 %7)
  %44 = load %struct.cooedgetuple*, %struct.cooedgetuple** %10, align 8, !tbaa !12
  %45 = sub nsw i64 %4, %37
  call void @_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_(%struct.cooedgetuple* %42, %struct.cooedgetuple* %44, %struct.cooedgetuple* %2, i64 %41, i64 %45, %struct.cooedgetuple* %5, i64 %6, i64 %7)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #19
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #19
  br label %46

46:                                               ; preds = %19, %36, %15
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, i64 %2, i1 (i64, i32, i64, i32)* %3) local_unnamed_addr #3 comdat {
  %5 = ptrtoint %struct.cooedgetuple* %1 to i64
  %6 = ptrtoint %struct.cooedgetuple* %0 to i64
  %7 = sub i64 %5, %6
  %8 = sdiv exact i64 %7, 12
  %9 = icmp slt i64 %8, %2
  br i1 %9, label %17, label %10

10:                                               ; preds = %4, %10
  %11 = phi %struct.cooedgetuple* [ %12, %10 ], [ %0, %4 ]
  %12 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %11, i64 %2
  call void @_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %11, %struct.cooedgetuple* %12, i1 (i64, i32, i64, i32)* %3)
  %13 = ptrtoint %struct.cooedgetuple* %12 to i64
  %14 = sub i64 %5, %13
  %15 = sdiv exact i64 %14, 12
  %16 = icmp slt i64 %15, %2
  br i1 %16, label %17, label %10, !llvm.loop !61

17:                                               ; preds = %10, %4
  %18 = phi %struct.cooedgetuple* [ %0, %4 ], [ %12, %10 ]
  call void @_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_(%struct.cooedgetuple* %18, %struct.cooedgetuple* %1, i1 (i64, i32, i64, i32)* %3)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i64 %3, i1 (i64, i32, i64, i32)* %4) local_unnamed_addr #3 comdat {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %3, i64* %6, align 8, !tbaa !40
  %8 = shl nsw i64 %3, 1
  %9 = ptrtoint %struct.cooedgetuple* %1 to i64
  %10 = ptrtoint %struct.cooedgetuple* %0 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 12
  %13 = icmp slt i64 %12, %8
  br i1 %13, label %25, label %14

14:                                               ; preds = %5, %14
  %15 = phi %struct.cooedgetuple* [ %19, %14 ], [ %0, %5 ]
  %16 = phi %struct.cooedgetuple* [ %20, %14 ], [ %2, %5 ]
  %17 = load i64, i64* %6, align 8, !tbaa !40
  %18 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %15, i64 %17
  %19 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %15, i64 %8
  %20 = call %struct.cooedgetuple* @_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_(%struct.cooedgetuple* %15, %struct.cooedgetuple* %18, %struct.cooedgetuple* %18, %struct.cooedgetuple* %19, %struct.cooedgetuple* %16, i1 (i64, i32, i64, i32)* %4)
  %21 = ptrtoint %struct.cooedgetuple* %19 to i64
  %22 = sub i64 %9, %21
  %23 = sdiv exact i64 %22, 12
  %24 = icmp slt i64 %23, %8
  br i1 %24, label %25, label %14, !llvm.loop !62

25:                                               ; preds = %14, %5
  %26 = phi %struct.cooedgetuple* [ %2, %5 ], [ %20, %14 ]
  %27 = phi %struct.cooedgetuple* [ %0, %5 ], [ %19, %14 ]
  %28 = phi i64 [ %12, %5 ], [ %23, %14 ]
  %29 = bitcast i64* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29) #19
  store i64 %28, i64* %7, align 8, !tbaa !40
  %30 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3minIlERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %7, i64* nonnull align 8 dereferenceable(8) %6)
  %31 = load i64, i64* %30, align 8, !tbaa !40
  store i64 %31, i64* %6, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29) #19
  %32 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %27, i64 %31
  %33 = call %struct.cooedgetuple* @_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_(%struct.cooedgetuple* %27, %struct.cooedgetuple* %32, %struct.cooedgetuple* %32, %struct.cooedgetuple* %1, %struct.cooedgetuple* %26, i1 (i64, i32, i64, i32)* %4)
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* %3, %struct.cooedgetuple* %4, i1 (i64, i32, i64, i32)* %5) local_unnamed_addr #3 comdat {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %5, i1 (i64, i32, i64, i32)** %8, align 8
  %9 = icmp ne %struct.cooedgetuple* %0, %1
  %10 = icmp ne %struct.cooedgetuple* %2, %3
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %34

12:                                               ; preds = %6, %27
  %13 = phi %struct.cooedgetuple* [ %30, %27 ], [ %4, %6 ]
  %14 = phi %struct.cooedgetuple* [ %29, %27 ], [ %0, %6 ]
  %15 = phi %struct.cooedgetuple* [ %28, %27 ], [ %2, %6 ]
  %16 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull %7, %struct.cooedgetuple* %15, %struct.cooedgetuple* %14)
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %15) #19
  %19 = bitcast %struct.cooedgetuple* %13 to i8*
  %20 = bitcast %struct.cooedgetuple* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %19, i8* nonnull align 4 dereferenceable(12) %20, i64 12, i1 false), !tbaa.struct !15
  %21 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %15, i64 1
  br label %27

22:                                               ; preds = %12
  %23 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %14) #19
  %24 = bitcast %struct.cooedgetuple* %13 to i8*
  %25 = bitcast %struct.cooedgetuple* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %24, i8* nonnull align 4 dereferenceable(12) %25, i64 12, i1 false), !tbaa.struct !15
  %26 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %14, i64 1
  br label %27

27:                                               ; preds = %22, %17
  %28 = phi %struct.cooedgetuple* [ %21, %17 ], [ %15, %22 ]
  %29 = phi %struct.cooedgetuple* [ %14, %17 ], [ %26, %22 ]
  %30 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %13, i64 1
  %31 = icmp ne %struct.cooedgetuple* %29, %1
  %32 = icmp ne %struct.cooedgetuple* %28, %3
  %33 = and i1 %32, %31
  br i1 %33, label %12, label %34, !llvm.loop !63

34:                                               ; preds = %27, %6
  %35 = phi %struct.cooedgetuple* [ %2, %6 ], [ %28, %27 ]
  %36 = phi %struct.cooedgetuple* [ %0, %6 ], [ %29, %27 ]
  %37 = phi %struct.cooedgetuple* [ %4, %6 ], [ %30, %27 ]
  %38 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %36, %struct.cooedgetuple* %1, %struct.cooedgetuple* %37)
  %39 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %35, %struct.cooedgetuple* %3, %struct.cooedgetuple* %38)
  ret %struct.cooedgetuple* %39
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3minIlERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %0, i64* nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #13 comdat {
  %3 = load i64, i64* %1, align 8, !tbaa !40
  %4 = load i64, i64* %0, align 8, !tbaa !40
  %5 = icmp slt i64 %3, %4
  %6 = select i1 %5, i64* %1, i64* %0
  ret i64* %6
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* %3, %struct.cooedgetuple* %4, i1 (i64, i32, i64, i32)* %5) local_unnamed_addr #3 comdat {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %5, i1 (i64, i32, i64, i32)** %8, align 8
  %9 = icmp eq %struct.cooedgetuple* %0, %1
  %10 = icmp ne %struct.cooedgetuple* %2, %3
  %11 = xor i1 %9, true
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %6, %28
  %14 = phi %struct.cooedgetuple* [ %31, %28 ], [ %4, %6 ]
  %15 = phi %struct.cooedgetuple* [ %30, %28 ], [ %0, %6 ]
  %16 = phi %struct.cooedgetuple* [ %29, %28 ], [ %2, %6 ]
  %17 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull %7, %struct.cooedgetuple* %16, %struct.cooedgetuple* %15)
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %16) #19
  %20 = bitcast %struct.cooedgetuple* %14 to i8*
  %21 = bitcast %struct.cooedgetuple* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %20, i8* nonnull align 4 dereferenceable(12) %21, i64 12, i1 false), !tbaa.struct !15
  %22 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %16, i64 1
  br label %28

23:                                               ; preds = %13
  %24 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %15) #19
  %25 = bitcast %struct.cooedgetuple* %14 to i8*
  %26 = bitcast %struct.cooedgetuple* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %25, i8* nonnull align 4 dereferenceable(12) %26, i64 12, i1 false), !tbaa.struct !15
  %27 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %15, i64 1
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi %struct.cooedgetuple* [ %22, %18 ], [ %16, %23 ]
  %30 = phi %struct.cooedgetuple* [ %15, %18 ], [ %27, %23 ]
  %31 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %14, i64 1
  %32 = icmp eq %struct.cooedgetuple* %30, %1
  %33 = icmp ne %struct.cooedgetuple* %29, %3
  %34 = xor i1 %32, true
  %35 = and i1 %33, %34
  br i1 %35, label %13, label %36, !llvm.loop !64

36:                                               ; preds = %28, %6
  %37 = phi %struct.cooedgetuple* [ %0, %6 ], [ %30, %28 ]
  %38 = phi %struct.cooedgetuple* [ %4, %6 ], [ %31, %28 ]
  %39 = phi i1 [ %9, %6 ], [ %32, %28 ]
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %37, %struct.cooedgetuple* %1, %struct.cooedgetuple* %38)
  br label %42

42:                                               ; preds = %40, %36
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* %3, %struct.cooedgetuple* %4, i1 (i64, i32, i64, i32)* %5) local_unnamed_addr #3 comdat {
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 8
  %8 = getelementptr inbounds %"struct.__gnu_cxx::__ops::_Iter_comp_iter", %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %7, i64 0, i32 0
  store i1 (i64, i32, i64, i32)* %5, i1 (i64, i32, i64, i32)** %8, align 8
  %9 = icmp eq %struct.cooedgetuple* %0, %1
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call %struct.cooedgetuple* @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %2, %struct.cooedgetuple* %3, %struct.cooedgetuple* %4)
  br label %44

12:                                               ; preds = %6
  %13 = icmp eq %struct.cooedgetuple* %2, %3
  br i1 %13, label %44, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %1, i64 -1
  %16 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %3, i64 -1
  br label %17

17:                                               ; preds = %34, %14
  %18 = phi %struct.cooedgetuple* [ %35, %34 ], [ %15, %14 ]
  %19 = phi %struct.cooedgetuple* [ %22, %34 ], [ %16, %14 ]
  %20 = phi %struct.cooedgetuple* [ %27, %34 ], [ %4, %14 ]
  br label %21

21:                                               ; preds = %17, %42
  %22 = phi %struct.cooedgetuple* [ %43, %42 ], [ %19, %17 ]
  %23 = phi %struct.cooedgetuple* [ %38, %42 ], [ %20, %17 ]
  %24 = call zeroext i1 @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* nonnull %7, %struct.cooedgetuple* %22, %struct.cooedgetuple* %18)
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %18) #19
  %27 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %23, i64 -1
  %28 = bitcast %struct.cooedgetuple* %27 to i8*
  %29 = bitcast %struct.cooedgetuple* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %28, i8* nonnull align 4 dereferenceable(12) %29, i64 12, i1 false), !tbaa.struct !15
  %30 = icmp eq %struct.cooedgetuple* %18, %0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %22, i64 1
  %33 = call %struct.cooedgetuple* @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %2, %struct.cooedgetuple* nonnull %32, %struct.cooedgetuple* nonnull %27)
  br label %44

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %18, i64 -1
  br label %17, !llvm.loop !65

36:                                               ; preds = %21
  %37 = call nonnull align 4 dereferenceable(12) %struct.cooedgetuple* @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_(%struct.cooedgetuple* nonnull align 4 dereferenceable(12) %22) #19
  %38 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %23, i64 -1
  %39 = bitcast %struct.cooedgetuple* %38 to i8*
  %40 = bitcast %struct.cooedgetuple* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 dereferenceable(12) %39, i8* nonnull align 4 dereferenceable(12) %40, i64 12, i1 false), !tbaa.struct !15
  %41 = icmp eq %struct.cooedgetuple* %22, %2
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.cooedgetuple, %struct.cooedgetuple* %22, i64 -1
  br label %21, !llvm.loop !65

44:                                               ; preds = %36, %12, %31, %10
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local %struct.cooedgetuple* @_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2, i64 %3, i64 %4, %struct.cooedgetuple* %5, i64 %6) local_unnamed_addr #3 comdat {
  %8 = icmp sle i64 %3, %4
  %9 = icmp sgt i64 %4, %6
  %10 = or i1 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = icmp eq i64 %4, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %11
  %14 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* %5)
  %15 = call %struct.cooedgetuple* @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2)
  %16 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %5, %struct.cooedgetuple* %14, %struct.cooedgetuple* %0)
  br label %27

17:                                               ; preds = %7
  %18 = icmp sgt i64 %3, %6
  br i1 %18, label %25, label %19

19:                                               ; preds = %17
  %20 = icmp eq i64 %3, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %5)
  %23 = call %struct.cooedgetuple* @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %1, %struct.cooedgetuple* %2, %struct.cooedgetuple* %0)
  %24 = call %struct.cooedgetuple* @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_(%struct.cooedgetuple* %5, %struct.cooedgetuple* %22, %struct.cooedgetuple* %2)
  br label %27

25:                                               ; preds = %17
  %26 = call %struct.cooedgetuple* @_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1, %struct.cooedgetuple* %2)
  br label %27

27:                                               ; preds = %19, %11, %25, %21, %13
  %28 = phi %struct.cooedgetuple* [ %16, %13 ], [ %24, %21 ], [ %26, %25 ], [ %0, %11 ], [ %2, %19 ]
  ret %struct.cooedgetuple* %28
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP12cooedgetupleEvT_S2_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1) local_unnamed_addr #6 comdat {
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_(%struct.cooedgetuple* %0, %struct.cooedgetuple* %1) local_unnamed_addr #11 comdat align 2 {
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_(%"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0, i1 (i64, i32, i64, i32)* %1) unnamed_addr #11 comdat align 2 {
  %3 = alloca i1 (i64, i32, i64, i32)*, align 8
  store i1 (i64, i32, i64, i32)* %1, i1 (i64, i32, i64, i32)** %3, align 8, !tbaa !12
  %4 = call nonnull align 8 dereferenceable(8) i1 (i64, i32, i64, i32)** @_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_(i1 (i64, i32, i64, i32)** nonnull align 8 dereferenceable(8) %3) #19
  %5 = bitcast i1 (i64, i32, i64, i32)** %4 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !12
  %7 = bitcast %"struct.__gnu_cxx::__ops::_Iter_comp_iter"* %0 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !47
  ret void
}

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #10

define internal fastcc void @__hip_register_globals(i8** %0) unnamed_addr {
  %2 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32*, float*, i32*, i32, i32, i32)* @_Z25__device_stub__bfs_kernelPiS_S_PfS_iii to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %3 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32, i32, i32, float*)* @_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_ to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %4 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32, i32*, float*, float*, i32)* @_Z30__device_stub__back_sum_kerneliiPiPfS0_i to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %5 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32, i32*, float*, float*, i32)* @_Z29__device_stub__clean_1d_arrayiPiPfS0_i to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @3, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %6 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (i32*, i32)* @_Z29__device_stub__clean_2d_arrayPii to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @4, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %7 = call i32 @__hipRegisterFunction(i8** %0, i8* bitcast (void (float*, i32)* @_Z23__device_stub__clean_bcPfi to i8*), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @5, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  ret void
}

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local i8** @__hipRegisterFatBinary(i8*) local_unnamed_addr

define internal void @__hip_module_ctor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = call i8** @__hipRegisterFatBinary(i8* bitcast ({ i32, i32, i8*, i8* }* @__hip_fatbin_wrapper to i8*))
  store i8** %5, i8*** @__hip_gpubin_handle, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = load i8**, i8*** @__hip_gpubin_handle, align 8
  call fastcc void @__hip_register_globals(i8** %7)
  %8 = call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
  ret void
}

declare dso_local void @__hipUnregisterFatBinary(i8**) local_unnamed_addr

define internal void @__hip_module_dtor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  call void @__hipUnregisterFatBinary(i8** nonnull %2)
  store i8** null, i8*** @__hip_gpubin_handle, align 8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare dso_local i32 @atexit(void (i8*)*) local_unnamed_addr

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare i32 @putchar(i32) local_unnamed_addr #17

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #18

attributes #0 = { norecurse nounwind readnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { noinline noreturn nounwind }
attributes #15 = { nobuiltin nofree nounwind allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { nofree nounwind }
attributes #18 = { argmemonly nounwind willreturn writeonly }
attributes #19 = { nounwind }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTS12cooedgetuple", !4, i64 0, !4, i64 4, !4, i64 8}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!4, !4, i64 0}
!8 = !{!3, !4, i64 4}
!9 = !{!3, !4, i64 8}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 4, !7}
!16 = distinct !{!16, !11}
!17 = !{!18, !13, i64 0}
!18 = !{!"_ZTS11csr_array_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!19 = !{!18, !13, i64 8}
!20 = !{!18, !13, i64 16}
!21 = !{!18, !13, i64 24}
!22 = !{!18, !13, i64 32}
!23 = !{!18, !13, i64 40}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = !{!28, !4, i64 0}
!28 = !{!"_ZTS4dim3", !4, i64 0, !4, i64 4, !4, i64 8}
!29 = !{!28, !4, i64 4}
!30 = !{!28, !4, i64 8}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !5, i64 0}
!33 = distinct !{!33, !11}
!34 = distinct !{!34, !11}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSSt17_Temporary_bufferIP12cooedgetupleS0_E", !37, i64 0, !37, i64 8, !13, i64 16}
!37 = !{!"long", !5, i64 0}
!38 = !{!36, !13, i64 16}
!39 = !{!36, !37, i64 8}
!40 = !{!37, !37, i64 0}
!41 = distinct !{!41, !11}
!42 = !{!43, !13, i64 0}
!43 = !{!"_ZTSSt4pairIP12cooedgetuplelE", !13, i64 0, !37, i64 8}
!44 = !{!43, !37, i64 8}
!45 = !{i64 0, i64 8, !12}
!46 = distinct !{!46, !11}
!47 = !{!48, !13, i64 0}
!48 = !{!"_ZTSN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEE", !13, i64 0}
!49 = distinct !{!49, !11}
!50 = !{!51, !13, i64 0}
!51 = !{!"_ZTSN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEE", !13, i64 0}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = !{!55, !13, i64 0}
!55 = !{!"_ZTSN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEE", !13, i64 0}
!56 = distinct !{!56, !11}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = distinct !{!64, !11}
!65 = distinct !{!65, !11}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
