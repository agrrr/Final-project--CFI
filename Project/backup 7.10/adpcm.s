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
	.file	"adpcm.c"
	.text
	.data
	.align	2
	.type	indexTable, %object
	.size	indexTable, 64
indexTable:
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.word	-1
	.word	-1
	.word	-1
	.word	-1
	.word	2
	.word	4
	.word	6
	.word	8
	.align	2
	.type	stepsizeTable, %object
	.size	stepsizeTable, 356
stepsizeTable:
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	16
	.word	17
	.word	19
	.word	21
	.word	23
	.word	25
	.word	28
	.word	31
	.word	34
	.word	37
	.word	41
	.word	45
	.word	50
	.word	55
	.word	60
	.word	66
	.word	73
	.word	80
	.word	88
	.word	97
	.word	107
	.word	118
	.word	130
	.word	143
	.word	157
	.word	173
	.word	190
	.word	209
	.word	230
	.word	253
	.word	279
	.word	307
	.word	337
	.word	371
	.word	408
	.word	449
	.word	494
	.word	544
	.word	598
	.word	658
	.word	724
	.word	796
	.word	876
	.word	963
	.word	1060
	.word	1166
	.word	1282
	.word	1411
	.word	1552
	.word	1707
	.word	1878
	.word	2066
	.word	2272
	.word	2499
	.word	2749
	.word	3024
	.word	3327
	.word	3660
	.word	4026
	.word	4428
	.word	4871
	.word	5358
	.word	5894
	.word	6484
	.word	7132
	.word	7845
	.word	8630
	.word	9493
	.word	10442
	.word	11487
	.word	12635
	.word	13899
	.word	15289
	.word	16818
	.word	18500
	.word	20350
	.word	22385
	.word	24623
	.word	27086
	.word	29794
	.word	32767
	.text
	.align	1
	.global	adpcm_coder
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	adpcm_coder, %function
adpcm_coder:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldrsh	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	str	r3, [r7, #44]
	ldr	r3, .L17
.LPIC0:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #44]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #52]
	b	.L2
.L15:
	ldr	r3, [r7, #16]
	adds	r2, r3, #2
	str	r2, [r7, #16]
	ldrsh	r3, [r3]
	str	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	asrs	r3, r3, #28
	and	r3, r3, #8
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #28]
.L3:
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	asrs	r3, r3, #3
	str	r3, [r7, #40]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L4
	movs	r3, #4
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #40]
.L4:
	ldr	r3, [r7, #32]
	asrs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L5
	ldr	r3, [r7, #24]
	orr	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #40]
.L5:
	ldr	r3, [r7, #32]
	asrs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L6
	ldr	r3, [r7, #24]
	orr	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #40]
.L6:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L7
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	b	.L8
.L7:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L8:
	ldr	r3, [r7, #36]
	cmp	r3, #32768
	blt	.L9
	movw	r3, #32767
	str	r3, [r7, #36]
	b	.L10
.L9:
	ldr	r3, [r7, #36]
	cmn	r3, #32768
	bge	.L10
	mov	r3, #32768
	movt	r3, 65535
	str	r3, [r7, #36]
.L10:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #60]
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, .L17+4
.LPIC1:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #24]
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L11
	movs	r3, #0
	str	r3, [r7, #44]
.L11:
	ldr	r3, [r7, #44]
	cmp	r3, #88
	ble	.L12
	movs	r3, #88
	str	r3, [r7, #44]
.L12:
	ldr	r3, .L17+8
.LPIC2:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #44]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #32]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #24]
	lsls	r3, r3, #4
	uxtb	r3, r3
	str	r3, [r7, #48]
	b	.L14
.L13:
	ldr	r3, [r7, #24]
	sxtb	r3, r3
	and	r3, r3, #15
	sxtb	r1, r3
	ldr	r3, [r7, #48]
	sxtb	r2, r3
	ldr	r3, [r7, #20]
	adds	r0, r3, #1
	str	r0, [r7, #20]
	orrs	r2, r2, r1
	sxtb	r2, r2
	strb	r2, [r3]
.L14:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L15
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L16
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldr	r2, [r7, #48]
	sxtb	r2, r2
	strb	r2, [r3]
.L16:
	ldr	r3, [r7, #36]
	sxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #44]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #2]
	nop
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L18:
	.align	2
.L17:
	.word	stepsizeTable-(.LPIC0+4)
	.word	indexTable-(.LPIC1+4)
	.word	stepsizeTable-(.LPIC2+4)
	.size	adpcm_coder, .-adpcm_coder
	.align	1
	.global	adpcm_decoder
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	adpcm_decoder, %function
adpcm_decoder:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldrsh	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	str	r3, [r7, #40]
	ldr	r3, .L33
.LPIC3:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L20
.L32:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #44]
	and	r3, r3, #15
	str	r3, [r7, #24]
	b	.L22
.L21:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrsb	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	asrs	r3, r3, #4
	and	r3, r3, #15
	str	r3, [r7, #24]
.L22:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #48]
	ldr	r3, .L33+4
.LPIC4:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #24]
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bge	.L23
	movs	r3, #0
	str	r3, [r7, #40]
.L23:
	ldr	r3, [r7, #40]
	cmp	r3, #88
	ble	.L24
	movs	r3, #88
	str	r3, [r7, #40]
.L24:
	ldr	r3, [r7, #24]
	and	r3, r3, #8
	str	r3, [r7, #52]
	ldr	r3, [r7, #24]
	and	r3, r3, #7
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	asrs	r3, r3, #3
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L25
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L25:
	ldr	r3, [r7, #24]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #28]
	asrs	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L26:
	ldr	r3, [r7, #24]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #28]
	asrs	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
.L27:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L28
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	b	.L29
.L28:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #32]
.L29:
	ldr	r3, [r7, #32]
	cmp	r3, #32768
	blt	.L30
	movw	r3, #32767
	str	r3, [r7, #32]
	b	.L31
.L30:
	ldr	r3, [r7, #32]
	cmn	r3, #32768
	bge	.L31
	mov	r3, #32768
	movt	r3, 65535
	str	r3, [r7, #32]
.L31:
	ldr	r3, .L33+8
.LPIC5:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	adds	r2, r3, #2
	str	r2, [r7, #20]
	ldr	r2, [r7, #32]
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L20:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L32
	ldr	r3, [r7, #32]
	sxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #40]
	uxtb	r2, r3
	ldr	r3, [r7]
	strb	r2, [r3, #2]
	nop
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L34:
	.align	2
.L33:
	.word	stepsizeTable-(.LPIC3+4)
	.word	indexTable-(.LPIC4+4)
	.word	stepsizeTable-(.LPIC5+4)
	.size	adpcm_decoder, .-adpcm_decoder
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
