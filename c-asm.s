	.file	"c-asm.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	test_fuction
	.type	test_fuction, @function
test_fuction:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC0)
	lw	a5,%lo(.LC0)(a5)
	sw	a5,-20(s0)
	nop
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	test_fuction, .-test_fuction
	.section	.rodata
	.align	2
.LC0:
	.word	1065626223
	.ident	"GCC: () 9.3.0"
