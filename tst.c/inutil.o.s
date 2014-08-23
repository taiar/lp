	.file	"inutil.e.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"O valor eh %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
.L2:
	addl	$3, %eax
	cmpl	$300, %eax
	jne	.L2
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$14850, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Debian 4.7.2-5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
