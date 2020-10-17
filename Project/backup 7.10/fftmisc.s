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
	.file	"fftmisc.c"
	.text
	.align	1
	.global	IsPowerOfTwo
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	IsPowerOfTwo, %function
IsPowerOfTwo:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bhi	.L2
	movs	r3, #0
	b	.L3
.L2:
	ldr	r3, [r7, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L4
	movs	r3, #0
	b	.L3
.L4:
	movs	r3, #1
.L3:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	IsPowerOfTwo, .-IsPowerOfTwo
	.section	.rodata
	.align	2
.LC0:
	.ascii	">>> Error in fftmisc.c: argument %d to NumberOfBits"
	.ascii	"Needed is too small.\012\000"
	.text
	.align	1
	.global	NumberOfBitsNeeded
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	NumberOfBitsNeeded, %function
NumberOfBitsNeeded:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L11
.LPIC0:
	add	r2, pc
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bhi	.L6
	ldr	r3, .L11+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r1, .L11+8
.LPIC1:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L6:
	movs	r3, #0
	str	r3, [r7, #12]
.L9:
	movs	r2, #1
	ldr	r3, [r7, #12]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7, #12]
	b	.L10
.L7:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L9
.L10:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	stderr(GOT)
	.word	.LC0-(.LPIC1+4)
	.size	NumberOfBitsNeeded, .-NumberOfBitsNeeded
	.align	1
	.global	ReverseBits
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ReverseBits, %function
ReverseBits:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	b	.L14
.L15:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #1
	ldr	r3, [r7, #4]
	and	r3, r3, #1
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L14:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L15
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ReverseBits, .-ReverseBits
	.align	1
	.global	Index_to_frequency
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	Index_to_frequency, %function
Index_to_frequency:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L18
	vldr.64	d7, .L21
	b	.L19
.L18:
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #1
	ldr	r2, [r7]
	cmp	r2, r3
	bhi	.L20
	ldr	r3, [r7]
	vmov	s15, r3	@ int
	vcvt.f64.u32	d5, s15
	ldr	r3, [r7, #4]
	vmov	s15, r3	@ int
	vcvt.f64.u32	d6, s15
	vdiv.f64	d7, d5, d6
	b	.L19
.L20:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.u32	d7, s15
	vneg.f64	d5, d7
	ldr	r3, [r7, #4]
	vmov	s15, r3	@ int
	vcvt.f64.u32	d6, s15
	vdiv.f64	d7, d5, d6
.L19:
	vmov.f64	d0, d7
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L22:
	.align	3
.L21:
	.word	0
	.word	0
	.size	Index_to_frequency, .-Index_to_frequency
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
