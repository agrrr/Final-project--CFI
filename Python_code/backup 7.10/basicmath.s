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
	.file	"basicmath_large.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"********* CUBIC FUNCTIONS ***********\000"
	.align	2
.LC1:
	.ascii	"Solutions:\000"
	.align	2
.LC2:
	.ascii	" %f\000"
	.align	2
.LC3:
	.ascii	"********* INTEGER SQR ROOTS ***********\000"
	.align	2
.LC4:
	.ascii	"sqrt(%3d) = %2d\012\000"
	.align	2
.LC5:
	.ascii	"sqrt(%lX) = %X\012\000"
	.align	2
.LC6:
	.ascii	"********* ANGLE CONVERSION ***********\000"
	.align	2
.LC7:
	.ascii	"%3.0f degrees = %.12f radians\012\000"
	.align	2
.LC8:
	.ascii	"\000"
	.align	2
.LC9:
	.ascii	"%.12f radians = %3.0f degrees\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #108
	add	r7, sp, #8
	ldr	r4, .L38+120
.LPIC0:
	add	r4, pc
	ldr	r3, .L38+124
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #92]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49189
	strd	r2, [r7, #24]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16448
	strd	r2, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49214
	strd	r2, [r7, #40]
	movw	r3, #361
	movt	r3, 16365
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, .L38+128
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+132
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L2
.L3:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+136
.LPIC3:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L3
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49170
	strd	r2, [r7, #24]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16433
	strd	r2, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49214
	strd	r2, [r7, #40]
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+140
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L4
.L5:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+144
.LPIC5:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L4:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L5
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #16]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49164
	strd	r2, [r7, #24]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16438
	strd	r2, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49215
	strd	r2, [r7, #40]
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+148
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L6
.L7:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+152
.LPIC7:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L6:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L7
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #16]
	adr	r3, .L38+64
	ldrd	r2, [r3]
	strd	r2, [r7, #24]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #32]
	mov	r2, #0
	mov	r3, #32768
	movt	r3, 49217
	strd	r2, [r7, #40]
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+156
.LPIC8:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L8
.L9:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+160
.LPIC9:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L8:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L9
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16392
	strd	r2, [r7, #16]
	adr	r3, .L38+72
	ldrd	r2, [r3]
	strd	r2, [r7, #24]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16404
	strd	r2, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16424
	strd	r2, [r7, #40]
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+164
.LPIC10:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L10
.L11:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+168
.LPIC11:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L10:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L11
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49184
	strd	r2, [r7, #16]
	adr	r3, .L38+80
	ldrd	r2, [r3]
	strd	r2, [r7, #24]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16408
	strd	r2, [r7, #32]
	adr	r3, .L38+88
	ldrd	r2, [r3]
	strd	r2, [r7, #40]
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+172
.LPIC12:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L12
.L13:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+176
.LPIC13:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L12:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L13
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #32768
	movt	r3, 16454
	strd	r2, [r7, #16]
	adr	r3, .L38+96
	ldrd	r2, [r3]
	strd	r2, [r7, #24]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16414
	strd	r2, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16449
	strd	r2, [r7, #40]
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+180
.LPIC14:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L14
.L15:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+184
.LPIC15:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L14:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L15
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49192
	strd	r2, [r7, #16]
	adr	r3, .L38+104
	ldrd	r2, [r3]
	strd	r2, [r7, #24]
	adr	r3, .L38+112
	ldrd	r2, [r3]
	strd	r2, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16432
	strd	r2, [r7, #40]
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+188
.LPIC16:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L16
.L17:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+192
.LPIC17:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L16:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L17
	movs	r0, #10
	bl	putchar(PLT)
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #16]
	b	.L18
.L27:
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16420
	strd	r2, [r7, #24]
	b	.L19
.L26:
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16404
	strd	r2, [r7, #32]
	b	.L20
.L25:
	mov	r2, #0
	mov	r3, #0
	movt	r3, 49136
	strd	r2, [r7, #40]
	b	.L21
.L24:
	add	r2, r7, #64
	mov	r3, r7
	mov	r1, r2
	mov	r0, r3
	vldr.64	d3, [r7, #40]
	vldr.64	d2, [r7, #32]
	vldr.64	d1, [r7, #24]
	vldr.64	d0, [r7, #16]
	bl	SolveCubic(PLT)
	ldr	r3, .L38+196
.LPIC18:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L22
.L23:
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r7, #96
	add	r3, r3, r2
	subs	r3, r3, #32
	ldrd	r2, [r3]
	ldr	r1, .L38+200
.LPIC19:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L22:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	cmp	r2, r3
	blt	.L23
	movs	r0, #10
	bl	putchar(PLT)
	vldr.64	d7, [r7, #40]
	vldr.64	d6, .L38
	vsub.f64	d7, d7, d6
	vstr.64	d7, [r7, #40]
.L21:
	vldr.64	d7, [r7, #40]
	vmov.f64	d6, #-5.0e+0
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bgt	.L24
	vldr.64	d7, [r7, #32]
	vldr.64	d6, .L38+8
	vadd.f64	d7, d7, d6
	vstr.64	d7, [r7, #32]
.L20:
	vldr.64	d7, [r7, #32]
	vmov.f64	d6, #1.5e+1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L25
	vldr.64	d7, [r7, #24]
	vmov.f64	d6, #2.5e-1
	vsub.f64	d7, d7, d6
	vstr.64	d7, [r7, #24]
.L19:
	vldr.64	d7, [r7, #24]
	vcmpe.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bgt	.L26
	vldr.64	d7, [r7, #16]
	vmov.f64	d6, #1.0e+0
	vadd.f64	d7, d7, d6
	vstr.64	d7, [r7, #16]
.L18:
	vldr.64	d7, [r7, #16]
	vmov.f64	d6, #1.0e+1
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bmi	.L27
	ldr	r3, .L38+204
.LPIC20:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L28
.L29:
	ldr	r3, [r7, #4]
	add	r2, r7, #56
	mov	r1, r2
	mov	r0, r3
	bl	usqrt(PLT)
	ldr	r3, [r7, #56]
	mov	r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, .L38+208
.LPIC21:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #4]
.L28:
	ldr	r2, [r7, #4]
	movw	r3, #34463
	movt	r3, 1
	cmp	r2, r3
	ble	.L29
	movs	r0, #10
	bl	putchar(PLT)
	movw	r3, #361
	movt	r3, 16365
	str	r3, [r7, #8]
	b	.L30
.L31:
	add	r3, r7, #56
	mov	r1, r3
	ldr	r0, [r7, #8]
	bl	usqrt(PLT)
	ldr	r3, [r7, #56]
	mov	r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, .L38+212
.LPIC22:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L30:
	ldr	r2, [r7, #8]
	movw	r3, #16744
	movt	r3, 16365
	cmp	r2, r3
	bls	.L31
	ldr	r3, .L38+216
.LPIC23:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #48]
	b	.L32
.L33:
	vldr.64	d7, [r7, #48]
	vldr.64	d6, .L38+16
	vmul.f64	d6, d7, d6
	vldr.64	d5, .L38+24
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [sp]
	ldrd	r2, [r7, #48]
	ldr	r1, .L38+220
.LPIC24:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	vldr.64	d7, [r7, #48]
	vldr.64	d6, .L38+32
	vadd.f64	d7, d7, d6
	vstr.64	d7, [r7, #48]
.L32:
	vldr.64	d7, [r7, #48]
	vldr.64	d6, .L38+40
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bls	.L33
	ldr	r3, .L38+224
.LPIC25:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #48]
	b	.L34
.L35:
	vldr.64	d7, [r7, #48]
	vldr.64	d6, .L38+24
	vmul.f64	d6, d7, d6
	vldr.64	d5, .L38+16
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [sp]
	ldrd	r2, [r7, #48]
	ldr	r1, .L38+228
.LPIC26:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	vldr.64	d7, [r7, #48]
	vldr.64	d6, .L38+48
	vadd.f64	d7, d7, d6
	vstr.64	d7, [r7, #48]
.L34:
	vldr.64	d7, [r7, #48]
	vldr.64	d6, .L38+56
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bls	.L35
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L38+124
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #92]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L37
	bl	__stack_chk_fail(PLT)
.L37:
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L39:
	.align	3
.L38:
	.word	446676599
	.word	1071439151
	.word	3092376453
	.word	1071875358
	.word	1413754136
	.word	1074340347
	.word	0
	.word	1080459264
	.word	3539053052
	.word	1062232653
	.word	0
	.word	1081507840
	.word	2723323193
	.word	1061281606
	.word	2539654043
	.word	1075388923
	.word	1717986918
	.word	-1070897562
	.word	2061584302
	.word	1076407828
	.word	3264175145
	.word	-1068435211
	.word	2576980378
	.word	-1070098023
	.word	1030792151
	.word	1075926794
	.word	858993459
	.word	-1074056397
	.word	858993459
	.word	1075131187
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.word	.LC1-(.LPIC6+4)
	.word	.LC2-(.LPIC7+4)
	.word	.LC1-(.LPIC8+4)
	.word	.LC2-(.LPIC9+4)
	.word	.LC1-(.LPIC10+4)
	.word	.LC2-(.LPIC11+4)
	.word	.LC1-(.LPIC12+4)
	.word	.LC2-(.LPIC13+4)
	.word	.LC1-(.LPIC14+4)
	.word	.LC2-(.LPIC15+4)
	.word	.LC1-(.LPIC16+4)
	.word	.LC2-(.LPIC17+4)
	.word	.LC1-(.LPIC18+4)
	.word	.LC2-(.LPIC19+4)
	.word	.LC3-(.LPIC20+4)
	.word	.LC4-(.LPIC21+4)
	.word	.LC5-(.LPIC22+4)
	.word	.LC6-(.LPIC23+4)
	.word	.LC7-(.LPIC24+4)
	.word	.LC8-(.LPIC25+4)
	.word	.LC9-(.LPIC26+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
