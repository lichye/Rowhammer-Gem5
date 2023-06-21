	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx900"
	.protected	_Z10bfs_kernelPiS_S_PfS_iii ; -- Begin function _Z10bfs_kernelPiS_S_PfS_iii
	.globl	_Z10bfs_kernelPiS_S_PfS_iii
	.p2align	8
	.type	_Z10bfs_kernelPiS_S_PfS_iii,@function
_Z10bfs_kernelPiS_S_PfS_iii:            ; @_Z10bfs_kernelPiS_S_PfS_iii
_Z10bfs_kernelPiS_S_PfS_iii$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[1:2], s[0:1], s0, v2, v[0:1]
	s_load_dwordx4 s[16:19], s[6:7], 0x28
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s16, v1
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB0_13
; %bb.1:
	s_load_dwordx8 s[8:15], s[6:7], 0x0
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, v1
	v_ashrrev_i32_e32 v4, 31, v1
	v_ashrrev_i64 v[2:3], 30, v[2:3]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s13
	v_add_co_u32_e32 v2, vcc, s12, v2
	v_addc_co_u32_e32 v3, vcc, v0, v3, vcc
	global_load_dword v0, v[2:3], off
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, s18, v0
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_13
; %bb.2:
	s_load_dwordx4 s[0:3], s[6:7], 0x20
	v_mov_b32_e32 v3, v1
	v_lshlrev_b64 v[5:6], 2, v[3:4]
	v_mov_b32_e32 v0, s9
	v_add_co_u32_e32 v5, vcc, s8, v5
	v_addc_co_u32_e32 v6, vcc, v0, v6, vcc
	global_load_dword v0, v[5:6], off
	v_add_u32_e32 v2, 1, v1
	v_cmp_gt_i32_e32 vcc, s16, v2
	v_mov_b32_e32 v2, s17
	s_waitcnt lgkmcnt(0)
	s_and_saveexec_b64 s[2:3], vcc
	s_cbranch_execz BB0_4
; %bb.3:
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[1:2], 2, v[1:2]
	v_mov_b32_e32 v5, s9
	v_add_co_u32_e32 v1, vcc, s8, v1
	v_addc_co_u32_e32 v2, vcc, v5, v2, vcc
	global_load_dword v2, v[1:2], off offset:4
BB0_4:
	s_or_b64 exec, exec, s[2:3]
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc, v0, v2
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB0_13
; %bb.5:                                ; %.lr.ph
	s_add_i32 s2, s18, 1
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	v_mov_b32_e32 v1, s15
	v_add_co_u32_e32 v3, vcc, s14, v3
	v_addc_co_u32_e32 v4, vcc, v1, v4, vcc
	s_mov_b64 s[4:5], 0
	s_branch BB0_7
BB0_6:                                  ; %Flow73
                                        ;   in Loop: Header=BB0_7 Depth=1
	s_or_b64 exec, exec, s[6:7]
	v_add_u32_e32 v0, 1, v0
	v_cmp_ge_i32_e32 vcc, v0, v2
	s_or_b64 s[4:5], vcc, s[4:5]
	s_andn2_b64 exec, exec, s[4:5]
	s_cbranch_execz BB0_13
BB0_7:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_11 Depth 2
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[5:6], 2, v[0:1]
	v_mov_b32_e32 v1, s11
	v_add_co_u32_e32 v5, vcc, s10, v5
	v_addc_co_u32_e32 v6, vcc, v1, v6, vcc
	global_load_dword v5, v[5:6], off
	v_mov_b32_e32 v1, s13
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v6, 31, v5
	v_lshlrev_b64 v[7:8], 2, v[5:6]
	v_add_co_u32_e32 v7, vcc, s12, v7
	v_addc_co_u32_e32 v8, vcc, v1, v8, vcc
	global_load_dword v1, v[7:8], off
	s_waitcnt vmcnt(0)
	v_cmp_gt_i32_e32 vcc, 0, v1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB0_9
; %bb.8:                                ;   in Loop: Header=BB0_7 Depth=1
	v_mov_b32_e32 v1, 1
	v_mov_b32_e32 v10, s1
	v_mov_b32_e32 v9, s0
	global_store_dword v[9:10], v1, off
	v_mov_b32_e32 v1, s2
	global_store_dword v[7:8], v1, off
BB0_9:                                  ;   in Loop: Header=BB0_7 Depth=1
	s_or_b64 exec, exec, s[6:7]
	global_load_dword v1, v[7:8], off
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, s2, v1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB0_6
; %bb.10:                               ;   in Loop: Header=BB0_7 Depth=1
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_mov_b32_e32 v1, s15
	v_add_co_u32_e32 v5, vcc, s14, v5
	v_addc_co_u32_e32 v6, vcc, v1, v6, vcc
	global_load_dword v1, v[3:4], off
	global_load_dword v7, v[5:6], off glc
	s_mov_b64 s[8:9], 0
	s_mov_b64 s[16:17], 0
BB0_11:                                 ;   Parent Loop BB0_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	global_load_dword v8, v[5:6], off glc
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v10, v7
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, v10, v8
	s_or_b64 s[16:17], vcc, s[16:17]
	v_mov_b32_e32 v7, v8
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execnz BB0_11
; %bb.12:                               ;   in Loop: Header=BB0_11 Depth=2
	s_or_b64 exec, exec, s[16:17]
	v_add_f32_e32 v9, v1, v10
	global_atomic_cmpswap v7, v[5:6], v[9:10], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, v7, v8
	s_or_b64 s[8:9], vcc, s[8:9]
	s_mov_b64 s[16:17], 0
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz BB0_11
	s_branch BB0_6
BB0_13:                                 ; %.loopexit
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z10bfs_kernelPiS_S_PfS_iii
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
		.amdhsa_next_free_sgpr 20
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
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
	.size	_Z10bfs_kernelPiS_S_PfS_iii, .Lfunc_end0-_Z10bfs_kernelPiS_S_PfS_iii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 576
; NumSgprs: 22
; NumVgprs: 11
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 2
; NumSGPRsForWavesPerEU: 22
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
	.protected	_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_ ; -- Begin function _Z16backtrack_kernelPiS_S_PfS0_iiiiS0_
	.globl	_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_
	.p2align	8
	.type	_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_,@function
_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_: ; @_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_
_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dwordx4 s[0:3], s[6:7], 0x28
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz BB1_13
; %bb.1:
	s_load_dwordx8 s[8:15], s[6:7], 0x0
	v_mov_b32_e32 v3, 0
	v_mov_b32_e32 v4, v0
	v_ashrrev_i32_e32 v2, 31, v0
	v_ashrrev_i64 v[3:4], 30, v[3:4]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s13
	v_add_co_u32_e32 v3, vcc, s12, v3
	v_addc_co_u32_e32 v4, vcc, v1, v4, vcc
	global_load_dword v1, v[3:4], off
	s_add_i32 s4, s2, -1
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, s4, v1
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB1_13
; %bb.2:
	s_load_dwordx4 s[16:19], s[6:7], 0x20
	v_mov_b32_e32 v1, v0
	v_lshlrev_b64 v[3:4], 2, v[1:2]
	v_mov_b32_e32 v5, s9
	v_add_co_u32_e32 v3, vcc, s8, v3
	v_addc_co_u32_e32 v4, vcc, v5, v4, vcc
	global_load_dword v3, v[3:4], off
	v_add_u32_e32 v4, 1, v0
	v_cmp_gt_i32_e32 vcc, s0, v4
	v_mov_b32_e32 v5, s1
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB1_4
; %bb.3:
	v_ashrrev_i32_e32 v5, 31, v0
	v_mov_b32_e32 v4, v0
	v_lshlrev_b64 v[4:5], 2, v[4:5]
	v_mov_b32_e32 v6, s9
	v_add_co_u32_e32 v4, vcc, s8, v4
	v_addc_co_u32_e32 v5, vcc, v6, v5, vcc
	global_load_dword v5, v[4:5], off offset:4
BB1_4:
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx2 s[4:5], s[6:7], 0x38
	s_waitcnt vmcnt(0)
	v_cmp_lt_i32_e32 vcc, v3, v5
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz BB1_11
; %bb.5:                                ; %.lr.ph
	s_add_i32 s2, s2, -2
	v_lshlrev_b64 v[8:9], 2, v[1:2]
	v_mov_b32_e32 v4, s15
	v_add_co_u32_e32 v6, vcc, s14, v8
	v_addc_co_u32_e32 v7, vcc, v4, v9, vcc
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v8, vcc, s16, v8
	v_addc_co_u32_e32 v9, vcc, v4, v9, vcc
	s_mov_b64 s[8:9], 0
	s_branch BB1_7
BB1_6:                                  ; %Flow85
                                        ;   in Loop: Header=BB1_7 Depth=1
	s_or_b64 exec, exec, s[18:19]
	v_add_u32_e32 v3, 1, v3
	v_cmp_ge_i32_e32 vcc, v3, v5
	s_or_b64 s[8:9], vcc, s[8:9]
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execz BB1_11
BB1_7:                                  ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_9 Depth 2
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[10:11], 2, v[3:4]
	v_mov_b32_e32 v4, s11
	v_add_co_u32_e32 v10, vcc, s10, v10
	v_addc_co_u32_e32 v11, vcc, v4, v11, vcc
	global_load_dword v10, v[10:11], off
	v_mov_b32_e32 v4, s13
	s_waitcnt vmcnt(0)
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[12:13], 2, v[10:11]
	v_add_co_u32_e32 v12, vcc, s12, v12
	v_addc_co_u32_e32 v13, vcc, v4, v13, vcc
	global_load_dword v4, v[12:13], off
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, s2, v4
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz BB1_6
; %bb.8:                                ;   in Loop: Header=BB1_7 Depth=1
	v_lshlrev_b64 v[10:11], 2, v[10:11]
	v_mov_b32_e32 v4, s15
	v_add_co_u32_e32 v12, vcc, s14, v10
	v_addc_co_u32_e32 v13, vcc, v4, v11, vcc
	global_load_dword v4, v[6:7], off
	global_load_dword v13, v[12:13], off
	s_waitcnt vmcnt(0)
	v_div_scale_f32 v12, s[0:1], v4, v4, v13
	v_div_scale_f32 v14, vcc, v13, v4, v13
	v_mov_b32_e32 v15, s17
	global_load_dword v16, v[8:9], off
	v_rcp_f32_e32 v17, v12
	v_add_co_u32_e64 v10, s[0:1], s16, v10
	v_addc_co_u32_e64 v11, s[0:1], v15, v11, s[0:1]
	v_fma_f32 v15, -v12, v17, 1.0
	v_fma_f32 v15, v15, v17, v17
	v_mul_f32_e32 v17, v14, v15
	v_fma_f32 v18, -v12, v17, v14
	v_fma_f32 v17, v18, v15, v17
	v_fma_f32 v12, -v12, v17, v14
	v_div_fmas_f32 v14, v12, v15, v17
	global_load_dword v12, v[10:11], off glc
	s_mov_b64 s[0:1], 0
	s_waitcnt vmcnt(1)
	v_add_f32_e32 v15, 1.0, v16
	v_div_fixup_f32 v4, v14, v4, v13
	v_mul_f32_e32 v4, v4, v15
	s_mov_b64 s[20:21], 0
BB1_9:                                  ;   Parent Loop BB1_7 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	global_load_dword v13, v[10:11], off glc
	s_waitcnt vmcnt(1)
	v_mov_b32_e32 v15, v12
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, v15, v13
	s_or_b64 s[20:21], vcc, s[20:21]
	v_mov_b32_e32 v12, v13
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz BB1_9
; %bb.10:                               ;   in Loop: Header=BB1_9 Depth=2
	s_or_b64 exec, exec, s[20:21]
	v_add_f32_e32 v14, v4, v15
	global_atomic_cmpswap v12, v[10:11], v[14:15], off glc
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, v12, v13
	s_or_b64 s[0:1], vcc, s[0:1]
	s_mov_b64 s[20:21], 0
	s_andn2_b64 exec, exec, s[0:1]
	s_cbranch_execnz BB1_9
	s_branch BB1_6
BB1_11:                                 ; %Flow87
	s_or_b64 exec, exec, s[6:7]
	v_cmp_ne_u32_e32 vcc, s3, v0
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB1_13
; %bb.12:
	v_lshlrev_b64 v[0:1], 2, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s5
	v_add_co_u32_e32 v2, vcc, s4, v0
	v_addc_co_u32_e32 v3, vcc, v3, v1, vcc
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v0, vcc, s16, v0
	v_addc_co_u32_e32 v1, vcc, v4, v1, vcc
	global_load_dword v4, v[2:3], off
	global_load_dword v0, v[0:1], off
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v4, v0
	global_store_dword v[2:3], v0, off
BB1_13:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z16backtrack_kernelPiS_S_PfS0_iiiiS0_
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
		.amdhsa_next_free_vgpr 19
		.amdhsa_next_free_sgpr 22
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
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
	.size	_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_, .Lfunc_end1-_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 760
; NumSgprs: 24
; NumVgprs: 19
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 2
; VGPRBlocks: 4
; NumSGPRsForWavesPerEU: 24
; NumVGPRsForWavesPerEU: 19
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z15back_sum_kerneliiPiPfS0_i ; -- Begin function _Z15back_sum_kerneliiPiPfS0_i
	.globl	_Z15back_sum_kerneliiPiPfS0_i
	.p2align	8
	.type	_Z15back_sum_kerneliiPiPfS0_i,@function
_Z15back_sum_kerneliiPiPfS0_i:          ; @_Z15back_sum_kerneliiPiPfS0_i
_Z15back_sum_kerneliiPiPfS0_i$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dwordx2 s[4:5], s[6:7], 0x0
	s_load_dword s0, s[6:7], 0x20
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s0, v0
	v_cmp_ne_u32_e64 s[0:1], s4, v0
	s_and_b64 s[0:1], vcc, s[0:1]
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz BB2_3
; %bb.1:
	s_load_dwordx4 s[0:3], s[6:7], 0x8
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, v0
	v_ashrrev_i32_e32 v1, 31, v0
	v_ashrrev_i64 v[2:3], 30, v[2:3]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s1
	v_add_co_u32_e32 v2, vcc, s0, v2
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	global_load_dword v2, v[2:3], off
	s_add_i32 s0, s5, -1
	s_waitcnt vmcnt(0)
	v_cmp_eq_u32_e32 vcc, s0, v2
	s_and_b64 exec, exec, vcc
	s_cbranch_execz BB2_3
; %bb.2:
	s_load_dwordx2 s[0:1], s[6:7], 0x18
	v_lshlrev_b64 v[0:1], 2, v[0:1]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v3, s1
	v_add_co_u32_e32 v2, vcc, s0, v0
	v_addc_co_u32_e32 v3, vcc, v3, v1, vcc
	v_mov_b32_e32 v4, s3
	v_add_co_u32_e32 v0, vcc, s2, v0
	v_addc_co_u32_e32 v1, vcc, v4, v1, vcc
	global_load_dword v4, v[2:3], off
	global_load_dword v0, v[0:1], off
	s_waitcnt vmcnt(0)
	v_add_f32_e32 v0, v4, v0
	global_store_dword v[2:3], v0, off
BB2_3:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z15back_sum_kerneliiPiPfS0_i
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
		.amdhsa_next_free_vgpr 5
		.amdhsa_next_free_sgpr 9
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
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
	.size	_Z15back_sum_kerneliiPiPfS0_i, .Lfunc_end2-_Z15back_sum_kerneliiPiPfS0_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 232
; NumSgprs: 11
; NumVgprs: 5
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 11
; NumVGPRsForWavesPerEU: 5
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z14clean_1d_arrayiPiPfS0_i ; -- Begin function _Z14clean_1d_arrayiPiPfS0_i
	.globl	_Z14clean_1d_arrayiPiPfS0_i
	.p2align	8
	.type	_Z14clean_1d_arrayiPiPfS0_i,@function
_Z14clean_1d_arrayiPiPfS0_i:            ; @_Z14clean_1d_arrayiPiPfS0_i
_Z14clean_1d_arrayiPiPfS0_i$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dword s0, s[6:7], 0x20
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB3_2
; %bb.1:                                ; %.sink.split
	s_load_dword s8, s[6:7], 0x0
	s_load_dwordx4 s[0:3], s[6:7], 0x8
	s_load_dwordx2 s[4:5], s[6:7], 0x18
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, v0
	v_ashrrev_i64 v[2:3], 30, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v5, s3
	v_add_co_u32_e32 v4, vcc, s2, v2
	v_addc_co_u32_e32 v5, vcc, v5, v3, vcc
	global_store_dword v[4:5], v1, off
	v_mov_b32_e32 v1, s5
	v_add_co_u32_e32 v4, vcc, s4, v2
	v_addc_co_u32_e32 v5, vcc, v1, v3, vcc
	v_cmp_eq_u32_e32 vcc, s8, v0
	v_cndmask_b32_e64 v1, 0, 1.0, vcc
	v_cmp_ne_u32_e32 vcc, s8, v0
	v_cndmask_b32_e64 v6, 0, -1, vcc
	global_store_dword v[4:5], v1, off
	v_mov_b32_e32 v1, s1
	v_add_co_u32_e32 v0, vcc, s0, v2
	v_addc_co_u32_e32 v1, vcc, v1, v3, vcc
	global_store_dword v[0:1], v6, off
BB3_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z14clean_1d_arrayiPiPfS0_i
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
		.amdhsa_next_free_vgpr 7
		.amdhsa_next_free_sgpr 9
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end3:
	.size	_Z14clean_1d_arrayiPiPfS0_i, .Lfunc_end3-_Z14clean_1d_arrayiPiPfS0_i
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 192
; NumSgprs: 11
; NumVgprs: 7
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 1
; NumSGPRsForWavesPerEU: 11
; NumVGPRsForWavesPerEU: 7
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z14clean_2d_arrayPii   ; -- Begin function _Z14clean_2d_arrayPii
	.globl	_Z14clean_2d_arrayPii
	.p2align	8
	.type	_Z14clean_2d_arrayPii,@function
_Z14clean_2d_arrayPii:                  ; @_Z14clean_2d_arrayPii
_Z14clean_2d_arrayPii$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dword s0, s[6:7], 0x8
	s_waitcnt lgkmcnt(0)
	s_mul_i32 s0, s0, s0
	v_cmp_gt_i32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB4_2
; %bb.1:
	s_load_dwordx2 s[0:1], s[6:7], 0x0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, v0
	v_ashrrev_i64 v[2:3], 30, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s1
	v_add_co_u32_e32 v2, vcc, s0, v2
	v_addc_co_u32_e32 v3, vcc, v0, v3, vcc
	global_store_dword v[2:3], v1, off
BB4_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z14clean_2d_arrayPii
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
		.amdhsa_next_free_vgpr 4
		.amdhsa_next_free_sgpr 9
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end4:
	.size	_Z14clean_2d_arrayPii, .Lfunc_end4-_Z14clean_2d_arrayPii
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 116
; NumSgprs: 11
; NumVgprs: 4
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 11
; NumVGPRsForWavesPerEU: 4
; Occupancy: 10
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 8
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.text
	.protected	_Z8clean_bcPfi          ; -- Begin function _Z8clean_bcPfi
	.globl	_Z8clean_bcPfi
	.p2align	8
	.type	_Z8clean_bcPfi,@function
_Z8clean_bcPfi:                         ; @_Z8clean_bcPfi
_Z8clean_bcPfi$local:
; %bb.0:
	v_mov_b32_e32 v1, 0
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s0, s0, 0xffff
	v_mov_b32_e32 v2, s8
	v_mad_u64_u32 v[0:1], s[0:1], s0, v2, v[0:1]
	s_load_dword s0, s[6:7], 0x8
	s_waitcnt lgkmcnt(0)
	v_cmp_gt_i32_e32 vcc, s0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz BB5_2
; %bb.1:
	s_load_dwordx2 s[0:1], s[6:7], 0x0
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, v0
	v_ashrrev_i64 v[2:3], 30, v[1:2]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v0, s1
	v_add_co_u32_e32 v2, vcc, s0, v2
	v_addc_co_u32_e32 v3, vcc, v0, v3, vcc
	global_store_dword v[2:3], v1, off
BB5_2:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel _Z8clean_bcPfi
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
		.amdhsa_next_free_vgpr 4
		.amdhsa_next_free_sgpr 9
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end5:
	.size	_Z8clean_bcPfi, .Lfunc_end5-_Z8clean_bcPfi
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 112
; NumSgprs: 11
; NumVgprs: 4
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 240
; IeeeMode: 1
; LDSByteSize: 0 bytes/workgroup (compile time only)
; SGPRBlocks: 1
; VGPRBlocks: 0
; NumSGPRsForWavesPerEU: 11
; NumVGPRsForWavesPerEU: 4
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
        .size:           4
        .value_kind:     by_value
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_z
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
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 112
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z10bfs_kernelPiS_S_PfS_iii
    .private_segment_fixed_size: 0
    .sgpr_count:     22
    .sgpr_spill_count: 0
    .symbol:         _Z10bfs_kernelPiS_S_PfS_iii.kd
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
        .size:           4
        .value_kind:     by_value
      - .offset:         52
        .size:           4
        .value_kind:     by_value
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     global_buffer
      - .offset:         64
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         72
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         80
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         96
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         104
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         112
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 120
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z16backtrack_kernelPiS_S_PfS0_iiiiS0_
    .private_segment_fixed_size: 0
    .sgpr_count:     24
    .sgpr_spill_count: 0
    .symbol:         _Z16backtrack_kernelPiS_S_PfS0_iiiiS0_.kd
    .vgpr_count:     19
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           4
        .value_kind:     by_value
      - .offset:         4
        .size:           4
        .value_kind:     by_value
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
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_z
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
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z15back_sum_kerneliiPiPfS0_i
    .private_segment_fixed_size: 0
    .sgpr_count:     11
    .sgpr_spill_count: 0
    .symbol:         _Z15back_sum_kerneliiPiPfS0_i.kd
    .vgpr_count:     5
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           4
        .value_kind:     by_value
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
      - .offset:         32
        .size:           4
        .value_kind:     by_value
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         48
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         56
        .size:           8
        .value_kind:     hidden_global_offset_z
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
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         88
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 96
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z14clean_1d_arrayiPiPfS0_i
    .private_segment_fixed_size: 0
    .sgpr_count:     11
    .sgpr_spill_count: 0
    .symbol:         _Z14clean_1d_arrayiPiPfS0_i.kd
    .vgpr_count:     7
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 72
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z14clean_2d_arrayPii
    .private_segment_fixed_size: 0
    .sgpr_count:     11
    .sgpr_spill_count: 0
    .symbol:         _Z14clean_2d_arrayPii.kd
    .vgpr_count:     4
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .offset:         8
        .size:           4
        .value_kind:     by_value
      - .offset:         16
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .address_space:  global
        .offset:         40
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         48
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         56
        .size:           8
        .value_kind:     hidden_none
      - .address_space:  global
        .offset:         64
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 0
    .kernarg_segment_align: 8
    .kernarg_segment_size: 72
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           _Z8clean_bcPfi
    .private_segment_fixed_size: 0
    .sgpr_count:     11
    .sgpr_spill_count: 0
    .symbol:         _Z8clean_bcPfi.kd
    .vgpr_count:     4
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
