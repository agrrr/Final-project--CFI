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
	.file	"sha.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	sha_transform, %function
sha_transform:
	@ args = 0, pretend = 0, frame = 360
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #364
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	ldr	r2, .L15
.LPIC0:
	add	r2, pc
	ldr	r3, .L15+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #356]
	add	r3, r7, #8
	movs	r1, #0
	str	r1, [r3]
	b	.L2
.L3:
	adds	r3, r7, #4
	ldr	r1, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	adds	r3, r3, #6
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r0, [r3, #4]
	add	r3, r7, #36
	add	r1, r7, #8
	ldr	r1, [r1]
	str	r0, [r3, r1, lsl #2]
	add	r3, r7, #8
	add	r1, r7, #8
	ldr	r1, [r1]
	adds	r1, r1, #1
	str	r1, [r3]
.L2:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #15
	ble	.L3
	add	r3, r7, #8
	movs	r1, #16
	str	r1, [r3]
	b	.L4
.L5:
	add	r3, r7, #8
	ldr	r3, [r3]
	subs	r1, r3, #3
	add	r3, r7, #36
	ldr	r1, [r3, r1, lsl #2]
	add	r3, r7, #8
	ldr	r3, [r3]
	sub	r0, r3, #8
	add	r3, r7, #36
	ldr	r3, [r3, r0, lsl #2]
	eors	r1, r1, r3
	add	r3, r7, #8
	ldr	r3, [r3]
	sub	r0, r3, #14
	add	r3, r7, #36
	ldr	r3, [r3, r0, lsl #2]
	eors	r1, r1, r3
	add	r3, r7, #8
	ldr	r3, [r3]
	sub	r0, r3, #16
	add	r3, r7, #36
	ldr	r3, [r3, r0, lsl #2]
	eor	r0, r1, r3
	add	r3, r7, #36
	add	r1, r7, #8
	ldr	r1, [r1]
	str	r0, [r3, r1, lsl #2]
	add	r3, r7, #8
	add	r1, r7, #8
	ldr	r1, [r1]
	adds	r1, r1, #1
	str	r1, [r3]
.L4:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #79
	ble	.L5
	add	r3, r7, #12
	adds	r1, r7, #4
	ldr	r1, [r1]
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #16
	adds	r1, r7, #4
	ldr	r1, [r1]
	ldr	r1, [r1, #4]
	str	r1, [r3]
	add	r3, r7, #20
	adds	r1, r7, #4
	ldr	r1, [r1]
	ldr	r1, [r1, #8]
	str	r1, [r3]
	add	r3, r7, #24
	adds	r1, r7, #4
	ldr	r1, [r1]
	ldr	r1, [r1, #12]
	str	r1, [r3]
	add	r3, r7, #28
	adds	r1, r7, #4
	ldr	r1, [r1]
	ldr	r1, [r1, #16]
	str	r1, [r3]
	add	r3, r7, #8
	movs	r1, #0
	str	r1, [r3]
	b	.L6
.L7:
	add	r3, r7, #12
	ldr	r3, [r3]
	ror	r1, r3, #27
	add	r0, r7, #16
	add	r3, r7, #20
	ldr	r0, [r0]
	ldr	r3, [r3]
	ands	r0, r0, r3
	add	r3, r7, #16
	ldr	r3, [r3]
	mvns	r4, r3
	add	r3, r7, #24
	ldr	r3, [r3]
	ands	r3, r3, r4
	orrs	r3, r3, r0
	add	r1, r1, r3
	add	r3, r7, #28
	ldr	r3, [r3]
	add	r1, r1, r3
	add	r3, r7, #36
	add	r0, r7, #8
	ldr	r0, [r0]
	ldr	r3, [r3, r0, lsl #2]
	adds	r0, r1, r3
	add	r1, r7, #32
	movw	r3, #31129
	movt	r3, 23170
	add	r3, r3, r0
	str	r3, [r1]
	add	r3, r7, #28
	add	r1, r7, #24
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #24
	add	r1, r7, #20
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #20
	add	r1, r7, #16
	ldr	r1, [r1]
	ror	r1, r1, #2
	str	r1, [r3]
	add	r3, r7, #16
	add	r1, r7, #12
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #12
	add	r1, r7, #32
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #8
	add	r1, r7, #8
	ldr	r1, [r1]
	adds	r1, r1, #1
	str	r1, [r3]
.L6:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #19
	ble	.L7
	add	r3, r7, #8
	movs	r1, #20
	str	r1, [r3]
	b	.L8
.L9:
	add	r3, r7, #12
	ldr	r3, [r3]
	ror	r1, r3, #27
	add	r0, r7, #16
	add	r3, r7, #20
	ldr	r0, [r0]
	ldr	r3, [r3]
	eors	r0, r0, r3
	add	r3, r7, #24
	ldr	r3, [r3]
	eors	r3, r3, r0
	add	r1, r1, r3
	add	r3, r7, #28
	ldr	r3, [r3]
	add	r1, r1, r3
	add	r3, r7, #36
	add	r0, r7, #8
	ldr	r0, [r0]
	ldr	r3, [r3, r0, lsl #2]
	adds	r0, r1, r3
	add	r1, r7, #32
	movw	r3, #60321
	movt	r3, 28377
	add	r3, r3, r0
	str	r3, [r1]
	add	r3, r7, #28
	add	r1, r7, #24
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #24
	add	r1, r7, #20
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #20
	add	r1, r7, #16
	ldr	r1, [r1]
	ror	r1, r1, #2
	str	r1, [r3]
	add	r3, r7, #16
	add	r1, r7, #12
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #12
	add	r1, r7, #32
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #8
	add	r1, r7, #8
	ldr	r1, [r1]
	adds	r1, r1, #1
	str	r1, [r3]
.L8:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #39
	ble	.L9
	add	r3, r7, #8
	movs	r1, #40
	str	r1, [r3]
	b	.L10
.L11:
	add	r3, r7, #12
	ldr	r3, [r3]
	ror	r1, r3, #27
	add	r0, r7, #20
	add	r3, r7, #24
	ldr	r0, [r0]
	ldr	r3, [r3]
	orrs	r0, r0, r3
	add	r3, r7, #16
	ldr	r3, [r3]
	ands	r0, r0, r3
	add	r4, r7, #20
	add	r3, r7, #24
	ldr	r4, [r4]
	ldr	r3, [r3]
	ands	r3, r3, r4
	orrs	r3, r3, r0
	add	r1, r1, r3
	add	r3, r7, #28
	ldr	r3, [r3]
	add	r1, r1, r3
	add	r3, r7, #36
	add	r0, r7, #8
	ldr	r0, [r0]
	ldr	r3, [r3, r0, lsl #2]
	adds	r0, r1, r3
	add	r1, r7, #32
	movw	r3, #48348
	movt	r3, 36635
	add	r3, r3, r0
	str	r3, [r1]
	add	r3, r7, #28
	add	r1, r7, #24
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #24
	add	r1, r7, #20
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #20
	add	r1, r7, #16
	ldr	r1, [r1]
	ror	r1, r1, #2
	str	r1, [r3]
	add	r3, r7, #16
	add	r1, r7, #12
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #12
	add	r1, r7, #32
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #8
	add	r1, r7, #8
	ldr	r1, [r1]
	adds	r1, r1, #1
	str	r1, [r3]
.L10:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #59
	ble	.L11
	add	r3, r7, #8
	movs	r1, #60
	str	r1, [r3]
	b	.L12
.L13:
	add	r3, r7, #12
	ldr	r3, [r3]
	ror	r1, r3, #27
	add	r0, r7, #16
	add	r3, r7, #20
	ldr	r0, [r0]
	ldr	r3, [r3]
	eors	r0, r0, r3
	add	r3, r7, #24
	ldr	r3, [r3]
	eors	r3, r3, r0
	add	r1, r1, r3
	add	r3, r7, #28
	ldr	r3, [r3]
	add	r1, r1, r3
	add	r3, r7, #36
	add	r0, r7, #8
	ldr	r0, [r0]
	ldr	r3, [r3, r0, lsl #2]
	adds	r0, r1, r3
	add	r1, r7, #32
	movw	r3, #49622
	movt	r3, 51810
	add	r3, r3, r0
	str	r3, [r1]
	add	r3, r7, #28
	add	r1, r7, #24
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #24
	add	r1, r7, #20
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #20
	add	r1, r7, #16
	ldr	r1, [r1]
	ror	r1, r1, #2
	str	r1, [r3]
	add	r3, r7, #16
	add	r1, r7, #12
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #12
	add	r1, r7, #32
	ldr	r1, [r1]
	str	r1, [r3]
	add	r3, r7, #8
	add	r1, r7, #8
	ldr	r1, [r1]
	adds	r1, r1, #1
	str	r1, [r3]
.L12:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #79
	ble	.L13
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r1, r1, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r1, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	add	r3, r7, #16
	ldr	r3, [r3]
	add	r1, r1, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r1, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #8]
	add	r3, r7, #20
	ldr	r3, [r3]
	add	r1, r1, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r1, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	add	r3, r7, #24
	ldr	r3, [r3]
	add	r1, r1, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r1, [r3, #12]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #16]
	add	r3, r7, #28
	ldr	r3, [r3]
	add	r1, r1, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r1, [r3, #16]
	nop
	ldr	r3, .L15+4
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #356]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L14
	bl	__stack_chk_fail(PLT)
.L14:
	add	r7, r7, #364
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L16:
	.align	2
.L15:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	__stack_chk_guard(GOT)
	.size	sha_transform, .-sha_transform
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	byte_reverse, %function
byte_reverse:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L21
.LPIC1:
	add	r3, pc
	ldr	r2, .L21+4
	ldr	r2, [r3, r2]
	ldr	r2, [r2]
	str	r2, [r7, #20]
	ldr	r2, [r7]
	lsrs	r2, r2, #2
	str	r2, [r7]
	ldr	r2, [r7, #4]
	str	r2, [r7, #12]
	movs	r2, #0
	str	r2, [r7, #8]
	b	.L18
.L19:
	ldr	r2, [r7, #12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r7, #16]
	ldr	r2, [r7, #12]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r7, #17]
	ldr	r2, [r7, #12]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	strb	r2, [r7, #18]
	ldr	r2, [r7, #12]
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	strb	r2, [r7, #19]
	ldrb	r1, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	strb	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #1
	ldrb	r1, [r7, #18]	@ zero_extendqisi2
	strb	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #2
	ldrb	r1, [r7, #17]	@ zero_extendqisi2
	strb	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #3
	ldrb	r1, [r7, #16]	@ zero_extendqisi2
	strb	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #4
	str	r2, [r7, #12]
	ldr	r2, [r7, #8]
	adds	r2, r2, #1
	str	r2, [r7, #8]
.L18:
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	cmp	r1, r2
	blt	.L19
	nop
	ldr	r2, .L21+4
	ldr	r3, [r3, r2]
	ldr	r2, [r7, #20]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L20
	bl	__stack_chk_fail(PLT)
.L20:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	__stack_chk_guard(GOT)
	.size	byte_reverse, .-byte_reverse
	.align	1
	.global	sha_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	sha_init, %function
sha_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	movw	r3, #8961
	movt	r3, 26437
	str	r3, [r2]
	ldr	r2, [r7, #4]
	movw	r3, #43913
	movt	r3, 61389
	str	r3, [r2, #4]
	ldr	r2, [r7, #4]
	movw	r3, #56574
	movt	r3, 39098
	str	r3, [r2, #8]
	ldr	r2, [r7, #4]
	movw	r3, #21622
	movt	r3, 4146
	str	r3, [r2, #12]
	ldr	r2, [r7, #4]
	movw	r3, #57840
	movt	r3, 50130
	str	r3, [r2, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	sha_init, .-sha_init
	.align	1
	.global	sha_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	sha_update, %function
sha_update:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bcs	.L25
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
.L25:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #29
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	b	.L26
.L27:
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	movs	r2, #64
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	movs	r1, #64
	mov	r0, r3
	bl	byte_reverse(PLT)
	ldr	r0, [r7, #12]
	bl	sha_transform(PLT)
	ldr	r3, [r7, #8]
	adds	r3, r3, #64
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	subs	r3, r3, #64
	str	r3, [r7, #4]
.L26:
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bgt	.L27
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r0, r3
	bl	memcpy(PLT)
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sha_update, .-sha_update
	.align	1
	.global	sha_final
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	sha_final, %function
sha_final:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #3
	and	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #28
	ldr	r3, [r7, #20]
	adds	r1, r3, #1
	str	r1, [r7, #20]
	add	r3, r3, r2
	movs	r2, #128
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r3, #56
	ble	.L29
	ldr	r3, [r7, #4]
	add	r2, r3, #28
	ldr	r3, [r7, #20]
	adds	r0, r2, r3
	ldr	r3, [r7, #20]
	rsb	r3, r3, #64
	mov	r2, r3
	movs	r1, #0
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	movs	r1, #64
	mov	r0, r3
	bl	byte_reverse(PLT)
	ldr	r0, [r7, #4]
	bl	sha_transform(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	movs	r2, #56
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	b	.L30
.L29:
	ldr	r3, [r7, #4]
	add	r2, r3, #28
	ldr	r3, [r7, #20]
	adds	r0, r2, r3
	ldr	r3, [r7, #20]
	rsb	r3, r3, #56
	mov	r2, r3
	movs	r1, #0
	bl	memset(PLT)
.L30:
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	movs	r1, #64
	mov	r0, r3
	bl	byte_reverse(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #88]
	ldr	r0, [r7, #4]
	bl	sha_transform(PLT)
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sha_final, .-sha_final
	.align	1
	.global	sha_stream
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	sha_stream, %function
sha_stream:
	@ args = 0, pretend = 0, frame = 8208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #8192
	sub	sp, sp, #20
	add	r7, sp, #0
	add	r3, r7, #16
	subs	r3, r3, #12
	str	r0, [r3]
	add	r3, r7, #16
	subs	r3, r3, #16
	str	r1, [r3]
	ldr	r4, .L35
.LPIC2:
	add	r4, pc
	ldr	r3, .L35+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r2, r7, #8192
	add	r2, r2, #12
	str	r3, [r2]
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	sha_init(PLT)
	b	.L32
.L33:
	add	r2, r7, #16
	subs	r2, r2, #8
	add	r1, r7, #16
	subs	r1, r1, #4
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r2, [r2]
	ldr	r0, [r3]
	bl	sha_update(PLT)
.L32:
	add	r3, r7, #16
	subs	r3, r3, #16
	add	r0, r7, #16
	subs	r0, r0, #4
	ldr	r3, [r3]
	mov	r2, #8192
	movs	r1, #1
	bl	fread(PLT)
	mov	r2, r0
	add	r3, r7, #16
	subs	r3, r3, #8
	str	r2, [r3]
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L33
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	sha_final(PLT)
	nop
	ldr	r3, .L35+4
	ldr	r3, [r4, r3]
	add	r2, r7, #8192
	add	r2, r2, #12
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L34
	bl	__stack_chk_fail(PLT)
.L34:
	add	r7, r7, #8192
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L36:
	.align	2
.L35:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	__stack_chk_guard(GOT)
	.size	sha_stream, .-sha_stream
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%08lx %08lx %08lx %08lx %08lx\012\000"
	.text
	.align	1
	.global	sha_print
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	sha_print, %function
sha_print:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #16]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r4
	mov	r2, r0
	ldr	r0, .L38
.LPIC3:
	add	r0, pc
	bl	printf(PLT)
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L39:
	.align	2
.L38:
	.word	.LC0-(.LPIC3+4)
	.size	sha_print, .-sha_print
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
