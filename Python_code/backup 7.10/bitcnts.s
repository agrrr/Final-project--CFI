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
	.file	"bitcnts.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Usage: bitcnts <iterations>\012\000"
	.align	2
.LC1:
	.ascii	"Bit counter algorithm benchmark\012\000"
	.align	2
.LC2:
	.ascii	"%-38s> Time: %7.3f sec.; Bits: %ld\012\000"
	.align	2
.LC3:
	.ascii	"\012Best  > %s\012\000"
	.align	2
.LC4:
	.ascii	"Worst > %s\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L14+8
.LPIC0:
	add	r2, pc
	mov	r3, #-1
	movw	r4, #65535
	movt	r4, 32751
	strd	r3, [r7, #48]
	mov	r3, #0
	mov	r4, #0
	strd	r3, [r7, #56]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bgt	.L2
	ldr	r3, .L14+12
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	movs	r2, #28
	movs	r1, #1
	ldr	r0, .L14+16
.LPIC1:
	add	r0, pc
	bl	fwrite(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L2:
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi(PLT)
	str	r0, [r7, #36]
	ldr	r3, .L14+20
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L3
.L10:
	bl	clock(PLT)
	str	r0, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	bl	rand(PLT)
	str	r0, [r7, #32]
	b	.L4
.L5:
	ldr	r3, .L14+24
.LPIC3:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r2, r3, lsl #2]
	ldr	r0, [r7, #32]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	adds	r3, r3, #13
	str	r3, [r7, #32]
.L4:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	blt	.L5
	bl	clock(PLT)
	str	r0, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vldr.64	d5, .L14
	vdiv.f64	d7, d6, d5
	vstr.64	d7, [r7, #64]
	vldr.64	d6, [r7, #64]
	vldr.64	d7, [r7, #48]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	bpl	.L6
	ldrd	r3, [r7, #64]
	strd	r3, [r7, #48]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
.L6:
	vldr.64	d6, [r7, #64]
	vldr.64	d7, [r7, #56]
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L8
	ldrd	r3, [r7, #64]
	strd	r3, [r7, #56]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
.L8:
	ldr	r3, .L14+28
.LPIC4:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r2, r3, lsl #2]
	ldr	r3, [r7, #28]
	str	r3, [sp]
	ldrd	r2, [r7, #64]
	ldr	r0, .L14+32
.LPIC5:
	add	r0, pc
	bl	printf(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L3:
	ldr	r3, [r7, #12]
	cmp	r3, #6
	ble	.L10
	ldr	r3, .L14+36
.LPIC6:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r2, r3, lsl #2]
	mov	r1, r3
	ldr	r3, .L14+40
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L14+44
.LPIC8:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #20]
	ldr	r3, [r2, r3, lsl #2]
	mov	r1, r3
	ldr	r3, .L14+48
.LPIC9:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L15:
	.align	3
.L14:
	.word	0
	.word	1093567616
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	stderr(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	pBitCntFunc.7377-(.LPIC3+4)
	.word	text.7378-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.word	text.7378-(.LPIC6+4)
	.word	.LC3-(.LPIC7+4)
	.word	text.7378-(.LPIC8+4)
	.word	.LC4-(.LPIC9+4)
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	bit_shifter, %function
bit_shifter:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	b	.L17
.L19:
	ldr	r3, [r7, #4]
	and	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	asrs	r3, r3, #1
	str	r3, [r7, #4]
.L17:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #8]
	cmp	r3, #31
	bls	.L19
.L18:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bit_shifter, .-bit_shifter
	.section	.data.rel,"aw",%progbits
	.align	2
	.type	pBitCntFunc.7377, %object
	.size	pBitCntFunc.7377, 28
pBitCntFunc.7377:
	.word	bit_count
	.word	bitcount
	.word	ntbl_bitcnt
	.word	ntbl_bitcount
	.word	BW_btbl_bitcount
	.word	AR_btbl_bitcount
	.word	bit_shifter
	.section	.rodata
	.align	2
.LC5:
	.ascii	"Optimized 1 bit/loop counter\000"
	.align	2
.LC6:
	.ascii	"Ratko's mystery algorithm\000"
	.align	2
.LC7:
	.ascii	"Recursive bit count by nybbles\000"
	.align	2
.LC8:
	.ascii	"Non-recursive bit count by nybbles\000"
	.align	2
.LC9:
	.ascii	"Non-recursive bit count by bytes (BW)\000"
	.align	2
.LC10:
	.ascii	"Non-recursive bit count by bytes (AR)\000"
	.align	2
.LC11:
	.ascii	"Shift and count bits\000"
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	text.7378, %object
	.size	text.7378, 28
text.7378:
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
