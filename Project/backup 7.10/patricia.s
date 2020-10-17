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
	.file	"patricia.c"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	bit, %function
bit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	rsb	r3, r3, #31
	movs	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7]
	ands	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	bit, .-bit
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	pat_count, %function
pat_count:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r3, r2
	blt	.L4
	movs	r3, #0
	b	.L5
.L4:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	pat_count(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	pat_count(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
.L5:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pat_count, .-pat_count
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	insertR, %function
insertR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r3, r2
	ble	.L7
	ldr	r3, [r7, #12]
	ldrb	r2, [r3, #9]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r2, r3
	bhi	.L8
.L7:
	ldr	r3, [r7, #4]
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	strb	r2, [r3, #9]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r7, #12]
	b	.L10
.L9:
	ldr	r3, [r7, #8]
.L10:
	ldr	r2, [r7, #8]
	str	r3, [r2, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #8]
	b	.L12
.L11:
	ldr	r3, [r7, #12]
.L12:
	ldr	r2, [r7, #8]
	str	r3, [r2, #16]
	ldr	r3, [r7, #8]
	b	.L13
.L8:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	bl	insertR(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	b	.L15
.L14:
	ldr	r3, [r7, #12]
	ldr	r0, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r1, [r7, #8]
	bl	insertR(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
.L15:
	ldr	r3, [r7, #12]
.L13:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	insertR, .-insertR
	.align	1
	.global	pat_insert
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	pat_insert, %function
pat_insert:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L18
.L17:
	movs	r3, #0
	b	.L19
.L18:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	str	r3, [r7, #12]
.L22:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	b	.L21
.L20:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
.L21:
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	blt	.L22
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L23
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L24
.L26:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L25
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	b	.L19
.L25:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L24:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	blt	.L26
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	adds	r3, r3, #1
	lsls	r3, r3, #3
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	str	r3, [r7, #16]
	b	.L27
.L30:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L28
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #8
	ldr	r1, [r7, #16]
	mov	r0, r3
	bl	bcopy(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L29
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #8
	ldr	r1, [r7, #16]
	mov	r0, r3
	bl	bcopy(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, #-1
	str	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #24]
.L29:
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	str	r3, [r7, #16]
.L27:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	blt	.L30
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L31
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	movs	r2, #8
	ldr	r1, [r7, #16]
	mov	r0, r3
	bl	bcopy(PLT)
.L31:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	b	.L19
.L23:
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L32
.L34:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L32:
	ldr	r3, [r7, #20]
	cmp	r3, #31
	bgt	.L33
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [r7, #20]
	bl	bit(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [r7, #20]
	bl	bit(PLT)
	mov	r3, r0
	cmp	r4, r3
	beq	.L34
.L33:
	ldr	r3, [r7]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7]
	ldr	r0, [r3, #16]
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #4]
	bl	insertR(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #16]
	b	.L36
.L35:
	ldr	r3, [r7]
	ldr	r0, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #4]
	bl	insertR(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #12]
.L36:
	ldr	r3, [r7, #4]
.L19:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	pat_insert, .-pat_insert
	.align	1
	.global	pat_remove
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	pat_remove, %function
pat_remove:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L38
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L39
.L38:
	movs	r3, #0
	b	.L40
.L39:
	ldr	r3, [r7]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
.L43:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	b	.L42
.L41:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
.L42:
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r3, r2
	blt	.L43
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L44
	movs	r3, #0
	b	.L40
.L44:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L45
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L46
	movs	r3, #0
	b	.L40
.L46:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L47
	movs	r3, #0
	b	.L40
.L47:
	ldr	r3, [r7, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #36]
.L50:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	b	.L49
.L48:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
.L49:
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r3, r2
	blt	.L50
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #16]
	str	r2, [r3, #16]
	b	.L52
.L51:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #16]
	str	r2, [r3, #12]
.L52:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L54
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	b	.L55
.L54:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
.L55:
	ldr	r2, [r7, #28]
	str	r3, [r2, #16]
	b	.L56
.L53:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	b	.L58
.L57:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
.L58:
	ldr	r2, [r7, #28]
	str	r3, [r2, #12]
.L56:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free(PLT)
.L59:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free(PLT)
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L60
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	strb	r2, [r3, #8]
.L60:
	ldr	r0, [r7, #8]
	bl	free(PLT)
	movs	r3, #1
	b	.L40
.L45:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L61
.L64:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L69
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L61:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r3, r2
	blt	.L64
	b	.L63
.L69:
	nop
.L63:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r3, r2
	blt	.L65
	movs	r3, #0
	b	.L40
.L65:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	subs	r3, r3, #1
	lsls	r3, r3, #3
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	str	r3, [r7, #20]
	b	.L66
.L68:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L67
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	adds	r0, r2, r3
	ldr	r3, [r7, #20]
	add	r2, r3, #8
	str	r2, [r7, #20]
	movs	r2, #8
	mov	r1, r3
	bl	bcopy(PLT)
.L67:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L66:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r3, r2
	blt	.L68
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	subs	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #16]
	strb	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free(PLT)
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #32]
	str	r2, [r3, #4]
	movs	r3, #1
.L40:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pat_remove, .-pat_remove
	.align	1
	.global	pat_search
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	pat_search, %function
pat_search:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L71
	movs	r3, #0
	b	.L72
.L71:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ands	r3, r3, r1
	cmp	r2, r3
	bne	.L73
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
.L73:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	mov	r0, r3
	bl	bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L74
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	b	.L75
.L74:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
.L75:
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r3, r2
	blt	.L71
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ands	r3, r3, r1
	cmp	r2, r3
	bne	.L76
	ldr	r3, [r7, #16]
	b	.L72
.L76:
	ldr	r3, [r7, #12]
.L72:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pat_search, .-pat_search
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
