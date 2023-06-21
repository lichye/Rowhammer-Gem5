	.text
	.file	"BC.cpp"
	.globl	_Z7compare12cooedgetupleS_      # -- Begin function _Z7compare12cooedgetupleS_
	.p2align	4, 0x90
	.type	_Z7compare12cooedgetupleS_,@function
_Z7compare12cooedgetupleS_:             # @_Z7compare12cooedgetupleS_
	.cfi_startproc
# %bb.0:
	cmpl	%edx, %edi
	setl	%al
	retq
.Lfunc_end0:
	.size	_Z7compare12cooedgetupleS_, .Lfunc_end0-_Z7compare12cooedgetupleS_
	.cfi_endproc
                                        # -- End function
	.globl	_Z9transformP12cooedgetupleiPiS1_S1_ # -- Begin function _Z9transformP12cooedgetupleiPiS1_S1_
	.p2align	4, 0x90
	.type	_Z9transformP12cooedgetupleiPiS1_S1_,@function
_Z9transformP12cooedgetupleiPiS1_S1_:   # @_Z9transformP12cooedgetupleiPiS1_S1_
	.cfi_startproc
# %bb.0:
	testl	%esi, %esi
	jle	.LBB1_1
# %bb.2:                                # %.lr.ph.preheader
	movl	%esi, %r9d
	addq	$8, %rdi
	movl	$-1, %r11d
	xorl	%eax, %eax
	xorl	%r10d, %r10d
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	movl	-4(%rdi), %esi
	movl	%esi, (%rcx,%rax,4)
	movl	(%rdi), %esi
	movl	%esi, (%r8,%rax,4)
	addq	$1, %rax
	addq	$12, %rdi
	cmpq	%rax, %r9
	je	.LBB1_6
.LBB1_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movl	-8(%rdi), %esi
	cmpl	%r11d, %esi
	je	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	movslq	%r10d, %r11
	addl	$1, %r10d
	movl	%eax, (%rdx,%r11,4)
	movl	%esi, %r11d
	jmp	.LBB1_5
.LBB1_1:
	xorl	%eax, %eax
	xorl	%r10d, %r10d
.LBB1_6:                                # %._crit_edge
	movslq	%r10d, %rcx
	movl	%eax, (%rdx,%rcx,4)
	retq
.Lfunc_end1:
	.size	_Z9transformP12cooedgetupleiPiS1_S1_, .Lfunc_end1-_Z9transformP12cooedgetupleiPiS1_S1_
	.cfi_endproc
                                        # -- End function
	.globl	_Z8parseCOOPcPiS0_b             # -- Begin function _Z8parseCOOPcPiS0_b
	.p2align	4, 0x90
	.type	_Z8parseCOOPcPiS0_b,@function
_Z8parseCOOPcPiS0_b:                    # @_Z8parseCOOPcPiS0_b
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, 32(%rsp)                  # 4-byte Spill
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbp
	movl	$8192, %edi                     # imm = 0x2000
	callq	malloc
	movq	%rax, %r13
	movl	$.L.str, %esi
	movq	%rbp, %rdi
	callq	fopen
	testq	%rax, %rax
	je	.LBB2_23
# %bb.1:
	movq	%rax, %rbx
	movl	$.L.str.3, %edi
	movq	%rbp, %rsi
	xorl	%eax, %eax
	callq	printf
	movq	%r13, %rdi
	movl	$8192, %esi                     # imm = 0x2000
	movq	%rbx, %rdx
	callq	fgets
	testq	%rax, %rax
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	je	.LBB2_21
# %bb.2:                                # %.lr.ph
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movl	$0, %r14d
	xorl	%r12d, %r12d
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%ebp, %ebp
	xorl	%r15d, %r15d
	jmp	.LBB2_6
.LBB2_3:                                #   in Loop: Header=BB2_6 Depth=1
	movl	4(%rsp), %edx
	addl	$-1, %edx
	movl	8(%rsp), %esi
	addl	$-1, %esi
	movl	52(%rsp), %edi
	addl	$2, %r14d
	cltq
	leaq	(%rax,%rax,2), %rax
	movl	%edx, (%rbp,%rax,4)
	movl	%esi, 4(%rbp,%rax,4)
	movl	%edi, 8(%rbp,%rax,4)
	addl	$2, %r12d
	movslq	%ecx, %rax
	leaq	(%rax,%rax,2), %rax
	movl	%esi, (%r15,%rax,4)
	movl	%edx, 4(%r15,%rax,4)
	movl	%edi, 8(%r15,%rax,4)
.LBB2_4:                                #   in Loop: Header=BB2_6 Depth=1
	movq	40(%rsp), %rbx                  # 8-byte Reload
.LBB2_5:                                #   in Loop: Header=BB2_6 Depth=1
	movq	%r13, %rdi
	movl	$8192, %esi                     # imm = 0x2000
	movq	%rbx, %rdx
	callq	fgets
	testq	%rax, %rax
	je	.LBB2_22
.LBB2_6:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%r13), %eax
	cmpl	$97, %eax
	je	.LBB2_15
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=1
	cmpl	$99, %eax
	je	.LBB2_5
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=1
	cmpl	$112, %eax
	jne	.LBB2_20
# %bb.9:                                #   in Loop: Header=BB2_6 Depth=1
	movl	$.L.str.4, %esi
	movq	%r13, %rdi
	leaq	14(%rsp), %rdx
	leaq	78(%rsp), %rcx
	movq	56(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, %r8
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %r9
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movl	$.Lstr.4, %edi
	cmpb	$0, 32(%rsp)                    # 1-byte Folded Reload
	jne	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_6 Depth=1
	shll	(%rbx)
	movl	$.Lstr.1, %edi
.LBB2_11:                               #   in Loop: Header=BB2_6 Depth=1
	callq	puts
	movl	(%rbp), %esi
	movslq	(%rbx), %rbx
	movl	$.L.str.7, %edi
	movl	%esi, 24(%rsp)                  # 4-byte Spill
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	printf
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	shlq	$2, %rbx
	leaq	(%rbx,%rbx,2), %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, %rbp
	testq	%rax, %rax
	jne	.LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_6 Depth=1
	movl	$.Lstr.2, %edi
	callq	puts
.LBB2_13:                               #   in Loop: Header=BB2_6 Depth=1
	movq	%rbx, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB2_19
# %bb.14:                               #   in Loop: Header=BB2_6 Depth=1
	movq	%rax, %r15
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_15:                               #   in Loop: Header=BB2_6 Depth=1
	movl	$.L.str.9, %esi
	movq	%r13, %rdi
	leaq	15(%rsp), %rdx
	leaq	8(%rsp), %rcx
	leaq	4(%rsp), %r8
	leaq	52(%rsp), %r9
	xorl	%eax, %eax
	callq	__isoc99_sscanf
	movl	4(%rsp), %eax
	cmpl	8(%rsp), %eax
	jne	.LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_6 Depth=1
	movl	$.Lstr, %edi
	callq	puts
.LBB2_17:                               #   in Loop: Header=BB2_6 Depth=1
	movl	8(%rsp), %edx
	addl	$-1, %edx
	movl	4(%rsp), %esi
	addl	$-1, %esi
	movl	52(%rsp), %edi
	leal	1(%r14), %eax
	movslq	%r14d, %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movl	%edx, (%rbp,%rcx,4)
	movl	%esi, 4(%rbp,%rcx,4)
	movl	%edi, 8(%rbp,%rcx,4)
	leal	1(%r12), %ecx
	movslq	%r12d, %rbx
	leaq	(%rbx,%rbx,2), %rbx
	movl	%esi, (%r15,%rbx,4)
	movl	%edx, 4(%r15,%rbx,4)
	movl	%edi, 8(%r15,%rbx,4)
	cmpb	$0, 32(%rsp)                    # 1-byte Folded Reload
	je	.LBB2_3
# %bb.18:                               #   in Loop: Header=BB2_6 Depth=1
	movl	%ecx, %r12d
	movl	%eax, %r14d
	jmp	.LBB2_4
.LBB2_19:                               #   in Loop: Header=BB2_6 Depth=1
	movl	$.Lstr.3, %edi
	callq	puts
	xorl	%r15d, %r15d
	jmp	.LBB2_4
.LBB2_20:                               #   in Loop: Header=BB2_6 Depth=1
	movq	stderr(%rip), %rcx
	movl	$.L.str.11, %edi
	movl	$13, %esi
	movl	$1, %edx
	callq	fwrite
	jmp	.LBB2_5
.LBB2_21:
	xorl	%eax, %eax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	movl	$0, 24(%rsp)                    # 4-byte Folded Spill
.LBB2_22:                               # %._crit_edge
	movslq	16(%rsp), %rax                  # 4-byte Folded Reload
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	leaq	(,%rax,4), %r12
	leaq	(%r12,%r12,2), %rbx
	leaq	(%rbx,%rbp), %rsi
	movl	$_Z7compare12cooedgetupleS_, %edx
	movq	%rbp, %rdi
	callq	_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_
	addq	%r15, %rbx
	movl	$_Z7compare12cooedgetupleS_, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_
	movslq	24(%rsp), %rax                  # 4-byte Folded Reload
	leaq	4(,%rax,4), %rbx
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, %r14
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, %rdi
	callq	malloc
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%r12, %rdi
	callq	malloc
	movq	%rax, %r12
	movq	%rbp, %rdi
	movq	64(%rsp), %rbx                  # 8-byte Reload
	movl	%ebx, %esi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%r14, %r8
	callq	_Z9transformP12cooedgetupleiPiS1_S1_
	movq	%r15, %rdi
	movl	%ebx, %esi
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, %rdx
	movq	80(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rcx
	movq	%r12, %r8
	callq	_Z9transformP12cooedgetupleiPiS1_S1_
	movq	40(%rsp), %rdi                  # 8-byte Reload
	callq	fclose
	movq	%rbp, %rdi
	callq	free
	movq	%r15, %rdi
	callq	free
	movl	$48, %edi
	callq	malloc
	movq	%rax, %rbp
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rbp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 8(%rbp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rbp)
	movq	%rbx, 24(%rbp)
	movq	%r14, 32(%rbp)
	movq	%r12, 40(%rbp)
	movq	%r13, %rdi
	callq	free
	movq	%rbp, %rax
	addq	$88, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_23:
	.cfi_def_cfa_offset 144
	movq	stderr(%rip), %rdi
	movl	$.L.str.1, %esi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	callq	fprintf
	movl	$.L.str.2, %edi
	callq	perror
	movl	$1, %edi
	callq	exit
.Lfunc_end2:
	.size	_Z8parseCOOPcPiS0_b, .Lfunc_end2-_Z8parseCOOPcPiS0_b
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_,"axG",@progbits,_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_,comdat
	.weak	_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_ # -- Begin function _ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_
	.p2align	4, 0x90
	.type	_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_,@function
_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_: # @_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, %rdi
	callq	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_, .Lfunc_end3-_ZSt11stable_sortIP12cooedgetuplePFbS0_S0_EEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z25__device_stub__bfs_kernelPiS_S_PfS_iii # -- Begin function _Z25__device_stub__bfs_kernelPiS_S_PfS_iii
	.p2align	4, 0x90
	.type	_Z25__device_stub__bfs_kernelPiS_S_PfS_iii,@function
_Z25__device_stub__bfs_kernelPiS_S_PfS_iii: # @_Z25__device_stub__bfs_kernelPiS_S_PfS_iii
	.cfi_startproc
# %bb.0:
	subq	$168, %rsp
	.cfi_def_cfa_offset 176
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movl	%r9d, 4(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	176(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	184(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z25__device_stub__bfs_kernelPiS_S_PfS_iii, %edi
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$184, %rsp
	.cfi_adjust_cfa_offset -184
	retq
.Lfunc_end4:
	.size	_Z25__device_stub__bfs_kernelPiS_S_PfS_iii, .Lfunc_end4-_Z25__device_stub__bfs_kernelPiS_S_PfS_iii
	.cfi_endproc
                                        # -- End function
	.globl	_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_ # -- Begin function _Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_
	.p2align	4, 0x90
	.type	_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_,@function
_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_: # @_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_
	.cfi_startproc
# %bb.0:
	subq	$184, %rsp
	.cfi_def_cfa_offset 192
	movq	%rdi, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%r8, 56(%rsp)
	movl	%r9d, 4(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	192(%rsp), %rax
	movq	%rax, 144(%rsp)
	leaq	200(%rsp), %rax
	movq	%rax, 152(%rsp)
	leaq	208(%rsp), %rax
	movq	%rax, 160(%rsp)
	leaq	216(%rsp), %rax
	movq	%rax, 168(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_, %edi
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$200, %rsp
	.cfi_adjust_cfa_offset -200
	retq
.Lfunc_end5:
	.size	_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_, .Lfunc_end5-_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_
	.cfi_endproc
                                        # -- End function
	.globl	_Z30__device_stub__back_sum_kerneliiPiPfS0_i # -- Begin function _Z30__device_stub__back_sum_kerneliiPiPfS0_i
	.p2align	4, 0x90
	.type	_Z30__device_stub__back_sum_kerneliiPiPfS0_i,@function
_Z30__device_stub__back_sum_kerneliiPiPfS0_i: # @_Z30__device_stub__back_sum_kerneliiPiPfS0_i
	.cfi_startproc
# %bb.0:
	subq	$152, %rsp
	.cfi_def_cfa_offset 160
	movl	%edi, 20(%rsp)
	movl	%esi, 16(%rsp)
	movq	%rdx, 88(%rsp)
	movq	%rcx, 80(%rsp)
	movq	%r8, 72(%rsp)
	movl	%r9d, 12(%rsp)
	leaq	20(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	88(%rsp), %rax
	movq	%rax, 112(%rsp)
	leaq	80(%rsp), %rax
	movq	%rax, 120(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 128(%rsp)
	leaq	12(%rsp), %rax
	movq	%rax, 136(%rsp)
	leaq	56(%rsp), %rdi
	leaq	40(%rsp), %rsi
	leaq	32(%rsp), %rdx
	leaq	24(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	56(%rsp), %rsi
	movl	64(%rsp), %edx
	movq	40(%rsp), %rcx
	movl	48(%rsp), %r8d
	leaq	96(%rsp), %r9
	movl	$_Z30__device_stub__back_sum_kerneliiPiPfS0_i, %edi
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	40(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$168, %rsp
	.cfi_adjust_cfa_offset -168
	retq
.Lfunc_end6:
	.size	_Z30__device_stub__back_sum_kerneliiPiPfS0_i, .Lfunc_end6-_Z30__device_stub__back_sum_kerneliiPiPfS0_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z29__device_stub__clean_1d_arrayiPiPfS0_i # -- Begin function _Z29__device_stub__clean_1d_arrayiPiPfS0_i
	.p2align	4, 0x90
	.type	_Z29__device_stub__clean_1d_arrayiPiPfS0_i,@function
_Z29__device_stub__clean_1d_arrayiPiPfS0_i: # @_Z29__device_stub__clean_1d_arrayiPiPfS0_i
	.cfi_startproc
# %bb.0:
	subq	$120, %rsp
	.cfi_def_cfa_offset 128
	movl	%edi, 4(%rsp)
	movq	%rsi, 72(%rsp)
	movq	%rdx, 64(%rsp)
	movq	%rcx, 56(%rsp)
	movl	%r8d, (%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	72(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	64(%rsp), %rax
	movq	%rax, 96(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 104(%rsp)
	movq	%rsp, %rax
	movq	%rax, 112(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	leaq	80(%rsp), %r9
	movl	$_Z29__device_stub__clean_1d_arrayiPiPfS0_i, %edi
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$136, %rsp
	.cfi_adjust_cfa_offset -136
	retq
.Lfunc_end7:
	.size	_Z29__device_stub__clean_1d_arrayiPiPfS0_i, .Lfunc_end7-_Z29__device_stub__clean_1d_arrayiPiPfS0_i
	.cfi_endproc
                                        # -- End function
	.globl	_Z29__device_stub__clean_2d_arrayPii # -- Begin function _Z29__device_stub__clean_2d_arrayPii
	.p2align	4, 0x90
	.type	_Z29__device_stub__clean_2d_arrayPii,@function
_Z29__device_stub__clean_2d_arrayPii:   # @_Z29__device_stub__clean_2d_arrayPii
	.cfi_startproc
# %bb.0:
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 56(%rsp)
	movl	%esi, 4(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	leaq	64(%rsp), %r9
	movl	$_Z29__device_stub__clean_2d_arrayPii, %edi
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	retq
.Lfunc_end8:
	.size	_Z29__device_stub__clean_2d_arrayPii, .Lfunc_end8-_Z29__device_stub__clean_2d_arrayPii
	.cfi_endproc
                                        # -- End function
	.globl	_Z23__device_stub__clean_bcPfi  # -- Begin function _Z23__device_stub__clean_bcPfi
	.p2align	4, 0x90
	.type	_Z23__device_stub__clean_bcPfi,@function
_Z23__device_stub__clean_bcPfi:         # @_Z23__device_stub__clean_bcPfi
	.cfi_startproc
# %bb.0:
	subq	$88, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdi, 56(%rsp)
	movl	%esi, 4(%rsp)
	leaq	56(%rsp), %rax
	movq	%rax, 64(%rsp)
	leaq	4(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	40(%rsp), %rdi
	leaq	24(%rsp), %rsi
	leaq	16(%rsp), %rdx
	leaq	8(%rsp), %rcx
	callq	__hipPopCallConfiguration
	movq	40(%rsp), %rsi
	movl	48(%rsp), %edx
	movq	24(%rsp), %rcx
	movl	32(%rsp), %r8d
	leaq	64(%rsp), %r9
	movl	$_Z23__device_stub__clean_bcPfi, %edi
	pushq	8(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	hipLaunchKernel
	addq	$104, %rsp
	.cfi_adjust_cfa_offset -104
	retq
.Lfunc_end9:
	.size	_Z23__device_stub__clean_bcPfi, .Lfunc_end9-_Z23__device_stub__clean_bcPfi
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$2, %edi
	jne	.LBB10_52
# %bb.1:
	movq	8(%rsi), %rdi
	leaq	4(%rsp), %rsi
	leaq	8(%rsp), %rdx
	movl	$1, %ecx
	callq	_Z8parseCOOPcPiS0_b
	movq	%rax, %r15
	movslq	4(%rsp), %rdi
	shlq	$2, %rdi
	callq	malloc
	movq	%rax, %r14
	testq	%rax, %rax
	je	.LBB10_33
.LBB10_2:
	movslq	4(%rsp), %rsi
	shlq	$2, %rsi
	leaq	72(%rsp), %rdi
	callq	_ZL9hipMallocIfE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_34
# %bb.3:
	movslq	4(%rsp), %rsi
	shlq	$2, %rsi
	leaq	56(%rsp), %rdi
	callq	_ZL9hipMallocIiE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_35
# %bb.4:
	movslq	4(%rsp), %rsi
	shlq	$2, %rsi
	leaq	112(%rsp), %rdi
	callq	_ZL9hipMallocIfE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_36
# %bb.5:
	movslq	4(%rsp), %rsi
	shlq	$2, %rsi
	leaq	64(%rsp), %rdi
	callq	_ZL9hipMallocIfE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_37
# %bb.6:
	leaq	48(%rsp), %rdi
	movl	$4, %esi
	callq	_ZL9hipMallocIiE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_38
# %bb.7:
	movslq	4(%rsp), %rax
	leaq	4(,%rax,4), %rsi
	leaq	104(%rsp), %rdi
	callq	_ZL9hipMallocIiE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_39
# %bb.8:
	movslq	8(%rsp), %rsi
	shlq	$2, %rsi
	leaq	96(%rsp), %rdi
	callq	_ZL9hipMallocIiE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_40
# %bb.9:
	movslq	4(%rsp), %rax
	leaq	4(,%rax,4), %rsi
	leaq	88(%rsp), %rdi
	callq	_ZL9hipMallocIiE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_41
# %bb.10:
	movslq	8(%rsp), %rsi
	shlq	$2, %rsi
	leaq	80(%rsp), %rdi
	callq	_ZL9hipMallocIiE10hipError_tPPT_m
	testl	%eax, %eax
	jne	.LBB10_42
# %bb.11:
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_work_begin
	movq	104(%rsp), %rdi
	movq	(%r15), %r12
	movslq	4(%rsp), %rax
	leaq	4(,%rax,4), %rdx
	movq	%r12, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB10_43
# %bb.12:
	movq	96(%rsp), %rdi
	movq	8(%r15), %r13
	movslq	8(%rsp), %rdx
	shlq	$2, %rdx
	movq	%r13, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB10_44
# %bb.13:
	movq	88(%rsp), %rdi
	movq	24(%r15), %rbx
	movslq	4(%rsp), %rax
	leaq	4(,%rax,4), %rdx
	movq	%rbx, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB10_45
# %bb.14:
	movq	80(%rsp), %rdi
	movq	32(%r15), %rbp
	movslq	8(%rsp), %rdx
	shlq	$2, %rdx
	movq	%rbp, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB10_46
# %bb.15:
	movq	%rbp, 120(%rsp)                 # 8-byte Spill
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	movq	%rbx, 136(%rsp)                 # 8-byte Spill
	movq	%r13, 144(%rsp)                 # 8-byte Spill
	leaq	32(%rsp), %rdi
	movl	$128, %esi
	movl	$1, %edx
	movl	$1, %ecx
	callq	_ZN4dim3C2Ejjj
	movl	4(%rsp), %esi
	leal	127(%rsi), %eax
	addl	$254, %esi
	testl	%eax, %eax
	cmovnsl	%eax, %esi
	sarl	$7, %esi
	leaq	16(%rsp), %rdi
                                        # kill: def $esi killed $esi killed $rsi
	movl	$1, %edx
	movl	$1, %ecx
	callq	_ZN4dim3C2Ejjj
	movq	16(%rsp), %rdi
	movl	24(%rsp), %esi
	movq	32(%rsp), %rdx
	movl	40(%rsp), %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB10_17
# %bb.16:
	movq	72(%rsp), %rdi
	movl	4(%rsp), %esi
	callq	_Z23__device_stub__clean_bcPfi
.LBB10_17:
	cmpl	$0, 4(%rsp)
	jle	.LBB10_31
# %bb.18:                               # %.lr.ph
	leaq	12(%rsp), %rbp
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB10_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_23 Depth 2
                                        #     Child Loop BB10_27 Depth 2
	movq	16(%rsp), %rdi
	movl	24(%rsp), %esi
	movq	32(%rsp), %rdx
	movl	40(%rsp), %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_19 Depth=1
	movq	56(%rsp), %rsi
	movq	112(%rsp), %rdx
	movq	64(%rsp), %rcx
	movl	4(%rsp), %r8d
	movl	%r13d, %edi
	callq	_Z29__device_stub__clean_1d_arrayiPiPfS0_i
.LBB10_21:                              #   in Loop: Header=BB10_19 Depth=1
	movl	$1, 12(%rsp)
	xorl	%r12d, %r12d
	jmp	.LBB10_23
	.p2align	4, 0x90
.LBB10_22:                              #   in Loop: Header=BB10_23 Depth=2
	movq	48(%rsp), %rsi
	movl	$4, %edx
	movq	%rbp, %rdi
	movl	$2, %ecx
	callq	hipMemcpy
	addl	$1, %r12d
	cmpl	$0, 12(%rsp)
	je	.LBB10_25
.LBB10_23:                              #   Parent Loop BB10_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$0, 12(%rsp)
	movq	48(%rsp), %rdi
	movl	$4, %edx
	movq	%rbp, %rsi
	movl	$1, %ecx
	callq	hipMemcpy
	movq	16(%rsp), %rdi
	movl	24(%rsp), %esi
	movq	32(%rsp), %rdx
	movl	40(%rsp), %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB10_22
# %bb.24:                               #   in Loop: Header=BB10_23 Depth=2
	movq	104(%rsp), %rdi
	movq	96(%rsp), %rsi
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rcx
	movq	48(%rsp), %r8
	movl	4(%rsp), %r9d
	movl	8(%rsp), %eax
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_Z25__device_stub__bfs_kernelPiS_S_PfS_iii
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	jmp	.LBB10_22
	.p2align	4, 0x90
.LBB10_25:                              #   in Loop: Header=BB10_19 Depth=1
	callq	hipDeviceSynchronize
	jmp	.LBB10_27
	.p2align	4, 0x90
.LBB10_26:                              #   in Loop: Header=BB10_27 Depth=2
	addl	$-1, %r12d
	je	.LBB10_29
.LBB10_27:                              #   Parent Loop BB10_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rsp), %rdi
	movl	24(%rsp), %esi
	movq	32(%rsp), %rdx
	movl	40(%rsp), %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	__hipPushCallConfiguration
	testl	%eax, %eax
	jne	.LBB10_26
# %bb.28:                               #   in Loop: Header=BB10_27 Depth=2
	movq	88(%rsp), %rdi
	movq	80(%rsp), %rsi
	movq	56(%rsp), %rdx
	movq	64(%rsp), %rcx
	movq	112(%rsp), %r8
	movl	4(%rsp), %r9d
	movl	8(%rsp), %eax
	pushq	72(%rsp)
	.cfi_adjust_cfa_offset 8
	pushq	%r13
	.cfi_adjust_cfa_offset 8
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	jmp	.LBB10_26
	.p2align	4, 0x90
.LBB10_29:                              #   in Loop: Header=BB10_19 Depth=1
	callq	hipDeviceSynchronize
	movq	stdout(%rip), %rdi
	movl	$.L.str.27, %esi
	movl	%r13d, %edx
	xorl	%eax, %eax
	callq	fprintf
	cmpl	$148, %r13d
	ja	.LBB10_31
# %bb.30:                               #   in Loop: Header=BB10_19 Depth=1
	addl	$1, %r13d
	cmpl	4(%rsp), %r13d
	jl	.LBB10_19
.LBB10_31:                              # %._crit_edge
	callq	hipDeviceSynchronize
	movq	72(%rsp), %rsi
	movslq	4(%rsp), %rdx
	shlq	$2, %rdx
	movq	%r14, %rdi
	movl	$2, %ecx
	callq	hipMemcpy
	testl	%eax, %eax
	jne	.LBB10_48
# %bb.32:
	xorl	%ebp, %ebp
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	m5_work_end
	movl	4(%rsp), %esi
	movq	%r14, %rdi
	callq	_Z13print_vectorfPfi
	movq	%r14, %rdi
	callq	free
	movq	128(%rsp), %rdi                 # 8-byte Reload
	callq	free
	movq	144(%rsp), %rdi                 # 8-byte Reload
	callq	free
	movq	16(%r15), %rdi
	callq	free
	movq	136(%rsp), %rdi                 # 8-byte Reload
	callq	free
	movq	120(%rsp), %rdi                 # 8-byte Reload
	callq	free
	movq	40(%r15), %rdi
	callq	free
	movq	%r15, %rdi
	callq	free
	movq	72(%rsp), %rdi
	callq	hipFree
	movq	56(%rsp), %rdi
	callq	hipFree
	movq	112(%rsp), %rdi
	callq	hipFree
	movq	64(%rsp), %rdi
	callq	hipFree
	movq	48(%rsp), %rdi
	callq	hipFree
	movq	104(%rsp), %rdi
	callq	hipFree
	movq	96(%rsp), %rdi
	callq	hipFree
	movq	88(%rsp), %rdi
	callq	hipFree
	movq	80(%rsp), %rdi
	callq	hipFree
	jmp	.LBB10_51
.LBB10_33:
	movq	stderr(%rip), %rcx
	movl	$.L.str.13, %edi
	movl	$19, %esi
	movl	$1, %edx
	callq	fwrite
	jmp	.LBB10_2
.LBB10_34:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.14, %esi
	jmp	.LBB10_49
.LBB10_35:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.15, %esi
	jmp	.LBB10_49
.LBB10_36:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.16, %esi
	jmp	.LBB10_49
.LBB10_37:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.17, %esi
	jmp	.LBB10_49
.LBB10_38:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.18, %esi
	jmp	.LBB10_49
.LBB10_39:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.19, %esi
	jmp	.LBB10_49
.LBB10_40:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.20, %esi
	jmp	.LBB10_49
.LBB10_41:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.21, %esi
	jmp	.LBB10_49
.LBB10_42:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.22, %esi
	jmp	.LBB10_49
.LBB10_43:
	movq	stderr(%rip), %rbx
	movl	4(%rsp), %ebp
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.23, %esi
	jmp	.LBB10_47
.LBB10_44:
	movq	stderr(%rip), %rbx
	movl	4(%rsp), %ebp
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.24, %esi
	jmp	.LBB10_47
.LBB10_45:
	movq	stderr(%rip), %rbx
	movl	4(%rsp), %ebp
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.25, %esi
	jmp	.LBB10_47
.LBB10_46:
	movq	stderr(%rip), %rbx
	movl	4(%rsp), %ebp
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.26, %esi
.LBB10_47:
	movq	%rbx, %rdi
	movl	%ebp, %edx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	fprintf
	jmp	.LBB10_50
.LBB10_48:
	movq	stderr(%rip), %rbx
	movl	%eax, %edi
	callq	hipGetErrorString
	movl	$.L.str.28, %esi
.LBB10_49:
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	fprintf
.LBB10_50:
	movl	$-1, %ebp
.LBB10_51:
	movl	%ebp, %eax
	addq	$152, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB10_52:
	.cfi_def_cfa_offset 208
	movq	stderr(%rip), %rcx
	movl	$.L.str.12, %edi
	movl	$25, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %edi
	callq	exit
.Lfunc_end10:
	.size	main, .Lfunc_end10-main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL9hipMallocIfE10hipError_tPPT_m
	.type	_ZL9hipMallocIfE10hipError_tPPT_m,@function
_ZL9hipMallocIfE10hipError_tPPT_m:      # @_ZL9hipMallocIfE10hipError_tPPT_m
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	hipMalloc
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end11:
	.size	_ZL9hipMallocIfE10hipError_tPPT_m, .Lfunc_end11-_ZL9hipMallocIfE10hipError_tPPT_m
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function _ZL9hipMallocIiE10hipError_tPPT_m
	.type	_ZL9hipMallocIiE10hipError_tPPT_m,@function
_ZL9hipMallocIiE10hipError_tPPT_m:      # @_ZL9hipMallocIiE10hipError_tPPT_m
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	hipMalloc
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end12:
	.size	_ZL9hipMallocIiE10hipError_tPPT_m, .Lfunc_end12-_ZL9hipMallocIiE10hipError_tPPT_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN4dim3C2Ejjj,"axG",@progbits,_ZN4dim3C2Ejjj,comdat
	.weak	_ZN4dim3C2Ejjj                  # -- Begin function _ZN4dim3C2Ejjj
	.p2align	4, 0x90
	.type	_ZN4dim3C2Ejjj,@function
_ZN4dim3C2Ejjj:                         # @_ZN4dim3C2Ejjj
	.cfi_startproc
# %bb.0:
	movl	%esi, (%rdi)
	movl	%edx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	retq
.Lfunc_end13:
	.size	_ZN4dim3C2Ejjj, .Lfunc_end13-_ZN4dim3C2Ejjj
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z13print_vectorfPfi            # -- Begin function _Z13print_vectorfPfi
	.p2align	4, 0x90
	.type	_Z13print_vectorfPfi,@function
_Z13print_vectorfPfi:                   # @_Z13print_vectorfPfi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movl	$.L.str.31, %edi
	movl	$.L.str.32, %esi
	callq	fopen
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB14_1
# %bb.2:
	testl	%ebp, %ebp
	jg	.LBB14_3
	jmp	.LBB14_5
.LBB14_1:
	movl	$.Lstr.5, %edi
	callq	puts
	testl	%ebp, %ebp
	jle	.LBB14_5
.LBB14_3:                               # %.lr.ph.preheader
	movl	%ebp, %ebp
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_4:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movss	(%r14,%rbx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	fprintf
	addq	$1, %rbx
	cmpq	%rbx, %rbp
	jne	.LBB14_4
.LBB14_5:                               # %._crit_edge
	movq	%r15, %rdi
	callq	fclose
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end14:
	.size	_Z13print_vectorfPfi, .Lfunc_end14-_Z13print_vectorfPfi
	.cfi_endproc
                                        # -- End function
	.globl	_Z12print_vectorPii             # -- Begin function _Z12print_vectorPii
	.p2align	4, 0x90
	.type	_Z12print_vectorPii,@function
_Z12print_vectorPii:                    # @_Z12print_vectorPii
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	testl	%esi, %esi
	jle	.LBB15_3
# %bb.1:                                # %.lr.ph.preheader
	movq	%rdi, %r14
	movl	%esi, %r15d
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB15_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rbx,4), %edx
	addq	$1, %rbx
	movl	$.L.str.29, %edi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf
	cmpq	%rbx, %r15
	jne	.LBB15_2
.LBB15_3:                               # %._crit_edge
	movl	$10, %edi
	callq	putchar
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end15:
	.size	_Z12print_vectorPii, .Lfunc_end15-_Z12print_vectorPii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,"axG",@progbits,_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,comdat
	.weak	_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ # -- Begin function _ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.p2align	4, 0x90
	.type	_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,@function
_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_: # @_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	leaq	8(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l
	movq	%r12, %rdi
	callq	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv
	testq	%rax, %rax
	je	.LBB16_1
# %bb.3:
	leaq	8(%rsp), %r12
	movq	%r12, %rdi
	callq	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv
	movq	%rax, %r13
	movq	%r12, %rdi
	callq	_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv
.Ltmp0:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	movq	%rax, %rcx
	movq	%r14, %r8
	callq	_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
.Ltmp1:
	jmp	.LBB16_4
.LBB16_1:
.Ltmp2:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
.Ltmp3:
.LBB16_4:
	leaq	8(%rsp), %rdi
	callq	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB16_2:
	.cfi_def_cfa_offset 80
.Ltmp4:
	movq	%rax, %rbx
	leaq	8(%rsp), %rdi
	callq	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.Lfunc_end16:
	.size	_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_, .Lfunc_end16-_ZSt13__stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table16:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Lfunc_end16-.Ltmp3            #   Call between .Ltmp3 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_,"axG",@progbits,_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_,comdat
	.weak	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_ # -- Begin function _ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_,@function
_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_: # @_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end17:
	.size	_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_, .Lfunc_end17-_ZN9__gnu_cxx5__ops16__iter_comp_iterIPFb12cooedgetupleS2_EEENS0_15_Iter_comp_iterIT_EES6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_ # -- Begin function _ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.p2align	4, 0x90
	.type	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_,@function
_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_: # @_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdi, (%rsp)
	movq	%rsp, %rdi
	callq	_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end18:
	.size	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_, .Lfunc_end18-_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l,"axG",@progbits,_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l,comdat
	.weak	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l # -- Begin function _ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l
	.p2align	4, 0x90
	.type	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l,@function
_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l: # @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, (%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 8(%rdi)
	movq	%rdx, %rdi
	callq	_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl
	movq	%rax, 16(%rbx)
	movq	%rdx, 8(%rbx)
	testq	%rax, %rax
	je	.LBB19_2
# %bb.1:
	leaq	8(%rbx), %r15
	leaq	(%rdx,%rdx,2), %rcx
	leaq	(%rax,%rcx,4), %rsi
.Ltmp5:
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_
.Ltmp6:
.LBB19_2:
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB19_6:
	.cfi_def_cfa_offset 32
.Ltmp7:
	movq	%rax, %rdi
	callq	__cxa_begin_catch
	movq	16(%rbx), %rdi
	callq	_ZSt23return_temporary_bufferI12cooedgetupleEvPT_
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%r15)
.Ltmp8:
	callq	__cxa_rethrow
.Ltmp9:
# %bb.7:
.LBB19_3:
.Ltmp10:
	movq	%rax, %rbx
.Ltmp11:
	callq	__cxa_end_catch
.Ltmp12:
# %bb.4:
	movq	%rbx, %rdi
	callq	_Unwind_Resume
.LBB19_5:
.Ltmp13:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end19:
	.size	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l, .Lfunc_end19-_ZNSt17_Temporary_bufferIP12cooedgetupleS0_EC2ES1_l
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table19:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp5-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin1           #     jumps to .Ltmp7
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Lfunc_end19-.Ltmp12           #   Call between .Ltmp12 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv,"axG",@progbits,_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv,comdat
	.weak	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv # -- Begin function _ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv
	.p2align	4, 0x90
	.type	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv,@function
_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv: # @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv
	.cfi_startproc
# %bb.0:
	movq	16(%rdi), %rax
	retq
.Lfunc_end20:
	.size	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv, .Lfunc_end20-_ZNSt17_Temporary_bufferIP12cooedgetupleS0_E5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,"axG",@progbits,_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,comdat
	.weak	_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ # -- Begin function _ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.p2align	4, 0x90
	.type	_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,@function
_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_: # @_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	%rsi, %rax
	subq	%rdi, %rax
	cmpq	$179, %rax
	jg	.LBB21_2
# %bb.1:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	jmp	.LBB21_3
.LBB21_2:
	movabsq	$3074457345618258603, %rcx      # imm = 0x2AAAAAAAAAAAAAAB
	imulq	%rcx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$2, %rbx
	addq	%rax, %rbx
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r12,%rax,4), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	movq	%r13, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	movq	%r15, %rax
	subq	%r13, %rax
	sarq	$2, %rax
	movabsq	$-6148914691236517205, %r8      # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r8
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rbx, %rcx
	movq	%r14, %r9
	callq	_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_
.LBB21_3:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end21:
	.size	_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_, .Lfunc_end21-_ZSt21__inplace_stable_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_,"axG",@progbits,_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_,comdat
	.weak	_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_ # -- Begin function _ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	.p2align	4, 0x90
	.type	_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_,@function
_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_: # @_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%rsi, %rax
	subq	%rdi, %rax
	sarq	$2, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	leaq	1(%rax), %rcx
	shrq	$63, %rcx
	leaq	(%rax,%rcx), %rbp
	addq	$1, %rbp
	sarq	%rbp
	leaq	(,%rbp,2), %rax
	addq	%rbp, %rax
	leaq	(%rdi,%rax,4), %r14
	cmpq	%rbx, %rbp
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	%r14, %rsi
	jle	.LBB22_2
# %bb.1:
	movq	%rbx, %rcx
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movq	%rbx, %r12
	movq	%r8, %rbx
	callq	_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%r12, %rcx
	movq	8(%rsp), %r12                   # 8-byte Reload
	movq	%rbx, %r8
	callq	_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	jmp	.LBB22_3
.LBB22_2:
	movq	%r8, %rcx
	movq	%r8, %rbx
	callq	_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	callq	_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
.LBB22_3:
	movq	%r13, %r8
	subq	%r14, %r8
	sarq	$2, %r8
	movabsq	$-6148914691236517205, %rax     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r8
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	movq	%rbp, %rcx
	movq	%r12, %r9
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	pushq	24(%rsp)                        # 8-byte Folded Reload
	.cfi_adjust_cfa_offset 8
	callq	_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_
	addq	$40, %rsp
	.cfi_adjust_cfa_offset -40
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_, .Lfunc_end22-_ZSt22__stable_sort_adaptiveIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv,"axG",@progbits,_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv,comdat
	.weak	_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv # -- Begin function _ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv
	.p2align	4, 0x90
	.type	_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv,@function
_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv: # @_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv
	.cfi_startproc
# %bb.0:
	movq	8(%rdi), %rax
	retq
.Lfunc_end23:
	.size	_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv, .Lfunc_end23-_ZNKSt17_Temporary_bufferIP12cooedgetupleS0_E4sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev,"axG",@progbits,_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev,comdat
	.weak	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev # -- Begin function _ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev
	.p2align	4, 0x90
	.type	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev,@function
_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev: # @_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rdi), %rax
	movq	16(%rdi), %rdi
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdi,%rax,4), %rsi
.Ltmp14:
	callq	_ZSt8_DestroyIP12cooedgetupleEvT_S2_
.Ltmp15:
# %bb.1:
	movq	16(%rbx), %rdi
	callq	_ZSt23return_temporary_bufferI12cooedgetupleEvPT_
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB24_2:
	.cfi_def_cfa_offset 16
.Ltmp16:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end24:
	.size	_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev, .Lfunc_end24-_ZNSt17_Temporary_bufferIP12cooedgetupleS0_ED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table24:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	3                               # @TType Encoding = udata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp14-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin2          #     jumps to .Ltmp16
	.byte	1                               #   On action: 1
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag # -- Begin function _ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.p2align	4, 0x90
	.type	_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,@function
_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag: # @_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.cfi_startproc
# %bb.0:
	subq	%rdi, %rsi
	sarq	$2, %rsi
	movabsq	$-6148914691236517205, %rax     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rsi, %rax
	retq
.Lfunc_end25:
	.size	_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .Lfunc_end25-_ZSt10__distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_ # -- Begin function _ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.p2align	4, 0x90
	.type	_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_,@function
_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_: # @_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end26:
	.size	_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .Lfunc_end26-_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl,"axG",@progbits,_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl,comdat
	.weak	_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl # -- Begin function _ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl
	.p2align	4, 0x90
	.type	_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl,@function
_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl: # @_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$40, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movabsq	$768614336404564650, %rax       # imm = 0xAAAAAAAAAAAAAAA
	cmpq	%rax, %rdi
	cmovleq	%rdi, %rax
	movq	%rax, (%rsp)
	leaq	24(%rsp), %r14
	leaq	8(%rsp), %r15
	movq	%rsp, %r12
	jmp	.LBB27_1
	.p2align	4, 0x90
.LBB27_4:                               #   in Loop: Header=BB27_1 Depth=1
	movq	(%rsp), %rax
	movq	%rax, %rcx
	shrq	$63, %rcx
	addq	%rax, %rcx
	sarq	%rcx
	movq	%rcx, (%rsp)
.LBB27_5:                               #   in Loop: Header=BB27_1 Depth=1
	testq	%rbx, %rbx
	jne	.LBB27_7
.LBB27_1:                               # =>This Inner Loop Header: Depth=1
	movq	(%rsp), %rax
	testq	%rax, %rax
	jle	.LBB27_6
# %bb.2:                                #   in Loop: Header=BB27_1 Depth=1
	shlq	$2, %rax
	leaq	(%rax,%rax,2), %rdi
	movl	$_ZSt7nothrow, %esi
	callq	_ZnwmRKSt9nothrow_t
	movq	%rax, %rbx
	movq	%rax, 8(%rsp)
	testq	%rax, %rax
	je	.LBB27_4
# %bb.3:                                #   in Loop: Header=BB27_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_
	jmp	.LBB27_5
.LBB27_6:
	movq	$0, 8(%rsp)
	movl	$0, 20(%rsp)
	leaq	24(%rsp), %rdi
	leaq	8(%rsp), %rsi
	leaq	20(%rsp), %rdx
	callq	_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_
.LBB27_7:                               # %.loopexit
	movq	24(%rsp), %rax
	movq	32(%rsp), %rdx
	addq	$40, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl, .Lfunc_end27-_ZSt20get_temporary_bufferI12cooedgetupleESt4pairIPT_lEl
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_,"axG",@progbits,_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_,comdat
	.weak	_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_ # -- Begin function _ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_
	.p2align	4, 0x90
	.type	_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_,@function
_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_: # @_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end28:
	.size	_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_, .Lfunc_end28-_ZSt29__uninitialized_construct_bufIP12cooedgetupleS1_EvT_S2_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt23return_temporary_bufferI12cooedgetupleEvPT_,"axG",@progbits,_ZSt23return_temporary_bufferI12cooedgetupleEvPT_,comdat
	.weak	_ZSt23return_temporary_bufferI12cooedgetupleEvPT_ # -- Begin function _ZSt23return_temporary_bufferI12cooedgetupleEvPT_
	.p2align	4, 0x90
	.type	_ZSt23return_temporary_bufferI12cooedgetupleEvPT_,@function
_ZSt23return_temporary_bufferI12cooedgetupleEvPT_: # @_ZSt23return_temporary_bufferI12cooedgetupleEvPT_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZdlPv
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end29:
	.size	_ZSt23return_temporary_bufferI12cooedgetupleEvPT_, .Lfunc_end29-_ZSt23return_temporary_bufferI12cooedgetupleEvPT_
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	pushq	%rax
	callq	__cxa_begin_catch
	callq	_ZSt9terminatev
.Lfunc_end30:
	.size	__clang_call_terminate, .Lfunc_end30-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_,comdat
	.weak	_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_ # -- Begin function _ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_
	.p2align	4, 0x90
	.type	_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_,@function
_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_: # @_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%r14, %rdi
	callq	_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE
	movq	(%rax), %rax
	movq	%rax, 8(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end31:
	.size	_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_, .Lfunc_end31-_ZNSt4pairIP12cooedgetuplelEC2IRS1_RlLb1EEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_,"axG",@progbits,_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_,comdat
	.weak	_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_ # -- Begin function _ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_
	.p2align	4, 0x90
	.type	_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_,@function
_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_: # @_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%r14, %rdi
	callq	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	movslq	(%rax), %rax
	movq	%rax, 8(%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end32:
	.size	_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_, .Lfunc_end32-_ZNSt4pairIP12cooedgetuplelEC2IS1_iLb1EEEOT_OT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE # -- Begin function _ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE,@function
_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE: # @_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end33:
	.size	_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE, .Lfunc_end33-_ZSt7forwardIRP12cooedgetupleEOT_RNSt16remove_referenceIS3_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE,"axG",@progbits,_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE,comdat
	.weak	_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE # -- Begin function _ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE,@function
_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE: # @_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end34:
	.size	_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE, .Lfunc_end34-_ZSt7forwardIRlEOT_RNSt16remove_referenceIS1_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE # -- Begin function _ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE,@function
_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE: # @_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end35:
	.size	_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE, .Lfunc_end35-_ZSt7forwardIP12cooedgetupleEOT_RNSt16remove_referenceIS2_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE # -- Begin function _ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,@function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE: # @_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end36:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .Lfunc_end36-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_,"axG",@progbits,_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_,comdat
	.weak	_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_ # -- Begin function _ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_
	.p2align	4, 0x90
	.type	_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_,@function
_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_: # @_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end37:
	.size	_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_, .Lfunc_end37-_ZNSt38__uninitialized_construct_buf_dispatchILb1EE5__ucrIP12cooedgetupleS3_EEvT_S4_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,"axG",@progbits,_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,comdat
	.weak	_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_ # -- Begin function _ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.p2align	4, 0x90
	.type	_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_,@function
_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_: # @_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, 8(%rsp)
	cmpq	%rsi, %rdi
	je	.LBB38_7
# %bb.1:                                # %.preheader
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	12(%rdi), %rbx
	cmpq	%rsi, %rbx
	je	.LBB38_7
# %bb.2:                                # %.lr.ph
	leaq	8(%rsp), %r12
	leaq	16(%rsp), %r13
	jmp	.LBB38_3
	.p2align	4, 0x90
.LBB38_5:                               #   in Loop: Header=BB38_3 Depth=1
	movq	8(%rsp), %rdi
	callq	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_
.LBB38_6:                               #   in Loop: Header=BB38_3 Depth=1
	addq	$12, %rbx
	cmpq	%rbx, %r14
	je	.LBB38_7
.LBB38_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	testb	%al, %al
	je	.LBB38_5
# %bb.4:                                #   in Loop: Header=BB38_3 Depth=1
	movq	%rbx, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, 16(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 24(%rsp)
	leaq	12(%rbx), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%r13, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%r15)
	movl	8(%rax), %eax
	movl	%eax, 8(%r15)
	jmp	.LBB38_6
.LBB38_7:                               # %.loopexit
	addq	$32, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end38:
	.size	_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_, .Lfunc_end38-_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_,"axG",@progbits,_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_,comdat
	.weak	_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_ # -- Begin function _ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_
	.p2align	4, 0x90
	.type	_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_,@function
_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_: # @_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 24(%rsp)
	testq	%rcx, %rcx
	je	.LBB39_9
# %bb.1:
	movq	%r8, %r14
	testq	%r8, %r8
	je	.LBB39_9
# %bb.2:
	movq	%rcx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r12
	leaq	(%r14,%rcx), %rax
	cmpq	$2, %rax
	jne	.LBB39_5
# %bb.3:
	leaq	24(%rsp), %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	testb	%al, %al
	je	.LBB39_9
# %bb.4:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_
	jmp	.LBB39_9
.LBB39_5:
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%r12, 16(%rsp)
	movq	%r13, 8(%rsp)
	cmpq	%r14, %rbx
	jle	.LBB39_7
# %bb.6:
	movq	%rbx, %r15
	shrq	$63, %r15
	addq	%rbx, %r15
	sarq	%r15
	leaq	16(%rsp), %rdi
	movq	%r15, %rsi
	callq	_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	movq	16(%rsp), %rbp
	movq	24(%rsp), %rdi
	callq	_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE
	movq	%r13, %rdi
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rbp, %rdx
	movq	%rax, %rcx
	callq	_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	movq	%rax, 8(%rsp)
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, %rbp
	jmp	.LBB39_8
.LBB39_7:
	movq	%r14, %rbp
	shrq	$63, %rbp
	addq	%r14, %rbp
	sarq	%rbp
	leaq	8(%rsp), %rdi
	movq	%rbp, %rsi
	callq	_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	movq	8(%rsp), %r15
	movq	24(%rsp), %rdi
	callq	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	movq	%rax, %rcx
	callq	_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	movq	%rax, 16(%rsp)
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, %r15
.LBB39_8:
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rdx
	movq	%r13, %rsi
	callq	_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_
	movq	%rax, %r13
	movq	16(%rsp), %rsi
	movq	24(%rsp), %r9
	movq	%r12, %rdi
	movq	%rax, %rdx
	movq	%r15, %rcx
	movq	%rbp, %r8
	callq	_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_
	movq	8(%rsp), %rsi
	subq	%r15, %rbx
	subq	%rbp, %r14
	movq	24(%rsp), %r9
	movq	%r13, %rdi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rbx, %rcx
	movq	%r14, %r8
	callq	_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_
.LBB39_9:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end39:
	.size	_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_, .Lfunc_end39-_ZSt22__merge_without_bufferIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_,comdat
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_ # -- Begin function _ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_,@function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_: # @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %r8
	movq	(%rsi), %rdi
	movl	8(%rsi), %esi
	movq	(%rdx), %rax
	movl	8(%rdx), %ecx
	movq	%rax, %rdx
	callq	*(%r8)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end40:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_, .Lfunc_end40-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_,"axG",@progbits,_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_,comdat
	.weak	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_ # -- Begin function _ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	.p2align	4, 0x90
	.type	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_,@function
_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_: # @_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end41:
	.size	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_, .Lfunc_end41-_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_ # -- Begin function _ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_,@function
_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_: # @_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	_ZSt12__miter_baseIP12cooedgetupleET_S2_
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_ZSt12__miter_baseIP12cooedgetupleET_S2_
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end42:
	.size	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_, .Lfunc_end42-_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_,"axG",@progbits,_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_,comdat
	.weak	_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_ # -- Begin function _ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_
	.p2align	4, 0x90
	.type	_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_,@function
_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_: # @_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movq	%rsi, 16(%rsp)
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%rsp)
	movl	8(%rax), %eax
	movl	%eax, 8(%rsp)
	leaq	-12(%rbx), %rdx
	leaq	16(%rsp), %rdi
	movq	%rsp, %rsi
	callq	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_
	testb	%al, %al
	je	.LBB43_1
# %bb.2:                                # %.lr.ph.preheader
	leaq	16(%rsp), %r15
	movq	%rsp, %r12
	.p2align	4, 0x90
.LBB43_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	leaq	-12(%rbx), %r14
	movq	%r14, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rbx)
	addq	$-24, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_
	movq	%r14, %rbx
	testb	%al, %al
	jne	.LBB43_3
	jmp	.LBB43_4
.LBB43_1:
	movq	%rbx, %r14
.LBB43_4:                               # %._crit_edge
	movq	%rsp, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	movl	8(%rax), %eax
	movl	%eax, 8(%r14)
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end43:
	.size	_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_, .Lfunc_end43-_ZSt25__unguarded_linear_insertIP12cooedgetupleN9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEEvT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE,comdat
	.weak	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE # -- Begin function _ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE,@function
_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE: # @_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end44:
	.size	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE, .Lfunc_end44-_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ # -- Begin function _ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,@function
_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_: # @_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdx, (%rsp)
	callq	_ZSt12__niter_baseIP12cooedgetupleET_S2_
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZSt12__niter_baseIP12cooedgetupleET_S2_
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	callq	_ZSt12__niter_baseIP12cooedgetupleET_S2_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	movq	%rsp, %rdi
	movq	%rax, %rsi
	callq	_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end45:
	.size	_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_, .Lfunc_end45-_ZSt23__copy_move_backward_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__miter_baseIP12cooedgetupleET_S2_,"axG",@progbits,_ZSt12__miter_baseIP12cooedgetupleET_S2_,comdat
	.weak	_ZSt12__miter_baseIP12cooedgetupleET_S2_ # -- Begin function _ZSt12__miter_baseIP12cooedgetupleET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__miter_baseIP12cooedgetupleET_S2_,@function
_ZSt12__miter_baseIP12cooedgetupleET_S2_: # @_ZSt12__miter_baseIP12cooedgetupleET_S2_
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end46:
	.size	_ZSt12__miter_baseIP12cooedgetupleET_S2_, .Lfunc_end46-_ZSt12__miter_baseIP12cooedgetupleET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_,"axG",@progbits,_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_,comdat
	.weak	_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_ # -- Begin function _ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_
	.p2align	4, 0x90
	.type	_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_,@function
_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_: # @_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_
	.cfi_startproc
# %bb.0:
	movq	%rsi, %rax
	retq
.Lfunc_end47:
	.size	_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_, .Lfunc_end47-_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ # -- Begin function _ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,@function
_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_: # @_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end48:
	.size	_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_, .Lfunc_end48-_ZSt22__copy_move_backward_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__niter_baseIP12cooedgetupleET_S2_,"axG",@progbits,_ZSt12__niter_baseIP12cooedgetupleET_S2_,comdat
	.weak	_ZSt12__niter_baseIP12cooedgetupleET_S2_ # -- Begin function _ZSt12__niter_baseIP12cooedgetupleET_S2_
	.p2align	4, 0x90
	.type	_ZSt12__niter_baseIP12cooedgetupleET_S2_,@function
_ZSt12__niter_baseIP12cooedgetupleET_S2_: # @_ZSt12__niter_baseIP12cooedgetupleET_S2_
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end49:
	.size	_ZSt12__niter_baseIP12cooedgetupleET_S2_, .Lfunc_end49-_ZSt12__niter_baseIP12cooedgetupleET_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_ # -- Begin function _ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_
	.p2align	4, 0x90
	.type	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_,@function
_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_: # @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rax
	sarq	$2, %rax
	movabsq	$-6148914691236517205, %rbx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %rbx
	testq	%rdx, %rdx
	je	.LBB50_2
# %bb.1:
	movq	%rdi, %rsi
	movq	%rbx, %rax
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%r14,%rax,4), %rdi
	callq	memmove
.LBB50_2:
	negq	%rbx
	leaq	(%rbx,%rbx,2), %rax
	leaq	(%r14,%rax,4), %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end50:
	.size	_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_, .Lfunc_end50-_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bI12cooedgetupleEEPT_PKS4_S7_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_,comdat
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_ # -- Begin function _ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_,@function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_: # @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %r8
	movq	(%rsi), %rdi
	movl	8(%rsi), %esi
	movq	(%rdx), %rax
	movl	8(%rdx), %ecx
	movq	%rax, %rdx
	callq	*(%r8)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end51:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_, .Lfunc_end51-_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIS2_PS2_EEbRT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_,"axG",@progbits,_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_,comdat
	.weak	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_ # -- Begin function _ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	.p2align	4, 0x90
	.type	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_,@function
_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_: # @_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end52:
	.size	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_, .Lfunc_end52-_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,comdat
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE # -- Begin function _ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,@function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE: # @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end53:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE, .Lfunc_end53-_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_ # -- Begin function _ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_
	.p2align	4, 0x90
	.type	_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_,@function
_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_: # @_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end54:
	.size	_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_, .Lfunc_end54-_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_,"axG",@progbits,_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_,comdat
	.weak	_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_ # -- Begin function _ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_
	.p2align	4, 0x90
	.type	_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_,@function
_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_: # @_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end55:
	.size	_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_, .Lfunc_end55-_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt7advanceIP12cooedgetuplelEvRT_T0_,"axG",@progbits,_ZSt7advanceIP12cooedgetuplelEvRT_T0_,comdat
	.weak	_ZSt7advanceIP12cooedgetuplelEvRT_T0_ # -- Begin function _ZSt7advanceIP12cooedgetuplelEvRT_T0_
	.p2align	4, 0x90
	.type	_ZSt7advanceIP12cooedgetuplelEvRT_T0_,@function
_ZSt7advanceIP12cooedgetuplelEvRT_T0_:  # @_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end56:
	.size	_ZSt7advanceIP12cooedgetuplelEvRT_T0_, .Lfunc_end56-_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_,"axG",@progbits,_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_,comdat
	.weak	_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_ # -- Begin function _ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	.p2align	4, 0x90
	.type	_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_,@function
_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_: # @_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	%rcx, 16(%rsp)
	callq	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	testq	%rax, %rax
	jle	.LBB57_5
# %bb.1:                                # %.lr.ph
	movq	%rax, %rbp
	leaq	8(%rsp), %r15
	leaq	16(%rsp), %r12
	movq	%rax, %rbx
	jmp	.LBB57_2
	.p2align	4, 0x90
.LBB57_4:                               #   in Loop: Header=BB57_2 Depth=1
	movq	%rbx, %rbp
	testq	%rbx, %rbx
	jle	.LBB57_5
.LBB57_2:                               # =>This Inner Loop Header: Depth=1
	sarq	%rbx
	movq	%r13, 8(%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	movq	8(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r14, %rdx
	callq	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_
	testb	%al, %al
	je	.LBB57_4
# %bb.3:                                #   in Loop: Header=BB57_2 Depth=1
	movq	8(%rsp), %r13
	addq	$12, %r13
	notq	%rbx
	addq	%rbp, %rbx
	jmp	.LBB57_4
.LBB57_5:                               # %._crit_edge
	movq	%r13, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end57:
	.size	_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_, .Lfunc_end57-_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE,comdat
	.weak	_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE # -- Begin function _ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE,@function
_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE: # @_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZSt4moveIRN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS3_EEEEONSt16remove_referenceIT_E4typeEOS9_
	leaq	16(%rsp), %rdi
	movq	%rax, %rsi
	callq	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	movq	16(%rsp), %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end58:
	.size	_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE, .Lfunc_end58-_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_,"axG",@progbits,_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_,comdat
	.weak	_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_ # -- Begin function _ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	.p2align	4, 0x90
	.type	_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_,@function
_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_: # @_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	%rcx, 16(%rsp)
	callq	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	testq	%rax, %rax
	jle	.LBB59_5
# %bb.1:                                # %.lr.ph
	movq	%rax, %rbp
	leaq	8(%rsp), %r15
	leaq	16(%rsp), %r12
	movq	%rax, %rbx
	jmp	.LBB59_2
	.p2align	4, 0x90
.LBB59_4:                               #   in Loop: Header=BB59_2 Depth=1
	movq	%rbx, %rbp
	testq	%rbx, %rbx
	jle	.LBB59_5
.LBB59_2:                               # =>This Inner Loop Header: Depth=1
	sarq	%rbx
	movq	%r13, 8(%rsp)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	movq	8(%rsp), %rdx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_
	testb	%al, %al
	jne	.LBB59_4
# %bb.3:                                #   in Loop: Header=BB59_2 Depth=1
	movq	8(%rsp), %r13
	addq	$12, %r13
	notq	%rbx
	addq	%rbp, %rbx
	jmp	.LBB59_4
.LBB59_5:                               # %._crit_edge
	movq	%r13, %rax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end59:
	.size	_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_, .Lfunc_end59-_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_,"axG",@progbits,_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_,comdat
	.weak	_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_ # -- Begin function _ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_
	.p2align	4, 0x90
	.type	_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_,@function
_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_: # @_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rdi, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZSt19__iterator_categoryIP12cooedgetupleENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end60:
	.size	_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_, .Lfunc_end60-_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,"axG",@progbits,_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,comdat
	.weak	_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_ # -- Begin function _ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.p2align	4, 0x90
	.type	_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_,@function
_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_: # @_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, 8(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 16(%rsp)
	movq	%r14, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rbx)
	leaq	8(%rsp), %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	movl	8(%rax), %eax
	movl	%eax, 8(%r14)
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end61:
	.size	_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_, .Lfunc_end61-_ZSt4swapI12cooedgetupleENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS4_ESt18is_move_assignableIS4_EEE5valueEvE4typeERS4_SD_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag,"axG",@progbits,_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag,comdat
	.weak	_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag # -- Begin function _ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag
	.p2align	4, 0x90
	.type	_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag,@function
_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag: # @_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag
	.cfi_startproc
# %bb.0:
	leaq	(%rsi,%rsi,2), %rax
	shlq	$2, %rax
	addq	%rax, (%rdi)
	retq
.Lfunc_end62:
	.size	_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag, .Lfunc_end62-_ZSt9__advanceIP12cooedgetuplelEvRT_T0_St26random_access_iterator_tag
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_,comdat
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_ # -- Begin function _ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_,@function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_: # @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %r8
	movq	(%rsi), %rdi
	movl	8(%rsi), %esi
	movq	(%rdx), %rax
	movl	8(%rdx), %ecx
	movq	%rax, %rdx
	callq	*(%r8)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end63:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_, .Lfunc_end63-_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEclIPS2_KS2_EEbT_RT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,comdat
	.weak	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE # -- Begin function _ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE,@function
_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE: # @_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end64:
	.size	_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE, .Lfunc_end64-_ZN9__gnu_cxx5__ops14_Iter_comp_valIPFb12cooedgetupleS2_EEC2EONS0_15_Iter_comp_iterIS4_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_,"axG",@progbits,_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_,comdat
	.weak	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_ # -- Begin function _ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_,@function
_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_: # @_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %r8
	movq	(%rsi), %rdi
	movl	8(%rsi), %esi
	movq	(%rdx), %rax
	movl	8(%rdx), %ecx
	movq	%rax, %rdx
	callq	*(%r8)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end65:
	.size	_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_, .Lfunc_end65-_ZN9__gnu_cxx5__ops14_Val_comp_iterIPFb12cooedgetupleS2_EEclIKS2_PS2_EEbRT_T0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag # -- Begin function _ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag
	.p2align	4, 0x90
	.type	_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag,@function
_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag: # @_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %rax
	cmpq	%rsi, %rdi
	je	.LBB66_20
# %bb.1:
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%rax, %r15
	subq	%rsi, %r15
	je	.LBB66_2
# %bb.3:
	subq	%r13, %rax
	sarq	$2, %rax
	movabsq	$-6148914691236517205, %rcx     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rcx, %rax
	movq	%rax, 8(%rsp)
	movq	%r12, %rdx
	subq	%r13, %rdx
	sarq	$2, %rdx
	imulq	%rcx, %rdx
	movq	%rdx, 16(%rsp)
	addq	%rdx, %rdx
	cmpq	%rdx, %rax
	jne	.LBB66_5
# %bb.4:
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%r12, %rdx
	callq	_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_
	jmp	.LBB66_19
.LBB66_2:
	movq	%r13, %rax
	jmp	.LBB66_20
.LBB66_5:
	addq	%r13, %r15
                                        # implicit-def: $r14
	jmp	.LBB66_6
	.p2align	4, 0x90
.LBB66_14:                              #   in Loop: Header=BB66_6 Depth=1
	movq	%r14, %r12
.LBB66_15:                              #   in Loop: Header=BB66_6 Depth=1
	movq	%r12, %r14
	testq	%rbx, %rbx
	je	.LBB66_19
.LBB66_6:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB66_26 Depth 2
                                        #     Child Loop BB66_11 Depth 2
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rcx, %rax
	subq	%rdx, %rax
	cmpq	%rax, %rdx
	jge	.LBB66_16
# %bb.7:                                #   in Loop: Header=BB66_6 Depth=1
	cmpq	$1, %rdx
	je	.LBB66_8
# %bb.9:                                #   in Loop: Header=BB66_6 Depth=1
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB66_12
# %bb.10:                               # %.lr.ph93.preheader
                                        #   in Loop: Header=BB66_6 Depth=1
	shlq	$2, %rdx
	leaq	(%rdx,%rdx,2), %rbx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB66_11:                              # %.lr.ph93
                                        #   Parent Loop BB66_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	(%rbx,%r13), %rsi
	movq	%r13, %rdi
	callq	_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_
	addq	$12, %r13
	addq	$1, %rbp
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	cmpq	%rdx, %rbp
	jl	.LBB66_11
.LBB66_12:                              # %._crit_edge94
                                        #   in Loop: Header=BB66_6 Depth=1
	cqto
	idivq	%rcx
	movq	%rdx, %rbx
	movq	%rdx, 8(%rsp)
	movq	%r15, %r12
	testq	%rdx, %rdx
	je	.LBB66_15
# %bb.13:                               #   in Loop: Header=BB66_6 Depth=1
	leaq	8(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	movq	%rax, 16(%rsp)
	jmp	.LBB66_14
	.p2align	4, 0x90
.LBB66_16:                              #   in Loop: Header=BB66_6 Depth=1
	movq	%rax, 16(%rsp)
	cmpq	$1, %rax
	je	.LBB66_17
# %bb.21:                               #   in Loop: Header=BB66_6 Depth=1
	leaq	(%rcx,%rcx,2), %rsi
	leaq	(,%rsi,4), %rcx
	addq	%r13, %rcx
	negq	%rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rdx
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	cmpq	%rcx, %rax
	jle	.LBB66_22
# %bb.25:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB66_6 Depth=1
	leaq	-12(,%rsi,4), %rbx
	addq	%r13, %rbx
	xorl	%ebp, %ebp
	movq	%rdx, %r13
	.p2align	4, 0x90
.LBB66_26:                              # %.lr.ph
                                        #   Parent Loop BB66_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$-12, %r13
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_
	addq	$1, %rbp
	movq	8(%rsp), %rax
	movq	16(%rsp), %rcx
	movq	%rax, %rdx
	subq	%rcx, %rdx
	addq	$-12, %rbx
	cmpq	%rdx, %rbp
	jl	.LBB66_26
	jmp	.LBB66_23
	.p2align	4, 0x90
.LBB66_22:                              #   in Loop: Header=BB66_6 Depth=1
	movq	%rdx, %r13
.LBB66_23:                              # %._crit_edge
                                        #   in Loop: Header=BB66_6 Depth=1
	cqto
	idivq	%rcx
	movq	%rdx, %rbx
	movq	%rdx, 8(%rsp)
	movq	%r15, %r12
	testq	%rdx, %rdx
	je	.LBB66_15
# %bb.24:                               #   in Loop: Header=BB66_6 Depth=1
	leaq	8(%rsp), %rdi
	leaq	16(%rsp), %rsi
	callq	_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	jmp	.LBB66_14
.LBB66_8:
	movq	%r13, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 32(%rsp)
	leaq	12(%r13), %rdi
	movq	8(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(,%rax,4), %rsi
	addq	%r13, %rsi
	movq	%r13, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	leaq	24(%rsp), %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	8(%rsp), %rcx
	leaq	(%rcx,%rcx,2), %rcx
	movq	(%rax), %rdx
	movq	%rdx, -12(%r13,%rcx,4)
	movl	8(%rax), %eax
	movl	%eax, -4(%r13,%rcx,4)
	jmp	.LBB66_18
.LBB66_17:
	leaq	(%rcx,%rcx,2), %rax
	leaq	-12(,%rax,4), %rdi
	addq	%r13, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, 24(%rsp)
	movl	8(%rax), %eax
	movl	%eax, 32(%rsp)
	movq	8(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(,%rax,4), %rdx
	addq	%r13, %rdx
	leaq	-12(,%rax,4), %rsi
	addq	%r13, %rsi
	movq	%r13, %rdi
	callq	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
	leaq	24(%rsp), %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%r13)
	movl	8(%rax), %eax
	movl	%eax, 8(%r13)
.LBB66_18:                              # %.loopexit
	movq	%r15, %r12
.LBB66_19:                              # %.loopexit
	movq	%r12, %rax
.LBB66_20:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end66:
	.size	_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag, .Lfunc_end66-_ZNSt3_V28__rotateIP12cooedgetupleEET_S3_S3_S3_St26random_access_iterator_tag
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_ # -- Begin function _ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_,@function
_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_: # @_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r15
	cmpq	%rsi, %rdi
	je	.LBB67_3
# %bb.1:                                # %.lr.ph.preheader
	movq	%rsi, %r14
	movq	%rdi, %rbx
	.p2align	4, 0x90
.LBB67_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	_ZSt9iter_swapIP12cooedgetupleS1_EvT_T0_
	addq	$12, %rbx
	addq	$12, %r15
	cmpq	%rbx, %r14
	jne	.LBB67_2
.LBB67_3:                               # %._crit_edge
	movq	%r15, %rax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end67:
	.size	_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_, .Lfunc_end67-_ZSt11swap_rangesIP12cooedgetupleS1_ET0_T_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_,"axG",@progbits,_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_,comdat
	.weak	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_ # -- Begin function _ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_,@function
_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_: # @_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	callq	_ZSt12__miter_baseIP12cooedgetupleET_S2_
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	_ZSt12__miter_baseIP12cooedgetupleET_S2_
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	callq	_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end68:
	.size	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_, .Lfunc_end68-_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_,"axG",@progbits,_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_,comdat
	.weak	_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ # -- Begin function _ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	.p2align	4, 0x90
	.type	_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_,@function
_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_: # @_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	callq	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	movq	%rsp, %rdi
	callq	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	movq	(%rax), %rax
	movq	%rax, (%r14)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end69:
	.size	_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_, .Lfunc_end69-_ZSt4swapIlENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ # -- Begin function _ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,@function
_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_: # @_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdx, (%rsp)
	callq	_ZSt12__niter_baseIP12cooedgetupleET_S2_
	movq	%rax, %r14
	movq	%rbx, %rdi
	callq	_ZSt12__niter_baseIP12cooedgetupleET_S2_
	movq	%rax, %rbx
	movq	(%rsp), %rdi
	callq	_ZSt12__niter_baseIP12cooedgetupleET_S2_
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	movq	%rsp, %rdi
	movq	%rax, %rsi
	callq	_ZSt12__niter_wrapIP12cooedgetupleET_RKS2_S2_
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end70:
	.size	_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_, .Lfunc_end70-_ZSt14__copy_move_a2ILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,"axG",@progbits,_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,comdat
	.weak	_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_ # -- Begin function _ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.p2align	4, 0x90
	.type	_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_,@function
_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_: # @_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end71:
	.size	_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_, .Lfunc_end71-_ZSt13__copy_move_aILb1EP12cooedgetupleS1_ET1_T0_S3_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_ # -- Begin function _ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_
	.p2align	4, 0x90
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_,@function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_: # @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_
	.cfi_startproc
# %bb.0:
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	subq	%rdi, %rbx
	je	.LBB72_2
# %bb.1:
	movq	%rdi, %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	memmove
.LBB72_2:
	addq	%rbx, %r14
	movq	%r14, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end72:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_, .Lfunc_end72-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI12cooedgetupleEEPT_PKS4_S7_S5_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_ # -- Begin function _ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	.p2align	4, 0x90
	.type	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_,@function
_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_: # @_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	retq
.Lfunc_end73:
	.size	_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_, .Lfunc_end73-_ZSt4moveIRlEONSt16remove_referenceIT_E4typeEOS2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_,"axG",@progbits,_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_,comdat
	.weak	_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_ # -- Begin function _ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	.p2align	4, 0x90
	.type	_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_,@function
_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_: # @_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rdi, %r13
	movq	%rsi, %r15
	subq	%rdi, %r15
	movl	$7, %ebx
	movl	$7, %edx
	movq	%rsi, (%rsp)                    # 8-byte Spill
	callq	_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	cmpq	$85, %r15
	jl	.LBB74_3
# %bb.1:                                # %.lr.ph.preheader
	leaq	(%r14,%r15), %rbp
	sarq	$2, %r15
	movq	%r15, %rax
	movabsq	$-6148914691236517205, %r15     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%rax, %r15
	.p2align	4, 0x90
.LBB74_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdi
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%r14, %rdx
	movq	%rbx, %rcx
	movq	%r12, %r8
	callq	_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	leaq	(%rbx,%rbx), %rcx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	movq	%r13, %rdx
	movq	%r12, %r8
	callq	_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	shlq	$2, %rbx
	cmpq	%r15, %rbx
	jl	.LBB74_2
.LBB74_3:                               # %._crit_edge
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end74:
	.size	_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_, .Lfunc_end74-_ZSt24__merge_sort_with_bufferIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_,"axG",@progbits,_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_,comdat
	.weak	_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_ # -- Begin function _ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_
	.p2align	4, 0x90
	.type	_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_,@function
_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_: # @_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %rbx
	movq	%r8, %r15
	movq	%rcx, %rbp
	movq	%rsi, %r14
	movq	%rdi, %r13
	movq	104(%rsp), %r12
	movq	96(%rsp), %rax
	cmpq	%r8, %rcx
	jg	.LBB75_3
# %bb.1:
	cmpq	%rax, %rbp
	jg	.LBB75_3
# %bb.2:
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rdx, %rbp
	movq	%rbx, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%rbx, %rdi
	movq	%rax, %rsi
	movq	%r14, %rdx
	movq	%rbp, %rcx
	movq	%r13, %r8
	movq	%r12, %r9
	callq	_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	jmp	.LBB75_9
.LBB75_3:
	cmpq	%rax, %r15
	jle	.LBB75_4
# %bb.5:
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	%r13, 16(%rsp)
	movq	%r14, 8(%rsp)
	cmpq	%r15, %rbp
	jle	.LBB75_7
# %bb.6:
	movq	%rbp, %r12
	shrq	$63, %r12
	addq	%rbp, %r12
	sarq	%r12
	leaq	16(%rsp), %rdi
	movq	%r12, %rsi
	callq	_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	movq	16(%rsp), %rbx
	movq	104(%rsp), %rdi
	callq	_ZN9__gnu_cxx5__ops15__iter_comp_valIPFb12cooedgetupleS2_EEENS0_14_Iter_comp_valIT_EENS0_15_Iter_comp_iterIS6_EE
	movq	%r14, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movq	%rbx, %rdx
	movq	%rax, %rcx
	callq	_ZSt13__lower_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	movq	%rax, 8(%rsp)
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, %rbx
	jmp	.LBB75_8
.LBB75_4:
	movq	%r14, %rdi
	movq	%rdx, %rsi
	movq	%rdx, %rbp
	movq	%rbx, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	movq	%rax, %rcx
	movq	%rbp, %r8
	movq	%r12, %r9
	callq	_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	jmp	.LBB75_9
.LBB75_7:
	movq	%r15, %rbx
	shrq	$63, %rbx
	addq	%r15, %rbx
	sarq	%rbx
	leaq	8(%rsp), %rdi
	movq	%rbx, %rsi
	callq	_ZSt7advanceIP12cooedgetuplelEvRT_T0_
	movq	8(%rsp), %r12
	movq	104(%rsp), %rdi
	callq	_ZN9__gnu_cxx5__ops15__val_comp_iterIPFb12cooedgetupleS2_EEENS0_14_Val_comp_iterIT_EENS0_15_Iter_comp_iterIS6_EE
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%rax, %rcx
	callq	_ZSt13__upper_boundIP12cooedgetupleS0_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS0_S0_EEEET_S8_S8_RKT0_T1_
	movq	%rax, 16(%rsp)
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	_ZSt8distanceIP12cooedgetupleENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, %r12
.LBB75_8:
	movq	16(%rsp), %rdi
	movq	8(%rsp), %rdx
	subq	%r12, %rbp
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	movq	%r14, %rsi
	movq	%rbp, %rcx
	movq	%rbx, %r8
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %r9
	movq	104(%rsp), %rax
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	16(%rsp), %rsi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%rax, %r13
	movq	%r12, %rcx
	movq	%rbx, %r8
	movq	%r14, %r9
	movq	104(%rsp), %r12
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	movq	8(%rsp), %rsi
	subq	%rbx, %r15
	movq	%r13, %rdi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	%rbp, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	pushq	%r12
	.cfi_adjust_cfa_offset 8
	pushq	104(%rsp)
	.cfi_adjust_cfa_offset 8
	callq	_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
.LBB75_9:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end75:
	.size	_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_, .Lfunc_end75-_ZSt16__merge_adaptiveIP12cooedgetuplelS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_S8_T0_S9_T1_S9_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_,"axG",@progbits,_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_,comdat
	.weak	_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_ # -- Begin function _ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	.p2align	4, 0x90
	.type	_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_,@function
_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_: # @_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %r14
	movq	%rsi, %r15
	movq	%rsi, %rax
	subq	%rdi, %rax
	sarq	$2, %rax
	movabsq	$-6148914691236517205, %r13     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%r13, %rax
	cmpq	%rdx, %rax
	jge	.LBB76_2
# %bb.1:
	movq	%rdi, %rbx
	jmp	.LBB76_4
.LBB76_2:                               # %.lr.ph.preheader
	movq	%rdx, %r12
	leaq	(,%rdx,4), %rax
	leaq	(%rax,%rax,2), %rbp
	.p2align	4, 0x90
.LBB76_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rdi,%rbp), %rbx
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	movq	%r15, %rax
	subq	%rbx, %rax
	sarq	$2, %rax
	imulq	%r13, %rax
	movq	%rbx, %rdi
	cmpq	%r12, %rax
	jge	.LBB76_3
.LBB76_4:                               # %._crit_edge
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_ZSt16__insertion_sortIP12cooedgetupleN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end76:
	.size	_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_, .Lfunc_end76-_ZSt22__chunk_insertion_sortIP12cooedgetuplelN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_,"axG",@progbits,_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_,comdat
	.weak	_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_ # -- Begin function _ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	.p2align	4, 0x90
	.type	_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_,@function
_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_: # @_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rcx, (%rsp)
	leaq	(%rcx,%rcx), %r13
	movq	%rsi, %rax
	subq	%rdi, %rax
	sarq	$2, %rax
	movabsq	$-6148914691236517205, %r14     # imm = 0xAAAAAAAAAAAAAAAB
	imulq	%r14, %rax
	cmpq	%r13, %rax
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	jge	.LBB77_2
# %bb.1:
	movq	%rdi, %rbx
	jmp	.LBB77_4
.LBB77_2:                               # %.lr.ph.preheader
	shlq	$3, %rcx
	leaq	(%rcx,%rcx,2), %rbp
	.p2align	4, 0x90
.LBB77_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsp), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	(%rdi,%rax,4), %rdx
	leaq	(%rdi,%rbp), %rbx
	movq	%rdx, %rsi
	movq	%rbx, %rcx
	movq	%r12, %r8
	movq	8(%rsp), %r9                    # 8-byte Reload
	callq	_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_
	movq	%rax, %r12
	movq	%r15, %rax
	subq	%rbx, %rax
	sarq	$2, %rax
	imulq	%r14, %rax
	movq	%rbx, %rdi
	cmpq	%r13, %rax
	jge	.LBB77_3
.LBB77_4:                               # %._crit_edge
	movq	%rax, 16(%rsp)
	leaq	16(%rsp), %rdi
	movq	%rsp, %rsi
	callq	_ZSt3minIlERKT_S2_S2_
	movq	(%rax), %rax
	movq	%rax, (%rsp)
	leaq	(%rax,%rax,2), %rax
	leaq	(%rbx,%rax,4), %rdx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	movq	%r15, %rcx
	movq	%r12, %r8
	movq	8(%rsp), %r9                    # 8-byte Reload
	callq	_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end77:
	.size	_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_, .Lfunc_end77-_ZSt17__merge_sort_loopIP12cooedgetupleS1_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_T1_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_,"axG",@progbits,_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_,comdat
	.weak	_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_ # -- Begin function _ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_
	.p2align	4, 0x90
	.type	_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_,@function
_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_: # @_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%r9, (%rsp)
	cmpq	%rcx, %rdx
	je	.LBB78_8
# %bb.1:
	cmpq	%r12, %r13
	je	.LBB78_8
# %bb.2:                                # %.lr.ph.preheader
	movq	%rsp, %rbp
	.p2align	4, 0x90
.LBB78_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	testb	%al, %al
	je	.LBB78_5
# %bb.4:                                #   in Loop: Header=BB78_3 Depth=1
	movq	%r15, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rbx)
	addq	$12, %r15
	jmp	.LBB78_6
	.p2align	4, 0x90
.LBB78_5:                               #   in Loop: Header=BB78_3 Depth=1
	movq	%r13, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rbx)
	addq	$12, %r13
.LBB78_6:                               #   in Loop: Header=BB78_3 Depth=1
	addq	$12, %rbx
	cmpq	%r14, %r15
	je	.LBB78_8
# %bb.7:                                #   in Loop: Header=BB78_3 Depth=1
	cmpq	%r12, %r13
	jne	.LBB78_3
.LBB78_8:                               # %._crit_edge
	movq	%r13, %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end78:
	.size	_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_, .Lfunc_end78-_ZSt12__move_mergeIP12cooedgetupleS1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEET0_T_S9_S9_S9_S8_T1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3minIlERKT_S2_S2_,"axG",@progbits,_ZSt3minIlERKT_S2_S2_,comdat
	.weak	_ZSt3minIlERKT_S2_S2_           # -- Begin function _ZSt3minIlERKT_S2_S2_
	.p2align	4, 0x90
	.type	_ZSt3minIlERKT_S2_S2_,@function
_ZSt3minIlERKT_S2_S2_:                  # @_ZSt3minIlERKT_S2_S2_
	.cfi_startproc
# %bb.0:
	movq	%rdi, %rax
	movq	(%rsi), %rcx
	cmpq	(%rdi), %rcx
	cmovlq	%rsi, %rax
	retq
.Lfunc_end79:
	.size	_ZSt3minIlERKT_S2_S2_, .Lfunc_end79-_ZSt3minIlERKT_S2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_,"axG",@progbits,_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_,comdat
	.weak	_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_ # -- Begin function _ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	.p2align	4, 0x90
	.type	_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_,@function
_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_: # @_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	%r9, (%rsp)
	cmpq	%rsi, %rdi
	sete	%al
	cmpq	%rcx, %rdx
	je	.LBB80_8
# %bb.1:
	cmpq	%r14, %r15
	je	.LBB80_8
# %bb.2:                                # %.lr.ph.preheader
	movq	%rcx, %r12
	movq	%rdx, %r13
	movq	%rsp, %rbp
	.p2align	4, 0x90
.LBB80_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	movq	%r13, %rsi
	movq	%r15, %rdx
	callq	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	testb	%al, %al
	je	.LBB80_5
# %bb.4:                                #   in Loop: Header=BB80_3 Depth=1
	movq	%r13, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rbx)
	addq	$12, %r13
	jmp	.LBB80_6
	.p2align	4, 0x90
.LBB80_5:                               #   in Loop: Header=BB80_3 Depth=1
	movq	%r15, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%rbx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rbx)
	addq	$12, %r15
.LBB80_6:                               #   in Loop: Header=BB80_3 Depth=1
	addq	$12, %rbx
	cmpq	%r14, %r15
	sete	%al
	cmpq	%r12, %r13
	je	.LBB80_8
# %bb.7:                                #   in Loop: Header=BB80_3 Depth=1
	cmpq	%r14, %r15
	jne	.LBB80_3
.LBB80_8:                               # %._crit_edge
	testb	%al, %al
	jne	.LBB80_10
# %bb.9:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
.LBB80_10:
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end80:
	.size	_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_, .Lfunc_end80-_ZSt21__move_merge_adaptiveIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_,"axG",@progbits,_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_,comdat
	.weak	_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_ # -- Begin function _ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	.p2align	4, 0x90
	.type	_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_,@function
_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_: # @_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r15
	movq	%r9, (%rsp)
	cmpq	%rsi, %rdi
	je	.LBB81_1
# %bb.3:
	cmpq	%rbx, %r15
	je	.LBB81_2
# %bb.4:
	movq	%rsi, %r12
	movq	%rdi, %r13
	addq	$-12, %r12
	addq	$-12, %rbx
	movq	%rsp, %rbp
	.p2align	4, 0x90
.LBB81_5:                               # %.outer
                                        # =>This Inner Loop Header: Depth=1
	addq	$-12, %r14
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEclIPS2_S7_EEbT_T0_
	testb	%al, %al
	jne	.LBB81_6
# %bb.9:                                #   in Loop: Header=BB81_5 Depth=1
	movq	%rbx, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	movl	8(%rax), %eax
	movl	%eax, 8(%r14)
	cmpq	%rbx, %r15
	je	.LBB81_2
# %bb.10:                               #   in Loop: Header=BB81_5 Depth=1
	addq	$-12, %rbx
	jmp	.LBB81_5
.LBB81_6:                               #   in Loop: Header=BB81_5 Depth=1
	movq	%r12, %rdi
	callq	_ZSt4moveIR12cooedgetupleEONSt16remove_referenceIT_E4typeEOS3_
	movq	(%rax), %rcx
	movq	%rcx, (%r14)
	movl	8(%rax), %eax
	movl	%eax, 8(%r14)
	cmpq	%r13, %r12
	je	.LBB81_7
# %bb.8:                                #   in Loop: Header=BB81_5 Depth=1
	addq	$-12, %r12
	jmp	.LBB81_5
.LBB81_7:
	addq	$12, %rbx
.LBB81_1:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
.LBB81_2:                               # %.loopexit
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end81:
	.size	_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_, .Lfunc_end81-_ZSt30__move_merge_adaptive_backwardIP12cooedgetupleS1_S1_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS0_S0_EEEEvT_S8_T0_S9_T1_T2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_,"axG",@progbits,_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_,comdat
	.weak	_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_ # -- Begin function _ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_
	.p2align	4, 0x90
	.type	_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_,@function
_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_: # @_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_
	.cfi_startproc
# %bb.0:
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r9, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	48(%rsp), %rax
	cmpq	%r8, %rcx
	jle	.LBB82_4
# %bb.1:
	cmpq	%rax, %r8
	jg	.LBB82_4
# %bb.2:
	testq	%r8, %r8
	je	.LBB82_10
# %bb.3:
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%rax, %r13
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	jmp	.LBB82_9
.LBB82_4:
	cmpq	%rax, %rcx
	jle	.LBB82_5
# %bb.8:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	_ZNSt3_V26rotateIP12cooedgetupleEET_S3_S3_S3_
	jmp	.LBB82_9
.LBB82_5:
	testq	%rcx, %rcx
	je	.LBB82_6
# %bb.7:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%rax, %r13
	movq	%r12, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	_ZSt4moveIP12cooedgetupleS1_ET0_T_S3_S2_
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	_ZSt13move_backwardIP12cooedgetupleS1_ET0_T_S3_S2_
.LBB82_9:
	movq	%rax, %rbx
.LBB82_10:
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB82_6:
	.cfi_def_cfa_offset 48
	movq	%r14, %rbx
	jmp	.LBB82_10
.Lfunc_end82:
	.size	_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_, .Lfunc_end82-_ZSt17__rotate_adaptiveIP12cooedgetupleS1_lET_S2_S2_S2_T1_S3_T0_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIP12cooedgetupleEvT_S2_,"axG",@progbits,_ZSt8_DestroyIP12cooedgetupleEvT_S2_,comdat
	.weak	_ZSt8_DestroyIP12cooedgetupleEvT_S2_ # -- Begin function _ZSt8_DestroyIP12cooedgetupleEvT_S2_
	.p2align	4, 0x90
	.type	_ZSt8_DestroyIP12cooedgetupleEvT_S2_,@function
_ZSt8_DestroyIP12cooedgetupleEvT_S2_:   # @_ZSt8_DestroyIP12cooedgetupleEvT_S2_
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end83:
	.size	_ZSt8_DestroyIP12cooedgetupleEvT_S2_, .Lfunc_end83-_ZSt8_DestroyIP12cooedgetupleEvT_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_ # -- Begin function _ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_
	.p2align	4, 0x90
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_,@function
_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_: # @_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_
	.cfi_startproc
# %bb.0:
	retq
.Lfunc_end84:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_, .Lfunc_end84-_ZNSt12_Destroy_auxILb1EE9__destroyIP12cooedgetupleEEvT_S4_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_,"axG",@progbits,_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_,comdat
	.weak	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_ # -- Begin function _ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_,@function
_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_: # @_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	%rsi, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_ZSt4moveIRPFb12cooedgetupleS0_EEONSt16remove_referenceIT_E4typeEOS5_
	movq	(%rax), %rax
	movq	%rax, (%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end85:
	.size	_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_, .Lfunc_end85-_ZN9__gnu_cxx5__ops15_Iter_comp_iterIPFb12cooedgetupleS2_EEC2ES4_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function __hip_register_globals
	.type	__hip_register_globals,@function
__hip_register_globals:                 # @__hip_register_globals
	.cfi_startproc
# %bb.0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z25__device_stub__bfs_kernelPiS_S_PfS_iii, %esi
	movl	$.L__unnamed_1, %edx
	movl	$.L__unnamed_1, %ecx
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_, %esi
	movl	$.L__unnamed_2, %edx
	movl	$.L__unnamed_2, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z30__device_stub__back_sum_kerneliiPiPfS0_i, %esi
	movl	$.L__unnamed_3, %edx
	movl	$.L__unnamed_3, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z29__device_stub__clean_1d_arrayiPiPfS0_i, %esi
	movl	$.L__unnamed_4, %edx
	movl	$.L__unnamed_4, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z29__device_stub__clean_2d_arrayPii, %esi
	movl	$.L__unnamed_5, %edx
	movl	$.L__unnamed_5, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rsp)
	movups	%xmm0, (%rsp)
	movl	$_Z23__device_stub__clean_bcPfi, %esi
	movl	$.L__unnamed_6, %edx
	movl	$.L__unnamed_6, %ecx
	movq	%rbx, %rdi
	movl	$-1, %r8d
	xorl	%r9d, %r9d
	callq	__hipRegisterFunction
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end86:
	.size	__hip_register_globals, .Lfunc_end86-__hip_register_globals
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __hip_module_ctor
	.type	__hip_module_ctor,@function
__hip_module_ctor:                      # @__hip_module_ctor
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpq	$0, __hip_gpubin_handle(%rip)
	jne	.LBB87_2
# %bb.1:
	movl	$__hip_fatbin_wrapper, %edi
	callq	__hipRegisterFatBinary
	movq	%rax, __hip_gpubin_handle(%rip)
.LBB87_2:
	movq	__hip_gpubin_handle(%rip), %rdi
	callq	__hip_register_globals
	movl	$__hip_module_dtor, %edi
	callq	atexit
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end87:
	.size	__hip_module_ctor, .Lfunc_end87-__hip_module_ctor
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __hip_module_dtor
	.type	__hip_module_dtor,@function
__hip_module_dtor:                      # @__hip_module_dtor
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	__hip_gpubin_handle(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB88_2
# %bb.1:
	callq	__hipUnregisterFatBinary
	movq	$0, __hip_gpubin_handle(%rip)
.LBB88_2:
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end88:
	.size	__hip_module_dtor, .Lfunc_end88-__hip_module_dtor
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"r"
	.size	.L.str, 2

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error when opennning file: %s\n"
	.size	.L.str.1, 31

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"ERROR: "
	.size	.L.str.2, 8

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Opening file: %s\n"
	.size	.L.str.3, 18

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%c %s %d %d"
	.size	.L.str.4, 12

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Read from file: num_nodes = %d, num_edges = %d\n"
	.size	.L.str.7, 48

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"%c %d %d %d"
	.size	.L.str.9, 12

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"exiting loop\n"
	.size	.L.str.11, 14

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"You did something wrong!\n"
	.size	.L.str.12, 26

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"malloc failed bc_h\n"
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"ERROR: hipMalloc bc_d %s\n"
	.size	.L.str.14, 26

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"ERROR: hipMalloc dist_d %s\n"
	.size	.L.str.15, 28

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"ERROR: hipMalloc sigma_d %s\n"
	.size	.L.str.16, 29

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"ERROR: hipMalloc rho_d %s\n"
	.size	.L.str.17, 27

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"ERROR: hipMalloc stop_d %s\n"
	.size	.L.str.18, 28

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"ERROR: hipMalloc row_d %s\n"
	.size	.L.str.19, 27

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"ERROR: hipMalloc col_d %s\n"
	.size	.L.str.20, 27

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"ERROR: hipMalloc row_trans_d %s\n"
	.size	.L.str.21, 33

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"ERROR: hipMalloc col_trans_d %s\n"
	.size	.L.str.22, 33

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"ERROR: hipMemcpy row_d (size:%d) => %s\n"
	.size	.L.str.23, 40

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"ERROR: hipMemcpy col_d (size:%d) => %s\n"
	.size	.L.str.24, 40

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"ERROR: hipMemcpy row_trans_d (size:%d) => %s\n"
	.size	.L.str.25, 46

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"ERROR: hipMemcpy col_trans_d (size:%d) => %s\n"
	.size	.L.str.26, 46

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Completed iteration %d\n"
	.size	.L.str.27, 24

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"ERROR: read buffer bc_d (%s)\n"
	.size	.L.str.28, 30

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"%d: %d \n"
	.size	.L.str.29, 9

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"result.out"
	.size	.L.str.31, 11

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"w"
	.size	.L.str.32, 2

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"%f\n"
	.size	.L.str.34, 4

	.type	.L__unnamed_1,@object           # @0
.L__unnamed_1:
	.asciz	"_Z10bfs_kernelPiS_S_PfS_iii"
	.size	.L__unnamed_1, 28

	.type	.L__unnamed_2,@object           # @1
.L__unnamed_2:
	.asciz	"_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_"
	.size	.L__unnamed_2, 39

	.type	.L__unnamed_3,@object           # @2
.L__unnamed_3:
	.asciz	"_Z15back_sum_kerneliiPiPfS0_i"
	.size	.L__unnamed_3, 30

	.type	.L__unnamed_4,@object           # @3
.L__unnamed_4:
	.asciz	"_Z14clean_1d_arrayiPiPfS0_i"
	.size	.L__unnamed_4, 28

	.type	.L__unnamed_5,@object           # @4
.L__unnamed_5:
	.asciz	"_Z14clean_2d_arrayPii"
	.size	.L__unnamed_5, 22

	.type	.L__unnamed_6,@object           # @5
.L__unnamed_6:
	.asciz	"_Z8clean_bcPfi"
	.size	.L__unnamed_6, 15

	.type	.L__unnamed_7,@object           # @6
	.section	.hip_fatbin,"a",@progbits
	.p2align	3
.L__unnamed_7:
	.asciz	"__CLANG_OFFLOAD_BUNDLE__\002\000\000\000\000\000\000\000\205\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\000\000\000\000host-x86_64-unknown-linux\205\000\000\000\000\000\000\000\020;\000\000\000\000\000\000\034\000\000\000\000\000\000\000hip-amdgcn-amd-amdhsa-gfx900\177ELF\002\001\001@\001\000\000\000\000\000\000\000\003\000\340\000\001\000\000\000\000 \000\000\000\000\000\000@\000\000\000\000\000\000\000\2207\000\000\000\000\000\000,\000\000\000@\0008\000\b\000@\000\016\000\f\000\006\000\000\000\004\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\300\001\000\000\000\000\000\000\300\001\000\000\000\000\000\000\b\000\000\000\000\000\000\000\001\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300\037\000\000\000\000\000\000\300\037\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\005\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000p\t\000\000\000\000\000\000p\t\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\006\000\000\000\0000\000\000\000\000\000\000\0000\000\000\000\000\000\000\0000\000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\002\000\000\000\006\000\000\000\0000\000\000\000\000\000\000\0000\000\000\000\000\000\000\0000\000\000\000\000\000\000p\000\000\000\000\000\000\000p\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000R\345td\004\000\000\000\0000\000\000\000\000\000\000\0000\000\000\000\000\000\000\0000\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\020\000\000\000\000\000\000\001\000\000\000\000\000\000\000Q\345td\006\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\004\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\000\314\030\000\000\000\000\000\000\314\030\000\000\000\000\000\000\004\000\000\000\000\000\000\000\007\000\000\000\265\030\000\000 \000\000\000AMDGPU\000\000\202\256amdhsa.kernels\226\217\245.args\237\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\030\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset \245.size\b\253.value_kind\255global_buffer\203\247.offset(\245.size\004\253.value_kind\250by_value\203\247.offset,\245.size\004\253.value_kind\250by_value\203\247.offset0\245.size\004\253.value_kind\250by_value\203\247.offset8\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offset@\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_z\204\256.address_space\246global\247.offsetP\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetX\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset`\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offseth\245.size\b\253.value_kind\271hidden_multigrid_sync_arg\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_sizep\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\273_Z10bfs_kernelPiS_S_PfS_iii\273.private_segment_fixed_size\000\253.sgpr_count\026\261.sgpr_spill_count\000\247.symbol\276_Z10bfs_kernelPiS_S_PfS_iii.kd\253.vgpr_count\013\261.vgpr_spill_count\000\257.wavefront_size@\217\245.args\334\000\021\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\030\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset \245.size\b\253.value_kind\255global_buffer\203\247.offset(\245.size\004\253.value_kind\250by_value\203\247.offset,\245.size\004\253.value_kind\250by_value\203\247.offset0\245.size\004\253.value_kind\250by_value\203\247.offset4\245.size\004\253.value_kind\250by_value\204\256.address_space\246global\247.offset8\245.size\b\253.value_kind\255global_buffer\203\247.offset@\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offsetH\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offsetP\245.size\b\253.value_kind\266hidden_global_offset_z\204\256.address_space\246global\247.offsetX\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset`\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offseth\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetp\245.size\b\253.value_kind\271hidden_multigrid_sync_arg\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_sizex\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\331&_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_\273.private_segment_fixed_size\000\253.sgpr_count\030\261.sgpr_spill_count\000\247.symbol\331)_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_.kd\253.vgpr_count\023\261.vgpr_spill_count\000\257.wavefront_size@\217\245.args\235\203\247.offset\000\245.size\004\253.value_kind\250by_value\203\247.offset\004\245.size\004\253.value_kind\250by_value\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\030\245.size\b\253.value_kind\255global_buffer\203\247.offset \245.size\004\253.value_kind\250by_value\203\247.offset(\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offset0\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offset8\245.size\b\253.value_kind\266hidden_global_offset_z\204\256.address_space\246global\247.offset@\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetH\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetP\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetX\245.size\b\253.value_kind\271hidden_multigrid_sync_arg\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size`\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\275_Z15back_sum_kerneliiPiPfS0_i\273.private_segment_fixed_size\000\253.sgpr_count\013\261.sgpr_spill_count\000\247.symbol\331 _Z15back_sum_kerneliiPiPfS0_i.kd\253.vgpr_count\005\261.vgpr_spill_count\000\257.wavefront_size@\217\245.args\234\203\247.offset\000\245.size\004\253.value_kind\250by_value\204\256.address_space\246global\247.offset\b\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\020\245.size\b\253.value_kind\255global_buffer\204\256.address_space\246global\247.offset\030\245.size\b\253.value_kind\255global_buffer\203\247.offset \245.size\004\253.value_kind\250by_value\203\247.offset(\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offset0\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offset8\245.size\b\253.value_kind\266hidden_global_offset_z\204\256.address_space\246global\247.offset@\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetH\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetP\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offsetX\245.size\b\253.value_kind\271hidden_multigrid_sync_arg\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_size`\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\273_Z14clean_1d_arrayiPiPfS0_i\273.private_segment_fixed_size\000\253.sgpr_count\013\261.sgpr_spill_count\000\247.symbol\276_Z14clean_1d_arrayiPiPfS0_i.kd\253.vgpr_count\007\261.vgpr_spill_count\000\257.wavefront_size@\217\245.args\231\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\203\247.offset\b\245.size\004\253.value_kind\250by_value\203\247.offset\020\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offset\030\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offset \245.size\b\253.value_kind\266hidden_global_offset_z\204\256.address_space\246global\247.offset(\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset0\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset8\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset@\245.size\b\253.value_kind\271hidden_multigrid_sync_arg\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_sizeH\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\265_Z14clean_2d_arrayPii\273.private_segment_fixed_size\000\253.sgpr_count\013\261.sgpr_spill_count\000\247.symbol\270_Z14clean_2d_arrayPii.kd\253.vgpr_count\004\261.vgpr_spill_count\000\257.wavefront_size@\217\245.args\231\204\256.address_space\246global\247.offset\000\245.size\b\253.value_kind\255global_buffer\203\247.offset\b\245.size\004\253.value_kind\250by_value\203\247.offset\020\245.size\b\253.value_kind\266hidden_global_offset_x\203\247.offset\030\245.size\b\253.value_kind\266hidden_global_offset_y\203\247.offset \245.size\b\253.value_kind\266hidden_global_offset_z\204\256.address_space\246global\247.offset(\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset0\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset8\245.size\b\253.value_kind\253hidden_none\204\256.address_space\246global\247.offset@\245.size\b\253.value_kind\271hidden_multigrid_sync_arg\271.group_segment_fixed_size\000\266.kernarg_segment_align\b\265.kernarg_segment_sizeH\251.language\250OpenCL C\261.language_version\222\002\000\270.max_flat_workgroup_size\315\001\000\245.name\256_Z8clean_bcPfi\273.private_segment_fixed_size\000\253.sgpr_count\013\261.sgpr_spill_count\000\247.symbol\261_Z8clean_bcPfi.kd\253.vgpr_count\004\261.vgpr_spill_count\000\257.wavefront_size@\256amdhsa.version\222\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000<\000\000\000\022\003\007\000\000'\000\000\000\000\000\000\300\000\000\000\000\000\000\000X\000\000\000\021\003\006\000\000\037\000\000\000\000\000\000@\000\000\000\000\000\000\000\246\000\000\000\022\003\007\000\000&\000\000\000\000\000\000\350\000\000\000\000\000\000\000\f\001\000\000\021\003\006\000\200\036\000\000\000\000\000\000@\000\000\000\000\000\000\0006\001\000\000\022\003\007\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000\001\000\000\000\022\003\007\000\000 \000\000\000\000\000\000@\002\000\000\000\000\000\000\035\000\000\000\021\003\006\000@\036\000\000\000\000\000\000@\000\000\000\000\000\000\000w\000\000\000\022\003\007\000\000(\000\000\000\000\000\000t\000\000\000\000\000\000\000\215\000\000\000\021\003\006\000@\037\000\000\000\000\000\000@\000\000\000\000\000\000\000\304\000\000\000\021\003\006\000\300\036\000\000\000\000\000\000@\000\000\000\000\000\000\000\345\000\000\000\022\003\007\000\000#\000\000\000\000\000\000\370\002\000\000\000\000\000\000E\001\000\000\021\003\006\000\200\037\000\000\000\000\000\000@\000\000\000\000\000\000\000\003\000\000\000\001\000\000\000\004\000\000\000\032\000\000\000\000\000\201\000\000\000\000\020\004\000@\t\000\b\000\004\001\002\000\002\000\000\004\000D@\000\000\n\200 \t\001\000\000\000\006\000\000\000\007\000\000\000Z\312\007\tXB\236\256\364]\247\274\342\266\321\341=\355\177_{@\275[\026\370\370A\372\212\216;\370\276\004\205\262g\315\002\306\222u\t\231\2056%\r\000\000\000\r\000\000\000\007\000\000\000\000\000\000\000\b\000\000\000\t\000\000\000\000\000\000\000\n\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\f\000\000\000\000\000\000\000\003\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\005\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\000\000\000_Z10bfs_kernelPiS_S_PfS_iii\000_Z10bfs_kernelPiS_S_PfS_iii.kd\000_Z14clean_1d_arrayiPiPfS0_i\000_Z14clean_1d_arrayiPiPfS0_i.kd\000_Z14clean_2d_arrayPii\000_Z14clean_2d_arrayPii.kd\000_Z15back_sum_kerneliiPiPfS0_i\000_Z15back_sum_kerneliiPiPfS0_i.kd\000_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_\000_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_.kd\000_Z8clean_bcPfi\000_Z8clean_bcPfi.kd\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\202\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\204\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\007\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\300\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\257\000\220\000\000\000\013\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\200\002\002~\002\000\002\300\004\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\b\002\004~\001\000\350\321\000\004\002\004\003\004\n\300(\000\000\000\177\300\214\277\020\002\210}j \200\276\200\000\210\277\003\002\016\300\000\000\000\000\200\002\004~\001\003\006~\237\002\b\"\002\000\221\322\236\004\002\000\177\300\214\277\r\002\000~\f\004\0042\000\007\0068\000\200P\334\002\000\177\000p\017\214\277\022\000\224}~j\376\206o\000\210\277\003\000\n\300 \000\000\000\001\003\006~\005\000\217\322\202\006\002\000\t\002\000~\b\n\n2\000\r\f8\000\200P\334\005\000\177\000\201\002\004h\020\004\210}\021\002\004~\177\300\214\277j \202\276\b\000\210\277\237\002\004\"\001\000\217\322\202\002\002\000\t\002\n~\b\002\0022\005\005\0048\004\200P\334\001\000\177\002~\002\376\207p\017\214\277\000\005\202}~j\376\206R\000\210\277\022\201\002\201\003\000\217\322\202\006\002\000\017\002\002~\016\006\0062\001\t\b8\200\001\204\276\006\000\202\277~\006\376\207\201\000\000h\000\005\214}j\004\204\207~\004\376\211D\000\210\277\237\000\002\"\005\000\217\322\202\000\002\000\013\002\002~\n\n\n2\001\r\f8\000\200P\334\005\000\177\005\r\002\002~p\017\214\277\237\n\f\"\007\000\217\322\202\n\002\000\f\016\0162\001\021\0208\000\200P\334\007\000\177\001p\017\214\277\200\002\210}j \206\276\b\000\210\277\201\002\002~\001\002\024~\000\002\022~\000\200p\334\t\001\177\000\002\002\002~\000\200p\334\007\001\177\000~\006\376\207\000\200P\334\007\000\177\001p\017\214\277\002\002\224}j \206\276\326\377\210\277\005\000\217\322\202\n\002\000\017\002\002~\016\n\n2\001\r\f8\000\200P\334\003\000\177\001\000\200Q\334\005\000\177\007\200\001\210\276\200\001\220\276\000\200Q\334\005\000\177\bq\017\214\277\007\003\024~p\017\214\277\n\021\224}j\020\220\207\b\003\016~~\020\376\211\366\377\211\277~\020\376\207\001\025\022\002\000\200\005\335\005\t\177\007p\017\214\277\007\021\224}j\b\210\207\200\001\220\276~\b\376\211\354\377\211\277\266\377\202\277\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\200\002\002~\002\000\002\300\004\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\b\002\004~\000\000\350\321\000\004\002\004\003\000\n\300(\000\000\000\177\300\214\277\000\000\210}j \204\276\256\000\210\277\003\002\016\300\000\000\000\000\200\002\006~\000\003\b~\237\000\004\"\003\000\221\322\236\006\002\000\177\300\214\277\r\002\002~\f\006\0062\001\t\b8\000\200P\334\003\000\177\001\002\301\004\201p\017\214\277\004\002\224}~j\376\206\234\000\210\277\003\004\n\300 \000\000\000\000\003\002~\003\000\217\322\202\002\002\000\t\002\n~\b\006\0062\005\t\b8\000\200P\334\003\000\177\003\201\000\bh\000\b\210}\001\002\n~j \200\276\t\000\210\277\237\000\n\"\000\003\b~\004\000\217\322\202\b\002\000\t\002\f~\b\b\b2\006\013\n8\004\200P\334\004\000\177\005~\000\376\207\003\001\006\3008\000\000\000p\017\214\277\003\013\202}j \206\276h\000\210\277\002\302\002\201\b\000\217\322\202\002\002\000\017\002\b~\016\020\f2\004\023\0168\177\300\214\277\021\002\b~\020\020\0202\004\023\0228\200\001\210\276\006\000\202\277~\022\376\207\201\006\006h\003\013\214}j\b\210\207~\b\376\211V\000\210\277\237\006\b\"\n\000\217\322\202\006\002\000\013\002\b~\n\024\0242\004\027\0268\000\200P\334\n\000\177\n\r\002\b~p\017\214\277\237\024\026\"\f\000\217\322\202\024\002\000\f\030\0302\004\033\0328\000\200P\334\f\000\177\004p\017\214\277\002\b\224}j \222\276\345\377\210\277\n\000\217\322\202\024\002\000\017\002\b~\016\024\0302\004\027\0328\000\200P\334\006\000\177\004\000\200P\334\f\000\177\rp\017\214\277\f\000\340\321\004\t6\004\016j\340\321\r\t6\004\021\002\036~\000\200P\334\b\000\177\020\fE\"~\n\000\031\321\020\024\002\000\013\000\034\321\017\027\002\000\017\000\313\321\f#\312#\017\000\313\321\017#F\004\016\037\"\n\022\000\313\321\f#:$\021\000\313\321\022\037F\004\f\000\313\321\f#:$\016\000\342\321\f\037F\004\000\200Q\334\n\000\177\f\200\001\200\276q\017\214\277\362 \036\002\004\000\336\321\016\t6\004\004\037\b\n\200\001\224\276\000\200Q\334\n\000\177\rq\017\214\277\f\003\036~p\017\214\277\017\033\224}j\024\224\207\r\003\030~~\024\376\211\366\377\211\277~\024\376\207\004\037\034\002\000\200\005\335\n\016\177\fp\017\214\277\f\033\224}j\000\200\207\200\001\224\276~\000\376\211\354\377\211\277\244\377\202\277~\006\376\207\003\000\232}~j\376\206\021\000\210\277\000\000\217\322\202\002\002\000\177\300\214\277\005\002\006~\004\000\0042\003\003\0068\021\002\b~\020\000\0002\004\003\0028\000\200P\334\002\000\177\004\000\200P\334\000\000\177\000p\017\214\277\004\001\000\002\000\200p\334\002\000\177\000\000\000\201\277\000\000\200\277\000\000\200\277\200\002\002~\002\000\002\300\004\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\b\002\004~\000\000\350\321\000\004\002\004\003\001\006\300\000\000\000\000\003\000\002\300 \000\000\000\177\300\214\277\000\000\210}\000\000\315\320\004\000\002\000j\000\200\206\000 \202\276%\000\210\277\003\000\n\300\b\000\000\000\200\002\004~\000\003\006~\237\000\002\"\002\000\221\322\236\004\002\000\177\300\214\277\001\002\b~\000\004\0042\004\007\0068\000\200P\334\002\000\177\002\005\301\000\201p\017\214\277\000\004\224}~j\376\206\023\000\210\277\003\000\006\300\030\000\000\000\000\000\217\322\202\000\002\000\177\300\214\277\001\002\006~\000\000\0042\003\003\0068\003\002\b~\002\000\0002\004\003\0028\000\200P\334\002\000\177\004\000\200P\334\000\000\177\000p\017\214\277\004\001\000\002\000\200p\334\002\000\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\200\002\002~\002\000\002\300\004\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\b\002\004~\000\000\350\321\000\004\002\004\003\000\002\300 \000\000\000\177\300\214\277\000\000\210}j \200\276 \000\210\277\003\002\002\300\000\000\000\000\003\000\n\300\b\000\000\000\003\001\006\300\030\000\000\000\200\002\002~\000\003\004~\002\000\221\322\236\002\002\000\177\300\214\277\003\002\n~\002\004\b2\005\007\n8\000\200p\334\004\001\177\000\005\002\002~\004\004\b2\001\007\n8\b\000\224}\001\000\000\321\200\344\251\001\b\000\232}\006\000\000\321\200\202\251\001\000\200p\334\004\001\177\000\001\002\002~\000\004\0002\001\007\0028\000\200p\334\000\006\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\200\002\002~\002\000\002\300\004\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\b\002\004~\000\000\350\321\000\004\002\004\003\000\002\300\b\000\000\000\177\300\214\277\000\000\000\222\000\000\210}j \200\276\f\000\210\277\003\000\006\300\000\000\000\000\200\002\002~\000\003\004~\002\000\221\322\236\002\002\000\177\300\214\277\001\002\000~\000\004\0042\000\007\0068\000\200p\334\002\001\177\000\000\000\201\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\000\000\200\277\200\002\002~\002\000\002\300\004\000\000\000\177\300\214\277\000\377\000\206\377\377\000\000\b\002\004~\000\000\350\321\000\004\002\004\003\000\002\300\b\000\000\000\177\300\214\277\000\000\210}j \200\276\f\000\210\277\003\000\006\300\000\000\000\000\200\002\002~\000\003\004~\002\000\221\322\236\002\002\000\177\300\214\277\001\002\000~\000\004\0042\000\007\0068\000\200p\334\002\001\177\000\000\000\201\277\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\006\000\000\000\000\000\000\000\320\032\000\000\000\000\000\000\013\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\344\034\000\000\000\000\000\000\n\000\000\000\000\000\000\000W\001\000\000\000\000\000\000\365\376\377o\000\000\000\000\b\034\000\000\000\000\000\000\004\000\000\000\000\000\000\000t\034\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)\000Linker: LLD 12.0.0 (/src/external/llvm-project/lld 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\007\000\350!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\b\000\000\000\000\000\007\000<\"\000\000\000\000\000\000\000\000\000\000\000\000\000\000\017\000\000\000\000\000\007\000\340 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\025\000\000\000\000\000\007\000\024!\000\000\000\000\000\000\000\000\000\000\000\000\000\000\033\000\000\000\000\000\007\000,!\000\000\000\000\000\000\000\000\000\000\000\000\000\000!\000\000\000\000\000\007\000\240!\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\000\000\007\000\240%\000\000\000\000\000\000\000\000\000\000\000\000\000\000.\000\000\000\000\000\007\000\364%\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\000\000\007\000\344#\000\000\000\000\000\000\000\000\000\000\000\000\000\000;\000\000\000\000\000\007\0000$\000\000\000\000\000\000\000\000\000\000\000\000\000\000A\000\000\000\000\000\007\000H$\000\000\000\000\000\000\000\000\000\000\000\000\000\000G\000\000\000\000\000\007\000L%\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\000\000\007\000\344&\000\000\000\000\000\000\000\000\000\000\000\000\000\000S\000\000\000\000\000\007\000\274'\000\000\000\000\000\000\000\000\000\000\000\000\000\000Y\000\000\000\000\000\007\000p(\000\000\000\000\000\000\000\000\000\000\000\000\000\000_\000\000\000\000\000\007\000l)\000\000\000\000\000\000\000\000\000\000\000\000\000\000e\000\000\000\000\000\007\000\000 \000\000\000\000\000\000\000\000\000\000\000\000\000\000\207\000\000\000\000\000\007\000\000'\000\000\000\000\000\000\000\000\000\000\000\000\000\000\251\000\000\000\000\000\007\000\000(\000\000\000\000\000\000\000\000\000\000\000\000\000\000\305\000\000\000\000\000\007\000\000&\000\000\000\000\000\000\000\000\000\000\000\000\000\000\351\000\000\000\000\000\007\000\000#\000\000\000\000\000\000\000\000\000\000\000\000\000\000\026\001\000\000\000\000\007\000\000)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\201\002\000\000\000\002\b\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000+\001\000\000\022\003\007\000\000 \000\000\000\000\000\000@\002\000\000\000\000\000\000G\001\000\000\021\003\006\000@\036\000\000\000\000\000\000@\000\000\000\000\000\000\000f\001\000\000\022\003\007\000\000'\000\000\000\000\000\000\300\000\000\000\000\000\000\000\202\001\000\000\021\003\006\000\000\037\000\000\000\000\000\000@\000\000\000\000\000\000\000\241\001\000\000\022\003\007\000\000(\000\000\000\000\000\000t\000\000\000\000\000\000\000\267\001\000\000\021\003\006\000@\037\000\000\000\000\000\000@\000\000\000\000\000\000\000\320\001\000\000\022\003\007\000\000&\000\000\000\000\000\000\350\000\000\000\000\000\000\000\356\001\000\000\021\003\006\000\300\036\000\000\000\000\000\000@\000\000\000\000\000\000\000\017\002\000\000\022\003\007\000\000#\000\000\000\000\000\000\370\002\000\000\000\000\000\0006\002\000\000\021\003\006\000\200\036\000\000\000\000\000\000@\000\000\000\000\000\000\000`\002\000\000\022\003\007\000\000)\000\000\000\000\000\000p\000\000\000\000\000\000\000o\002\000\000\021\003\006\000\200\037\000\000\000\000\000\000@\000\000\000\000\000\000\000\000.note\000.dynsym\000.gnu.hash\000.hash\000.dynstr\000.rodata\000.text\000.dynamic\000.AMDGPU.csdata\000.comment\000.symtab\000.shstrtab\000.strtab\000\000BB0_11\000BB0_13\000BB0_4\000BB0_6\000BB0_7\000BB0_9\000BB1_11\000BB1_13\000BB1_4\000BB1_6\000BB1_7\000BB1_9\000BB2_3\000BB3_2\000BB4_2\000BB5_2\000_Z10bfs_kernelPiS_S_PfS_iii$local\000_Z14clean_1d_arrayiPiPfS0_i$local\000_Z14clean_2d_arrayPii$local\000_Z15back_sum_kerneliiPiPfS0_i$local\000_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_$local\000_Z8clean_bcPfi$local\000_Z10bfs_kernelPiS_S_PfS_iii\000_Z10bfs_kernelPiS_S_PfS_iii.kd\000_Z14clean_1d_arrayiPiPfS0_i\000_Z14clean_1d_arrayiPiPfS0_i.kd\000_Z14clean_2d_arrayPii\000_Z14clean_2d_arrayPii.kd\000_Z15back_sum_kerneliiPiPfS0_i\000_Z15back_sum_kerneliiPiPfS0_i.kd\000_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_\000_Z16backtrack_kernelPiS_S_PfS0_iiiiS0_.kd\000_Z8clean_bcPfi\000_Z8clean_bcPfi.kd\000_DYNAMIC\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\007\000\000\000\002\000\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\002\000\000\000\000\000\000\314\030\000\000\000\000\000\000\000\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\007\000\000\000\013\000\000\000\002\000\000\000\000\000\000\000\320\032\000\000\000\000\000\000\320\032\000\000\000\000\000\0008\001\000\000\000\000\000\000\005\000\000\000\001\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000\017\000\000\000\366\377\377o\002\000\000\000\000\000\000\000\b\034\000\000\000\000\000\000\b\034\000\000\000\000\000\000l\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\031\000\000\000\005\000\000\000\002\000\000\000\000\000\000\000t\034\000\000\000\000\000\000t\034\000\000\000\000\000\000p\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\004\000\000\000\000\000\000\000\037\000\000\000\003\000\000\000\002\000\000\000\000\000\000\000\344\034\000\000\000\000\000\000\344\034\000\000\000\000\000\000W\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000'\000\000\000\001\000\000\000\002\000\000\000\000\000\000\000@\036\000\000\000\000\000\000@\036\000\000\000\000\000\000\200\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000@\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000/\000\000\000\001\000\000\000\006\000\000\000\000\000\000\000\000 \000\000\000\000\000\000\000 \000\000\000\000\000\000p\t\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\006\000\000\000\003\000\000\000\000\000\000\000\0000\000\000\000\000\000\000\0000\000\000\000\000\000\000p\000\000\000\000\000\000\000\005\000\000\000\000\000\000\000\b\000\000\000\000\000\000\000\020\000\000\000\000\000\000\000>\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p0\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000M\000\000\000\001\000\000\0000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000p0\000\000\000\000\000\000\277\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000V\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\00001\000\000\000\000\000\000`\003\000\000\000\000\000\000\r\000\000\000\030\000\000\000\b\000\000\000\000\000\000\000\030\000\000\000\000\000\000\000^\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\2204\000\000\000\000\000\000p\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000h\000\000\000\003\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\0005\000\000\000\000\000\000\212\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.size	.L__unnamed_7, 15254

	.type	__hip_fatbin_wrapper,@object    # @__hip_fatbin_wrapper
	.section	.hipFatBinSegment,"a",@progbits
	.p2align	3
__hip_fatbin_wrapper:
	.long	1212764230                      # 0x48495046
	.long	1                               # 0x1
	.quad	.L__unnamed_7
	.quad	0
	.size	__hip_fatbin_wrapper, 24

	.type	__hip_gpubin_handle,@object     # @__hip_gpubin_handle
	.local	__hip_gpubin_handle
	.comm	__hip_gpubin_handle,8,8
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	__hip_module_ctor
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	"reporting self loop"
	.size	.Lstr, 20

	.type	.Lstr.1,@object                 # @str.1
.Lstr.1:
	.asciz	"This is an undirected graph"
	.size	.Lstr.1, 28

	.type	.Lstr.2,@object                 # @str.2
.Lstr.2:
	.asciz	"malloc failed"
	.size	.Lstr.2, 14

	.type	.Lstr.3,@object                 # @str.3
.Lstr.3:
	.asciz	"malloc failed"
	.size	.Lstr.3, 14

	.type	.Lstr.4,@object                 # @str.4
.Lstr.4:
	.asciz	"This is a directed graph"
	.size	.Lstr.4, 25

	.type	.Lstr.5,@object                 # @str.5
.Lstr.5:
	.asciz	"ERROR: unable to open result.txt"
	.size	.Lstr.5, 33

	.ident	"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z7compare12cooedgetupleS_
	.addrsig_sym _Z25__device_stub__bfs_kernelPiS_S_PfS_iii
	.addrsig_sym _Z31__device_stub__backtrack_kernelPiS_S_PfS0_iiiiS0_
	.addrsig_sym _Z30__device_stub__back_sum_kerneliiPiPfS0_i
	.addrsig_sym _Z29__device_stub__clean_1d_arrayiPiPfS0_i
	.addrsig_sym _Z29__device_stub__clean_2d_arrayPii
	.addrsig_sym _Z23__device_stub__clean_bcPfi
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __hip_module_ctor
	.addrsig_sym __hip_module_dtor
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt7nothrow
	.addrsig_sym .L__unnamed_7
	.addrsig_sym __hip_fatbin_wrapper
