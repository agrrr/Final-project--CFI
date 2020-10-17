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
	.file	"lame.c"
	.text
	.local	bs
	.comm	bs,32,4
	.local	l3_side
	.comm	l3_side,492,4
	.local	mfbuf
	.comm	mfbuf,12224,4
	.local	mf_size
	.comm	mf_size,4,4
	.local	mf_samples_to_encode
	.comm	mf_samples_to_encode,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Warning: highpass filter disabled.  highpass freque"
	.ascii	"ncy to small\012\000"
	.text
	.align	1
	.global	lame_init_params
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_init_params, %function
lame_init_params:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L129+16
.LPIC2:
	add	r4, pc
	movs	r2, #32
	movs	r1, #0
	ldr	r3, .L129+20
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	memset(PLT)
	mov	r2, #492
	movs	r1, #0
	ldr	r3, .L129+24
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #156]
	bl	InitFormatBitStream(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L2
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #32]
.L2:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #184]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #3
	bne	.L3
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #184]
.L3:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #47999
	cmp	r3, r2
	ble	.L5
	ldr	r3, [r7, #4]
	movw	r2, #48000
	str	r2, [r3, #12]
	b	.L6
.L5:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #44099
	cmp	r3, r2
	ble	.L7
	ldr	r3, [r7, #4]
	movw	r2, #44100
	str	r2, [r3, #12]
	b	.L6
.L7:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #32000
	blt	.L8
	ldr	r3, [r7, #4]
	mov	r2, #32000
	str	r2, [r3, #12]
	b	.L6
.L8:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #23999
	cmp	r3, r2
	ble	.L9
	ldr	r3, [r7, #4]
	movw	r2, #24000
	str	r2, [r3, #12]
	b	.L6
.L9:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #22049
	cmp	r3, r2
	ble	.L10
	ldr	r3, [r7, #4]
	movw	r2, #22050
	str	r2, [r3, #12]
	b	.L6
.L10:
	ldr	r3, [r7, #4]
	mov	r2, #16000
	str	r2, [r3, #12]
.L6:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	ble	.L4
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #184]
	mul	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L129
	vmul.f64	d6, d7, d6
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L4
	vldr.32	s15, [r7, #12]
	vmov.f32	s14, #1.3e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L4
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L129+8
	vmul.f64	d5, d7, d6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #184]
	lsls	r3, r3, #4
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.s32.f64	s15, d7
	vmov	r2, s15	@ int
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #16000
	bgt	.L12
	ldr	r3, [r7, #4]
	mov	r2, #16000
	str	r2, [r3, #12]
	b	.L4
.L12:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #22050
	cmp	r3, r2
	bgt	.L13
	ldr	r3, [r7, #4]
	movw	r2, #22050
	str	r2, [r3, #12]
	b	.L4
.L13:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #24000
	cmp	r3, r2
	bgt	.L14
	ldr	r3, [r7, #4]
	movw	r2, #24000
	str	r2, [r3, #12]
	b	.L4
.L14:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #32000
	bgt	.L15
	ldr	r3, [r7, #4]
	mov	r2, #32000
	str	r2, [r3, #12]
	b	.L4
.L15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #44100
	cmp	r3, r2
	bgt	.L16
	ldr	r3, [r7, #4]
	movw	r2, #44100
	str	r2, [r3, #12]
	b	.L4
.L16:
	ldr	r3, [r7, #4]
	movw	r2, #48000
	str	r2, [r3, #12]
.L4:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	movw	r2, #24000
	cmp	r3, r2
	bgt	.L17
	movs	r2, #1
	b	.L18
.L130:
	.align	3
.L129:
	.word	0
	.word	1083129856
	.word	0
	.word	1086556160
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	bs-(.LPIC0+4)
	.word	l3_side-(.LPIC1+4)
.L17:
	movs	r2, #2
.L18:
	ldr	r3, [r7, #4]
	str	r2, [r3, #180]
	ldr	r3, [r7, #4]
	mov	r2, #800
	str	r2, [r3, #164]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #180]
	mov	r2, #576
	mul	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #168]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7, #4]
	movs	r2, #128
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #180]
	cmp	r3, #1
	bne	.L19
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3, #44]
.L19:
	ldr	r3, [r7, #4]
	mov	r2, #1065353216
	str	r2, [r3, #196]	@ float
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	beq	.L20
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #196]
.L20:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #160]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.u32	s13, s15
	ldr	r3, [r7, #4]
	vldr.32	s14, [r3, #196]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vmul.f32	s14, s14, s15
	vdiv.f32	s15, s13, s14
	vmov.f32	s14, #2.0e+0
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r3, [r7, #4]
	str	r2, [r3, #160]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	cmp	r3, #320
	blt	.L21
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
.L21:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	lsls	r3, r3, #4
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #184]
	mul	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L131
	vmul.f64	d6, d7, d6
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L22
	vldr.32	s15, [r7, #12]
	vmov.f32	s14, #1.1e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L22
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L131+8
	vadd.f64	d7, d7, d6
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #12]
.L22:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	bne	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #3
	beq	.L24
	vldr.32	s15, [r7, #12]
	vmov.f32	s14, #9.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L24
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
.L24:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r3, #0
	bne	.L26
	vldr.32	s15, [r7, #12]
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #1.6e+1
	vdiv.f64	d5, d7, d6
	vmov.f64	d0, d5
	bl	log(PLT)
	vmov.f64	d6, d0
	vmov.f64	d7, #1.8e+1
	vmul.f64	d7, d6, d7
	vmov.f64	d6, #1.45e+1
	vsub.f64	d7, d6, d7
	vmov.f64	d0, d7
	bl	floor(PLT)
	vmov.f64	d6, d0
	vmov.f64	d7, #1.0e+0
	vadd.f64	d7, d6, d7
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #30
	bgt	.L26
	ldr	r3, [r7, #28]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #212]
	ldr	r3, [r7, #28]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #216]
.L26:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	cmp	r3, #0
	ble	.L27
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vadd.f64	d5, d7, d7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #220]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #112]
	cmp	r3, #0
	blt	.L28
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #112]
	add	r3, r3, r2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vadd.f64	d5, d7, d7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #224]
	b	.L29
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vadd.f64	d5, d7, d7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #224]
.L29:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #220]
	vmov.f32	s14, #1.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L124
	mov	r3, #1065353216
	b	.L32
.L124:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #220]	@ float
.L32:
	ldr	r2, [r7, #4]
	str	r3, [r2, #220]	@ float
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #224]
	vmov.f32	s14, #1.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L125
	mov	r3, #1065353216
	b	.L35
.L125:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #224]	@ float
.L35:
	ldr	r2, [r7, #4]
	str	r3, [r2, #224]	@ float
.L27:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	cmp	r3, #0
	ble	.L36
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vadd.f64	d5, d7, d7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #216]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	cmp	r3, #0
	blt	.L37
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vadd.f64	d5, d7, d7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #212]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #212]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L40
	ldr	r3, [r7, #4]
	mov	r2, #0
	str	r2, [r3, #212]	@ float
	b	.L40
.L37:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vadd.f64	d5, d7, d7
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #212]
.L40:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #212]
	vmov.f32	s14, #1.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L126
	mov	r3, #1065353216
	b	.L43
.L126:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #212]	@ float
.L43:
	ldr	r2, [r7, #4]
	str	r3, [r2, #212]	@ float
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #216]
	vmov.f32	s14, #1.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L127
	mov	r3, #1065353216
	b	.L46
.L127:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #216]	@ float
.L46:
	ldr	r2, [r7, #4]
	str	r3, [r2, #216]	@ float
.L36:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #236]
	cmp	r3, #0
	bne	.L47
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #212]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L48
	movw	r3, #999
	str	r3, [r7, #24]
	mov	r3, #-1
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L50
.L132:
	.align	3
.L131:
	.word	0
	.word	1083129856
	.word	2576980378
	.word	1074895257
	.word	1413754136
	.word	1073291771
	.word	1690277452
	.word	1066814457
.L56:
	ldr	r3, [r7, #16]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #40]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #216]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [r7, #32]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	blt	.L51
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #228]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	it	ge
	movge	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #228]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #40]
.L51:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #212]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [r7, #32]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L53
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #216]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [r7, #32]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L53
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #212]
	vcvt.f64.f32	d6, s15
	vldr.64	d7, [r7, #32]
	vsub.f64	d7, d6, d7
	vldr.64	d6, .L131+16
	vmul.f64	d6, d7, d6
	ldr	r3, [r7, #4]
	vldr.32	s14, [r3, #216]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #212]
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vdiv.f64	d5, d6, d7
	vmov.f64	d0, d5
	bl	cos(PLT)
	vstr.64	d0, [r7, #40]
.L53:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L50:
	ldr	r3, [r7, #16]
	cmp	r3, #31
	ble	.L56
	ldr	r3, [r7, #24]
	movw	r2, #999
	cmp	r3, r2
	bne	.L57
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #228]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d6, #7.5e-1
	vsub.f64	d6, d7, d6
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #212]
	b	.L58
.L57:
	ldr	r3, [r7, #24]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d6, #7.5e-1
	vsub.f64	d6, d7, d6
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #212]
.L58:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #228]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #216]
.L48:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #224]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L59
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #224]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L131+24
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L59
	ldr	r3, [r7, #4]
	mov	r2, #0
	str	r2, [r3, #220]	@ float
	ldr	r3, [r7, #4]
	mov	r2, #0
	str	r2, [r3, #224]	@ float
	ldr	r3, .L133+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #64
	movs	r1, #1
	ldr	r0, .L133+12
.LPIC3:
	add	r0, pc
	bl	fwrite(PLT)
.L59:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #224]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L47
	movw	r3, #999
	str	r3, [r7, #24]
	mov	r3, #-1
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L63
.L69:
	ldr	r3, [r7, #16]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #32]
	mov	r2, #0
	mov	r3, #0
	movt	r3, 16368
	strd	r2, [r7, #40]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #220]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [r7, #32]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bhi	.L64
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #232]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	it	lt
	movlt	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #232]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r7, #40]
.L64:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #220]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [r7, #32]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L66
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #224]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, [r7, #32]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L66
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, r2
	it	lt
	movlt	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #224]
	vcvt.f64.f32	d6, s15
	vldr.64	d7, [r7, #32]
	vsub.f64	d7, d6, d7
	vldr.64	d6, .L133
	vmul.f64	d6, d7, d6
	ldr	r3, [r7, #4]
	vldr.32	s14, [r3, #224]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #220]
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vdiv.f64	d5, d6, d7
	vmov.f64	d0, d5
	bl	cos(PLT)
	vstr.64	d0, [r7, #40]
.L66:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L63:
	ldr	r3, [r7, #16]
	cmp	r3, #31
	ble	.L69
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #232]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #220]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L70
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #232]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d6, #7.5e-1
	vadd.f64	d6, d7, d6
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #224]
	b	.L47
.L70:
	ldr	r3, [r7, #20]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vmov.f64	d6, #7.5e-1
	vadd.f64	d6, d7, d6
	vmov.f64	d5, #3.1e+1
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	ldr	r3, [r7, #4]
	vstr.32	s15, [r3, #224]
.L47:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #208]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #3
	bne	.L71
	movs	r2, #1
	b	.L72
.L71:
	movs	r2, #2
.L72:
	ldr	r3, [r7, #4]
	str	r2, [r3, #184]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #172
	mov	r1, r3
	mov	r0, r2
	bl	SmpFrqIndex(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #204]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #204]
	cmp	r3, #0
	bge	.L73
	ldr	r3, .L133+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	display_bitrates(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L73:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #172]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r2, r3
	bl	BitrateIndex(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #200]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #200]
	cmp	r3, #0
	bge	.L74
	ldr	r3, .L133+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	display_bitrates(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L74:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	bne	.L76
	ldr	r3, [r7, #4]
	movs	r2, #13
	str	r2, [r3, #192]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	cmp	r3, #255
	ble	.L77
	ldr	r3, [r7, #4]
	movs	r2, #14
	str	r2, [r3, #192]
.L77:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #4]
	movs	r2, #14
	str	r2, [r3, #192]
.L78:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #3
	ble	.L79
	ldr	r3, [r7, #4]
	movs	r2, #12
	str	r2, [r3, #192]
.L79:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #7
	ble	.L81
	ldr	r3, [r7, #4]
	movs	r2, #9
	str	r2, [r3, #192]
	b	.L81
.L76:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #172]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r2, r3
	bl	BitrateIndex(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #192]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #192]
	cmp	r3, #0
	bge	.L81
	ldr	r3, .L133+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	display_bitrates(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L81:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	bne	.L82
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #188]
	b	.L75
.L82:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #172]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r2, r3
	bl	BitrateIndex(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #188]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #188]
	cmp	r3, #0
	bge	.L75
	ldr	r3, .L133+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	display_bitrates(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L134:
	.align	3
.L133:
	.word	1413754136
	.word	1073291771
	.word	stderr(GOT)
	.word	.LC0-(.LPIC3+4)
.L75:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L83
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #2
	it	ge
	movge	r3, #2
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
.L83:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #3
	bne	.L84
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
.L84:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L85
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
.L85:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L86
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
.L86:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L88
.L87:
	ldr	r3, .L135
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L88:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
.L89:
	ldr	r3, .L135+4
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	init_bit_stream_w(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #9
	bne	.L90
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #252]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #240]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #244]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #248]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #256]
.L90:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #8
	bne	.L91
	ldr	r3, [r7, #4]
	movs	r2, #7
	str	r2, [r3, #24]
.L91:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #7
	bne	.L92
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #252]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #240]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #244]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #248]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #256]
.L92:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #6
	bne	.L93
	ldr	r3, [r7, #4]
	movs	r2, #5
	str	r2, [r3, #24]
.L93:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #5
	bne	.L94
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #252]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #240]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #244]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #248]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #256]
.L94:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #4
	bne	.L95
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #24]
.L95:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #3
	bne	.L96
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #24]
.L96:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #2
	bne	.L97
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #252]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #240]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #244]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #248]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #256]
.L97:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #1
	bne	.L98
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #252]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #240]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #244]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #248]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #256]
.L98:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L99
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #252]
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #240]
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #244]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #248]
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #256]
	mvn	r0, #98
	bl	exit(PLT)
.L99:
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L100
.L101:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #204]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #172]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	ldr	r2, .L135+8
	ldr	r2, [r4, r2]
	mov	r1, r2
	movs	r2, #37
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r1, r3, lsl #2]
	ldr	r3, .L135+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, [r7, #8]
	str	r2, [r1, r3, lsl #2]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L100:
	ldr	r3, [r7, #8]
	cmp	r3, #22
	ble	.L101
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L102
.L103:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #204]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #172]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r1
	ldr	r2, .L135+8
	ldr	r2, [r4, r2]
	mov	r1, r2
	movs	r2, #37
	mul	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #22
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r3, #4]
	ldr	r3, .L135+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, [r7, #8]
	adds	r3, r3, #22
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L102:
	ldr	r3, [r7, #8]
	cmp	r3, #13
	ble	.L103
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	rsb	r1, r3, #1
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #204]
	ldr	r0, .L135+16
.LPIC5:
	add	r0, pc
	bl	InitVbrTag(PLT)
	nop
.L128:
	nop
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L136:
	.align	2
.L135:
	.word	id3tag(GOT)
	.word	bs-(.LPIC4+4)
	.word	sfBandIndex(GOT)
	.word	scalefac_band(GOT)
	.word	bs-(.LPIC5+4)
	.size	lame_init_params, .-lame_init_params
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Autoconverting from stereo to mono. Setting encodin"
	.ascii	"g to mono mode.\012\000"
	.align	2
.LC2:
	.ascii	"Resampling:  input=%ikHz  output=%ikHz\012\000"
	.align	2
.LC3:
	.ascii	"Using polyphase highpass filter, transition band: %"
	.ascii	".0f Hz -  %.0f Hz\012\000"
	.align	2
.LC4:
	.ascii	"Using polyphase lowpass filter,  transition band:  "
	.ascii	"%.0f Hz - %.0f Hz\012\000"
	.align	2
.LC5:
	.ascii	"Analyzing %s \012\000"
	.align	2
.LC6:
	.ascii	"-\000"
	.align	2
.LC7:
	.ascii	"stdin\000"
	.align	2
.LC8:
	.ascii	"stdout\000"
	.align	2
.LC9:
	.ascii	"Encoding %s to %s\012\000"
	.align	2
.LC10:
	.ascii	"Encoding as %.1fkHz VBR(q=%i) %s MPEG%i LayerIII  q"
	.ascii	"val=%i\012\000"
	.align	2
.LC11:
	.ascii	"Encoding as %.1f kHz %d kbps %s MPEG%i LayerIII (%4"
	.ascii	".1fx)  qval=%i\012\000"
	.text
	.align	1
	.global	lame_print_config
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_print_config, %function
lame_print_config:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #32
	str	r0, [r7, #4]
	ldr	r4, .L153+12
.LPIC6:
	add	r4, pc
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L153
	vdiv.f64	d7, d6, d5
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #12]
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #196]
	vldr.32	s14, [r7, #12]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #184]
	lsls	r3, r3, #4
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [r7, #12]
	vmul.f32	s13, s14, s15
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #20]
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	lame_print_version(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L138
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #184]
	cmp	r3, #1
	bne	.L138
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #67
	movs	r1, #1
	ldr	r0, .L153+20
.LPIC7:
	add	r0, pc
	bl	fwrite(PLT)
.L138:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #196]
	vmov.f32	s14, #1.0e+0
	vcmp.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	beq	.L139
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	vldr.32	s15, [r7, #16]
	vcvt.s32.f32	s14, s15
	vldr.32	s15, [r7, #12]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	vmov	r2, s14	@ int
	ldr	r1, .L153+24
.LPIC8:
	add	r1, pc
	bl	fprintf(PLT)
.L139:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #224]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L140
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	vldr.32	s14, [r3, #220]
	vldr.32	s15, [r7, #12]
	vmul.f32	s15, s14, s15
	vldr.32	s14, .L153+8
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d6, s15
	ldr	r3, [r7, #4]
	vldr.32	s14, [r3, #224]
	vldr.32	s15, [r7, #12]
	vmul.f32	s15, s14, s15
	vldr.32	s14, .L153+8
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r1, .L153+28
.LPIC9:
	add	r1, pc
	bl	fprintf(PLT)
.L140:
	ldr	r3, [r7, #4]
	vldr.32	s15, [r3, #212]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L142
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	vldr.32	s14, [r3, #212]
	vldr.32	s15, [r7, #12]
	vmul.f32	s15, s14, s15
	vldr.32	s14, .L153+8
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d6, s15
	ldr	r3, [r7, #4]
	vldr.32	s14, [r3, #216]
	vldr.32	s15, [r7, #12]
	vmul.f32	s15, s14, s15
	vldr.32	s14, .L153+8
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [sp]
	vmov	r2, r3, d6
	ldr	r1, .L153+32
.LPIC10:
	add	r1, pc
	bl	fprintf(PLT)
.L142:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L144
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #124]
	mov	r2, r3
	ldr	r3, .L153+36
.LPIC11:
	add	r3, pc
	mov	r1, r3
	bl	fprintf(PLT)
	b	.L145
.L144:
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r6, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #124]
	ldr	r2, .L153+40
.LPIC12:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L146
	ldr	r3, [r7, #4]
	ldr	r5, [r3, #124]
	b	.L147
.L146:
	ldr	r3, .L153+44
.LPIC13:
	add	r3, pc
	mov	r5, r3
.L147:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r2, .L153+48
.LPIC14:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L148
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	b	.L149
.L148:
	ldr	r3, .L153+52
.LPIC15:
	add	r3, pc
.L149:
	mov	r2, r5
	ldr	r1, .L153+56
.LPIC16:
	add	r1, pc
	mov	r0, r6
	bl	fprintf(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L150
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L153
	vdiv.f64	d5, d7, d6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #32]
	ldr	r1, .L153+60
.LPIC17:
	add	r1, pc
	ldr	r2, [r1, r2, lsl #2]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #172]
	rsb	r1, r1, #2
	ldr	r0, [r7, #4]
	ldr	r0, [r0, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	vmov	r2, r3, d5
	ldr	r1, .L153+64
.LPIC18:
	add	r1, pc
	mov	r0, r5
	bl	fprintf(PLT)
	b	.L145
.L150:
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L153
	vdiv.f64	d5, d7, d6
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #32]
	ldr	r1, .L153+68
.LPIC19:
	add	r1, pc
	ldr	r2, [r1, r2, lsl #2]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #172]
	rsb	r1, r1, #2
	vldr.32	s15, [r7, #20]
	vcvt.f64.f32	d7, s15
	ldr	r0, [r7, #4]
	ldr	r0, [r0, #24]
	str	r0, [sp, #24]
	vstr.64	d7, [sp, #16]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	vmov	r2, r3, d5
	ldr	r1, .L153+72
.LPIC20:
	add	r1, pc
	mov	r0, r5
	bl	fprintf(PLT)
.L145:
	ldr	r3, .L153+16
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	fflush(PLT)
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L154:
	.align	3
.L153:
	.word	0
	.word	1083129856
	.word	1140457472
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	stderr(GOT)
	.word	.LC1-(.LPIC7+4)
	.word	.LC2-(.LPIC8+4)
	.word	.LC3-(.LPIC9+4)
	.word	.LC4-(.LPIC10+4)
	.word	.LC5-(.LPIC11+4)
	.word	.LC6-(.LPIC12+4)
	.word	.LC7-(.LPIC13+4)
	.word	.LC6-(.LPIC14+4)
	.word	.LC8-(.LPIC15+4)
	.word	.LC9-(.LPIC16+4)
	.word	mode_names.8838-(.LPIC17+4)
	.word	.LC10-(.LPIC18+4)
	.word	mode_names.8838-(.LPIC19+4)
	.word	.LC11-(.LPIC20+4)
	.size	lame_print_config, .-lame_print_config
	.section	.rodata
	.align	2
.LC12:
	.ascii	"lame.c\000"
	.align	2
.LC13:
	.ascii	"mf_size>=(BLKSIZE+gfp->framesize-FFTOFFSET)\000"
	.global	__aeabi_idivmod
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.align	2
.LC14:
	.ascii	"Sent %ld bits = %ld slots plus %ld\012\000"
	.text
	.align	1
	.global	lame_encode_frame
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_encode_frame, %function
lame_encode_frame:
	@ args = 8, pretend = 0, frame = 36632
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #36608
	sub	sp, sp, #56
	add	r7, sp, #32
	add	r4, r7, #24
	subs	r4, r4, #4
	str	r0, [r4]
	add	r0, r7, #24
	subs	r0, r0, #8
	str	r1, [r0]
	add	r1, r7, #24
	subs	r1, r1, #12
	str	r2, [r1]
	add	r2, r7, #24
	subs	r2, r2, #16
	str	r3, [r2]
	add	r3, r7, #24
	subs	r3, r3, #20
	add	r2, r7, #36608
	add	r2, r2, #48
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r4, .L209+16
.LPIC21:
	add	r4, pc
	ldr	r3, .L209+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r2, r7, #36608
	add	r2, r2, #20
	str	r3, [r2]
	add	r3, r7, #280
	subs	r3, r3, #208
	mov	r1, #0
	mov	r2, #0
	strd	r1, [r3]
	add	r3, r7, #280
	subs	r3, r3, #200
	mov	r1, #0
	mov	r2, #0
	strd	r1, [r3]
	add	r3, r7, #1304
	subs	r3, r3, #136
	mov	r2, #3904
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #5120
	add	r3, r3, #24
	subs	r3, r3, #72
	mov	r2, #3904
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #280
	subs	r3, r3, #88
	mov	r2, #976
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #280
	subs	r3, r3, #160
	add	r2, r7, #24
	subs	r2, r2, #8
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #160
	add	r2, r7, #24
	subs	r2, r2, #12
	ldr	r2, [r2]
	str	r2, [r3, #4]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #208]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	bne	.L156
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	add	r3, r7, #280
	subs	r3, r3, #192
	vldr.64	d5, .L209
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r3]
	add	r3, r7, #280
	subs	r3, r3, #224
	add	r2, r7, #24
	subs	r2, r2, #4
	ldr	r2, [r2]
	ldr	r2, [r2, #44]
	str	r2, [r3]
	ldr	r3, .L209+24
.LPIC22:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	ldr	r3, .L209+28
.LPIC23:
	add	r3, pc
	mov	r2, r3
	movs	r3, #8
	str	r3, [r2]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #168]
	add	r3, r7, #280
	subs	r3, r3, #224
	ldr	r3, [r3]
	mul	r3, r3, r2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	ldr	r3, .L209+32
.LPIC24:
	add	r3, pc
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f64.u32	d6, s15
	add	r3, r7, #280
	subs	r3, r3, #192
	vldr.64	d7, [r3]
	vmul.f64	d6, d6, d7
	add	r3, r7, #280
	subs	r3, r3, #184
	vdiv.f64	d7, d5, d6
	vstr.64	d7, [r3]
	add	r3, r7, #280
	subs	r3, r3, #184
	vldr.64	d7, [r3]
	vldr.64	d6, .L209+8
	vadd.f64	d7, d7, d6
	vmov.f64	d0, d7
	bl	floor(PLT)
	vmov.f64	d6, d0
	add	r3, r7, #280
	subs	r3, r3, #184
	vldr.64	d7, [r3]
	vsub.f64	d7, d7, d6
	ldr	r3, .L209+36
.LPIC25:
	add	r3, pc
	vstr.64	d7, [r3]
	ldr	r3, .L209+40
.LPIC26:
	add	r3, pc
	vldr.64	d7, [r3]
	vabs.f64	d7, d7
	vldr.64	d6, .L209+8
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L157
	ldr	r3, .L209+44
.LPIC27:
	add	r3, pc
	mov	r1, r3
	mov	r2, #0
	mov	r3, #0
	strd	r2, [r1]
.L157:
	ldr	r3, .L209+48
.LPIC28:
	add	r3, pc
	vldr.64	d7, [r3]
	vneg.f64	d7, d7
	ldr	r3, .L209+52
.LPIC29:
	add	r3, pc
	vstr.64	d7, [r3]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #176]
	ldr	r3, .L209+56
.LPIC30:
	add	r3, pc
	vldr.64	d7, [r3]
	vcmp.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L204
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #176]
.L204:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #168]
	add	r2, r3, #752
	add	r3, r7, #24
	subs	r3, r3, #16
	ldr	r3, [r3]
	cmp	r3, r2
	bge	.L156
	ldr	r3, .L209+60
.LPIC31:
	add	r3, pc
	movw	r2, #661
	ldr	r1, .L209+64
.LPIC32:
	add	r1, pc
	ldr	r0, .L209+68
.LPIC33:
	add	r0, pc
	bl	__assert_fail(PLT)
.L156:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L161
	cmp	r3, #1
	beq	.L162
	b	.L207
.L161:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #176]
	b	.L163
.L162:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #176]
	b	.L163
.L207:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L164
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #176]
	b	.L163
.L164:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L165
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #176]
	b	.L163
.L165:
	ldr	r3, .L209+72
.LPIC34:
	add	r3, pc
	vldr.64	d7, [r3]
	vcmp.f64	d7, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L163
	ldr	r3, .L209+76
.LPIC35:
	add	r3, pc
	vldr.64	d7, [r3]
	vmov.f64	d6, #1.0e+0
	vsub.f64	d6, d7, d6
	ldr	r3, .L209+80
.LPIC36:
	add	r3, pc
	vldr.64	d7, [r3]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L208
	ldr	r3, .L209+84
.LPIC37:
	add	r3, pc
	vldr.64	d6, [r3]
	ldr	r3, .L209+88
.LPIC38:
	add	r3, pc
	vldr.64	d7, [r3]
	vsub.f64	d7, d6, d7
	ldr	r3, .L209+92
.LPIC39:
	add	r3, pc
	vstr.64	d7, [r3]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #176]
	b	.L163
.L208:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #176]
	ldr	r3, .L209+96
.LPIC40:
	add	r3, pc
	vldr.64	d7, [r3]
	vmov.f64	d6, #1.0e+0
	vsub.f64	d6, d6, d7
	ldr	r3, .L209+100
.LPIC41:
	add	r3, pc
	vldr.64	d7, [r3]
	vadd.f64	d7, d6, d7
	ldr	r3, .L209+104
.LPIC42:
	add	r3, pc
	vstr.64	d7, [r3]
.L163:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L168
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L168
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #172]
	cmp	r3, #0
	bne	.L169
	movs	r2, #200
	b	.L170
.L169:
	movs	r2, #50
.L170:
	add	r3, r7, #280
	subs	r3, r3, #220
	str	r2, [r3]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #156]
	add	r3, r7, #280
	subs	r3, r3, #220
	ldr	r1, [r3]
	mov	r0, r2
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	bne	.L168
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [r3, #12]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #156]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #160]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #168]
	bl	timestatus(PLT)
.L168:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #252]
	cmp	r3, #0
	beq	.L171
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #180]
	subs	r2, r3, #1
	add	r3, r7, #280
	subs	r3, r3, #200
	ldr	r1, .L209+108
.LPIC43:
	add	r1, pc
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldrd	r1, [r2]
	strd	r1, [r3]
	add	r3, r7, #280
	subs	r3, r3, #232
	movs	r2, #0
	str	r2, [r3]
	b	.L172
.L177:
	add	r3, r7, #280
	subs	r3, r3, #236
	movs	r2, #0
	str	r2, [r3]
	b	.L173
.L210:
	.align	3
.L209:
	.word	0
	.word	1083129856
	.word	3894859413
	.word	1041313291
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.word	__stack_chk_guard(GOT)
	.word	sentBits.8854-(.LPIC22+4)
	.word	bitsPerSlot.8851-(.LPIC23+4)
	.word	bitsPerSlot.8851-(.LPIC24+4)
	.word	frac_SpF.8852-(.LPIC25+4)
	.word	frac_SpF.8852-(.LPIC26+4)
	.word	frac_SpF.8852-(.LPIC27+4)
	.word	frac_SpF.8852-(.LPIC28+4)
	.word	slot_lag.8853-(.LPIC29+4)
	.word	frac_SpF.8852-(.LPIC30+4)
	.word	__PRETTY_FUNCTION__.8879-(.LPIC31+4)
	.word	.LC12-(.LPIC32+4)
	.word	.LC13-(.LPIC33+4)
	.word	frac_SpF.8852-(.LPIC34+4)
	.word	frac_SpF.8852-(.LPIC35+4)
	.word	slot_lag.8853-(.LPIC36+4)
	.word	slot_lag.8853-(.LPIC37+4)
	.word	frac_SpF.8852-(.LPIC38+4)
	.word	slot_lag.8853-(.LPIC39+4)
	.word	frac_SpF.8852-(.LPIC40+4)
	.word	slot_lag.8853-(.LPIC41+4)
	.word	slot_lag.8853-(.LPIC42+4)
	.word	ms_ratio.8872-(.LPIC43+4)
.L174:
	add	r3, r7, #280
	subs	r3, r3, #160
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	ldr	r2, [r3, r2, lsl #2]
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	mov	r1, #1152
	mul	r3, r1, r3
	add	r3, r3, #608
	adds	r1, r2, r3
	add	r3, r7, #8960
	add	r3, r3, #24
	subs	r3, r3, #8
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	str	r1, [r3, r2, lsl #2]
	add	r3, r7, #280
	subs	r3, r3, #236
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L173:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #184]
	add	r3, r7, #280
	subs	r3, r3, #236
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L174
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	lsls	r3, r3, #3
	ldr	r2, .L211+8
.LPIC44:
	add	r2, pc
	add	ip, r3, r2
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	lsls	r3, r3, #3
	ldr	r2, .L211+12
.LPIC45:
	add	r2, pc
	adds	r5, r3, r2
	add	r3, r7, #280
	subs	r3, r3, #152
	add	r2, r7, #280
	subs	r2, r2, #232
	ldr	r2, [r2]
	lsls	r2, r2, #4
	adds	r6, r3, r2
	add	r3, r7, #280
	subs	r3, r3, #120
	add	r2, r7, #280
	subs	r2, r2, #232
	ldr	r2, [r2]
	lsls	r2, r2, #4
	add	r3, r3, r2
	str	r3, [r7]
	add	r2, r7, #280
	subs	r2, r2, #232
	add	r1, r7, #8960
	add	r1, r1, #24
	subs	r1, r1, #8
	add	r0, r7, #24
	subs	r0, r0, #4
	add	r3, r7, #18176
	add	r3, r3, #24
	subs	r3, r3, #8
	str	r3, [sp, #24]
	ldr	r3, [r7]
	str	r3, [sp, #20]
	str	r6, [sp, #16]
	add	r3, r7, #5120
	add	r3, r3, #24
	subs	r3, r3, #72
	str	r3, [sp, #12]
	add	r3, r7, #1304
	subs	r3, r3, #136
	str	r3, [sp, #8]
	str	r5, [sp, #4]
	add	r3, r7, #280
	subs	r3, r3, #208
	str	r3, [sp]
	mov	r3, ip
	ldr	r2, [r2]
	ldr	r0, [r0]
	bl	L3psycho_anal(PLT)
	add	r3, r7, #280
	subs	r3, r3, #236
	movs	r2, #0
	str	r2, [r3]
	b	.L175
.L176:
	add	r3, r7, #18176
	add	r3, r3, #24
	subs	r3, r3, #8
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	ldr	r3, [r3, r2, lsl #2]
	mov	r0, r3
	ldr	r3, .L211+16
.LPIC46:
	add	r3, pc
	mov	r5, r3
	add	r3, r7, #280
	subs	r3, r3, #236
	ldr	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	movs	r1, #112
	mul	r2, r1, r2
	movs	r1, #224
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, r5
	adds	r3, r3, #68
	str	r0, [r3]
	add	r3, r7, #280
	subs	r3, r3, #236
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L175:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #184]
	add	r3, r7, #280
	subs	r3, r3, #236
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L176
	add	r3, r7, #280
	subs	r3, r3, #232
	add	r2, r7, #280
	subs	r2, r2, #232
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L172:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #180]
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L177
	b	.L178
.L171:
	add	r3, r7, #280
	subs	r3, r3, #232
	movs	r2, #0
	str	r2, [r3]
	b	.L179
.L182:
	add	r3, r7, #280
	subs	r3, r3, #236
	movs	r2, #0
	str	r2, [r3]
	b	.L180
.L181:
	ldr	r3, .L211+20
.LPIC47:
	add	r3, pc
	mov	r0, r3
	add	r3, r7, #280
	subs	r3, r3, #236
	ldr	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	movs	r1, #112
	mul	r2, r1, r2
	movs	r1, #224
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r3, r3, r0
	adds	r3, r3, #68
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #152
	add	r2, r7, #280
	subs	r2, r2, #232
	ldr	r2, [r2]
	lsls	r1, r2, #1
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	add	r2, r2, r1
	lsls	r2, r2, #3
	adds	r1, r3, r2
	mov	r2, #0
	mov	r3, #57344
	movt	r3, 16517
	strd	r2, [r1]
	add	r3, r7, #280
	subs	r3, r3, #236
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L180:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #184]
	add	r3, r7, #280
	subs	r3, r3, #236
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L181
	add	r3, r7, #280
	subs	r3, r3, #232
	add	r2, r7, #280
	subs	r2, r2, #232
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L179:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #180]
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L182
.L178:
	add	r3, r7, #280
	subs	r3, r3, #232
	movs	r2, #0
	str	r2, [r3]
	b	.L183
.L188:
	add	r3, r7, #280
	subs	r3, r3, #236
	movs	r2, #0
	str	r2, [r3]
	b	.L184
.L187:
	add	r3, r7, #280
	subs	r3, r3, #212
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	movs	r1, #112
	mul	r1, r1, r2
	add	r2, r7, #280
	subs	r2, r2, #232
	ldr	r2, [r2]
	movs	r0, #224
	mul	r2, r0, r2
	add	r2, r2, r1
	adds	r2, r2, #40
	ldr	r1, .L211+24
.LPIC48:
	add	r1, pc
	add	r2, r2, r1
	adds	r2, r2, #4
	str	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #212
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #28]
	add	r3, r7, #280
	subs	r3, r3, #212
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L185
	add	r3, r7, #280
	subs	r3, r3, #212
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #20]
	b	.L186
.L185:
	add	r3, r7, #280
	subs	r3, r3, #212
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3, #20]
.L186:
	add	r3, r7, #280
	subs	r3, r3, #236
	add	r2, r7, #280
	subs	r2, r2, #236
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L184:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #184]
	add	r3, r7, #280
	subs	r3, r3, #236
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L187
	add	r3, r7, #280
	subs	r3, r3, #232
	add	r2, r7, #280
	subs	r2, r2, #232
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L183:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #180]
	add	r3, r7, #280
	subs	r3, r3, #232
	ldr	r3, [r3]
	cmp	r3, r2
	blt	.L188
	add	r3, r7, #280
	subs	r3, r3, #160
	ldr	r1, [r3]
	add	r3, r7, #280
	subs	r3, r3, #160
	ldr	r2, [r3, #4]
	add	r3, r7, #18176
	add	r3, r3, #24
	subs	r3, r3, #8
	add	r0, r7, #24
	subs	r0, r0, #4
	ldr	r5, .L211+28
.LPIC49:
	add	r5, pc
	str	r5, [sp]
	ldr	r0, [r0]
	bl	mdct_sub48(PLT)
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r2, r3
	add	r3, r7, #280
	subs	r3, r3, #228
	str	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #228
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L189
	ldr	r3, .L211+32
.LPIC50:
	add	r3, pc
	ldr	r2, [r3, #68]
	ldr	r3, .L211+36
.LPIC51:
	add	r3, pc
	ldr	r3, [r3, #180]
	cmp	r2, r3
	bne	.L190
	ldr	r3, .L211+40
.LPIC52:
	add	r3, pc
	ldr	r2, [r3, #292]
	ldr	r3, .L211+44
.LPIC53:
	add	r3, pc
	ldr	r3, [r3, #404]
	cmp	r2, r3
	bne	.L190
	movs	r2, #1
	b	.L191
.L190:
	movs	r2, #0
.L191:
	add	r3, r7, #280
	subs	r3, r3, #228
	str	r2, [r3]
.L189:
	add	r3, r7, #280
	subs	r3, r3, #228
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L192
	ldr	r3, .L211+48
.LPIC54:
	add	r3, pc
	vldr.64	d6, [r3]
	ldr	r3, .L211+52
.LPIC55:
	add	r3, pc
	vldr.64	d7, [r3, #8]
	vadd.f64	d6, d6, d7
	add	r3, r7, #280
	subs	r3, r3, #200
	vldr.64	d7, [r3]
	vadd.f64	d6, d6, d7
	add	r3, r7, #280
	subs	r3, r3, #208
	vldr.64	d7, [r3]
	vadd.f64	d7, d6, d7
	add	r3, r7, #280
	subs	r3, r3, #176
	vmov.f64	d6, #2.5e-1
	vmul.f64	d7, d7, d6
	vstr.64	d7, [r3]
	ldr	r3, .L211+56
.LPIC56:
	add	r3, pc
	vldr.64	d6, [r3]
	ldr	r3, .L211+60
.LPIC57:
	add	r3, pc
	vldr.64	d7, [r3, #8]
	vadd.f64	d7, d6, d7
	add	r3, r7, #280
	subs	r3, r3, #168
	vmov.f64	d6, #5.0e-1
	vmul.f64	d7, d7, d6
	vstr.64	d7, [r3]
	add	r3, r7, #280
	subs	r3, r3, #176
	vldr.64	d7, [r3]
	vldr.64	d6, .L211
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	bpl	.L192
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #208]
.L192:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L194
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	movs	r2, #2
	str	r2, [r3, #208]
.L194:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #208]
	cmp	r3, #2
	bne	.L195
	add	r3, r7, #280
	subs	r3, r3, #244
	add	r2, r7, #5120
	add	r2, r2, #24
	subs	r2, r2, #72
	str	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #240
	add	r2, r7, #280
	subs	r2, r2, #120
	str	r2, [r3]
	b	.L196
.L195:
	add	r3, r7, #280
	subs	r3, r3, #244
	add	r2, r7, #1304
	subs	r2, r2, #136
	str	r2, [r3]
	add	r3, r7, #280
	subs	r3, r3, #240
	add	r2, r7, #280
	subs	r2, r2, #152
	str	r2, [r3]
.L196:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	beq	.L197
	add	r2, r7, #18176
	add	r2, r2, #24
	subs	r2, r2, #8
	add	r1, r7, #280
	subs	r1, r1, #240
	add	r0, r7, #24
	subs	r0, r0, #4
	add	r3, r7, #280
	subs	r3, r3, #88
	str	r3, [sp, #12]
	add	r3, r7, #8960
	add	r3, r3, #24
	subs	r3, r3, #8
	str	r3, [sp, #8]
	ldr	r3, .L211+64
.LPIC58:
	add	r3, pc
	str	r3, [sp, #4]
	add	r3, r7, #280
	subs	r3, r3, #244
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L211+68
.LPIC59:
	add	r2, pc
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	VBR_iteration_loop(PLT)
	b	.L198
.L197:
	add	r2, r7, #18176
	add	r2, r2, #24
	subs	r2, r2, #8
	add	r1, r7, #280
	subs	r1, r1, #240
	add	r0, r7, #24
	subs	r0, r0, #4
	add	r3, r7, #280
	subs	r3, r3, #88
	str	r3, [sp, #12]
	add	r3, r7, #8960
	add	r3, r3, #24
	subs	r3, r3, #8
	str	r3, [sp, #8]
	ldr	r3, .L211+72
.LPIC60:
	add	r3, pc
	str	r3, [sp, #4]
	add	r3, r7, #280
	subs	r3, r3, #244
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L211+76
.LPIC61:
	add	r2, pc
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	iteration_loop(PLT)
.L198:
	add	r2, r7, #280
	subs	r2, r2, #252
	add	r1, r7, #280
	subs	r1, r1, #248
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r0, [r3]
	bl	getframebits(PLT)
	add	r3, r7, #280
	subs	r3, r3, #248
	ldr	r1, [r3]
	add	r2, r7, #8960
	add	r2, r2, #24
	subs	r2, r2, #8
	add	r0, r7, #24
	subs	r0, r0, #4
	ldr	r3, .L211+80
.LPIC62:
	add	r3, pc
	str	r3, [sp, #4]
	add	r3, r7, #280
	subs	r3, r3, #88
	str	r3, [sp]
	ldr	r3, .L211+84
.LPIC63:
	add	r3, pc
	ldr	r0, [r0]
	bl	III_format_bitstream(PLT)
	ldr	r3, .L211+88
.LPIC64:
	add	r3, pc
	ldr	r2, [r3, #20]
	ldr	r3, .L211+92
.LPIC65:
	add	r3, pc
	ldr	r3, [r3]
	subs	r3, r2, r3
	ldr	r2, .L211+96
.LPIC66:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L211+100
.LPIC67:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L211+104
.LPIC68:
	add	r2, pc
	ldr	r2, [r2]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	cmp	r3, #0
	beq	.L199
	ldr	r3, .L211+108
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L211+112
.LPIC69:
	add	r3, pc
	ldr	r6, [r3]
	ldr	r3, .L211+116
.LPIC70:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L211+120
.LPIC71:
	add	r2, pc
	ldr	r2, [r2]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	mov	r8, r3
	ldr	r3, .L211+124
.LPIC72:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L211+128
.LPIC73:
	add	r2, pc
	ldr	r2, [r2]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidivmod(PLT)
	mov	r3, r1
	str	r3, [sp]
	mov	r3, r8
	mov	r2, r6
	ldr	r1, .L211+132
.LPIC74:
	add	r1, pc
	mov	r0, r5
	bl	fprintf(PLT)
.L199:
	ldr	r3, .L211+136
.LPIC75:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L211+140
.LPIC76:
	add	r3, pc
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r2, .L211+144
.LPIC77:
	add	r2, pc
	str	r3, [r2]
	add	r5, r7, #280
	subs	r5, r5, #216
	add	r3, r7, #24
	subs	r3, r3, #20
	ldr	r2, .L211+148
.LPIC78:
	add	r2, pc
	add	r1, r7, #36608
	add	r1, r1, #52
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	copy_buffer(PLT)
	str	r0, [r5]
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L200
	ldr	r3, .L211+152
.LPIC79:
	add	r3, pc
	ldr	r3, [r3]
	lsrs	r3, r3, #3
	mov	r0, r3
	bl	AddVbrFrame(PLT)
.L200:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	adds	r2, r3, #1
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	str	r2, [r3, #156]
	add	r3, r7, #280
	subs	r3, r3, #216
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L211+156
	ldr	r3, [r4, r3]
	add	r2, r7, #36608
	add	r2, r2, #20
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L202
	bl	__stack_chk_fail(PLT)
.L202:
	add	r7, r7, #36608
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L212:
	.align	3
.L211:
	.word	1717986918
	.word	1071015526
	.word	ms_ratio.8872-(.LPIC44+4)
	.word	ms_ener_ratio.8875-(.LPIC45+4)
	.word	l3_side-(.LPIC46+4)
	.word	l3_side-(.LPIC47+4)
	.word	l3_side-(.LPIC48+4)
	.word	l3_side-(.LPIC49+4)
	.word	l3_side-(.LPIC50+4)
	.word	l3_side-(.LPIC51+4)
	.word	l3_side-(.LPIC52+4)
	.word	l3_side-(.LPIC53+4)
	.word	ms_ratio.8872-(.LPIC54+4)
	.word	ms_ratio.8872-(.LPIC55+4)
	.word	ms_ener_ratio.8875-(.LPIC56+4)
	.word	ms_ener_ratio.8875-(.LPIC57+4)
	.word	l3_side-(.LPIC58+4)
	.word	ms_ratio.8872-(.LPIC59+4)
	.word	l3_side-(.LPIC60+4)
	.word	ms_ratio.8872-(.LPIC61+4)
	.word	bs-(.LPIC62+4)
	.word	l3_side-(.LPIC63+4)
	.word	bs-(.LPIC64+4)
	.word	sentBits.8854-(.LPIC65+4)
	.word	frameBits.8850-(.LPIC66+4)
	.word	frameBits.8850-(.LPIC67+4)
	.word	bitsPerSlot.8851-(.LPIC68+4)
	.word	stderr(GOT)
	.word	frameBits.8850-(.LPIC69+4)
	.word	frameBits.8850-(.LPIC70+4)
	.word	bitsPerSlot.8851-(.LPIC71+4)
	.word	frameBits.8850-(.LPIC72+4)
	.word	bitsPerSlot.8851-(.LPIC73+4)
	.word	.LC14-(.LPIC74+4)
	.word	sentBits.8854-(.LPIC75+4)
	.word	frameBits.8850-(.LPIC76+4)
	.word	sentBits.8854-(.LPIC77+4)
	.word	bs-(.LPIC78+4)
	.word	sentBits.8854-(.LPIC79+4)
	.word	__stack_chk_guard(GOT)
	.size	lame_encode_frame, .-lame_encode_frame
	.align	1
	.global	fill_buffer_resample
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	fill_buffer_resample, %function
fill_buffer_resample:
	@ args = 12, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	vpush.64	{d8}
	sub	sp, sp, #100
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	bne	.L214
	ldr	r3, .L236+8
.LPIC80:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	ldr	r3, [r2, r3, lsl #2]
	cmp	r3, #0
	bne	.L214
	ldr	r3, .L236+12
.LPIC81:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #128]
	movs	r2, #1
	str	r2, [r1, r3, lsl #2]
	ldr	r3, .L236+16
.LPIC82:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	lsls	r3, r3, #3
	add	r2, r2, r3
	mov	r3, #0
	mov	r4, #0
	strd	r3, [r2]
	ldr	r3, [r7, #128]
	movs	r2, #10
	mul	r3, r2, r3
	ldr	r2, .L236+20
.LPIC83:
	add	r2, pc
	add	r3, r3, r2
	movs	r2, #10
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
.L214:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	beq	.L215
	ldr	r3, .L236+24
.LPIC84:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #128]
	movs	r2, #0
	str	r2, [r1, r3, lsl #2]
.L215:
	ldr	r3, [r7, #12]
	vldr.32	s15, [r3, #196]
	vcvt.f64.f32	d8, s15
	ldr	r3, [r7, #12]
	vldr.32	s15, [r3, #196]
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vmov.f64	d0, d7
	bl	floor(PLT)
	vmov.f64	d7, d0
	vsub.f64	d7, d8, d7
	vabs.f64	d7, d7
	vldr.64	d6, .L236
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L216
.L231:
	ldr	r3, [r7, #28]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [r7, #12]
	vldr.32	s15, [r3, #196]
	vmul.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vstr.64	d7, [r7, #56]
	ldr	r3, .L236+28
.LPIC85:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	lsls	r3, r3, #3
	add	r3, r3, r2
	vldr.64	d7, [r3]
	vldr.64	d6, [r7, #56]
	vsub.f64	d7, d6, d7
	vmov.f64	d0, d7
	bl	floor(PLT)
	vmov.f64	d7, d0
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #120]
	cmp	r2, r3
	ble	.L235
	ldr	r3, .L236+32
.LPIC86:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	lsls	r3, r3, #3
	add	r3, r3, r2
	vldr.64	d6, [r3]
	ldr	r3, [r7, #24]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vadd.f64	d7, d6, d7
	vldr.64	d6, [r7, #56]
	vsub.f64	d7, d6, d7
	vstr.64	d7, [r7, #64]
	vldr.64	d7, [r7, #64]
	vmov.f64	d6, #1.0e+0
	vsub.f64	d7, d7, d6
	vstr.64	d7, [r7, #72]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L219
	ldr	r3, [r7, #24]
	adds	r1, r3, #5
	ldr	r3, .L236+36
.LPIC87:
	add	r3, pc
	mov	r0, r3
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	add	r3, r3, r1
	ldrsh	r3, [r0, r3, lsl #1]
	b	.L220
.L219:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrsh	r3, [r3]
.L220:
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	cmp	r3, #0
	bge	.L221
	ldr	r3, [r7, #24]
	adds	r1, r3, #6
	ldr	r3, .L236+40
.LPIC88:
	add	r3, pc
	mov	r0, r3
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	add	r3, r3, r1
	ldrsh	r3, [r0, r3, lsl #1]
	b	.L222
.L221:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrsh	r3, [r3]
.L222:
	str	r3, [r7, #40]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L223
	ldr	r3, [r7, #40]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d7, [r7, #64]
	vmul.f64	d6, d6, d7
	ldr	r3, [r7, #36]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	vldr.64	d7, [r7, #72]
	vmul.f64	d7, d5, d7
	vsub.f64	d7, d6, d7
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vmov.f64	d0, d7
	bl	floor(PLT)
	vmov.f64	d7, d0
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	vcvt.s32.f64	s15, d7
	vmov	r2, s15	@ int
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L224
.L223:
	vldr.64	d7, [r7, #64]
	vmov.f64	d6, #1.0e+0
	vadd.f64	d7, d7, d6
	vstr.64	d7, [r7, #80]
	vldr.64	d7, [r7, #64]
	vmov.f64	d6, #2.0e+0
	vsub.f64	d7, d7, d6
	vstr.64	d7, [r7, #88]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	cmp	r3, #0
	bge	.L225
	ldr	r3, [r7, #24]
	adds	r1, r3, #4
	ldr	r3, .L236+44
.LPIC89:
	add	r3, pc
	mov	r0, r3
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	add	r3, r3, r1
	ldrsh	r3, [r0, r3, lsl #1]
	b	.L226
.L225:
	ldr	r3, [r7, #24]
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrsh	r3, [r3]
.L226:
	str	r3, [r7, #44]
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	cmp	r3, #0
	bge	.L227
	ldr	r3, [r7, #24]
	adds	r1, r3, #7
	ldr	r3, .L236+48
.LPIC90:
	add	r3, pc
	mov	r0, r3
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	add	r3, r3, r1
	ldrsh	r3, [r0, r3, lsl #1]
	b	.L228
.L227:
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrsh	r3, [r3]
.L228:
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	negs	r3, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d7, [r7, #64]
	vmul.f64	d6, d6, d7
	vldr.64	d7, [r7, #72]
	vmul.f64	d6, d6, d7
	vldr.64	d7, [r7, #88]
	vmul.f64	d6, d6, d7
	vmov.f64	d5, #6.0e+0
	vdiv.f64	d7, d6, d5
	vmov.f64	d6, #5.0e-1
	vadd.f64	d6, d7, d6
	ldr	r3, [r7, #36]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	vldr.64	d7, [r7, #80]
	vmul.f64	d5, d5, d7
	vldr.64	d7, [r7, #72]
	vmul.f64	d5, d5, d7
	vldr.64	d7, [r7, #88]
	vmul.f64	d5, d5, d7
	vmov.f64	d4, #2.0e+0
	vdiv.f64	d7, d5, d4
	vadd.f64	d6, d6, d7
	ldr	r3, [r7, #40]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	vldr.64	d7, [r7, #80]
	vmul.f64	d5, d5, d7
	vldr.64	d7, [r7, #64]
	vmul.f64	d5, d5, d7
	vldr.64	d7, [r7, #88]
	vmul.f64	d5, d5, d7
	vmov.f64	d4, #2.0e+0
	vdiv.f64	d7, d5, d4
	vsub.f64	d6, d6, d7
	ldr	r3, [r7, #48]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d5, s15
	vldr.64	d7, [r7, #80]
	vmul.f64	d5, d5, d7
	vldr.64	d7, [r7, #64]
	vmul.f64	d5, d5, d7
	vldr.64	d7, [r7, #72]
	vmul.f64	d5, d5, d7
	vmov.f64	d4, #6.0e+0
	vdiv.f64	d7, d5, d4
	vadd.f64	d7, d6, d7
	vmov.f64	d0, d7
	bl	floor(PLT)
	vmov.f64	d7, d0
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #32768
	blt	.L229
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	movw	r2, #32767
	strh	r2, [r3]	@ movhi
	b	.L224
.L229:
	ldr	r3, [r7, #52]
	cmn	r3, #32768
	bgt	.L230
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	movw	r2, #32769
	strh	r2, [r3]	@ movhi
	b	.L224
.L230:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
.L224:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L216:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L231
	b	.L218
.L237:
	.align	3
.L236:
	.word	3944497965
	.word	1058682594
	.word	init.8923-(.LPIC80+4)
	.word	init.8923-(.LPIC81+4)
	.word	itime.8921-(.LPIC82+4)
	.word	inbuf_old.8922-(.LPIC83+4)
	.word	init.8923-(.LPIC84+4)
	.word	itime.8921-(.LPIC85+4)
	.word	itime.8921-(.LPIC86+4)
	.word	inbuf_old.8922-(.LPIC87+4)
	.word	inbuf_old.8922-(.LPIC88+4)
	.word	inbuf_old.8922-(.LPIC89+4)
	.word	inbuf_old.8922-(.LPIC90+4)
.L235:
	nop
.L218:
	ldr	r3, [r7, #24]
	adds	r2, r3, #2
	ldr	r3, [r7, #120]
	cmp	r2, r3
	it	ge
	movge	r2, r3
	ldr	r3, [r7, #124]
	str	r2, [r3]
	ldr	r3, .L238
.LPIC91:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	lsls	r3, r3, #3
	add	r3, r3, r2
	vldr.64	d6, [r3]
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [r7, #28]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s11, s15
	ldr	r3, [r7, #12]
	vldr.32	s15, [r3, #196]
	vmul.f32	s15, s11, s15
	vsub.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	vadd.f64	d7, d6, d7
	ldr	r3, .L238+4
.LPIC92:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #128]
	lsls	r3, r3, #3
	add	r3, r3, r2
	vstr.64	d7, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L232
.L233:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	add	r3, r3, #-2147483648
	subs	r3, r3, #5
	lsls	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrsh	r0, [r3]
	ldr	r3, .L238+8
.LPIC93:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #128]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	mov	r2, r0	@ movhi
	strh	r2, [r1, r3, lsl #1]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L232:
	ldr	r3, [r7, #20]
	cmp	r3, #4
	ble	.L233
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	vldm	sp!, {d8}
	pop	{r4, r7, pc}
.L239:
	.align	2
.L238:
	.word	itime.8921-(.LPIC91+4)
	.word	itime.8921-(.LPIC92+4)
	.word	inbuf_old.8922-(.LPIC93+4)
	.size	fill_buffer_resample, .-fill_buffer_resample
	.align	1
	.global	fill_buffer
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	fill_buffer, %function
fill_buffer:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #4]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r1, [r7]
	ldr	r0, [r7, #8]
	bl	memcpy(PLT)
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	fill_buffer, .-fill_buffer
	.section	.rodata
	.align	2
.LC15:
	.ascii	"MFSIZE>=mf_needed\000"
	.align	2
.LC16:
	.ascii	"mf_size<=MFSIZE\000"
	.align	2
.LC17:
	.ascii	"nsamples==0\000"
	.text
	.align	1
	.global	lame_encode_buffer
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_encode_buffer, %function
lame_encode_buffer:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #16
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	str	r2, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #80]
	str	r3, [r7, #4]
	ldr	r4, .L266
.LPIC94:
	add	r4, pc
	ldr	r3, .L266+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	str	r3, [r7, #56]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #168]
	add	r3, r3, #752
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #3056
	ble	.L243
	ldr	r3, .L266+8
.LPIC95:
	add	r3, pc
	movw	r2, #990
	ldr	r1, .L266+12
.LPIC96:
	add	r1, pc
	ldr	r0, .L266+16
.LPIC97:
	add	r0, pc
	bl	__assert_fail(PLT)
.L243:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	bne	.L244
	ldr	r3, .L266+20
.LPIC98:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L244
	mov	r2, #12224
	movs	r1, #0
	ldr	r3, .L266+24
.LPIC99:
	add	r3, pc
	mov	r0, r3
	bl	memset(PLT)
	ldr	r3, .L266+28
.LPIC100:
	add	r3, pc
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	ldr	r3, .L266+32
.LPIC101:
	add	r3, pc
	mov	r2, r3
	mov	r3, #1088
	str	r3, [r2]
	ldr	r3, .L266+36
.LPIC102:
	add	r3, pc
	mov	r2, r3
	mov	r3, #752
	str	r3, [r2]
.L244:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #156]
	cmp	r3, #1
	bne	.L245
	ldr	r3, .L266+40
.LPIC103:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L245:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L249
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #184]
	cmp	r3, #1
	bne	.L249
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L247
.L248:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrsh	r3, [r3]
	mov	r1, r3
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrsh	r3, [r3]
	add	r3, r3, r1
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r1, r3
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L247:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L248
	b	.L249
.L262:
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L250
.L253:
	ldr	r3, [r7, #20]
	vldr.32	s15, [r3, #196]
	vmov.f32	s14, #1.0e+0
	vcmp.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	beq	.L251
	ldr	r3, .L266+44
.LPIC104:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	mov	r1, #3056
	mul	r2, r1, r2
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, .L266+48
.LPIC105:
	add	r2, pc
	adds	r1, r3, r2
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r0, r7, #64
	add	r3, r3, r0
	ldr	r0, [r3, #-12]
	ldr	r3, [r7, #36]
	str	r3, [sp, #8]
	add	r3, r7, #24
	str	r3, [sp, #4]
	ldr	r3, [r7, #8]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #20]
	bl	fill_buffer_resample(PLT)
	str	r0, [r7, #40]
	b	.L252
.L251:
	ldr	r3, .L266+52
.LPIC106:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	mov	r1, #3056
	mul	r2, r1, r2
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, .L266+56
.LPIC107:
	add	r2, pc
	adds	r1, r3, r2
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r0, r7, #64
	add	r3, r3, r0
	ldr	r0, [r3, #-12]
	ldr	r3, [r7, #8]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [r7, #20]
	bl	fill_buffer(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #40]
	str	r3, [r7, #24]
.L252:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r2, r7, #64
	add	r3, r3, r2
	ldr	r2, [r3, #-12]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r1, r7, #64
	add	r3, r3, r1
	str	r2, [r3, #-12]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L250:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #184]
	ldr	r2, [r7, #36]
	cmp	r2, r3
	blt	.L253
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, .L266+60
.LPIC108:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r2, .L266+64
.LPIC109:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L266+68
.LPIC110:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3056
	ble	.L254
	ldr	r3, .L266+72
.LPIC111:
	add	r3, pc
	mov	r2, #1040
	ldr	r1, .L266+76
.LPIC112:
	add	r1, pc
	ldr	r0, .L266+80
.LPIC113:
	add	r0, pc
	bl	__assert_fail(PLT)
.L254:
	ldr	r3, .L266+84
.LPIC114:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r2, .L266+88
.LPIC115:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L266+92
.LPIC116:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	bgt	.L249
	ldr	r3, .L266+96
.LPIC117:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	str	r3, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L266+100
.LPIC118:
	add	r2, pc
	mov	r1, #6112
	add	r2, r2, r1
	ldr	r1, .L266+104
.LPIC119:
	add	r1, pc
	ldr	r0, [r7, #20]
	bl	lame_encode_frame(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #-1
	bne	.L256
	mov	r3, #-1
	b	.L264
.L256:
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, .L266+108
.LPIC120:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #168]
	subs	r3, r2, r3
	ldr	r2, .L266+112
.LPIC121:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L266+116
.LPIC122:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #168]
	subs	r3, r2, r3
	ldr	r2, .L266+120
.LPIC123:
	add	r2, pc
	str	r3, [r2]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L258
.L261:
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L259
.L260:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, .L266+124
.LPIC124:
	add	r2, pc
	mov	r0, r2
	ldr	r2, [r7, #36]
	mov	r1, #3056
	mul	r2, r1, r2
	add	r3, r3, r2
	ldrsh	r0, [r0, r3, lsl #1]
	ldr	r3, .L266+128
.LPIC125:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #36]
	mov	r2, #3056
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r0	@ movhi
	strh	r2, [r1, r3, lsl #1]	@ movhi
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L259:
	ldr	r3, .L266+132
.LPIC126:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L260
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L258:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #184]
	ldr	r2, [r7, #36]
	cmp	r2, r3
	blt	.L261
.L249:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bgt	.L262
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L263
	ldr	r3, .L266+136
.LPIC127:
	add	r3, pc
	movw	r2, #1061
	ldr	r1, .L266+140
.LPIC128:
	add	r1, pc
	ldr	r0, .L266+144
.LPIC129:
	add	r0, pc
	bl	__assert_fail(PLT)
.L263:
	ldr	r3, [r7, #28]
.L264:
	mov	r0, r3
	ldr	r3, .L266+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #60]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L265
	bl	__stack_chk_fail(PLT)
.L265:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L267:
	.align	2
.L266:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC94+4)
	.word	__stack_chk_guard(GOT)
	.word	__PRETTY_FUNCTION__.8967-(.LPIC95+4)
	.word	.LC12-(.LPIC96+4)
	.word	.LC15-(.LPIC97+4)
	.word	frame_buffered.8960-(.LPIC98+4)
	.word	mfbuf-(.LPIC99+4)
	.word	frame_buffered.8960-(.LPIC100+4)
	.word	mf_samples_to_encode-(.LPIC101+4)
	.word	mf_size-(.LPIC102+4)
	.word	frame_buffered.8960-(.LPIC103+4)
	.word	mf_size-(.LPIC104+4)
	.word	mfbuf-(.LPIC105+4)
	.word	mf_size-(.LPIC106+4)
	.word	mfbuf-(.LPIC107+4)
	.word	mf_size-(.LPIC108+4)
	.word	mf_size-(.LPIC109+4)
	.word	mf_size-(.LPIC110+4)
	.word	__PRETTY_FUNCTION__.8967-(.LPIC111+4)
	.word	.LC12-(.LPIC112+4)
	.word	.LC16-(.LPIC113+4)
	.word	mf_samples_to_encode-(.LPIC114+4)
	.word	mf_samples_to_encode-(.LPIC115+4)
	.word	mf_size-(.LPIC116+4)
	.word	mf_size-(.LPIC117+4)
	.word	mfbuf-(.LPIC118+4)
	.word	mfbuf-(.LPIC119+4)
	.word	mf_size-(.LPIC120+4)
	.word	mf_size-(.LPIC121+4)
	.word	mf_samples_to_encode-(.LPIC122+4)
	.word	mf_samples_to_encode-(.LPIC123+4)
	.word	mfbuf-(.LPIC124+4)
	.word	mfbuf-(.LPIC125+4)
	.word	mf_size-(.LPIC126+4)
	.word	__PRETTY_FUNCTION__.8967-(.LPIC127+4)
	.word	.LC12-(.LPIC128+4)
	.word	.LC17-(.LPIC129+4)
	.size	lame_encode_buffer, .-lame_encode_buffer
	.align	1
	.global	lame_encode_buffer_interleaved
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_encode_buffer_interleaved, %function
lame_encode_buffer_interleaved:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	add	r3, r3, #752
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #3056
	ble	.L269
	ldr	r3, .L293
.LPIC130:
	add	r3, pc
	movw	r2, #1078
	ldr	r1, .L293+4
.LPIC131:
	add	r1, pc
	ldr	r0, .L293+8
.LPIC132:
	add	r0, pc
	bl	__assert_fail(PLT)
.L269:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L270
	ldr	r3, [r7, #56]
	str	r3, [sp, #4]
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, [r7, #4]
	movs	r2, #0
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	lame_encode_buffer(PLT)
	mov	r3, r0
	b	.L271
.L270:
	ldr	r3, [r7, #12]
	vldr.32	s15, [r3, #196]
	vmov.f32	s14, #1.0e+0
	vcmp.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	beq	.L272
	ldr	r3, [r7, #4]
	lsls	r3, r3, #1
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #1
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L273
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L274
.L273:
	mov	r3, #-1
	b	.L271
.L274:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L275
.L276:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r1, [r7, #40]
	add	r3, r3, r1
	ldrsh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r1, [r7, #44]
	add	r3, r3, r1
	ldrsh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L275:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L276
	ldr	r3, [r7, #56]
	str	r3, [sp, #4]
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #44]
	ldr	r1, [r7, #40]
	ldr	r0, [r7, #12]
	bl	lame_encode_buffer(PLT)
	str	r0, [r7, #36]
	ldr	r0, [r7, #40]
	bl	free(PLT)
	ldr	r0, [r7, #44]
	bl	free(PLT)
	ldr	r3, [r7, #36]
	b	.L271
.L272:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	bne	.L277
	ldr	r3, .L293+12
.LPIC133:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L277
	mov	r2, #12224
	movs	r1, #0
	ldr	r3, .L293+16
.LPIC134:
	add	r3, pc
	mov	r0, r3
	bl	memset(PLT)
	ldr	r3, .L293+20
.LPIC135:
	add	r3, pc
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	ldr	r3, .L293+24
.LPIC136:
	add	r3, pc
	mov	r2, r3
	mov	r3, #1088
	str	r3, [r2]
	ldr	r3, .L293+28
.LPIC137:
	add	r3, pc
	mov	r2, r3
	mov	r3, #752
	str	r3, [r2]
.L277:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	cmp	r3, #1
	bne	.L278
	ldr	r3, .L293+32
.LPIC138:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L278:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L282
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #184]
	cmp	r3, #1
	bne	.L282
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L280
.L281:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrsh	r3, [r3]
	mov	r1, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrsh	r3, [r3]
	add	r3, r3, r1
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r1, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L280:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L281
	b	.L282
.L291:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	ldr	r2, [r7, #4]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L283
.L284:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, .L293+36
.LPIC139:
	add	r3, pc
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	ldrsh	r1, [r2]
	ldr	r2, .L293+40
.LPIC140:
	add	r2, pc
	strh	r1, [r2, r3, lsl #1]	@ movhi
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	adds	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, .L293+44
.LPIC141:
	add	r3, pc
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	ldrsh	r1, [r2]
	ldr	r2, .L293+48
.LPIC142:
	add	r2, pc
	add	r3, r3, #3056
	strh	r1, [r2, r3, lsl #1]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L283:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L284
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r3, .L293+52
.LPIC143:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, .L293+56
.LPIC144:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L293+60
.LPIC145:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3056
	ble	.L285
	ldr	r3, .L293+64
.LPIC146:
	add	r3, pc
	movw	r2, #1135
	ldr	r1, .L293+68
.LPIC147:
	add	r1, pc
	ldr	r0, .L293+72
.LPIC148:
	add	r0, pc
	bl	__assert_fail(PLT)
.L285:
	ldr	r3, .L293+76
.LPIC149:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, .L293+80
.LPIC150:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L293+84
.LPIC151:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bgt	.L282
	ldr	r3, .L293+88
.LPIC152:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	str	r3, [sp, #4]
	ldr	r3, [r7]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, .L293+92
.LPIC153:
	add	r2, pc
	mov	r1, #6112
	add	r2, r2, r1
	ldr	r1, .L293+96
.LPIC154:
	add	r1, pc
	ldr	r0, [r7, #12]
	bl	lame_encode_frame(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	bne	.L286
	mov	r3, #-1
	b	.L271
.L286:
	ldr	r3, [r7, #36]
	ldr	r2, [r7]
	add	r3, r3, r2
	str	r3, [r7]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, .L293+100
.LPIC155:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	subs	r3, r2, r3
	ldr	r2, .L293+104
.LPIC156:
	add	r2, pc
	str	r3, [r2]
	ldr	r3, .L293+108
.LPIC157:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	subs	r3, r2, r3
	ldr	r2, .L293+112
.LPIC158:
	add	r2, pc
	str	r3, [r2]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L287
.L290:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L288
.L289:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldr	r2, .L293+116
.LPIC159:
	add	r2, pc
	mov	r0, r2
	ldr	r2, [r7, #24]
	mov	r1, #3056
	mul	r2, r1, r2
	add	r3, r3, r2
	ldrsh	r0, [r0, r3, lsl #1]
	ldr	r3, .L293+120
.LPIC160:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #24]
	mov	r2, #3056
	mul	r2, r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	mov	r2, r0	@ movhi
	strh	r2, [r1, r3, lsl #1]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L288:
	ldr	r3, .L293+124
.LPIC161:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L289
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L287:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #184]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	blt	.L290
.L282:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L291
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L292
	ldr	r3, .L293+128
.LPIC162:
	add	r3, pc
	movw	r2, #1156
	ldr	r1, .L293+132
.LPIC163:
	add	r1, pc
	ldr	r0, .L293+136
.LPIC164:
	add	r0, pc
	bl	__assert_fail(PLT)
.L292:
	ldr	r3, [r7, #16]
.L271:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L294:
	.align	2
.L293:
	.word	__PRETTY_FUNCTION__.8998-(.LPIC130+4)
	.word	.LC12-(.LPIC131+4)
	.word	.LC15-(.LPIC132+4)
	.word	frame_buffered.8992-(.LPIC133+4)
	.word	mfbuf-(.LPIC134+4)
	.word	frame_buffered.8992-(.LPIC135+4)
	.word	mf_samples_to_encode-(.LPIC136+4)
	.word	mf_size-(.LPIC137+4)
	.word	frame_buffered.8992-(.LPIC138+4)
	.word	mf_size-(.LPIC139+4)
	.word	mfbuf-(.LPIC140+4)
	.word	mf_size-(.LPIC141+4)
	.word	mfbuf-(.LPIC142+4)
	.word	mf_size-(.LPIC143+4)
	.word	mf_size-(.LPIC144+4)
	.word	mf_size-(.LPIC145+4)
	.word	__PRETTY_FUNCTION__.8998-(.LPIC146+4)
	.word	.LC12-(.LPIC147+4)
	.word	.LC16-(.LPIC148+4)
	.word	mf_samples_to_encode-(.LPIC149+4)
	.word	mf_samples_to_encode-(.LPIC150+4)
	.word	mf_size-(.LPIC151+4)
	.word	mf_size-(.LPIC152+4)
	.word	mfbuf-(.LPIC153+4)
	.word	mfbuf-(.LPIC154+4)
	.word	mf_size-(.LPIC155+4)
	.word	mf_size-(.LPIC156+4)
	.word	mf_samples_to_encode-(.LPIC157+4)
	.word	mf_samples_to_encode-(.LPIC158+4)
	.word	mfbuf-(.LPIC159+4)
	.word	mfbuf-(.LPIC160+4)
	.word	mf_size-(.LPIC161+4)
	.word	__PRETTY_FUNCTION__.8998-(.LPIC162+4)
	.word	.LC12-(.LPIC163+4)
	.word	.LC17-(.LPIC164+4)
	.size	lame_encode_buffer_interleaved, .-lame_encode_buffer_interleaved
	.align	1
	.global	lame_encode
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_encode, %function
lame_encode:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, .L297
.LPIC165:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	add	r1, r3, #2304
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #180]
	mov	r2, #576
	mul	r2, r2, r3
	ldr	r3, [r7]
	str	r3, [sp, #4]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	mov	r3, r2
	mov	r2, r1
	ldr	r1, [r7, #8]
	ldr	r0, [r7, #12]
	bl	lame_encode_buffer(PLT)
	str	r0, [r7, #20]
	ldr	r3, .L297+4
.LPIC166:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #16]
	str	r3, [r2]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L298:
	.align	2
.L297:
	.word	mf_samples_to_encode-(.LPIC165+4)
	.word	mf_samples_to_encode-(.LPIC166+4)
	.size	lame_encode, .-lame_encode
	.align	1
	.global	lame_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_init, %function
lame_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L300
.LPIC167:
	add	r2, pc
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #144]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #132]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #136]
	ldr	r3, [r7, #4]
	movs	r1, #1
	str	r1, [r3, #20]
	ldr	r3, [r7, #4]
	mov	r1, #0
	str	r1, [r3, #140]	@ float
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #68]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #80]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #156]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r1, #5
	str	r1, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #116]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #236]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #100]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #104]
	ldr	r3, [r7, #4]
	mov	r1, #-1
	str	r1, [r3, #108]
	ldr	r3, [r7, #4]
	mov	r1, #-1
	str	r1, [r3, #112]
	ldr	r3, [r7, #4]
	mov	r1, #0
	str	r1, [r3, #212]	@ float
	ldr	r3, [r7, #4]
	mov	r1, #0
	str	r1, [r3, #216]	@ float
	ldr	r3, [r7, #4]
	mov	r1, #0
	str	r1, [r3, #220]	@ float
	ldr	r3, [r7, #4]
	mov	r1, #0
	str	r1, [r3, #224]	@ float
	ldr	r3, [r7, #4]
	movs	r1, #32
	str	r1, [r3, #228]
	ldr	r3, [r7, #4]
	mov	r1, #-1
	str	r1, [r3, #232]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #148]
	ldr	r3, [r7, #4]
	mov	r1, #1065353216
	str	r1, [r3, #196]	@ float
	ldr	r3, [r7, #4]
	movs	r1, #2
	str	r1, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #176]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #120]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #160]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #84]
	ldr	r3, [r7, #4]
	movs	r1, #4
	str	r1, [r3, #88]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #92]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #96]
	ldr	r3, [r7, #4]
	movs	r1, #1
	str	r1, [r3, #188]
	ldr	r3, [r7, #4]
	movs	r1, #13
	str	r1, [r3, #192]
	ldr	r3, [r7, #4]
	movs	r1, #1
	str	r1, [r3, #172]
	ldr	r3, [r7, #4]
	movs	r1, #1
	str	r1, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #48]
	ldr	r3, [r7, #4]
	movs	r1, #1
	str	r1, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #152]
	ldr	r3, [r7, #4]
	movw	r1, #44100
	str	r1, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r1, #2
	str	r1, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r1, #-1
	str	r1, [r3]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #124]
	ldr	r3, [r7, #4]
	movs	r1, #0
	str	r1, [r3, #128]
	ldr	r3, .L300+4
	ldr	r3, [r2, r3]
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L301:
	.align	2
.L300:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC167+4)
	.word	id3tag(GOT)
	.size	lame_init, .-lame_init
	.align	1
	.global	lame_encode_finish
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_encode_finish, %function
lame_encode_finish:
	@ args = 0, pretend = 0, frame = 4640
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #4640
	add	r7, sp, #0
	add	r3, r7, #32
	subs	r3, r3, #20
	str	r0, [r3]
	add	r3, r7, #32
	subs	r3, r3, #24
	str	r1, [r3]
	add	r3, r7, #32
	subs	r3, r3, #28
	str	r2, [r3]
	ldr	r4, .L313
.LPIC168:
	add	r4, pc
	ldr	r3, .L313+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r2, r7, #4608
	add	r2, r2, #28
	str	r3, [r2]
	add	r3, r7, #32
	subs	r3, r3, #4
	mov	r2, #4608
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #32
	subs	r3, r3, #16
	movs	r2, #0
	str	r2, [r3]
	b	.L303
.L307:
	add	r3, r7, #32
	subs	r3, r3, #12
	add	r1, r7, #32
	subs	r1, r1, #28
	add	r2, r7, #32
	subs	r2, r2, #16
	ldr	r1, [r1]
	ldr	r2, [r2]
	subs	r2, r1, r2
	str	r2, [r3]
	add	r3, r7, #32
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L304
	add	r3, r7, #32
	subs	r3, r3, #12
	movs	r2, #0
	str	r2, [r3]
.L304:
	add	r5, r7, #32
	subs	r5, r5, #8
	add	r3, r7, #32
	subs	r3, r3, #12
	add	r2, r7, #32
	subs	r2, r2, #24
	add	r1, r7, #32
	subs	r1, r1, #4
	add	r0, r7, #32
	subs	r0, r0, #20
	ldr	r3, [r3]
	ldr	r2, [r2]
	ldr	r0, [r0]
	bl	lame_encode(PLT)
	str	r0, [r5]
	add	r3, r7, #32
	subs	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L305
	ldr	r3, .L313+8
.LPIC169:
	add	r3, pc
	mov	r0, r3
	bl	desalloc_buffer(PLT)
	mov	r3, #-1
	b	.L311
.L305:
	add	r3, r7, #32
	subs	r3, r3, #8
	ldr	r1, [r3]
	add	r3, r7, #32
	subs	r3, r3, #24
	add	r2, r7, #32
	subs	r2, r2, #24
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	add	r3, r7, #32
	subs	r3, r3, #16
	add	r1, r7, #32
	subs	r1, r1, #16
	add	r2, r7, #32
	subs	r2, r2, #8
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, .L313+12
.LPIC170:
	add	r3, pc
	ldr	r2, [r3]
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r3, [r3, #168]
	subs	r3, r2, r3
	ldr	r2, .L313+16
.LPIC171:
	add	r2, pc
	str	r3, [r2]
.L303:
	ldr	r3, .L313+20
.LPIC172:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L307
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	subs	r2, r3, #1
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	str	r2, [r3, #156]
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L308
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L308
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r0, [r3, #12]
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r1, [r3, #156]
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r3, #160]
	add	r3, r7, #32
	subs	r3, r3, #20
	ldr	r3, [r3]
	ldr	r3, [r3, #168]
	bl	timestatus(PLT)
	ldr	r3, .L313+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, .L313+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	fflush(PLT)
.L308:
	bl	III_FlushBitstream(PLT)
	add	r3, r7, #32
	subs	r3, r3, #12
	add	r1, r7, #32
	subs	r1, r1, #28
	add	r2, r7, #32
	subs	r2, r2, #16
	ldr	r1, [r1]
	ldr	r2, [r2]
	subs	r2, r1, r2
	str	r2, [r3]
	add	r3, r7, #32
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L309
	add	r3, r7, #32
	subs	r3, r3, #12
	movs	r2, #0
	str	r2, [r3]
.L309:
	add	r5, r7, #32
	subs	r5, r5, #8
	add	r1, r7, #32
	subs	r1, r1, #12
	add	r3, r7, #32
	subs	r3, r3, #24
	ldr	r2, .L313+28
.LPIC173:
	add	r2, pc
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	copy_buffer(PLT)
	str	r0, [r5]
	add	r3, r7, #32
	subs	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L310
	ldr	r3, .L313+32
.LPIC174:
	add	r3, pc
	mov	r0, r3
	bl	desalloc_buffer(PLT)
	mov	r3, #-1
	b	.L311
.L310:
	add	r3, r7, #32
	subs	r3, r3, #16
	add	r1, r7, #32
	subs	r1, r1, #16
	add	r2, r7, #32
	subs	r2, r2, #8
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, .L313+36
.LPIC175:
	add	r3, pc
	mov	r0, r3
	bl	desalloc_buffer(PLT)
	add	r3, r7, #32
	subs	r3, r3, #16
	ldr	r3, [r3]
.L311:
	mov	r0, r3
	ldr	r3, .L313+4
	ldr	r3, [r4, r3]
	add	r2, r7, #4608
	add	r2, r2, #28
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L312
	bl	__stack_chk_fail(PLT)
.L312:
	add	r7, r7, #4640
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L314:
	.align	2
.L313:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC168+4)
	.word	__stack_chk_guard(GOT)
	.word	bs-(.LPIC169+4)
	.word	mf_samples_to_encode-(.LPIC170+4)
	.word	mf_samples_to_encode-(.LPIC171+4)
	.word	mf_samples_to_encode-(.LPIC172+4)
	.word	stderr(GOT)
	.word	bs-(.LPIC173+4)
	.word	bs-(.LPIC174+4)
	.word	bs-(.LPIC175+4)
	.size	lame_encode_finish, .-lame_encode_finish
	.align	1
	.global	lame_mp3_tags
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_mp3_tags, %function
lame_mp3_tags:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L319
.LPIC176:
	add	r4, pc
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L316
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	movs	r2, #100
	mul	r1, r2, r3
	movw	r3, #36409
	movt	r3, 14563
	smull	r2, r3, r1, r3
	asrs	r2, r3, #1
	asrs	r3, r1, #31
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #128]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	rsb	r3, r3, #1
	mov	r2, r3
	ldr	r1, [r7, #12]
	bl	PutVbrTag(PLT)
.L316:
	ldr	r3, .L319+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L318
	ldr	r3, .L319+4
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	id3_buildtag(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #128]
	ldr	r3, .L319+4
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	id3_writetag(PLT)
.L318:
	nop
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L320:
	.align	2
.L319:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC176+4)
	.word	id3tag(GOT)
	.size	lame_mp3_tags, .-lame_mp3_tags
	.align	1
	.global	lame_version
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	lame_version, %function
lame_version:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	bl	get_lame_version(PLT)
	mov	r3, r0
	movs	r2, #20
	mov	r1, r3
	ldr	r0, [r7]
	bl	strncpy(PLT)
	nop
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	lame_version, .-lame_version
	.section	.rodata
	.align	2
.LC18:
	.ascii	"stereo\000"
	.align	2
.LC19:
	.ascii	"j-stereo\000"
	.align	2
.LC20:
	.ascii	"dual-ch\000"
	.align	2
.LC21:
	.ascii	"single-ch\000"
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	mode_names.8838, %object
	.size	mode_names.8838, 16
mode_names.8838:
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.local	sentBits.8854
	.comm	sentBits.8854,4,4
	.local	bitsPerSlot.8851
	.comm	bitsPerSlot.8851,4,4
	.local	frac_SpF.8852
	.comm	frac_SpF.8852,8,8
	.local	slot_lag.8853
	.comm	slot_lag.8853,8,8
	.section	.rodata
	.align	2
	.type	__PRETTY_FUNCTION__.8879, %object
	.size	__PRETTY_FUNCTION__.8879, 18
__PRETTY_FUNCTION__.8879:
	.ascii	"lame_encode_frame\000"
	.local	ms_ratio.8872
	.comm	ms_ratio.8872,16,8
	.local	ms_ener_ratio.8875
	.comm	ms_ener_ratio.8875,16,8
	.local	frameBits.8850
	.comm	frameBits.8850,4,4
	.local	init.8923
	.comm	init.8923,8,4
	.local	itime.8921
	.comm	itime.8921,16,8
	.local	inbuf_old.8922
	.comm	inbuf_old.8922,20,4
	.align	2
	.type	__PRETTY_FUNCTION__.8967, %object
	.size	__PRETTY_FUNCTION__.8967, 19
__PRETTY_FUNCTION__.8967:
	.ascii	"lame_encode_buffer\000"
	.local	frame_buffered.8960
	.comm	frame_buffered.8960,4,4
	.align	2
	.type	__PRETTY_FUNCTION__.8998, %object
	.size	__PRETTY_FUNCTION__.8998, 31
__PRETTY_FUNCTION__.8998:
	.ascii	"lame_encode_buffer_interleaved\000"
	.local	frame_buffered.8992
	.comm	frame_buffered.8992,4,4
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
