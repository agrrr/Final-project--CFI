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
	.file	"bf.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Usage: blowfish {e|d} <intput> <output> key\000"
	.align	2
.LC1:
	.ascii	"key must be in hexadecimal notation\000"
	.align	2
.LC2:
	.ascii	"Bad key value.\000"
	.align	2
.LC3:
	.ascii	"r\000"
	.align	2
.LC4:
	.ascii	"w\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 4312
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #4320
	sub	sp, sp, #12
	add	r7, sp, #16
	add	r3, r7, #24
	subs	r3, r3, #20
	str	r0, [r3]
	add	r3, r7, #24
	subs	r3, r3, #24
	str	r1, [r3]
	ldr	r2, .L25
.LPIC0:
	add	r2, pc
	ldr	r3, .L25+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	add	r2, r7, #4288
	add	r2, r2, #20
	str	r3, [r2]
	add	r3, r7, #24
	subs	r3, r3, #8
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #24
	subs	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #24
	mov	r2, #-1
	str	r2, [r3]
	add	r3, r7, #24
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #2
	bgt	.L2
	ldr	r3, .L25+8
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L2:
	add	r3, r7, #24
	subs	r3, r3, #24
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	beq	.L3
	add	r3, r7, #24
	subs	r3, r3, #24
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #69
	bne	.L4
.L3:
	add	r3, r7, #24
	movs	r2, #1
	str	r2, [r3]
	b	.L5
.L4:
	add	r3, r7, #24
	subs	r3, r3, #24
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L6
	add	r3, r7, #24
	subs	r3, r3, #24
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #68
	bne	.L7
.L6:
	add	r3, r7, #24
	movs	r2, #0
	str	r2, [r3]
	b	.L5
.L7:
	ldr	r3, .L25+12
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L5:
	add	r3, r7, #56
	subs	r3, r3, #28
	add	r2, r7, #24
	subs	r2, r2, #24
	ldr	r2, [r2]
	ldr	r2, [r2, #16]
	str	r2, [r3]
	b	.L8
.L13:
	add	r3, r7, #56
	subs	r3, r3, #28
	ldr	r2, [r3]
	add	r3, r7, #56
	subs	r3, r3, #28
	adds	r1, r2, #1
	str	r1, [r3]
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper(PLT)
	mov	r2, r0
	add	r3, r7, #24
	subs	r3, r3, #13
	strb	r2, [r3]
	add	r3, r7, #24
	subs	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L9
	add	r3, r7, #24
	subs	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L9
	add	r3, r7, #24
	subs	r3, r3, #8
	ldr	r3, [r3]
	lsls	r2, r3, #4
	add	r3, r7, #24
	subs	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r2, r2, r3
	add	r3, r7, #24
	subs	r3, r3, #8
	subs	r2, r2, #48
	str	r2, [r3]
	b	.L10
.L9:
	add	r3, r7, #24
	subs	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L11
	add	r3, r7, #24
	subs	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #70
	bhi	.L11
	add	r3, r7, #24
	subs	r3, r3, #8
	ldr	r3, [r3]
	lsls	r2, r3, #4
	add	r3, r7, #24
	subs	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r2, r2, r3
	add	r3, r7, #24
	subs	r3, r3, #8
	subs	r2, r2, #55
	str	r2, [r3]
	b	.L10
.L11:
	ldr	r3, .L25+16
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L10:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r2, [r3]
	add	r3, r7, #24
	subs	r3, r3, #4
	adds	r1, r2, #1
	str	r1, [r3]
	and	r3, r2, #1
	cmp	r3, #0
	beq	.L8
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	subs	r2, r3, #1
	add	r3, r7, #24
	subs	r3, r3, #8
	ldr	r3, [r3]
	uxtb	r1, r3
	add	r3, r7, #4288
	add	r3, r3, #24
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #-100]
.L8:
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #63
	bgt	.L12
	add	r3, r7, #56
	subs	r3, r3, #28
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L13
.L12:
	add	r2, r7, #4192
	add	r2, r2, #20
	add	r3, r7, #56
	subs	r3, r3, #12
	movs	r1, #8
	mov	r0, r3
	bl	BF_set_key(PLT)
	add	r3, r7, #56
	subs	r3, r3, #28
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L14
	ldr	r3, .L25+20
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L14:
	add	r3, r7, #24
	subs	r3, r3, #24
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	add	r4, r7, #56
	subs	r4, r4, #20
	ldr	r2, .L25+24
.LPIC5:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	fopen(PLT)
	str	r0, [r4]
	add	r3, r7, #56
	subs	r3, r3, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L15
	ldr	r3, .L25+28
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L15:
	add	r3, r7, #24
	subs	r3, r3, #24
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	add	r4, r7, #56
	subs	r4, r4, #16
	ldr	r2, .L25+32
.LPIC7:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	fopen(PLT)
	str	r0, [r4]
	add	r3, r7, #56
	subs	r3, r3, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L16
	ldr	r3, .L25+36
.LPIC8:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r0, #-1
	bl	exit(PLT)
.L16:
	add	r3, r7, #24
	subs	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	b	.L17
.L20:
	add	r3, r7, #56
	subs	r3, r3, #20
	ldr	r0, [r3]
	bl	_IO_getc(PLT)
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r2, [r3]
	add	r3, r7, #24
	subs	r3, r3, #4
	adds	r1, r2, #1
	str	r1, [r3]
	uxtb	r1, r0
	add	r3, r7, #4288
	add	r3, r3, #24
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3, #-84]
.L18:
	add	r3, r7, #56
	subs	r3, r3, #20
	ldr	r0, [r3]
	bl	feof(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L19
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #39
	ble	.L20
.L19:
	add	r1, r7, #56
	subs	r1, r1, #12
	add	r2, r7, #24
	subs	r2, r2, #4
	add	r4, r7, #4256
	add	r4, r4, #12
	add	r0, r7, #4224
	add	r0, r0, #4
	add	r3, r7, #24
	ldr	r3, [r3]
	str	r3, [sp, #8]
	add	r3, r7, #24
	subs	r3, r3, #12
	str	r3, [sp, #4]
	add	r3, r7, #4192
	add	r3, r3, #28
	str	r3, [sp]
	mov	r3, r1
	ldr	r2, [r2]
	mov	r1, r4
	bl	BF_cfb64_encrypt(PLT)
	add	r3, r7, #56
	subs	r3, r3, #24
	movs	r2, #0
	str	r2, [r3]
	b	.L21
.L22:
	add	r2, r7, #4256
	add	r2, r2, #12
	add	r3, r7, #56
	subs	r3, r3, #24
	ldr	r3, [r3]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r7, #56
	subs	r3, r3, #16
	ldr	r1, [r3]
	mov	r0, r2
	bl	fputc(PLT)
	add	r3, r7, #56
	subs	r3, r3, #24
	add	r2, r7, #56
	subs	r2, r2, #24
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L21:
	add	r2, r7, #56
	subs	r2, r2, #24
	add	r3, r7, #24
	subs	r3, r3, #4
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L22
	add	r3, r7, #24
	subs	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
.L17:
	add	r3, r7, #56
	subs	r3, r3, #20
	ldr	r0, [r3]
	bl	feof(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L18
	add	r3, r7, #56
	subs	r3, r3, #20
	ldr	r0, [r3]
	bl	close(PLT)
	add	r3, r7, #56
	subs	r3, r3, #16
	ldr	r0, [r3]
	bl	close(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L26:
	.align	2
.L25:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC0-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.word	.LC3-(.LPIC5+4)
	.word	.LC0-(.LPIC6+4)
	.word	.LC4-(.LPIC7+4)
	.word	.LC0-(.LPIC8+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
