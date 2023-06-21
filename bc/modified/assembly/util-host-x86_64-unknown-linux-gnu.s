	.text
	.file	"util.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _Z7gettimev
.LCPI0_0:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.text
	.globl	_Z7gettimev
	.p2align	4, 0x90
	.type	_Z7gettimev,@function
_Z7gettimev:                            # @_Z7gettimev
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	leaq	8(%rsp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	cvtsi2sdq	8(%rsp), %xmm1
	cvtsi2sdq	16(%rsp), %xmm0
	mulsd	.LCPI0_0(%rip), %xmm0
	addsd	%xmm1, %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_Z7gettimev, .Lfunc_end0-_Z7gettimev
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 12.0.0 (/src/external/llvm-project/clang 1100ebe275a9dcc79a9abbda902b6f10738f2f5d)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
