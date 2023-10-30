
; __CLANG_OFFLOAD_BUNDLE____START__ hip-amdgcn-amd-amdhsa-gfx801
; ModuleID = 'pagerank.cpp'
source_filename = "pagerank.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z9pagerank1PiS_S_PfS0_ii(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readnone %2, float addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = mul nuw nsw i64 %13, %14
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %5
  br i1 %20, label %21, label %52

21:                                               ; preds = %7
  %22 = shl i64 %18, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %23
  %25 = load i32, i32 addrspace(1)* %24, align 4, !tbaa !7
  %26 = add nsw i32 %19, 1
  %27 = icmp slt i32 %26, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %29
  %31 = load i32, i32 addrspace(1)* %30, align 4, !tbaa !7
  br label %32

32:                                               ; preds = %21, %28
  %33 = phi i32 [ %31, %28 ], [ %6, %21 ]
  %34 = icmp sgt i32 %33, %25
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = getelementptr inbounds float, float addrspace(1)* %3, i64 %23
  %37 = sub nsw i32 %33, %25
  %38 = sitofp i32 %37 to float
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ %25, %35 ], [ %50, %39 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %41
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !7
  %44 = load float, float addrspace(1)* %36, align 4, !tbaa !11
  %45 = fdiv contract float %44, %38
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds float, float addrspace(1)* %4, i64 %46
  %48 = load float, float addrspace(1)* %47, align 4, !tbaa !11
  %49 = fadd contract float %48, %45
  store float %49, float addrspace(1)* %47, align 4, !tbaa !11
  %50 = add nsw i32 %40, 1
  %51 = icmp slt i32 %50, %33
  br i1 %51, label %39, label %52

52:                                               ; preds = %39, %32, %7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z9pagerank2PiS_S_PfS0_ii(i32 addrspace(1)* nocapture readnone %0, i32 addrspace(1)* nocapture readnone %1, i32 addrspace(1)* nocapture readnone %2, float addrspace(1)* nocapture %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = mul nuw nsw i64 %13, %14
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %5
  br i1 %20, label %21, label %34

21:                                               ; preds = %7
  %22 = sitofp i32 %5 to float
  %23 = fpext float %22 to double
  %24 = fdiv contract double 1.500000e-01, %23
  %25 = shl i64 %18, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds float, float addrspace(1)* %4, i64 %26
  %28 = load float, float addrspace(1)* %27, align 4, !tbaa !11
  %29 = fpext float %28 to double
  %30 = fmul contract double %29, 8.500000e-01
  %31 = fadd contract double %24, %30
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds float, float addrspace(1)* %3, i64 %26
  store float %32, float addrspace(1)* %33, align 4, !tbaa !11
  store float 0.000000e+00, float addrspace(1)* %27, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind writeonly
define protected amdgpu_kernel void @_Z9inibufferPiPfS0_ii(i32 addrspace(1)* nocapture readnone %0, float addrspace(1)* nocapture %1, float addrspace(1)* nocapture %2, i32 %3, i32 %4) local_unnamed_addr #1 {
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %8 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !4, !invariant.load !5
  %11 = zext i16 %10 to i64
  %12 = zext i32 %7 to i64
  %13 = mul nuw nsw i64 %11, %12
  %14 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %13, %15
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %17, %3
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = sitofp i32 %3 to float
  %21 = fdiv contract float 1.000000e+00, %20
  %22 = shl i64 %16, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds float, float addrspace(1)* %1, i64 %23
  store float %21, float addrspace(1)* %24, align 4, !tbaa !11
  %25 = getelementptr inbounds float, float addrspace(1)* %2, i64 %23
  store float 0.000000e+00, float addrspace(1)* %25, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { convergent nofree norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "amdgpu-implicitarg-num-bytes"="56" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx801" "target-features"="+16-bit-insts,+ci-insts,+dpp,+flat-address-space,+gfx8-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nofree norecurse nounwind writeonly "amdgpu-flat-work-group-size"="1,256" "amdgpu-implicitarg-num-bytes"="56" "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx801" "target-features"="+16-bit-insts,+ci-insts,+dpp,+flat-address-space,+gfx8-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

; __CLANG_OFFLOAD_BUNDLE____END__ hip-amdgcn-amd-amdhsa-gfx801

; __CLANG_OFFLOAD_BUNDLE____START__ hip-amdgcn-amd-amdhsa-gfx803
; ModuleID = 'pagerank.cpp'
source_filename = "pagerank.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z9pagerank1PiS_S_PfS0_ii(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readnone %2, float addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = mul nuw nsw i64 %13, %14
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %5
  br i1 %20, label %21, label %52

21:                                               ; preds = %7
  %22 = shl i64 %18, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %23
  %25 = load i32, i32 addrspace(1)* %24, align 4, !tbaa !7
  %26 = add nsw i32 %19, 1
  %27 = icmp slt i32 %26, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %29
  %31 = load i32, i32 addrspace(1)* %30, align 4, !tbaa !7
  br label %32

32:                                               ; preds = %21, %28
  %33 = phi i32 [ %31, %28 ], [ %6, %21 ]
  %34 = icmp sgt i32 %33, %25
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = getelementptr inbounds float, float addrspace(1)* %3, i64 %23
  %37 = sub nsw i32 %33, %25
  %38 = sitofp i32 %37 to float
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ %25, %35 ], [ %50, %39 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %41
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !7
  %44 = load float, float addrspace(1)* %36, align 4, !tbaa !11
  %45 = fdiv contract float %44, %38
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds float, float addrspace(1)* %4, i64 %46
  %48 = load float, float addrspace(1)* %47, align 4, !tbaa !11
  %49 = fadd contract float %48, %45
  store float %49, float addrspace(1)* %47, align 4, !tbaa !11
  %50 = add nsw i32 %40, 1
  %51 = icmp slt i32 %50, %33
  br i1 %51, label %39, label %52

52:                                               ; preds = %39, %32, %7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z9pagerank2PiS_S_PfS0_ii(i32 addrspace(1)* nocapture readnone %0, i32 addrspace(1)* nocapture readnone %1, i32 addrspace(1)* nocapture readnone %2, float addrspace(1)* nocapture %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = mul nuw nsw i64 %13, %14
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %5
  br i1 %20, label %21, label %34

21:                                               ; preds = %7
  %22 = sitofp i32 %5 to float
  %23 = fpext float %22 to double
  %24 = fdiv contract double 1.500000e-01, %23
  %25 = shl i64 %18, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds float, float addrspace(1)* %4, i64 %26
  %28 = load float, float addrspace(1)* %27, align 4, !tbaa !11
  %29 = fpext float %28 to double
  %30 = fmul contract double %29, 8.500000e-01
  %31 = fadd contract double %24, %30
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds float, float addrspace(1)* %3, i64 %26
  store float %32, float addrspace(1)* %33, align 4, !tbaa !11
  store float 0.000000e+00, float addrspace(1)* %27, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind writeonly
define protected amdgpu_kernel void @_Z9inibufferPiPfS0_ii(i32 addrspace(1)* nocapture readnone %0, float addrspace(1)* nocapture %1, float addrspace(1)* nocapture %2, i32 %3, i32 %4) local_unnamed_addr #1 {
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %8 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !4, !invariant.load !5
  %11 = zext i16 %10 to i64
  %12 = zext i32 %7 to i64
  %13 = mul nuw nsw i64 %11, %12
  %14 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %13, %15
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %17, %3
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = sitofp i32 %3 to float
  %21 = fdiv contract float 1.000000e+00, %20
  %22 = shl i64 %16, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds float, float addrspace(1)* %1, i64 %23
  store float %21, float addrspace(1)* %24, align 4, !tbaa !11
  %25 = getelementptr inbounds float, float addrspace(1)* %2, i64 %23
  store float 0.000000e+00, float addrspace(1)* %25, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare align 4 i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #2

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workgroup.id.x() #2

; Function Attrs: convergent nounwind readnone speculatable willreturn
declare i32 @llvm.amdgcn.workitem.id.x() #2

attributes #0 = { convergent nofree norecurse nounwind "amdgpu-flat-work-group-size"="1,256" "amdgpu-implicitarg-num-bytes"="56" "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx803" "target-features"="+16-bit-insts,+ci-insts,+dpp,+flat-address-space,+gfx8-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nofree norecurse nounwind writeonly "amdgpu-flat-work-group-size"="1,256" "amdgpu-implicitarg-num-bytes"="56" "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math-f32"="preserve-sign,preserve-sign" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="gfx803" "target-features"="+16-bit-insts,+ci-insts,+dpp,+flat-address-space,+gfx8-insts,+s-memrealtime" "uniform-work-group-size"="true" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone speculatable willreturn "correctly-rounded-divide-sqrt-fp-math"="false" "denormal-fp-math-f32"="preserve-sign,preserve-sign" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
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

; __CLANG_OFFLOAD_BUNDLE____END__ hip-amdgcn-amd-amdhsa-gfx803

; __CLANG_OFFLOAD_BUNDLE____START__ hip-amdgcn-amd-amdhsa-gfx900
; ModuleID = 'pagerank.cpp'
source_filename = "pagerank.cpp"
target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-ni:7"
target triple = "amdgcn-amd-amdhsa"

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z9pagerank1PiS_S_PfS0_ii(i32 addrspace(1)* nocapture readonly %0, i32 addrspace(1)* nocapture readonly %1, i32 addrspace(1)* nocapture readnone %2, float addrspace(1)* nocapture readonly %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = mul nuw nsw i64 %13, %14
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %5
  br i1 %20, label %21, label %52

21:                                               ; preds = %7
  %22 = shl i64 %18, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %23
  %25 = load i32, i32 addrspace(1)* %24, align 4, !tbaa !7
  %26 = add nsw i32 %19, 1
  %27 = icmp slt i32 %26, %5
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i32, i32 addrspace(1)* %0, i64 %29
  %31 = load i32, i32 addrspace(1)* %30, align 4, !tbaa !7
  br label %32

32:                                               ; preds = %21, %28
  %33 = phi i32 [ %31, %28 ], [ %6, %21 ]
  %34 = icmp sgt i32 %33, %25
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = getelementptr inbounds float, float addrspace(1)* %3, i64 %23
  %37 = sub nsw i32 %33, %25
  %38 = sitofp i32 %37 to float
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i32 [ %25, %35 ], [ %50, %39 ]
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32 addrspace(1)* %1, i64 %41
  %43 = load i32, i32 addrspace(1)* %42, align 4, !tbaa !7
  %44 = load float, float addrspace(1)* %36, align 4, !tbaa !11
  %45 = fdiv contract float %44, %38
  %46 = sext i32 %43 to i64
  %47 = getelementptr inbounds float, float addrspace(1)* %4, i64 %46
  %48 = load float, float addrspace(1)* %47, align 4, !tbaa !11
  %49 = fadd contract float %48, %45
  store float %49, float addrspace(1)* %47, align 4, !tbaa !11
  %50 = add nsw i32 %40, 1
  %51 = icmp slt i32 %50, %33
  br i1 %51, label %39, label %52

52:                                               ; preds = %39, %32, %7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind
define protected amdgpu_kernel void @_Z9pagerank2PiS_S_PfS0_ii(i32 addrspace(1)* nocapture readnone %0, i32 addrspace(1)* nocapture readnone %1, i32 addrspace(1)* nocapture readnone %2, float addrspace(1)* nocapture %3, float addrspace(1)* nocapture %4, i32 %5, i32 %6) local_unnamed_addr #0 {
  %8 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %9 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %10 = getelementptr i8, i8 addrspace(4)* %8, i64 4
  %11 = bitcast i8 addrspace(4)* %10 to i16 addrspace(4)*
  %12 = load i16, i16 addrspace(4)* %11, align 4, !range !4, !invariant.load !5
  %13 = zext i16 %12 to i64
  %14 = zext i32 %9 to i64
  %15 = mul nuw nsw i64 %13, %14
  %16 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %15, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp slt i32 %19, %5
  br i1 %20, label %21, label %34

21:                                               ; preds = %7
  %22 = sitofp i32 %5 to float
  %23 = fpext float %22 to double
  %24 = fdiv contract double 1.500000e-01, %23
  %25 = shl i64 %18, 32
  %26 = ashr exact i64 %25, 32
  %27 = getelementptr inbounds float, float addrspace(1)* %4, i64 %26
  %28 = load float, float addrspace(1)* %27, align 4, !tbaa !11
  %29 = fpext float %28 to double
  %30 = fmul contract double %29, 8.500000e-01
  %31 = fadd contract double %24, %30
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds float, float addrspace(1)* %3, i64 %26
  store float %32, float addrspace(1)* %33, align 4, !tbaa !11
  store float 0.000000e+00, float addrspace(1)* %27, align 4, !tbaa !11
  br label %34

34:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: convergent nofree norecurse nounwind writeonly
define protected amdgpu_kernel void @_Z9inibufferPiPfS0_ii(i32 addrspace(1)* nocapture readnone %0, float addrspace(1)* nocapture %1, float addrspace(1)* nocapture %2, i32 %3, i32 %4) local_unnamed_addr #1 {
  %6 = tail call align 4 dereferenceable(64) i8 addrspace(4)* @llvm.amdgcn.dispatch.ptr() #3
  %7 = tail call i32 @llvm.amdgcn.workgroup.id.x() #3
  %8 = getelementptr i8, i8 addrspace(4)* %6, i64 4
  %9 = bitcast i8 addrspace(4)* %8 to i16 addrspace(4)*
  %10 = load i16, i16 addrspace(4)* %9, align 4, !range !4, !invariant.load !5
  %11 = zext i16 %10 to i64
  %12 = zext i32 %7 to i64
  %13 = mul nuw nsw i64 %11, %12
  %14 = tail call i32 @llvm.amdgcn.workitem.id.x() #3, !range !6
  %15 = zext i32 %14 to i64
  %16 = add nuw nsw i64 %13, %15
  %17 = trunc i64 %16 to i32
  %18 = icmp slt i32 %17, %3
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = sitofp i32 %3 to float
  %21 = fdiv contract float 1.000000e+00, %20
  %22 = shl i64 %16, 32
  %23 = ashr exact i64 %22, 32
  %24 = getelementptr inbounds float, float addrspace(1)* %1, i64 %23
  store float %21, float addrspace(1)* %24, align 4, !tbaa !11
  %25 = getelementptr inbounds float, float addrspace(1)* %2, i64 %23
  store float 0.000000e+00, float addrspace(1)* %25, align 4, !tbaa !11
  br label %26

26:                                               ; preds = %19, %5
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

; __CLANG_OFFLOAD_BUNDLE____END__ hip-amdgcn-amd-amdhsa-gfx900

; __CLANG_OFFLOAD_BUNDLE____START__ host-x86_64-unknown-linux-gnu
; ModuleID = 'pagerank.cpp'
source_filename = "pagerank.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.dim3 = type { i32, i32, i32 }
%struct.ihipStream_t = type opaque
%struct.csr_arrays_t = type { i32*, i32*, i32*, i32* }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [26 x i8] c"You did something wrong!\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"reserve for future\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"rank array not allocated successfully\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ERROR: hipMalloc row_d (size:%d) => %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"ERROR: hipMalloc col_d (size:%d) => %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ERROR: hipMalloc data_d (size:%d) => %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"ERROR: hipMalloc pagerank1_d (size:%d) => %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"ERROR: hipMalloc pagerank2_d (size:%d) => %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"ERROR:#endif hipMemcpy row_d (size:%d) => %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"ERROR: hipMemcpy col_d (size:%d) => %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"ERROR: cudaLaunch failed (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"ERROR: hipMemcpy() failed (%s)\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"result.out\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@0 = private unnamed_addr constant [26 x i8] c"_Z9pagerank1PiS_S_PfS0_ii\00", align 1
@1 = private unnamed_addr constant [26 x i8] c"_Z9pagerank2PiS_S_PfS0_ii\00", align 1
@2 = private unnamed_addr constant [22 x i8] c"_Z9inibufferPiPfS0_ii\00", align 1
@__hip_fatbin = external constant i8, section ".hip_fatbin"
@__hip_fatbin_wrapper = internal constant { i32, i32, i8*, i8* } { i32 1212764230, i32 1, i8* @__hip_fatbin, i8* null }, section ".hipFatBinSegment", align 8
@__hip_gpubin_handle = linkonce hidden local_unnamed_addr global i8** null, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* bitcast (void (i8*)* @__hip_module_ctor to void ()*), i8* null }]
@str = private unnamed_addr constant [33 x i8] c"ERROR: unable to open result.txt\00", align 1

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__pagerank1PiS_S_PfS0_ii(i32* %0, i32* %1, i32* %2, float* %3, float* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8, !tbaa !2
  store i32* %1, i32** %9, align 8, !tbaa !2
  store i32* %2, i32** %10, align 8, !tbaa !2
  store float* %3, float** %11, align 8, !tbaa !2
  store float* %4, float** %12, align 8, !tbaa !2
  store i32 %5, i32* %13, align 4, !tbaa !6
  store i32 %6, i32* %14, align 4, !tbaa !6
  %19 = alloca [7 x i8*], align 16
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 0
  %21 = bitcast [7 x i8*]* %19 to i32***
  store i32** %8, i32*** %21, align 16
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 1
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 8
  %24 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 2
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 16
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 3
  %27 = bitcast i8** %26 to float***
  store float** %11, float*** %27, align 8
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 4
  %29 = bitcast i8** %28 to float***
  store float** %12, float*** %29, align 16
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 5
  %31 = bitcast i8** %30 to i32**
  store i32* %13, i32** %31, align 8
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 6
  %33 = bitcast i8** %32 to i32**
  store i32* %14, i32** %33, align 16
  %34 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %15, %struct.dim3* nonnull %16, i64* nonnull %17, i8** nonnull %18)
  %35 = load i64, i64* %17, align 8
  %36 = bitcast i8** %18 to %struct.ihipStream_t**
  %37 = load %struct.ihipStream_t*, %struct.ihipStream_t** %36, align 8
  %38 = bitcast %struct.dim3* %15 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = bitcast %struct.dim3* %16 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32)* @_Z24__device_stub__pagerank1PiS_S_PfS0_ii to i8*), i64 %39, i32 %41, i64 %43, i32 %45, i8** nonnull %20, i64 %35, %struct.ihipStream_t* %37)
  ret void
}

declare dso_local i32 @__hipPopCallConfiguration(%struct.dim3*, %struct.dim3*, i64*, i8**) local_unnamed_addr

declare dso_local i32 @hipLaunchKernel(i8*, i64, i32, i64, i32, i8**, i64, %struct.ihipStream_t*) local_unnamed_addr

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__pagerank2PiS_S_PfS0_ii(i32* %0, i32* %1, i32* %2, float* %3, float* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dim3, align 8
  %16 = alloca %struct.dim3, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8, !tbaa !2
  store i32* %1, i32** %9, align 8, !tbaa !2
  store i32* %2, i32** %10, align 8, !tbaa !2
  store float* %3, float** %11, align 8, !tbaa !2
  store float* %4, float** %12, align 8, !tbaa !2
  store i32 %5, i32* %13, align 4, !tbaa !6
  store i32 %6, i32* %14, align 4, !tbaa !6
  %19 = alloca [7 x i8*], align 16
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 0
  %21 = bitcast [7 x i8*]* %19 to i32***
  store i32** %8, i32*** %21, align 16
  %22 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 1
  %23 = bitcast i8** %22 to i32***
  store i32** %9, i32*** %23, align 8
  %24 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 2
  %25 = bitcast i8** %24 to i32***
  store i32** %10, i32*** %25, align 16
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 3
  %27 = bitcast i8** %26 to float***
  store float** %11, float*** %27, align 8
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 4
  %29 = bitcast i8** %28 to float***
  store float** %12, float*** %29, align 16
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 5
  %31 = bitcast i8** %30 to i32**
  store i32* %13, i32** %31, align 8
  %32 = getelementptr inbounds [7 x i8*], [7 x i8*]* %19, i64 0, i64 6
  %33 = bitcast i8** %32 to i32**
  store i32* %14, i32** %33, align 16
  %34 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %15, %struct.dim3* nonnull %16, i64* nonnull %17, i8** nonnull %18)
  %35 = load i64, i64* %17, align 8
  %36 = bitcast i8** %18 to %struct.ihipStream_t**
  %37 = load %struct.ihipStream_t*, %struct.ihipStream_t** %36, align 8
  %38 = bitcast %struct.dim3* %15 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.dim3, %struct.dim3* %15, i64 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = bitcast %struct.dim3* %16 to i64*
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.dim3, %struct.dim3* %16, i64 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32)* @_Z24__device_stub__pagerank2PiS_S_PfS0_ii to i8*), i64 %39, i32 %41, i64 %43, i32 %45, i8** nonnull %20, i64 %35, %struct.ihipStream_t* %37)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local void @_Z24__device_stub__inibufferPiPfS0_ii(i32* %0, float* %1, float* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dim3, align 8
  %12 = alloca %struct.dim3, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8, !tbaa !2
  store float* %1, float** %7, align 8, !tbaa !2
  store float* %2, float** %8, align 8, !tbaa !2
  store i32 %3, i32* %9, align 4, !tbaa !6
  store i32 %4, i32* %10, align 4, !tbaa !6
  %15 = alloca [5 x i8*], align 16
  %16 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 0
  %17 = bitcast [5 x i8*]* %15 to i32***
  store i32** %6, i32*** %17, align 16
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 1
  %19 = bitcast i8** %18 to float***
  store float** %7, float*** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 2
  %21 = bitcast i8** %20 to float***
  store float** %8, float*** %21, align 16
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %15, i64 0, i64 3
  %23 = bitcast i8** %22 to i32**
  store i32* %9, i32** %23, align 8
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
  %38 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, float*, float*, i32, i32)* @_Z24__device_stub__inibufferPiPfS0_ii to i8*), i64 %31, i32 %33, i64 %35, i32 %37, i8** nonnull %16, i64 %27, %struct.ihipStream_t* %29)
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dim3, align 8
  %11 = alloca %struct.dim3, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float*, align 8
  %18 = alloca float*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.dim3, align 8
  %22 = alloca %struct.dim3, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca [7 x i8*], align 16
  %26 = alloca i32*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.dim3, align 8
  %32 = alloca %struct.dim3, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca [5 x i8*], align 16
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca float*, align 8
  %42 = alloca float*, align 8
  %43 = bitcast i32* %36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %43) #8
  %44 = bitcast i32* %37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44) #8
  %45 = icmp eq i32 %0, 3
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = getelementptr inbounds i8*, i8** %1, i64 1
  %48 = load i8*, i8** %47, align 8, !tbaa !2
  %49 = getelementptr inbounds i8*, i8** %1, i64 2
  %50 = load i8*, i8** %49, align 8, !tbaa !2
  %51 = tail call i64 @strtol(i8* nocapture nonnull %50, i8** null, i32 10) #8
  %52 = trunc i64 %51 to i32
  switch i32 %52, label %62 [
    i32 1, label %56
    i32 0, label %58
    i32 2, label %60
  ]

53:                                               ; preds = %2
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %55 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 25, i64 1, %struct._IO_FILE* %54) #9
  tail call void @exit(i32 1) #10
  unreachable

56:                                               ; preds = %46
  %57 = call %struct.csr_arrays_t* @_Z10parseMetisPcPiS0_b(i8* %48, i32* nonnull %36, i32* nonnull %37, i1 zeroext false)
  br label %64

58:                                               ; preds = %46
  %59 = call %struct.csr_arrays_t* @_Z8parseCOOPcPiS0_b(i8* %48, i32* nonnull %36, i32* nonnull %37, i1 zeroext true)
  br label %64

60:                                               ; preds = %46
  %61 = call %struct.csr_arrays_t* @_Z7parseMMPcPiS0_bb(i8* %48, i32* nonnull %36, i32* nonnull %37, i1 zeroext false, i1 zeroext false)
  br label %64

62:                                               ; preds = %46
  %63 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  tail call void @exit(i32 1) #10
  unreachable

64:                                               ; preds = %58, %60, %56
  %65 = phi %struct.csr_arrays_t* [ %57, %56 ], [ %59, %58 ], [ %61, %60 ]
  %66 = load i32, i32* %36, align 4, !tbaa !6
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 2
  %69 = call noalias i8* @malloc(i64 %68) #8
  %70 = bitcast i8* %69 to float*
  %71 = icmp eq i8* %69, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %74 = call i64 @fwrite(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %73) #9
  br label %400

75:                                               ; preds = %64
  %76 = bitcast i32** %38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %76) #8
  %77 = bitcast i32** %39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #8
  %78 = bitcast i32** %40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %78) #8
  %79 = bitcast float** %41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %79) #8
  %80 = bitcast float** %42 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %80) #8
  %81 = bitcast i32** %38 to i8**
  %82 = call i32 @hipMalloc(i8** nonnull %81, i64 %68)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %75
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %86 = load i32, i32* %36, align 4, !tbaa !6
  %87 = call i8* @hipGetErrorString(i32 %82)
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %86, i8* %87) #9
  br label %398

89:                                               ; preds = %75
  %90 = load i32, i32* %37, align 4, !tbaa !6
  %91 = sext i32 %90 to i64
  %92 = shl nsw i64 %91, 2
  %93 = bitcast i32** %39 to i8**
  %94 = call i32 @hipMalloc(i8** nonnull %93, i64 %92)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %101, label %96

96:                                               ; preds = %89
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %98 = load i32, i32* %37, align 4, !tbaa !6
  %99 = call i8* @hipGetErrorString(i32 %94)
  %100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %98, i8* %99) #9
  br label %398

101:                                              ; preds = %89
  %102 = load i32, i32* %37, align 4, !tbaa !6
  %103 = sext i32 %102 to i64
  %104 = shl nsw i64 %103, 2
  %105 = bitcast i32** %40 to i8**
  %106 = call i32 @hipMalloc(i8** nonnull %105, i64 %104)
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %110 = load i32, i32* %37, align 4, !tbaa !6
  %111 = call i8* @hipGetErrorString(i32 %106)
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %110, i8* %111) #9
  br label %398

113:                                              ; preds = %101
  %114 = load i32, i32* %36, align 4, !tbaa !6
  %115 = sext i32 %114 to i64
  %116 = shl nsw i64 %115, 2
  %117 = bitcast float** %41 to i8**
  %118 = call i32 @hipMalloc(i8** nonnull %117, i64 %116)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %122 = load i32, i32* %36, align 4, !tbaa !6
  %123 = call i8* @hipGetErrorString(i32 %118)
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i32 %122, i8* %123) #9
  br label %398

125:                                              ; preds = %113
  %126 = load i32, i32* %36, align 4, !tbaa !6
  %127 = sext i32 %126 to i64
  %128 = shl nsw i64 %127, 2
  %129 = bitcast float** %42 to i8**
  %130 = call i32 @hipMalloc(i8** nonnull %129, i64 %128)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %125
  %133 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %134 = load i32, i32* %36, align 4, !tbaa !6
  %135 = call i8* @hipGetErrorString(i32 %130)
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %133, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %134, i8* %135) #9
  br label %398

137:                                              ; preds = %125
  call void @m5_work_begin(i64 0, i64 0)
  %138 = load i8*, i8** %81, align 8, !tbaa !2
  %139 = bitcast %struct.csr_arrays_t* %65 to i8**
  %140 = load i8*, i8** %139, align 8, !tbaa !8
  %141 = load i32, i32* %36, align 4, !tbaa !6
  %142 = sext i32 %141 to i64
  %143 = shl nsw i64 %142, 2
  %144 = call i32 @hipMemcpy(i8* %138, i8* %140, i64 %143, i32 1)
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %137
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %148 = load i32, i32* %36, align 4, !tbaa !6
  %149 = call i8* @hipGetErrorString(i32 %144)
  %150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %148, i8* %149) #9
  br label %398

151:                                              ; preds = %137
  %152 = load i8*, i8** %93, align 8, !tbaa !2
  %153 = getelementptr inbounds %struct.csr_arrays_t, %struct.csr_arrays_t* %65, i64 0, i32 1
  %154 = bitcast i32** %153 to i8**
  %155 = load i8*, i8** %154, align 8, !tbaa !10
  %156 = load i32, i32* %37, align 4, !tbaa !6
  %157 = sext i32 %156 to i64
  %158 = shl nsw i64 %157, 2
  %159 = call i32 @hipMemcpy(i8* %152, i8* %155, i64 %158, i32 1)
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %151
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %163 = load i32, i32* %36, align 4, !tbaa !6
  %164 = call i8* @hipGetErrorString(i32 %159)
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %163, i8* %164) #9
  br label %398

166:                                              ; preds = %151
  %167 = load i32, i32* %36, align 4, !tbaa !6
  %168 = add nsw i32 %167, 255
  %169 = sdiv i32 %168, 256
  %170 = zext i32 %169 to i64
  %171 = or i64 %170, 4294967296
  %172 = call i32 @__hipPushCallConfiguration(i64 %171, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %219

174:                                              ; preds = %166
  %175 = bitcast i32** %38 to i64*
  %176 = load i64, i64* %175, align 8, !tbaa !2
  %177 = bitcast float** %41 to i64*
  %178 = load i64, i64* %177, align 8, !tbaa !2
  %179 = bitcast float** %42 to i64*
  %180 = load i64, i64* %179, align 8, !tbaa !2
  %181 = load i32, i32* %36, align 4, !tbaa !6
  %182 = load i32, i32* %37, align 4, !tbaa !6
  %183 = bitcast i32** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %183)
  %184 = bitcast float** %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %184)
  %185 = bitcast float** %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %185)
  %186 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %186)
  %187 = bitcast i32* %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %187)
  %188 = bitcast %struct.dim3* %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %188)
  %189 = bitcast %struct.dim3* %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %189)
  %190 = bitcast i64* %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %190)
  %191 = bitcast i8** %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %191)
  %192 = bitcast [5 x i8*]* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %192)
  %193 = bitcast i32** %26 to i64*
  store i64 %176, i64* %193, align 8, !tbaa !2
  %194 = bitcast float** %27 to i64*
  store i64 %178, i64* %194, align 8, !tbaa !2
  %195 = bitcast float** %28 to i64*
  store i64 %180, i64* %195, align 8, !tbaa !2
  store i32 %181, i32* %29, align 4, !tbaa !6
  store i32 %182, i32* %30, align 4, !tbaa !6
  %196 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i64 0, i64 0
  %197 = bitcast [5 x i8*]* %35 to i32***
  store i32** %26, i32*** %197, align 16
  %198 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i64 0, i64 1
  %199 = bitcast i8** %198 to float***
  store float** %27, float*** %199, align 8
  %200 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i64 0, i64 2
  %201 = bitcast i8** %200 to float***
  store float** %28, float*** %201, align 16
  %202 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i64 0, i64 3
  %203 = bitcast i8** %202 to i32**
  store i32* %29, i32** %203, align 8
  %204 = getelementptr inbounds [5 x i8*], [5 x i8*]* %35, i64 0, i64 4
  %205 = bitcast i8** %204 to i32**
  store i32* %30, i32** %205, align 16
  %206 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %31, %struct.dim3* nonnull %32, i64* nonnull %33, i8** nonnull %34)
  %207 = load i64, i64* %33, align 8
  %208 = bitcast i8** %34 to %struct.ihipStream_t**
  %209 = load %struct.ihipStream_t*, %struct.ihipStream_t** %208, align 8
  %210 = bitcast %struct.dim3* %31 to i64*
  %211 = load i64, i64* %210, align 8
  %212 = getelementptr inbounds %struct.dim3, %struct.dim3* %31, i64 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = bitcast %struct.dim3* %32 to i64*
  %215 = load i64, i64* %214, align 8
  %216 = getelementptr inbounds %struct.dim3, %struct.dim3* %32, i64 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, float*, float*, i32, i32)* @_Z24__device_stub__inibufferPiPfS0_ii to i8*), i64 %211, i32 %213, i64 %215, i32 %217, i8** nonnull %196, i64 %207, %struct.ihipStream_t* %209)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %183)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %184)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %185)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %186)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %187)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %188)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %189)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %190)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %191)
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %192)
  br label %219

219:                                              ; preds = %174, %166
  %220 = call i32 @hipDeviceSynchronize()
  %221 = call i32 @hipGetLastError()
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %286

223:                                              ; preds = %219
  %224 = bitcast i32** %38 to i64*
  %225 = bitcast i32** %39 to i64*
  %226 = bitcast i32** %40 to i64*
  %227 = bitcast float** %41 to i64*
  %228 = bitcast float** %42 to i64*
  %229 = bitcast i32** %14 to i8*
  %230 = bitcast i32** %15 to i8*
  %231 = bitcast i32** %16 to i8*
  %232 = bitcast float** %17 to i8*
  %233 = bitcast float** %18 to i8*
  %234 = bitcast i32* %19 to i8*
  %235 = bitcast i32* %20 to i8*
  %236 = bitcast %struct.dim3* %21 to i8*
  %237 = bitcast %struct.dim3* %22 to i8*
  %238 = bitcast i64* %23 to i8*
  %239 = bitcast i8** %24 to i8*
  %240 = bitcast [7 x i8*]* %25 to i8*
  %241 = bitcast i32** %14 to i64*
  %242 = bitcast i32** %15 to i64*
  %243 = bitcast i32** %16 to i64*
  %244 = bitcast float** %17 to i64*
  %245 = bitcast float** %18 to i64*
  %246 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i64 0, i64 0
  %247 = bitcast [7 x i8*]* %25 to i32***
  %248 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i64 0, i64 1
  %249 = bitcast i8** %248 to i32***
  %250 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i64 0, i64 2
  %251 = bitcast i8** %250 to i32***
  %252 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i64 0, i64 3
  %253 = bitcast i8** %252 to float***
  %254 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i64 0, i64 4
  %255 = bitcast i8** %254 to float***
  %256 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i64 0, i64 5
  %257 = bitcast i8** %256 to i32**
  %258 = getelementptr inbounds [7 x i8*], [7 x i8*]* %25, i64 0, i64 6
  %259 = bitcast i8** %258 to i32**
  %260 = bitcast i8** %24 to %struct.ihipStream_t**
  %261 = bitcast %struct.dim3* %21 to i64*
  %262 = getelementptr inbounds %struct.dim3, %struct.dim3* %21, i64 0, i32 2
  %263 = bitcast %struct.dim3* %22 to i64*
  %264 = getelementptr inbounds %struct.dim3, %struct.dim3* %22, i64 0, i32 2
  %265 = bitcast i32** %3 to i8*
  %266 = bitcast i32** %4 to i8*
  %267 = bitcast i32** %5 to i8*
  %268 = bitcast float** %6 to i8*
  %269 = bitcast float** %7 to i8*
  %270 = bitcast i32* %8 to i8*
  %271 = bitcast i32* %9 to i8*
  %272 = bitcast %struct.dim3* %10 to i8*
  %273 = bitcast %struct.dim3* %11 to i8*
  %274 = bitcast i64* %12 to i8*
  %275 = bitcast i8** %13 to i8*
  %276 = bitcast i32** %3 to i64*
  %277 = bitcast i32** %4 to i64*
  %278 = bitcast i32** %5 to i64*
  %279 = bitcast float** %6 to i64*
  %280 = bitcast float** %7 to i64*
  %281 = bitcast i8** %13 to %struct.ihipStream_t**
  %282 = bitcast %struct.dim3* %10 to i64*
  %283 = getelementptr inbounds %struct.dim3, %struct.dim3* %10, i64 0, i32 2
  %284 = bitcast %struct.dim3* %11 to i64*
  %285 = getelementptr inbounds %struct.dim3, %struct.dim3* %11, i64 0, i32 2
  br label %298

286:                                              ; preds = %219
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %288 = call i8* @hipGetErrorString(i32 %221)
  %289 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i8* %288) #9
  br label %398

290:                                              ; preds = %337
  %291 = call i32 @hipDeviceSynchronize()
  %292 = load i8*, i8** %117, align 8, !tbaa !2
  %293 = load i32, i32* %36, align 4, !tbaa !6
  %294 = sext i32 %293 to i64
  %295 = shl nsw i64 %294, 2
  %296 = call i32 @hipMemcpy(i8* nonnull %69, i8* %292, i64 %295, i32 2)
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %344, label %340

298:                                              ; preds = %223, %337
  %299 = phi i32 [ 0, %223 ], [ %338, %337 ]
  %300 = call i32 @__hipPushCallConfiguration(i64 %171, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %318

302:                                              ; preds = %298
  %303 = load i64, i64* %224, align 8, !tbaa !2
  %304 = load i64, i64* %225, align 8, !tbaa !2
  %305 = load i64, i64* %226, align 8, !tbaa !2
  %306 = load i64, i64* %227, align 8, !tbaa !2
  %307 = load i64, i64* %228, align 8, !tbaa !2
  %308 = load i32, i32* %36, align 4, !tbaa !6
  %309 = load i32, i32* %37, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %229)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %230)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %231)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %232)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %233)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %234)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %235)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %236)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %237)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %238)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %239)
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %240)
  store i64 %303, i64* %241, align 8, !tbaa !2
  store i64 %304, i64* %242, align 8, !tbaa !2
  store i64 %305, i64* %243, align 8, !tbaa !2
  store i64 %306, i64* %244, align 8, !tbaa !2
  store i64 %307, i64* %245, align 8, !tbaa !2
  store i32 %308, i32* %19, align 4, !tbaa !6
  store i32 %309, i32* %20, align 4, !tbaa !6
  store i32** %14, i32*** %247, align 16
  store i32** %15, i32*** %249, align 8
  store i32** %16, i32*** %251, align 16
  store float** %17, float*** %253, align 8
  store float** %18, float*** %255, align 16
  store i32* %19, i32** %257, align 8
  store i32* %20, i32** %259, align 16
  %310 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %21, %struct.dim3* nonnull %22, i64* nonnull %23, i8** nonnull %24)
  %311 = load i64, i64* %23, align 8
  %312 = load %struct.ihipStream_t*, %struct.ihipStream_t** %260, align 8
  %313 = load i64, i64* %261, align 8
  %314 = load i32, i32* %262, align 8
  %315 = load i64, i64* %263, align 8
  %316 = load i32, i32* %264, align 8
  %317 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32)* @_Z24__device_stub__pagerank1PiS_S_PfS0_ii to i8*), i64 %313, i32 %314, i64 %315, i32 %316, i8** nonnull %246, i64 %311, %struct.ihipStream_t* %312)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %229)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %230)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %231)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %232)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %233)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %234)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %235)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %236)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %237)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %238)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %239)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %240)
  br label %318

318:                                              ; preds = %298, %302
  %319 = call i32 @__hipPushCallConfiguration(i64 %171, i32 1, i64 4294967552, i32 1, i64 0, %struct.ihipStream_t* null)
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %337

321:                                              ; preds = %318
  %322 = load i64, i64* %224, align 8, !tbaa !2
  %323 = load i64, i64* %225, align 8, !tbaa !2
  %324 = load i64, i64* %226, align 8, !tbaa !2
  %325 = load i64, i64* %227, align 8, !tbaa !2
  %326 = load i64, i64* %228, align 8, !tbaa !2
  %327 = load i32, i32* %36, align 4, !tbaa !6
  %328 = load i32, i32* %37, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %265)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %266)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %267)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %268)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %269)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %270)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %271)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %272)
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %273)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %274)
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %275)
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %240)
  store i64 %322, i64* %276, align 8, !tbaa !2
  store i64 %323, i64* %277, align 8, !tbaa !2
  store i64 %324, i64* %278, align 8, !tbaa !2
  store i64 %325, i64* %279, align 8, !tbaa !2
  store i64 %326, i64* %280, align 8, !tbaa !2
  store i32 %327, i32* %8, align 4, !tbaa !6
  store i32 %328, i32* %9, align 4, !tbaa !6
  store i32** %3, i32*** %247, align 16
  store i32** %4, i32*** %249, align 8
  store i32** %5, i32*** %251, align 16
  store float** %6, float*** %253, align 8
  store float** %7, float*** %255, align 16
  store i32* %8, i32** %257, align 8
  store i32* %9, i32** %259, align 16
  %329 = call i32 @__hipPopCallConfiguration(%struct.dim3* nonnull %10, %struct.dim3* nonnull %11, i64* nonnull %12, i8** nonnull %13)
  %330 = load i64, i64* %12, align 8
  %331 = load %struct.ihipStream_t*, %struct.ihipStream_t** %281, align 8
  %332 = load i64, i64* %282, align 8
  %333 = load i32, i32* %283, align 8
  %334 = load i64, i64* %284, align 8
  %335 = load i32, i32* %285, align 8
  %336 = call i32 @hipLaunchKernel(i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32)* @_Z24__device_stub__pagerank2PiS_S_PfS0_ii to i8*), i64 %332, i32 %333, i64 %334, i32 %335, i8** nonnull %246, i64 %330, %struct.ihipStream_t* %331)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %265)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %266)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %267)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %268)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %269)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %270)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %271)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %272)
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %273)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %274)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %275)
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %240)
  br label %337

337:                                              ; preds = %318, %321
  %338 = add nuw nsw i32 %299, 1
  %339 = icmp eq i32 %338, 20
  br i1 %339, label %290, label %298

340:                                              ; preds = %290
  %341 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %342 = call i8* @hipGetErrorString(i32 %296)
  %343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %341, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i8* %342) #9
  br label %398

344:                                              ; preds = %290
  call void @m5_work_end(i64 0, i64 0)
  %345 = load i32, i32* %36, align 4, !tbaa !6
  %346 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0)) #8
  %347 = icmp eq %struct._IO_FILE* %346, null
  br i1 %347, label %348, label %350

348:                                              ; preds = %344
  %349 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str, i64 0, i64 0)) #8
  br label %350

350:                                              ; preds = %348, %344
  %351 = icmp sgt i32 %345, 0
  br i1 %351, label %352, label %362

352:                                              ; preds = %350
  %353 = zext i32 %345 to i64
  br label %354

354:                                              ; preds = %354, %352
  %355 = phi i64 [ 0, %352 ], [ %360, %354 ]
  %356 = getelementptr inbounds float, float* %70, i64 %355
  %357 = load float, float* %356, align 4, !tbaa !11
  %358 = fpext float %357 to double
  %359 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), double %358) #8
  %360 = add nuw nsw i64 %355, 1
  %361 = icmp eq i64 %360, %353
  br i1 %361, label %362, label %354

362:                                              ; preds = %354, %350
  %363 = call i32 @fclose(%struct._IO_FILE* %346) #8
  call void @free(i8* %69) #8
  %364 = getelementptr inbounds %struct.csr_arrays_t, %struct.csr_arrays_t* %65, i64 0, i32 0
  %365 = load i32*, i32** %364, align 8, !tbaa !8
  %366 = icmp eq i32* %365, null
  br i1 %366, label %369, label %367

367:                                              ; preds = %362
  %368 = bitcast i32* %365 to i8*
  call void @free(i8* %368) #8
  store i32* null, i32** %364, align 8, !tbaa !8
  br label %369

369:                                              ; preds = %367, %362
  %370 = load i32*, i32** %153, align 8, !tbaa !10
  %371 = icmp eq i32* %370, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %369
  %373 = bitcast i32* %370 to i8*
  call void @free(i8* %373) #8
  store i32* null, i32** %153, align 8, !tbaa !10
  br label %374

374:                                              ; preds = %372, %369
  %375 = getelementptr inbounds %struct.csr_arrays_t, %struct.csr_arrays_t* %65, i64 0, i32 2
  %376 = load i32*, i32** %375, align 8, !tbaa !13
  %377 = icmp eq i32* %376, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %374
  %379 = bitcast i32* %376 to i8*
  call void @free(i8* %379) #8
  store i32* null, i32** %375, align 8, !tbaa !13
  br label %380

380:                                              ; preds = %378, %374
  %381 = getelementptr inbounds %struct.csr_arrays_t, %struct.csr_arrays_t* %65, i64 0, i32 3
  %382 = load i32*, i32** %381, align 8, !tbaa !14
  %383 = icmp eq i32* %382, null
  br i1 %383, label %386, label %384

384:                                              ; preds = %380
  %385 = bitcast i32* %382 to i8*
  call void @free(i8* %385) #8
  br label %386

386:                                              ; preds = %380, %384
  %387 = bitcast %struct.csr_arrays_t* %65 to i8*
  call void @free(i8* %387) #8
  %388 = load i8*, i8** %81, align 8, !tbaa !2
  %389 = call i32 @hipFree(i8* %388)
  %390 = load i8*, i8** %93, align 8, !tbaa !2
  %391 = call i32 @hipFree(i8* %390)
  %392 = load i8*, i8** %105, align 8, !tbaa !2
  %393 = call i32 @hipFree(i8* %392)
  %394 = load i8*, i8** %117, align 8, !tbaa !2
  %395 = call i32 @hipFree(i8* %394)
  %396 = load i8*, i8** %129, align 8, !tbaa !2
  %397 = call i32 @hipFree(i8* %396)
  br label %398

398:                                              ; preds = %286, %340, %386, %161, %146, %132, %120, %108, %96, %84
  %399 = phi i32 [ -1, %84 ], [ -1, %96 ], [ -1, %108 ], [ -1, %120 ], [ -1, %132 ], [ -1, %146 ], [ -1, %161 ], [ -1, %286 ], [ -1, %340 ], [ 0, %386 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %80) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #8
  br label %400

400:                                              ; preds = %398, %72
  %401 = phi i32 [ %399, %398 ], [ -1, %72 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44) #8
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %43) #8
  ret i32 %401
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #3

declare dso_local %struct.csr_arrays_t* @_Z10parseMetisPcPiS0_b(i8*, i32*, i32*, i1 zeroext) local_unnamed_addr #4

declare dso_local %struct.csr_arrays_t* @_Z8parseCOOPcPiS0_b(i8*, i32*, i32*, i1 zeroext) local_unnamed_addr #4

declare dso_local %struct.csr_arrays_t* @_Z7parseMMPcPiS0_bb(i8*, i32*, i32*, i1 zeroext, i1 zeroext) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @malloc(i64) local_unnamed_addr #2

declare dso_local i8* @hipGetErrorString(i32) local_unnamed_addr #4

declare dso_local void @m5_work_begin(i64, i64) local_unnamed_addr #4

declare dso_local i32 @hipMemcpy(i8*, i8*, i64, i32) local_unnamed_addr #4

declare dso_local i32 @__hipPushCallConfiguration(i64, i32, i64, i32, i64, %struct.ihipStream_t*) local_unnamed_addr #4

declare dso_local i32 @hipDeviceSynchronize() local_unnamed_addr #4

declare dso_local i32 @hipGetLastError() local_unnamed_addr #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @m5_work_end(i64, i64) local_unnamed_addr #4

; Function Attrs: nofree nounwind uwtable
define dso_local void @_Z13print_vectorfPfi(float* nocapture readonly %0, i32 %1) local_unnamed_addr #5 {
  %3 = tail call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %4 = icmp eq %struct._IO_FILE* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %2
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = zext i32 %1 to i64
  br label %13

11:                                               ; preds = %13, %7
  %12 = tail call i32 @fclose(%struct._IO_FILE* %3)
  ret void

13:                                               ; preds = %9, %13
  %14 = phi i64 [ 0, %9 ], [ %19, %13 ]
  %15 = getelementptr inbounds float, float* %0, i64 %14
  %16 = load float, float* %15, align 4, !tbaa !11
  %17 = fpext float %16 to double
  %18 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), double %17)
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %11, label %13
}

; Function Attrs: nounwind
declare dso_local void @free(i8* nocapture) local_unnamed_addr #6

declare dso_local i32 @hipFree(i8*) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noalias %struct._IO_FILE* @fopen(i8* nocapture readonly, i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

declare dso_local i32 @hipMalloc(i8**, i64) local_unnamed_addr #4

declare dso_local i32 @__hipRegisterFunction(i8**, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i32*) local_unnamed_addr

declare dso_local i8** @__hipRegisterFatBinary(i8*) local_unnamed_addr

define internal void @__hip_module_ctor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i8** @__hipRegisterFatBinary(i8* bitcast ({ i32, i32, i8*, i8* }* @__hip_fatbin_wrapper to i8*))
  store i8** %5, i8*** @__hip_gpubin_handle, align 8
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i8** [ %5, %4 ], [ %2, %1 ]
  %8 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32)* @_Z24__device_stub__pagerank1PiS_S_PfS0_ii to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @0, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %9 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, i32*, i32*, float*, float*, i32, i32)* @_Z24__device_stub__pagerank2PiS_S_PfS0_ii to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @1, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %10 = tail call i32 @__hipRegisterFunction(i8** %7, i8* bitcast (void (i32*, float*, float*, i32, i32)* @_Z24__device_stub__inibufferPiPfS0_ii to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @2, i64 0, i64 0), i32 -1, i8* null, i8* null, i8* null, i8* null, i32* null)
  %11 = tail call i32 @atexit(void (i8*)* nonnull @__hip_module_dtor)
  ret void
}

declare dso_local void @__hipUnregisterFatBinary(i8**) local_unnamed_addr

define internal void @__hip_module_dtor(i8* nocapture readnone %0) {
  %2 = load i8**, i8*** @__hip_gpubin_handle, align 8
  %3 = icmp eq i8** %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @__hipUnregisterFatBinary(i8** nonnull %2)
  store i8** null, i8*** @__hip_gpubin_handle, align 8
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

declare dso_local i32 @atexit(void (i8*)*) local_unnamed_addr

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #7

attributes #0 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !3, i64 0}
!9 = !{!"_ZTS12csr_arrays_t", !3, i64 0, !3, i64 8, !3, i64 16, !3, i64 24}
!10 = !{!9, !3, i64 8}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !4, i64 0}
!13 = !{!9, !3, i64 16}
!14 = !{!9, !3, i64 24}

; __CLANG_OFFLOAD_BUNDLE____END__ host-x86_64-unknown-linux-gnu
