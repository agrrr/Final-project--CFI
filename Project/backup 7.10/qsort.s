	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"qsort_large.c"
	.text
	.align	1
	.global	compare
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	compare, %function
compare:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrd	r3, [r3, #16]
	strd	r3, [r7, #8]
	ldr	r3, [r7]
	ldrd	r3, [r3, #16]
	strd	r3, [r7, #16]
	vldr.64	d6, [r7, #8]
	vldr.64	d7, [r7, #16]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L9
	movs	r3, #1
	b	.L7
.L9:
	vldr.64	d6, [r7, #8]
	vldr.64	d7, [r7, #16]
	vcmp.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bne	.L5
	movs	r3, #0
	b	.L7
.L5:
	mov	r3, #-1
.L7:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	compare, .-compare
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Usage: qsort_large <file>\012\000"
	.align	2
.LC1:
	.ascii	"r\000"
	.align	2
.LC2:
	.ascii	"%d\000"
	.align	2
.LC3:
	.ascii	"\012Sorting %d vectors based on distance from the o"
	.ascii	"rigin.\012\012\000"
	.align	2
.LC4:
	.ascii	"%d %d %d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1440040
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	vpush.64	{d8}
	add	sp, sp, #-16777216
	add	sp, sp, #15335424
	add	sp, sp, #1752
	add	r7, sp, #0
	movw	r3, #1756
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	str	r0, [r3]
	mov	r3, #1752
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	str	r1, [r3]
	ldr	r5, .L19
.LPIC0:
	add	r5, pc
	ldr	r3, .L19+4
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	movw	r2, #63780
	movt	r2, 21
	add	r2, r7, r2
	str	r3, [r2]
	mov	r3, #1776
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	movw	r3, #1756
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #1
	bgt	.L11
	ldr	r3, .L19+8
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	movs	r2, #26
	movs	r1, #1
	ldr	r0, .L19+12
.LPIC1:
	add	r0, pc
	bl	fwrite(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L11:
	mov	r3, #1752
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	movw	r4, #1780
	movt	r4, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r4, r4, r2
	ldr	r2, .L19+16
.LPIC2:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	fopen(PLT)
	str	r0, [r4]
	b	.L12
.L14:
	add	r3, r7, #6432
	add	r3, r3, #8
	sub	r3, r3, #6432
	ldr	r1, [r3]
	mov	r3, #1784
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	mov	r2, #1776
	movt	r2, 65514
	movw	r0, #63784
	movt	r0, 21
	add	r0, r7, r0
	add	r2, r2, r0
	ldr	r2, [r2]
	movs	r0, #24
	mul	r2, r0, r2
	add	r3, r3, r2
	str	r1, [r3]
	movw	r3, #1764
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r1, [r3]
	mov	r3, #1784
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	mov	r2, #1776
	movt	r2, 65514
	movw	r0, #63784
	movt	r0, 21
	add	r0, r7, r0
	add	r2, r2, r0
	ldr	r2, [r2]
	movs	r0, #24
	mul	r2, r0, r2
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r1, [r3]
	mov	r3, #1768
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r1, [r3]
	mov	r3, #1784
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	mov	r2, #1776
	movt	r2, 65514
	movw	r0, #63784
	movt	r0, 21
	add	r0, r7, r0
	add	r2, r2, r0
	ldr	r2, [r2]
	movs	r0, #24
	mul	r2, r0, r2
	add	r3, r3, r2
	adds	r3, r3, #8
	str	r1, [r3]
	add	r3, r7, #6432
	add	r3, r3, #8
	sub	r3, r3, #6432
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d1, #2.0e+0
	vmov.f64	d0, d7
	bl	pow(PLT)
	vmov.f64	d8, d0
	movw	r3, #1764
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d1, #2.0e+0
	vmov.f64	d0, d7
	bl	pow(PLT)
	vmov.f64	d7, d0
	vadd.f64	d8, d8, d7
	mov	r3, #1768
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d1, #2.0e+0
	vmov.f64	d0, d7
	bl	pow(PLT)
	vmov.f64	d7, d0
	vadd.f64	d7, d8, d7
	vmov.f64	d0, d7
	bl	sqrt(PLT)
	vmov.f64	d7, d0
	mov	r3, #1784
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	mov	r2, #1776
	movt	r2, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r2, r2, r1
	ldr	r2, [r2]
	movs	r1, #24
	mul	r2, r1, r2
	add	r3, r3, r2
	adds	r3, r3, #16
	vstr.64	d7, [r3]
	mov	r3, #1776
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	mov	r2, #1776
	movt	r2, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r2, r2, r1
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L12:
	add	r2, r7, #6432
	add	r2, r2, #8
	sub	r2, r2, #6432
	movw	r3, #1780
	movt	r3, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r3, r3, r1
	ldr	r1, .L19+20
.LPIC3:
	add	r1, pc
	ldr	r0, [r3]
	bl	__isoc99_fscanf(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L13
	movw	r2, #1764
	movt	r2, 65514
	movw	r3, #63784
	movt	r3, 21
	add	r3, r7, r3
	add	r2, r2, r3
	movw	r3, #1780
	movt	r3, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r3, r3, r1
	ldr	r1, .L19+24
.LPIC4:
	add	r1, pc
	ldr	r0, [r3]
	bl	__isoc99_fscanf(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L13
	mov	r2, #1768
	movt	r2, 65514
	movw	r3, #63784
	movt	r3, 21
	add	r3, r7, r3
	add	r2, r2, r3
	movw	r3, #1780
	movt	r3, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r3, r3, r1
	ldr	r1, .L19+28
.LPIC5:
	add	r1, pc
	ldr	r0, [r3]
	bl	__isoc99_fscanf(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L13
	mov	r3, #1776
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r3, [r3]
	movw	r2, #59999
	cmp	r3, r2
	ble	.L14
.L13:
	mov	r3, #1776
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r1, [r3]
	ldr	r3, .L19+32
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	mov	r3, #1776
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	ldr	r1, [r3]
	mov	r0, #1784
	movt	r0, 65514
	movw	r3, #63784
	movt	r3, 21
	add	r3, r7, r3
	add	r0, r0, r3
	ldr	r3, .L19+36
.LPIC7:
	add	r3, pc
	movs	r2, #24
	bl	qsort(PLT)
	movw	r3, #1772
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	b	.L15
.L16:
	mov	r3, #1784
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	movw	r2, #1772
	movt	r2, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r2, r2, r1
	ldr	r2, [r2]
	movs	r1, #24
	mul	r2, r1, r2
	add	r3, r3, r2
	ldr	r0, [r3]
	mov	r3, #1784
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	movw	r2, #1772
	movt	r2, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r2, r2, r1
	ldr	r2, [r2]
	movs	r1, #24
	mul	r2, r1, r2
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r4, [r3]
	mov	r3, #1784
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	movw	r2, #1772
	movt	r2, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r2, r2, r1
	ldr	r2, [r2]
	movs	r1, #24
	mul	r2, r1, r2
	add	r3, r3, r2
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r2, r4
	mov	r1, r0
	ldr	r0, .L19+40
.LPIC8:
	add	r0, pc
	bl	printf(PLT)
	movw	r3, #1772
	movt	r3, 65514
	movw	r2, #63784
	movt	r2, 21
	add	r2, r7, r2
	add	r3, r3, r2
	movw	r2, #1772
	movt	r2, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r2, r2, r1
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L15:
	movw	r2, #1772
	movt	r2, 65514
	movw	r3, #63784
	movt	r3, 21
	add	r3, r7, r3
	add	r2, r2, r3
	mov	r3, #1776
	movt	r3, 65514
	movw	r1, #63784
	movt	r1, 21
	add	r1, r7, r1
	add	r3, r3, r1
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L16
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L19+4
	ldr	r3, [r5, r3]
	movw	r2, #63780
	movt	r2, 21
	add	r2, r7, r2
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L18
	bl	__stack_chk_fail(PLT)
.L18:
	add	r7, r7, #1433600
	add	r7, r7, #6432
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r5, r7, pc}
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	stderr(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.word	.LC3-(.LPIC6+4)
	.word	compare-(.LPIC7+4)
	.word	.LC4-(.LPIC8+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
