	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx801+xnack"
	.protected	_Z9pagerank1PiS_S_PfS0_ii ; -- Begin function _Z9pagerank1PiS_S_PfS0_ii
	.globl	_Z9pagerank1PiS_S_PfS0_ii
	.p2align	8
	.type	_Z9pagerank1PiS_S_PfS0_ii,@function
_Z9pagerank1PiS_S_PfS0_ii:              ; @_Z9pagerank1PiS_S_PfS0_ii
_Z9pagerank1PiS_S_PfS0_ii$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[3:4], s[0:1], s0, v2, v[0:1]
	s_load_dwordx2 s[4:5], s[6:7], 0x28
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s4, v3
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_9
; %bb.1:
	s_load_dwordx4 s[0:3], s[6:7], 0x0
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, v3
	v_ashrrev_i32_e32 v1, 31, v3
	v_ashrrev_i64 v[4:5], 30, v[4:5]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s1
	v_add_u32_e32 v4, vcc, s0, v4
	v_addc_u32_e32 v5, vcc, v0, v5, vcc
	flat_load_dword v0, v[4:5]
	v_add_u32_e32 v2, vcc, 1, v3
	v_cmp_gt_i32_e32 vcc, s4, v2
	v_mov_b32_e32 v2, s5
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_3
; %bb.2:
	v_add_u32_e32 v4, vcc, 4, v4
	v_addc_u32_e32 v5, vcc, 0, v5, vcc
	flat_load_dword v2, v[4:5]
BB0_3:
	s_or_b64 exec, exec, s[0:1]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, v2, v0
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_9
; %bb.4:                                ; %.lr.ph.preheader
	s_load_dwordx4 s[4:7], s[6:7], 0x18
	v_mov_b32_e32 v4, v1
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s5
	v_add_u32_e32 v3, vcc, s4, v3
	v_addc_u32_e32 v4, vcc, v1, v4, vcc
	v_sub_u32_e32 v1, vcc, v2, v0
	v_cvt_f32_i32_e32 v1, v1
	flat_load_dword v3, v[3:4]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_div_scale_f32 v4, s[0:1], v1, v1, v3
	v_div_scale_f32 v5, vcc, v3, v1, v3
	v_rcp_f32_e32 v6, v4
	v_fma_f32 v7, -v4, v6, 1.0
	v_fma_f32 v6, v7, v6, v6
	v_mul_f32_e32 v7, v5, v6
	v_fma_f32 v8, -v4, v7, v5
	v_fma_f32 v7, v8, v6, v7
	v_fma_f32 v4, -v4, v7, v5
	v_div_fmas_f32 v4, v4, v6, v7
	v_div_fixup_f32 v3, v4, v1, v3
	s_mov_b64 s[0:1], 0
BB0_5:                                  ; %.lr.ph
                                        ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	v_mov_b32_e32 v1, s3
	v_add_u32_e32 v4, vcc, s2, v4
	v_addc_u32_e32 v5, vcc, v1, v5, vcc
	flat_load_dword v4, v[4:5]
	v_mov_b32_e32 v1, s7
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ashrrev_i32_e32 v5, 31, v4
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_add_u32_e32 v4, vcc, s6, v4
	v_addc_u32_e32 v5, vcc, v1, v5, vcc
    //Leiqi:
    //Load value from V[4:5]
	flat_load_dword v1, v[4:5] glc
	s_mov_b64 s[4:5], 0
	s_mov_b64 s[8:9], 0
BB0_6:                                  ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	flat_load_dword v6, v[4:5] glc
	s_waitcnt vmcnt(1) lgkmcnt(1)
	v_mov_b32_e32 v8, v1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v8, v6
	s_or_b64 s[8:9], vcc, s[8:9]
	v_mov_b32_e32 v1, v6
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB0_6
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	s_or_b64 exec, exec, s[8:9]
	v_add_f32_e32 v7, v3, v8            
	flat_atomic_cmpswap v1, v[4:5], v[7:8] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v1, v6
	s_or_b64 s[4:5], vcc, s[4:5]
	s_mov_b64 s[8:9], 0
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execnz BB0_6
; %bb.8:                                ; %_Z9atomicAddPff.exit
                                        ;   in Loop: Header=BB0_5 Depth=1
	s_or_b64 exec, exec, s[4:5]
	v_add_u32_e32 v0, vcc, 1, v0
	v_cmp_ge_i32_e32 vcc, v0, v2
	s_or_b64 s[0:1], vcc, s[0:1]
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz BB0_5


BB0_9:                                  ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z9pagerank1PiS_S_PfS0_ii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 9
		.amdhsa_next_free_sgpr 10
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	_Z9pagerank1PiS_S_PfS0_ii, .Lfunc_end0-_Z9pagerank1PiS_S_PfS0_ii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 492
; NumSgprs: 14
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 14
; NumVGPRsForWavesPerEU: 9
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z9pagerank2PiS_S_PfS0_ii ; -- Begin function _Z9pagerank2PiS_S_PfS0_ii
	.globl	_Z9pagerank2PiS_S_PfS0_ii
	.p2align	8
	.type	_Z9pagerank2PiS_S_PfS0_ii,@function
_Z9pagerank2PiS_S_PfS0_ii:              ; @_Z9pagerank2PiS_S_PfS0_ii
_Z9pagerank2PiS_S_PfS0_ii$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dword s0, s[6:7], 0x28
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB1_2
; %bb.1:
	v_cvt_f32_i32_e32 v1, s0
	v_cvt_f64_f32_e32 v[1:2], v1
	s_mov_b32 s5, 0x3fc33333
	s_mov_b32 s4, 0x33333333
	v_div_scale_f64 v[3:4], s[0:1], v[1:2], v[1:2], s[4:5]
	v_rcp_f64_e32 v[5:6], v[3:4]
	v_fma_f64 v[7:8], -v[3:4], v[5:6], 1.0
	v_fma_f64 v[5:6], v[5:6], v[7:8], v[5:6]
	v_div_scale_f64 v[7:8], vcc, s[4:5], v[1:2], s[4:5]
	v_fma_f64 v[9:10], -v[3:4], v[5:6], 1.0
	v_fma_f64 v[5:6], v[5:6], v[9:10], v[5:6]
	v_mul_f64 v[9:10], v[7:8], v[5:6]
	v_fma_f64 v[3:4], -v[3:4], v[9:10], v[7:8]
	v_div_fmas_f64 v[3:4], v[3:4], v[5:6], v[9:10]
	s_load_dwordx4 s[0:3], s[6:7], 0x18
	v_mov_b32_e32 v5, 0
	v_mov_b32_e32 v6, v0
	v_ashrrev_i64 v[6:7], 30, v[5:6]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s3
	v_add_u32_e32 v8, vcc, s2, v6
	v_addc_u32_e32 v9, vcc, v0, v7, vcc
	v_div_fixup_f64 v[0:1], v[3:4], v[1:2], s[4:5]
	flat_load_dword v2, v[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cvt_f64_f32_e32 v[2:3], v2
	s_mov_b32 s5, 0x3feb3333
	v_fma_f64 v[0:1], v[2:3], s[4:5], v[0:1]
	v_mov_b32_e32 v2, s1
	v_cvt_f32_f64_e32 v3, v[0:1]
	v_add_u32_e32 v0, vcc, s0, v6
	v_addc_u32_e32 v1, vcc, v2, v7, vcc
	flat_store_dword v[0:1], v3
	flat_store_dword v[8:9], v5
BB1_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z9pagerank2PiS_S_PfS0_ii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 11
		.amdhsa_next_free_sgpr 9
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end1:
	.size	_Z9pagerank2PiS_S_PfS0_ii, .Lfunc_end1-_Z9pagerank2PiS_S_PfS0_ii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 276
; NumSgprs: 13
; NumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 13
; NumVGPRsForWavesPerEU: 11
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z9inibufferPiPfS0_ii   ; -- Begin function _Z9inibufferPiPfS0_ii
	.globl	_Z9inibufferPiPfS0_ii
	.p2align	8
	.type	_Z9inibufferPiPfS0_ii,@function
_Z9inibufferPiPfS0_ii:                  ; @_Z9inibufferPiPfS0_ii
_Z9inibufferPiPfS0_ii$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dword s0, s[6:7], 0x18
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB2_2
; %bb.1:
	v_cvt_f32_i32_e32 v6, s0
	v_div_scale_f32 v1, s[0:1], v6, v6, 1.0
	v_div_scale_f32 v2, vcc, 1.0, v6, 1.0
	v_rcp_f32_e32 v3, v1
	v_fma_f32 v4, -v1, v3, 1.0
	v_fma_f32 v3, v4, v3, v3
	v_mul_f32_e32 v4, v2, v3
	v_fma_f32 v5, -v1, v4, v2
	v_fma_f32 v4, v5, v3, v4
	v_fma_f32 v1, -v1, v4, v2
	v_div_fmas_f32 v7, v1, v3, v4
	s_load_dwordx4 s[0:3], s[6:7], 0x8
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, v0
	v_ashrrev_i64 v[2:3], 30, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s1
	v_mov_b32_e32 v8, s3
	v_add_u32_e32 v4, vcc, s0, v2
	v_addc_u32_e32 v5, vcc, v0, v3, vcc
	v_add_u32_e32 v2, vcc, s2, v2
	v_addc_u32_e32 v3, vcc, v8, v3, vcc
	v_div_fixup_f32 v0, v7, v6, 1.0
	flat_store_dword v[4:5], v0
	flat_store_dword v[2:3], v1
BB2_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z9inibufferPiPfS0_ii
		.amdhsa_group_segment_fixed_size 0
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 9
		.amdhsa_next_free_sgpr 9
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end2:
	.size	_Z9inibufferPiPfS0_ii, .Lfunc_end2-_Z9inibufferPiPfS0_ii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 216
; NumSgprs: 13
; NumVgprs: 9
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 13
; NumVGPRsForWavesPerEU: 9
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.ident	"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"
	.section	".note.GNU-stack"
	.addrsig
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z9pagerank1PiS_S_PfS0_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     14
    .sgpr_spill_count: 0
    .symbol:         _Z9pagerank1PiS_S_PfS0_ii.kd
    .vgpr_count:     9
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         32
        .size:           8
        .value_kind:     global_buffer
      - .offset:         40
        .size:           4
        .value_kind:     by_value
      - .offset:         44
        .size:           4
        .value_kind:     by_value
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 104
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z9pagerank2PiS_S_PfS0_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z9pagerank2PiS_S_PfS0_ii.kd
    .vgpr_count:     11
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .offset:         24
        .size:           4
        .value_kind:     by_value
      - .offset:         28
        .size:           4
        .value_kind:     by_value
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         72
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         80
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 88
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z9inibufferPiPfS0_ii
    .private_segment_fixed_size: 0
    .sgpr_count:     13
    .sgpr_spill_count: 0
    .symbol:         _Z9inibufferPiPfS0_ii.kd
    .vgpr_count:     9
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
