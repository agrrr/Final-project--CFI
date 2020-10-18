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
	.file	"susan.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Usage: susan <in.pgm> <out.pgm> [options]\012\000"
	.align	2
.LC1:
	.ascii	"-s : Smoothing mode (default)\000"
	.align	2
.LC2:
	.ascii	"-e : Edges mode\000"
	.align	2
.LC3:
	.ascii	"-c : Corners mode\012\000"
	.align	2
.LC4:
	.ascii	"See source code for more information about setting "
	.ascii	"the thresholds\000"
	.align	2
.LC5:
	.ascii	"-t <thresh> : Brightness threshold, all modes (defa"
	.ascii	"ult=20)\000"
	.align	2
.LC6:
	.ascii	"-d <thresh> : Distance threshold, smoothing mode, ("
	.ascii	"default=4) (use next option instead for flat 3x3 ma"
	.ascii	"sk)\000"
	.align	2
.LC7:
	.ascii	"-3 : Use flat 3x3 mask, edges or smoothing mode\000"
	.align	2
.LC8:
	.ascii	"-n : No post-processing on the binary edge map (run"
	.ascii	"s much faster); edges mode\000"
	.align	2
.LC9:
	.ascii	"-q : Use faster (and usually stabler) corner mode; "
	.ascii	"edge-like corner suppression not carried out; corne"
	.ascii	"rs mode\000"
	.align	2
.LC10:
	.ascii	"-b : Mark corners/edges with single black points in"
	.ascii	"stead of black with white border; corners or edges "
	.ascii	"mode\000"
	.align	2
.LC11:
	.ascii	"-p : Output initial enhancement image only; corners"
	.ascii	" or edges mode (default is edges mode)\000"
	.align	2
.LC12:
	.ascii	"\012SUSAN Version 2l (C) 1995-1997 Stephen Smith, D"
	.ascii	"RA UK. steve@fmrib.ox.ac.uk\000"
	.text
	.align	1
	.global	usage
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	usage, %function
usage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	ldr	r3, .L2
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+4
.LPIC1:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+8
.LPIC2:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+12
.LPIC3:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+16
.LPIC4:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+20
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+24
.LPIC6:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+28
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+32
.LPIC8:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+36
.LPIC9:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+40
.LPIC10:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+44
.LPIC11:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L2+48
.LPIC12:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L3:
	.align	2
.L2:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	.LC4-(.LPIC4+4)
	.word	.LC5-(.LPIC5+4)
	.word	.LC6-(.LPIC6+4)
	.word	.LC7-(.LPIC7+4)
	.word	.LC8-(.LPIC8+4)
	.word	.LC9-(.LPIC9+4)
	.word	.LC10-(.LPIC10+4)
	.word	.LC11-(.LPIC11+4)
	.word	.LC12-(.LPIC12+4)
	.size	usage, .-usage
	.section	.rodata
	.align	2
.LC13:
	.ascii	"is\000"
	.align	2
.LC14:
	.ascii	"Image %s not binary PGM.\012\000"
	.text
	.align	1
	.global	getint
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	getint, %function
getint:
	@ args = 0, pretend = 0, frame = 10024
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #9984
	sub	sp, sp, #40
	add	r7, sp, #0
	add	r3, r7, #40
	subs	r3, r3, #36
	str	r0, [r3]
	ldr	r4, .L18
.LPIC13:
	add	r4, pc
	ldr	r3, .L18+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r2, r7, #9984
	add	r2, r2, #36
	str	r3, [r2]
	add	r5, r7, #40
	subs	r5, r5, #28
	add	r3, r7, #40
	subs	r3, r3, #36
	ldr	r0, [r3]
	bl	_IO_getc(PLT)
	str	r0, [r5]
.L9:
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #35
	bne	.L5
	add	r3, r7, #40
	subs	r3, r3, #36
	add	r0, r7, #40
	subs	r0, r0, #20
	ldr	r2, [r3]
	movw	r1, #9000
	bl	fgets(PLT)
.L5:
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L6
	ldr	r3, .L18+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L18+12
.LPIC14:
	add	r2, pc
	ldr	r1, .L18+16
.LPIC15:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L6:
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #47
	ble	.L7
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #57
	ble	.L17
.L7:
	add	r5, r7, #40
	subs	r5, r5, #28
	add	r3, r7, #40
	subs	r3, r3, #36
	ldr	r0, [r3]
	bl	_IO_getc(PLT)
	str	r0, [r5]
	b	.L9
.L17:
	nop
	add	r3, r7, #40
	subs	r3, r3, #24
	movs	r2, #0
	str	r2, [r3]
.L13:
	add	r3, r7, #40
	subs	r3, r3, #24
	ldr	r3, [r3]
	movs	r2, #10
	mul	r1, r2, r3
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	sub	r2, r3, #48
	add	r3, r7, #40
	subs	r3, r3, #24
	add	r2, r2, r1
	str	r2, [r3]
	add	r5, r7, #40
	subs	r5, r5, #28
	add	r3, r7, #40
	subs	r3, r3, #36
	ldr	r0, [r3]
	bl	_IO_getc(PLT)
	str	r0, [r5]
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L10
	add	r3, r7, #40
	subs	r3, r3, #24
	ldr	r3, [r3]
	b	.L14
.L10:
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #47
	ble	.L12
	add	r3, r7, #40
	subs	r3, r3, #28
	ldr	r3, [r3]
	cmp	r3, #57
	bgt	.L12
	b	.L13
.L12:
	add	r3, r7, #40
	subs	r3, r3, #24
	ldr	r3, [r3]
.L14:
	mov	r0, r3
	ldr	r3, .L18+4
	ldr	r3, [r4, r3]
	add	r2, r7, #9984
	add	r2, r2, #36
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L15
	bl	__stack_chk_fail(PLT)
.L15:
	add	r7, r7, #9984
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.word	__stack_chk_guard(GOT)
	.word	stderr(GOT)
	.word	.LC13-(.LPIC14+4)
	.word	.LC14-(.LPIC15+4)
	.size	getint, .-getint
	.section	.rodata
	.align	2
.LC15:
	.ascii	"r\000"
	.align	2
.LC16:
	.ascii	"Can't input image %s.\012\000"
	.align	2
.LC17:
	.ascii	"Image %s does not have binary PGM header.\012\000"
	.align	2
.LC18:
	.ascii	"Image %s is wrong size.\012\000"
	.text
	.align	1
	.global	get_image
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	get_image, %function
get_image:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #132
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L26
.LPIC16:
	add	r4, pc
	ldr	r3, .L26+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #124]
	ldr	r3, .L26+8
.LPIC17:
	add	r3, pc
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	fopen(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L21
	ldr	r3, .L26+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r1, .L26+16
.LPIC18:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L21:
	ldr	r0, [r7, #16]
	bl	fgetc(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r7, #24]
	ldr	r0, [r7, #16]
	bl	fgetc(PLT)
	mov	r3, r0
	uxtb	r3, r3
	strb	r3, [r7, #25]
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L22
	ldrb	r3, [r7, #25]	@ zero_extendqisi2
	cmp	r3, #53
	beq	.L23
.L22:
	ldr	r3, .L26+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r1, .L26+20
.LPIC19:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L23:
	ldr	r0, [r7, #16]
	bl	getint(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r0, [r7, #16]
	bl	getint(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r0, [r7, #16]
	bl	getint(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r2, [r2]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r2, [r2]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #1
	bl	fread(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L24
	ldr	r3, .L26+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r1, .L26+24
.LPIC20:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L24:
	ldr	r0, [r7, #16]
	bl	fclose(PLT)
	nop
	ldr	r3, .L26+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #124]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L25
	bl	__stack_chk_fail(PLT)
.L25:
	adds	r7, r7, #132
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC15-(.LPIC17+4)
	.word	stderr(GOT)
	.word	.LC16-(.LPIC18+4)
	.word	.LC17-(.LPIC19+4)
	.word	.LC18-(.LPIC20+4)
	.size	get_image, .-get_image
	.section	.rodata
	.align	2
.LC19:
	.ascii	"w\000"
	.align	2
.LC20:
	.ascii	"Can't output image%s.\012\000"
	.align	2
.LC21:
	.ascii	"P5\012\000"
	.align	2
.LC22:
	.ascii	"%d %d\012\000"
	.align	2
.LC23:
	.ascii	"255\012\000"
	.align	2
.LC24:
	.ascii	"Can't write image %s.\012\000"
	.text
	.align	1
	.global	put_image
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	put_image, %function
put_image:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L31
.LPIC22:
	add	r4, pc
	ldr	r3, .L31+4
.LPIC21:
	add	r3, pc
	mov	r1, r3
	ldr	r0, [r7, #12]
	bl	fopen(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L29
	ldr	r3, .L31+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r1, .L31+12
.LPIC23:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L29:
	ldr	r3, [r7, #20]
	movs	r2, #3
	movs	r1, #1
	ldr	r0, .L31+16
.LPIC24:
	add	r0, pc
	bl	fwrite(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r1, .L31+20
.LPIC25:
	add	r1, pc
	ldr	r0, [r7, #20]
	bl	fprintf(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #4
	movs	r1, #1
	ldr	r0, .L31+24
.LPIC26:
	add	r0, pc
	bl	fwrite(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r3, [r7, #20]
	movs	r2, #1
	ldr	r0, [r7, #8]
	bl	fwrite(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L30
	ldr	r3, .L31+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	ldr	r1, .L31+28
.LPIC27:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L30:
	ldr	r0, [r7, #20]
	bl	fclose(PLT)
	nop
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L32:
	.align	2
.L31:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	.LC19-(.LPIC21+4)
	.word	stderr(GOT)
	.word	.LC20-(.LPIC23+4)
	.word	.LC21-(.LPIC24+4)
	.word	.LC22-(.LPIC25+4)
	.word	.LC23-(.LPIC26+4)
	.word	.LC24-(.LPIC27+4)
	.size	put_image, .-put_image
	.global	__aeabi_idiv
	.align	1
	.global	int_to_uchar
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	int_to_uchar, %function
int_to_uchar:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L34
.L37:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	cmp	r2, r3
	bge	.L35
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
.L35:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	ble	.L36
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #28]
.L36:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L34:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L37
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L38
.L39:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #8
	subs	r3, r3, r2
	ldr	r1, [r7, #24]
	mov	r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L38:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L39
	nop
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	int_to_uchar, .-int_to_uchar
	.align	1
	.global	setup_brightness_lut
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	setup_brightness_lut, %function
setup_brightness_lut:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r0, #516
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r3, #258
	ldr	r3, [r7, #12]
	str	r2, [r3]
	mvn	r3, #255
	str	r3, [r7, #16]
	b	.L41
.L43:
	ldr	r3, [r7, #16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #8]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #20]
	vldr.32	s14, [r7, #20]
	vldr.32	s15, [r7, #20]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #6
	bne	.L42
	vldr.32	s14, [r7, #20]
	vldr.32	s15, [r7, #20]
	vmul.f32	s15, s14, s15
	vldr.32	s14, [r7, #20]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r7, #20]
.L42:
	vldr.32	s15, [r7, #20]
	vneg.f32	s15, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	exp(PLT)
	vmov.f64	d6, d0
	vldr.64	d7, .L44
	vmul.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	vldr.32	s15, [r7, #20]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [r7]	@ int
	ldr	r2, [r7]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L41:
	ldr	r3, [r7, #16]
	cmp	r3, #256
	ble	.L43
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L45:
	.align	3
.L44:
	.word	0
	.word	1079574528
	.size	setup_brightness_lut, .-setup_brightness_lut
	.align	1
	.global	susan_principle
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_principle, %function
susan_principle:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #52]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [r7, #8]
	bl	memset(PLT)
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L47
.L51:
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L48
.L50:
	movs	r3, #100
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldr	r2, [r7, #48]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #48]
	mul	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #5
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #6
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #6
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #5
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L49
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #48]
	mul	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r7]
	ldr	r2, [r7, #28]
	subs	r2, r1, r2
	str	r2, [r3]
.L49:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L48:
	ldr	r3, [r7, #48]
	subs	r3, r3, #3
	ldr	r2, [r7, #24]
	cmp	r2, r3
	blt	.L50
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L47:
	ldr	r3, [r7, #52]
	subs	r3, r3, #3
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L51
	nop
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	susan_principle, .-susan_principle
	.align	1
	.global	susan_principle_small
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_principle_small, %function
susan_principle_small:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #52]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [r7, #8]
	bl	memset(PLT)
	movw	r3, #730
	str	r3, [r7]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L53
.L57:
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L54
.L56:
	movs	r3, #100
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldr	r2, [r7, #48]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #48]
	mul	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L55
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #48]
	mul	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r7]
	ldr	r2, [r7, #28]
	subs	r2, r1, r2
	str	r2, [r3]
.L55:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L54:
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldr	r2, [r7, #24]
	cmp	r2, r3
	blt	.L56
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L53:
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L57
	nop
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	susan_principle_small, .-susan_principle_small
	.align	1
	.global	median
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	median, %function
median:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L66
.LPIC28:
	add	r2, pc
	ldr	r3, .L66+4
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r1, [r7]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L59
.L63:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L60
.L62:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r1, r7, #64
	add	r3, r3, r1
	ldr	r1, [r3, #-36]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r0, r7, #64
	add	r3, r3, r0
	ldr	r3, [r3, #-36]
	cmp	r1, r3
	ble	.L61
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r1, r7, #64
	add	r3, r3, r1
	ldr	r3, [r3, #-36]
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r1, r7, #64
	add	r3, r3, r1
	ldr	r1, [r3, #-36]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r0, r7, #64
	add	r3, r3, r0
	str	r1, [r3, #-36]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r1, r7, #64
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	str	r1, [r3, #-36]
.L61:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L60:
	ldr	r3, [r7, #16]
	rsb	r3, r3, #7
	ldr	r1, [r7, #20]
	cmp	r1, r3
	blt	.L62
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L59:
	ldr	r3, [r7, #16]
	cmp	r3, #6
	ble	.L63
	ldr	r1, [r7, #40]
	ldr	r3, [r7, #44]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	uxtb	r3, r3
	mov	r0, r3
	ldr	r3, .L66+4
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #60]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L65
	bl	__stack_chk_fail(PLT)
.L65:
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L67:
	.align	2
.L66:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+4)
	.word	__stack_chk_guard(GOT)
	.size	median, .-median
	.align	1
	.global	enlarge
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	enlarge, %function
enlarge:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L69
.L70:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #1
	add	r2, r2, r1
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r1, [r7, #16]
	mul	r2, r1, r2
	adds	r1, r3, r2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L69:
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	blt	.L70
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L71
.L72:
	ldr	r3, [r7, #32]
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #1
	add	r2, r2, r1
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r1, [r7, #16]
	mul	r2, r1, r2
	adds	r1, r3, r2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #32]
	lsls	r2, r2, #1
	add	r2, r2, r1
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	adds	r0, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	ldr	r1, [r2]
	ldr	r2, [r7, #16]
	subs	r2, r1, r2
	subs	r2, r2, #1
	ldr	r1, [r7, #4]
	ldr	r1, [r1]
	mul	r2, r1, r2
	adds	r1, r3, r2
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L71:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L72
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L73
.L76:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L74
.L75:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r1
	ldr	r1, [r7, #20]
	mul	r1, r1, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	subs	r1, r3, #1
	ldr	r3, [r7, #16]
	subs	r3, r1, r3
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	mul	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r1
	ldr	r1, [r7, #20]
	mul	r1, r1, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r1, r1, r3
	ldr	r3, [r7, #32]
	add	r1, r1, r3
	ldr	r3, [r7, #16]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L74:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L75
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L73:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L76
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	nop
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	enlarge, .-enlarge
	.section	.rodata
	.align	2
.LC25:
	.ascii	"Distance_thresh (%f) too big for integer arithmetic"
	.ascii	".\012\000"
	.align	2
.LC26:
	.ascii	"Either reduce it to <=15 or recompile with variable"
	.ascii	" \"total\"\000"
	.align	2
.LC27:
	.ascii	"as a float: see top \"defines\" section.\000"
	.align	2
.LC28:
	.ascii	"Mask size (1.5*distance_thresh+1=%d) too big for im"
	.ascii	"age (%dx%d).\012\000"
	.text
	.align	1
	.global	susan_smoothing
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_smoothing, %function
susan_smoothing:
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #116
	add	r7, sp, #8
	str	r0, [r7, #20]
	str	r1, [r7, #16]
	vmov.f64	d7, d0
	str	r2, [r7, #12]
	str	r3, [r7, #4]
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #8]
	ldr	r3, [r7, #16]
	str	r3, [r7, #60]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L78
	vldr.32	s15, [r7, #8]
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #1.5e+0
	vmul.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L79
.L78:
	movs	r3, #1
	str	r3, [r7, #28]
.L79:
	movs	r3, #0
	str	r3, [r7, #64]
	vldr.32	s15, [r7, #8]
	vmov.f32	s14, #1.5e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L80
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L80
	vldr.32	s15, [r7, #8]
	vcvt.f64.f32	d7, s15
	vmov	r2, r3, d7
	ldr	r1, .L108+8
.LPIC29:
	add	r1, pc
	mov	r0, r1
	bl	printf(PLT)
	ldr	r3, .L108+12
.LPIC30:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	ldr	r3, .L108+16
.LPIC31:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L80:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L82
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L83
.L82:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #28]
	ldr	r0, .L108+20
.LPIC32:
	add	r0, pc
	bl	printf(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L83:
	ldr	r3, [r7, #28]
	lsls	r2, r3, #1
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	lsls	r1, r2, #1
	ldr	r2, [r7, #4]
	add	r2, r2, r1
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #68]
	adds	r1, r7, #4
	add	r2, r7, #12
	add	r0, r7, #16
	ldr	r3, [r7, #28]
	str	r3, [sp]
	mov	r3, r1
	ldr	r1, [r7, #68]
	bl	enlarge(PLT)
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	adds	r3, r3, #1
	str	r3, [r7, #88]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #88]
	subs	r3, r2, r3
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #88]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	str	r3, [r7, #56]
	vldr.32	s14, [r7, #8]
	vldr.32	s15, [r7, #8]
	vmul.f32	s15, s14, s15
	vneg.f32	s15, s15
	vstr.32	s15, [r7, #100]
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #32]
	b	.L85
.L88:
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #36]
	b	.L86
.L87:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #32]
	mul	r2, r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #36]
	mul	r3, r1, r3
	add	r3, r3, r2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s14, [r7, #100]
	vdiv.f32	s15, s13, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	exp(PLT)
	vmov.f64	d6, d0
	vldr.64	d7, .L108
	vmul.f64	d7, d6, d7
	vcvt.s32.f64	s15, d7
	vmov	r3, s15	@ int
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldr	r2, [r7, #40]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L86:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L87
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L85:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L88
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
	b	.L89
.L98:
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	b	.L90
.L97:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #96]
	str	r3, [r7, #56]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #28]
	subs	r3, r1, r3
	ldr	r1, [r7, #12]
	mul	r3, r1, r3
	mov	r1, r3
	ldr	r3, [r7, #36]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	subs	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #32]
	mul	r1, r1, r2
	ldr	r2, [r7, #36]
	add	r2, r2, r1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #120]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #44]
	b	.L91
.L94:
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #40]
	b	.L92
.L93:
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mul	r3, r3, r1
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L92:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L93
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L91:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L94
	ldr	r3, [r7, #48]
	sub	r3, r3, #9984
	subs	r3, r3, #16
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L95
	ldr	r0, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r4, [r7, #60]
	adds	r3, r4, #1
	str	r3, [r7, #60]
	mov	r3, r2
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	bl	median(PLT)
	mov	r3, r0
	strb	r3, [r4]
	b	.L96
.L95:
	ldr	r2, [r7, #72]
	movw	r3, #55536
	movt	r3, 65535
	mul	r2, r3, r2
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldr	r1, [r7, #84]
	mov	r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	uxtb	r2, r1
	strb	r2, [r3]
.L96:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L90:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	ldr	r2, [r7, #36]
	cmp	r2, r3
	blt	.L97
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L89:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L98
	b	.L107
.L84:
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L100
.L105:
	movs	r3, #1
	str	r3, [r7, #36]
	b	.L101
.L109:
	.align	3
.L108:
	.word	0
	.word	1079574528
	.word	.LC25-(.LPIC29+4)
	.word	.LC26-(.LPIC30+4)
	.word	.LC27-(.LPIC31+4)
	.word	.LC28-(.LPIC32+4)
.L104:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	mul	r3, r1, r3
	mov	r1, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r1
	subs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r1, [r7, #32]
	mul	r1, r1, r2
	ldr	r2, [r7, #36]
	add	r2, r2, r1
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #120]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #48]
	subs	r3, r3, #100
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L102
	ldr	r0, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r4, [r7, #60]
	adds	r3, r4, #1
	str	r3, [r7, #60]
	mov	r3, r2
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #32]
	bl	median(PLT)
	mov	r3, r0
	strb	r3, [r4]
	b	.L103
.L102:
	ldr	r3, [r7, #72]
	mvn	r2, #99
	mul	r2, r2, r3
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldr	r1, [r7, #84]
	mov	r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	uxtb	r2, r1
	strb	r2, [r3]
.L103:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L101:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldr	r2, [r7, #36]
	cmp	r2, r3
	blt	.L104
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L100:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L105
.L107:
	nop
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	susan_smoothing, .-susan_smoothing
	.align	1
	.global	edge_draw
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	edge_draw, %function
edge_draw:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L111
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L112
.L114:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L113
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	subs	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	subs	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	movs	r2, #255
	strb	r2, [r3]
.L113:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L112:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r3, r2, r3
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L114
.L111:
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L115
.L117:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L116
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L116:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L115:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	mul	r3, r2, r3
	ldr	r2, [r7, #20]
	cmp	r2, r3
	blt	.L117
	nop
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	edge_draw, .-edge_draw
	.align	1
	.global	susan_thin
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_thin, %function
susan_thin:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #148
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, .L158+8
.LPIC33:
	add	r2, pc
	ldr	r3, .L158+12
	ldr	r3, [r2, r3]
	ldr	r3, [r3]
	str	r3, [r7, #140]
	movs	r3, #4
	str	r3, [r7, #36]
	b	.L119
.L154:
	movs	r3, #4
	str	r3, [r7, #40]
	b	.L120
.L153:
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L121
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r3, r1, r3
	mov	r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	mov	r1, r3
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	add	r3, r3, r1
	ldr	r1, [r7, #48]
	adds	r1, r1, #2
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #7
	ite	ls
	movls	r1, #1
	movhi	r1, #0
	uxtb	r1, r1
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	ldr	r0, [r7, #48]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #7
	ite	ls
	movls	r1, #1
	movhi	r1, #0
	uxtb	r1, r1
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	adds	r1, r1, #2
	ldr	r0, [r7, #48]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #7
	ite	ls
	movls	r1, #1
	movhi	r1, #0
	uxtb	r1, r1
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	lsls	r1, r1, #1
	ldr	r0, [r7, #48]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #7
	ite	ls
	movls	r1, #1
	movhi	r1, #0
	uxtb	r1, r1
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	lsls	r1, r1, #1
	adds	r1, r1, #1
	ldr	r0, [r7, #48]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #7
	ite	ls
	movls	r1, #1
	movhi	r1, #0
	uxtb	r1, r1
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	adds	r1, r1, #1
	lsls	r1, r1, #1
	ldr	r0, [r7, #48]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	cmp	r1, #7
	ite	ls
	movls	r1, #1
	movhi	r1, #0
	uxtb	r1, r1
	add	r3, r3, r1
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L122
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	movs	r1, #100
	strb	r1, [r3]
.L122:
	ldr	r3, [r7, #52]
	cmp	r3, #1
	bne	.L123
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #5
	bhi	.L123
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #104]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #108]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #112]
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #116]
	movs	r3, #0
	str	r3, [r7, #120]
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #124]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #128]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #132]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	str	r3, [r7, #136]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L124
	movs	r3, #0
	str	r3, [r7, #104]
	movs	r3, #0
	str	r3, [r7, #108]
	movs	r3, #0
	str	r3, [r7, #116]
	ldr	r3, [r7, #112]
	lsls	r3, r3, #1
	str	r3, [r7, #112]
	ldr	r3, [r7, #128]
	lsls	r3, r3, #1
	str	r3, [r7, #128]
	ldr	r1, [r7, #124]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #124]
	ldr	r1, [r7, #132]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #132]
	ldr	r3, [r7, #136]
	lsls	r3, r3, #2
	str	r3, [r7, #136]
	b	.L125
.L124:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L126
	movs	r3, #0
	str	r3, [r7, #108]
	movs	r3, #0
	str	r3, [r7, #104]
	movs	r3, #0
	str	r3, [r7, #112]
	ldr	r3, [r7, #116]
	lsls	r3, r3, #1
	str	r3, [r7, #116]
	ldr	r3, [r7, #124]
	lsls	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r1, [r7, #128]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #128]
	ldr	r1, [r7, #136]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #136]
	ldr	r3, [r7, #132]
	lsls	r3, r3, #2
	str	r3, [r7, #132]
	b	.L125
.L126:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L127
	movs	r3, #0
	str	r3, [r7, #112]
	movs	r3, #0
	str	r3, [r7, #108]
	movs	r3, #0
	str	r3, [r7, #124]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #1
	str	r3, [r7, #104]
	ldr	r3, [r7, #136]
	lsls	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r1, [r7, #116]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #116]
	ldr	r1, [r7, #132]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #132]
	ldr	r3, [r7, #128]
	lsls	r3, r3, #2
	str	r3, [r7, #128]
	b	.L125
.L127:
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L128
	movs	r3, #0
	str	r3, [r7, #116]
	movs	r3, #0
	str	r3, [r7, #104]
	movs	r3, #0
	str	r3, [r7, #128]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #1
	str	r3, [r7, #108]
	ldr	r3, [r7, #132]
	lsls	r3, r3, #1
	str	r3, [r7, #132]
	ldr	r1, [r7, #112]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #112]
	ldr	r1, [r7, #136]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	lsls	r3, r3, #2
	str	r3, [r7, #124]
	b	.L125
.L128:
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L129
	movs	r3, #0
	str	r3, [r7, #124]
	movs	r3, #0
	str	r3, [r7, #112]
	movs	r3, #0
	str	r3, [r7, #136]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #1
	str	r3, [r7, #108]
	ldr	r3, [r7, #132]
	lsls	r3, r3, #1
	str	r3, [r7, #132]
	ldr	r1, [r7, #104]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #104]
	ldr	r1, [r7, #128]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #128]
	ldr	r3, [r7, #116]
	lsls	r3, r3, #2
	str	r3, [r7, #116]
	b	.L125
.L129:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L130
	movs	r3, #0
	str	r3, [r7, #128]
	movs	r3, #0
	str	r3, [r7, #116]
	movs	r3, #0
	str	r3, [r7, #132]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #1
	str	r3, [r7, #104]
	ldr	r3, [r7, #136]
	lsls	r3, r3, #1
	str	r3, [r7, #136]
	ldr	r1, [r7, #108]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #108]
	ldr	r1, [r7, #124]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #124]
	ldr	r3, [r7, #112]
	lsls	r3, r3, #2
	str	r3, [r7, #112]
	b	.L125
.L130:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L131
	movs	r3, #0
	str	r3, [r7, #132]
	movs	r3, #0
	str	r3, [r7, #128]
	movs	r3, #0
	str	r3, [r7, #136]
	ldr	r3, [r7, #116]
	lsls	r3, r3, #1
	str	r3, [r7, #116]
	ldr	r3, [r7, #124]
	lsls	r3, r3, #1
	str	r3, [r7, #124]
	ldr	r1, [r7, #104]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #104]
	ldr	r1, [r7, #112]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #112]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	str	r3, [r7, #108]
	b	.L125
.L131:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L125
	movs	r3, #0
	str	r3, [r7, #136]
	movs	r3, #0
	str	r3, [r7, #124]
	movs	r3, #0
	str	r3, [r7, #132]
	ldr	r3, [r7, #128]
	lsls	r3, r3, #1
	str	r3, [r7, #128]
	ldr	r3, [r7, #112]
	lsls	r3, r3, #1
	str	r3, [r7, #112]
	ldr	r1, [r7, #108]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #108]
	ldr	r1, [r7, #116]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	str	r3, [r7, #116]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #2
	str	r3, [r7, #104]
.L125:
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L132
.L136:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L133
.L135:
	ldr	r1, [r7, #32]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r1, r7, #144
	add	r3, r3, r1
	ldr	r3, [r3, #-40]
	ldr	r1, [r7, #16]
	cmp	r1, r3
	bge	.L134
	ldr	r1, [r7, #32]
	mov	r3, r1
	lsls	r3, r3, #1
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	lsls	r3, r3, #2
	add	r1, r7, #144
	add	r3, r3, r1
	ldr	r3, [r3, #-40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
.L134:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L133:
	ldr	r3, [r7, #28]
	cmp	r3, #2
	ble	.L135
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L132:
	ldr	r3, [r7, #32]
	cmp	r3, #2
	ble	.L136
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L123
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L137
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r1, r1, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	movs	r1, #4
	strb	r1, [r3]
	b	.L138
.L137:
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r0, [r7, #36]
	ldr	r3, [r7, #20]
	add	r3, r3, r0
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mul	r0, r0, r3
	ldr	r3, [r7, #40]
	add	r0, r0, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r0
	subs	r3, r3, #1
	ldr	r0, [r7, #8]
	add	r3, r3, r0
	adds	r1, r1, #1
	uxtb	r1, r1
	strb	r1, [r3]
.L138:
	ldr	r3, [r7, #20]
	lsls	r1, r3, #1
	ldr	r3, [r7, #24]
	add	r3, r3, r1
	cmp	r3, #2
	bgt	.L123
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldr	r1, [r7, #36]
	add	r3, r3, r1
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r1, [r7, #40]
	add	r3, r3, r1
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r3, #3
	bgt	.L139
	movs	r3, #4
	str	r3, [r7, #36]
.L139:
	ldr	r3, [r7, #40]
	cmp	r3, #3
	bgt	.L123
	movs	r3, #4
	str	r3, [r7, #40]
.L123:
	ldr	r3, [r7, #52]
	cmp	r3, #2
	bne	.L140
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #68]
	ldr	r1, [r7, #56]
	ldr	r3, [r7, #60]
	add	r1, r1, r3
	ldr	r3, [r7, #64]
	add	r1, r1, r3
	ldr	r3, [r7, #68]
	add	r3, r3, r1
	cmp	r3, #2
	bne	.L141
	ldr	r1, [r7, #56]
	ldr	r3, [r7, #68]
	orrs	r1, r1, r3
	ldr	r0, [r7, #60]
	ldr	r3, [r7, #64]
	orrs	r3, r3, r0
	ands	r3, r3, r1
	cmp	r3, #0
	beq	.L141
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L142
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L143
	movs	r3, #0
	str	r3, [r7, #28]
	mov	r3, #-1
	str	r3, [r7, #32]
	b	.L145
.L143:
	mov	r3, #-1
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L145
.L142:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L146
	movs	r3, #1
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L145
.L146:
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #1
	str	r3, [r7, #32]
.L145:
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	lsls	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldr	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #44]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L158
	vcmpe.f64	d7, d6
	vmrs	APSR_nzcv, FPSCR
	ble	.L157
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L149
	ldr	r3, [r7, #32]
	lsls	r1, r3, #1
	ldr	r3, [r7, #36]
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L149
	ldr	r3, [r7, #32]
	lsls	r1, r3, #1
	ldr	r3, [r7, #36]
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L149
	ldr	r3, [r7, #32]
	lsls	r1, r3, #1
	ldr	r3, [r7, #36]
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L150
.L149:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L157
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L157
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L157
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L157
.L150:
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	movs	r1, #100
	strb	r1, [r3]
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	movs	r1, #3
	strb	r1, [r3]
	b	.L157
.L159:
	.align	3
.L158:
	.word	1717986918
	.word	1072064102
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.word	__stack_chk_guard(GOT)
.L141:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #76]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #80]
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #84]
	ldr	r1, [r7, #72]
	ldr	r3, [r7, #76]
	add	r1, r1, r3
	ldr	r3, [r7, #80]
	add	r1, r1, r3
	ldr	r3, [r7, #84]
	add	r3, r3, r1
	cmp	r3, #2
	bne	.L140
	ldr	r1, [r7, #84]
	ldr	r3, [r7, #76]
	orrs	r1, r1, r3
	ldr	r0, [r7, #72]
	ldr	r3, [r7, #80]
	orrs	r3, r3, r0
	ands	r3, r3, r1
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r1, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldr	r0, [r7, #4]
	mul	r0, r0, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r0
	adds	r3, r3, #1
	ldr	r0, [r7, #8]
	add	r3, r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	orrs	r3, r3, r1
	uxtb	r3, r3
	mov	r1, r3
	ldr	r3, [r7, #72]
	ands	r1, r1, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mul	r0, r0, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r0
	subs	r3, r3, #2
	ldr	r0, [r7, #8]
	add	r3, r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r0, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r4, [r7, #4]
	mul	r4, r4, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r4
	subs	r3, r3, #2
	ldr	r4, [r7, #8]
	add	r3, r3, r4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	orrs	r3, r3, r0
	uxtb	r3, r3
	mov	r0, r3
	ldr	r3, [r7, #84]
	ands	r3, r3, r0
	orrs	r1, r1, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r0, [r7, #4]
	mul	r0, r0, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r0
	adds	r3, r3, #2
	ldr	r0, [r7, #8]
	add	r3, r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r0, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r4, [r7, #4]
	mul	r4, r4, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r4
	adds	r3, r3, #2
	ldr	r4, [r7, #8]
	add	r3, r3, r4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	orrs	r3, r3, r0
	uxtb	r3, r3
	mov	r0, r3
	ldr	r3, [r7, #76]
	ands	r3, r3, r0
	orrs	r1, r1, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldr	r0, [r7, #4]
	mul	r0, r0, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r0
	subs	r3, r3, #1
	ldr	r0, [r7, #8]
	add	r3, r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r0, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldr	r4, [r7, #4]
	mul	r4, r4, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r4
	adds	r3, r3, #1
	ldr	r4, [r7, #8]
	add	r3, r3, r4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	orrs	r3, r3, r0
	uxtb	r3, r3
	mov	r0, r3
	ldr	r3, [r7, #80]
	ands	r3, r3, r0
	orrs	r3, r3, r1
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	movs	r1, #100
	strb	r1, [r3]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r3, #3
	bgt	.L151
	movs	r3, #4
	str	r3, [r7, #36]
.L151:
	ldr	r3, [r7, #40]
	cmp	r3, #3
	bgt	.L140
	movs	r3, #4
	str	r3, [r7, #40]
	b	.L140
.L157:
	nop
.L140:
	ldr	r3, [r7, #52]
	cmp	r3, #2
	ble	.L121
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #76]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #80]
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #84]
	ldr	r1, [r7, #72]
	ldr	r3, [r7, #76]
	add	r1, r1, r3
	ldr	r3, [r7, #80]
	add	r1, r1, r3
	ldr	r3, [r7, #84]
	add	r3, r3, r1
	cmp	r3, #1
	ble	.L121
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	adds	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #7
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #68]
	ldr	r1, [r7, #56]
	ldr	r3, [r7, #72]
	orrs	r3, r3, r1
	str	r3, [r7, #88]
	ldr	r1, [r7, #60]
	ldr	r3, [r7, #76]
	orrs	r3, r3, r1
	str	r3, [r7, #92]
	ldr	r1, [r7, #68]
	ldr	r3, [r7, #80]
	orrs	r3, r3, r1
	str	r3, [r7, #96]
	ldr	r1, [r7, #64]
	ldr	r3, [r7, #84]
	orrs	r3, r3, r1
	str	r3, [r7, #100]
	ldr	r1, [r7, #88]
	ldr	r3, [r7, #92]
	add	r1, r1, r3
	ldr	r3, [r7, #96]
	add	r1, r1, r3
	ldr	r3, [r7, #100]
	add	r1, r1, r3
	ldr	r0, [r7, #72]
	ldr	r3, [r7, #92]
	ands	r0, r0, r3
	ldr	r4, [r7, #76]
	ldr	r3, [r7, #96]
	ands	r3, r3, r4
	add	r0, r0, r3
	ldr	r4, [r7, #80]
	ldr	r3, [r7, #100]
	ands	r3, r3, r4
	add	r0, r0, r3
	ldr	r4, [r7, #84]
	ldr	r3, [r7, #88]
	ands	r3, r3, r4
	add	r3, r3, r0
	subs	r3, r1, r3
	cmp	r3, #1
	bgt	.L121
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #4]
	mul	r1, r1, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r1
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	movs	r1, #100
	strb	r1, [r3]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r3, #3
	bgt	.L152
	movs	r3, #4
	str	r3, [r7, #36]
.L152:
	ldr	r3, [r7, #40]
	cmp	r3, #3
	bgt	.L121
	movs	r3, #4
	str	r3, [r7, #40]
.L121:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L120:
	ldr	r3, [r7, #4]
	subs	r3, r3, #4
	ldr	r1, [r7, #40]
	cmp	r1, r3
	blt	.L153
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L119:
	ldr	r3, [r7]
	subs	r3, r3, #4
	ldr	r1, [r7, #36]
	cmp	r1, r3
	blt	.L154
	nop
	mov	r0, r3
	ldr	r3, .L160
	ldr	r3, [r2, r3]
	ldr	r2, [r7, #140]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L155
	bl	__stack_chk_fail(PLT)
.L155:
	adds	r7, r7, #148
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L161:
	.align	2
.L160:
	.word	__stack_chk_guard(GOT)
	.size	susan_thin, .-susan_thin
	.align	1
	.global	susan_edges
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_edges, %function
susan_edges:
	@ args = 12, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #88]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [r7, #8]
	bl	memset(PLT)
	movs	r3, #3
	str	r3, [r7, #28]
	b	.L163
.L167:
	movs	r3, #3
	str	r3, [r7, #32]
	b	.L164
.L166:
	movs	r3, #100
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #5
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #6
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #6
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #5
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bgt	.L165
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r7, #80]
	ldr	r2, [r7, #52]
	subs	r2, r1, r2
	str	r2, [r3]
.L165:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L164:
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L166
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L163:
	ldr	r3, [r7, #88]
	subs	r3, r3, #3
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L167
	movs	r3, #4
	str	r3, [r7, #28]
	b	.L168
.L197:
	movs	r3, #4
	str	r3, [r7, #32]
	b	.L169
.L196:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L170
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r3, #600
	ble	.L171
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #84]
	subs	r3, r3, #5
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #84]
	subs	r3, r3, #6
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #84]
	subs	r3, r3, #6
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #84]
	subs	r3, r3, #5
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #64]
	mul	r2, r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #68]
	mul	r3, r1, r3
	add	r3, r3, r2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	sqrt(PLT)
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #20]
	vldr.32	s15, [r7, #20]
	vcvt.f64.f32	d6, s15
	ldr	r3, [r7, #52]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L210
	vmul.f64	d7, d7, d5
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L204
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L174
	mov	r3, #9216
	movt	r3, 18804
	str	r3, [r7, #20]	@ float
	b	.L175
.L174:
	ldr	r3, [r7, #68]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #20]
.L175:
	vldr.32	s15, [r7, #20]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L205
	vldr.32	s15, [r7, #20]
	vneg.f32	s15, s15
	vstr.32	s15, [r7, #20]
	mov	r3, #-1
	str	r3, [r7, #44]
	b	.L178
.L205:
	movs	r3, #1
	str	r3, [r7, #44]
.L178:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #5.0e-1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L206
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L181
.L206:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #2.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L207
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L181
.L207:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ble	.L184
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L181
.L184:
	mov	r3, #-1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
.L181:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	ble	.L187
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	blt	.L187
	ldr	r3, [r7, #36]
	lsls	r2, r3, #1
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	ble	.L187
	ldr	r3, [r7, #36]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	lsls	r3, r3, #1
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	blt	.L187
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	b	.L187
.L204:
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L187
.L211:
	.align	3
.L210:
	.word	3435973837
	.word	1072483532
.L171:
	movs	r3, #1
	str	r3, [r7, #24]
.L187:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L170
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #84]
	subs	r3, r3, #5
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #84]
	subs	r3, r3, #6
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #84]
	subs	r3, r3, #6
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #84]
	subs	r3, r3, #5
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L188
	mov	r3, #9216
	movt	r3, 18804
	str	r3, [r7, #20]	@ float
	b	.L189
.L188:
	ldr	r3, [r7, #64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #68]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #20]
.L189:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #5.0e-1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L208
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L192
.L208:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #2.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L209
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L192
.L209:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ble	.L195
	mov	r3, #-1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L192
.L195:
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
.L192:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	ble	.L170
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	blt	.L170
	ldr	r3, [r7, #36]
	lsls	r2, r3, #1
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	ble	.L170
	ldr	r3, [r7, #36]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	lsls	r3, r3, #1
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	blt	.L170
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #2
	strb	r2, [r3]
.L170:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L169:
	ldr	r3, [r7, #84]
	subs	r3, r3, #4
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L196
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L168:
	ldr	r3, [r7, #88]
	subs	r3, r3, #4
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L197
	nop
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	susan_edges, .-susan_edges
	.align	1
	.global	susan_edges_small
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_edges_small, %function
susan_edges_small:
	@ args = 12, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #88]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [r7, #8]
	bl	memset(PLT)
	movw	r3, #730
	str	r3, [r7, #80]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L213
.L217:
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L214
.L216:
	movs	r3, #100
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bgt	.L215
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r7, #80]
	ldr	r2, [r7, #52]
	subs	r2, r1, r2
	str	r2, [r3]
.L215:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L214:
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L216
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L213:
	ldr	r3, [r7, #88]
	subs	r3, r3, #1
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L217
	movs	r3, #2
	str	r3, [r7, #28]
	b	.L218
.L247:
	movs	r3, #2
	str	r3, [r7, #32]
	b	.L219
.L246:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L220
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r3, #250
	ble	.L221
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	subs	r3, r2, r3
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #64]
	mul	r2, r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #68]
	mul	r3, r1, r3
	add	r3, r3, r2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d0, d7
	bl	sqrt(PLT)
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r7, #20]
	vldr.32	s15, [r7, #20]
	vcvt.f64.f32	d6, s15
	ldr	r3, [r7, #52]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L260
	vmul.f64	d7, d7, d5
	vcmpe.f64	d6, d7
	vmrs	APSR_nzcv, FPSCR
	ble	.L254
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L224
	mov	r3, #9216
	movt	r3, 18804
	str	r3, [r7, #20]	@ float
	b	.L225
.L224:
	ldr	r3, [r7, #68]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #20]
.L225:
	vldr.32	s15, [r7, #20]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L255
	vldr.32	s15, [r7, #20]
	vneg.f32	s15, s15
	vstr.32	s15, [r7, #20]
	mov	r3, #-1
	str	r3, [r7, #44]
	b	.L228
.L255:
	movs	r3, #1
	str	r3, [r7, #44]
.L228:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #5.0e-1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L256
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L231
.L256:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #2.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L257
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L231
.L257:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ble	.L234
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L231
.L234:
	mov	r3, #-1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
.L231:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	ble	.L237
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	blt	.L237
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	b	.L237
.L254:
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L237
.L221:
	movs	r3, #1
	str	r3, [r7, #24]
.L237:
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L220
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #84]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r2, r3, #1
	str	r2, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L238
	mov	r3, #9216
	movt	r3, 18804
	str	r3, [r7, #20]	@ float
	b	.L239
.L238:
	ldr	r3, [r7, #64]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #68]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #20]
.L239:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #5.0e-1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L258
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L242
.L261:
	.align	3
.L260:
	.word	2576980378
	.word	1071225241
.L258:
	vldr.32	s15, [r7, #20]
	vmov.f32	s14, #2.0e+0
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L259
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L242
.L259:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ble	.L245
	mov	r3, #-1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L242
.L245:
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #40]
.L242:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	ble	.L220
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	blt	.L220
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #84]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	movs	r2, #2
	strb	r2, [r3]
.L220:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L219:
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L246
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L218:
	ldr	r3, [r7, #88]
	subs	r3, r3, #2
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L247
	nop
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	susan_edges_small, .-susan_edges_small
	.align	1
	.global	corner_draw
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	corner_draw, %function
corner_draw:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L263
.L265:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #16]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r3, [r7, #16]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	subs	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	subs	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #255
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	b	.L263
.L264:
	ldr	r3, [r7, #16]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r3, [r7, #16]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	add	r3, r3, r1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L263:
	ldr	r3, [r7, #16]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	cmp	r3, #7
	bne	.L265
	nop
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	corner_draw, .-corner_draw
	.section	.rodata
	.align	2
.LC29:
	.ascii	"Too many corners.\012\000"
	.text
	.align	1
	.global	susan_corners
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_corners, %function
susan_corners:
	@ args = 12, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L309
.LPIC34:
	add	r4, pc
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #96]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [r7, #8]
	bl	memset(PLT)
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #96]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #92]
	ldr	r2, [r7, #96]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	movs	r3, #5
	str	r3, [r7, #28]
	b	.L267
.L291:
	movs	r3, #5
	str	r3, [r7, #32]
	b	.L268
.L290:
	movs	r3, #100
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	subs	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	subs	r3, r3, #5
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	subs	r3, r3, #6
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #92]
	subs	r3, r3, #6
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #92]
	subs	r3, r3, #5
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #92]
	subs	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L269
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #92]
	subs	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #92]
	subs	r3, r3, #5
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	subs	r3, r2, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #92]
	subs	r3, r3, #6
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #92]
	subs	r3, r3, #6
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r3, r3, #2
	subs	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #92]
	subs	r3, r3, #5
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsls	r3, r3, #1
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #92]
	subs	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldrb	r2, [r7, #19]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #44]
	mul	r3, r2, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #56]
	mul	r3, r2, r3
	str	r3, [r7, #64]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #20]
	mul	r3, r2, r3
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r3, r2
	ble	.L269
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bge	.L270
	ldr	r3, [r7, #56]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #44]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #68]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	ldr	r1, [r7, #44]
	mov	r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	vldr.32	s15, [r7, #68]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L303
	vldr.32	s15, [r7, #68]
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vsub.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	b	.L273
.L310:
	.align	2
.L309:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC34+4)
.L303:
	vldr.32	s15, [r7, #68]
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
.L273:
	ldr	r3, [r7, #28]
	vmov	r2, s15	@ int
	add	r2, r2, r3
	mov	r3, r2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	vldr.32	s15, [r7, #68]
	vadd.f32	s15, s15, s15
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L304
	vldr.32	s15, [r7, #68]
	vadd.f32	s15, s15, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vsub.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	b	.L276
.L304:
	vldr.32	s15, [r7, #68]
	vadd.f32	s15, s15, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
.L276:
	ldr	r3, [r7, #28]
	vmov	r2, s15	@ int
	add	r2, r2, r3
	mov	r3, r2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r1, r1, r3
	vldr.32	s15, [r7, #68]
	vmov.f32	s14, #3.0e+0
	vmul.f32	s15, s15, s14
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L305
	vldr.32	s15, [r7, #68]
	vmov.f32	s14, #3.0e+0
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vsub.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	b	.L279
.L305:
	vldr.32	s15, [r7, #68]
	vmov.f32	s14, #3.0e+0
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
.L279:
	ldr	r3, [r7, #28]
	vmov	r2, s15	@ int
	add	r2, r2, r3
	mov	r3, r2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	adds	r0, r2, r3
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r1
	str	r3, [r7, #24]
	b	.L280
.L270:
	ldr	r3, [r7, #44]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	ldr	r3, [r7, #56]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [r7, #68]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	ldr	r1, [r7, #56]
	mov	r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	vldr.32	s15, [r7, #68]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L306
	vldr.32	s15, [r7, #68]
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vsub.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	b	.L283
.L306:
	vldr.32	s15, [r7, #68]
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
.L283:
	vmov	r2, s15	@ int
	add	r2, r2, r3
	mov	r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #24]
	lsls	r2, r3, #1
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	vldr.32	s15, [r7, #68]
	vadd.f32	s15, s15, s15
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L307
	vldr.32	s15, [r7, #68]
	vadd.f32	s15, s15, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vsub.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	b	.L286
.L307:
	vldr.32	s15, [r7, #68]
	vadd.f32	s15, s15, s15
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
.L286:
	vmov	r2, s15	@ int
	add	r2, r2, r3
	mov	r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r1, r1, r3
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	vldr.32	s15, [r7, #68]
	vmov.f32	s14, #3.0e+0
	vmul.f32	s15, s15, s14
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L308
	vldr.32	s15, [r7, #68]
	vmov.f32	s14, #3.0e+0
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vsub.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
	b	.L289
.L308:
	vldr.32	s15, [r7, #68]
	vmov.f32	s14, #3.0e+0
	vmul.f32	s15, s15, s14
	vcvt.f64.f32	d7, s15
	vmov.f64	d6, #5.0e-1
	vadd.f64	d7, d7, d6
	vcvt.s32.f64	s15, d7
.L289:
	vmov	r2, s15	@ int
	add	r2, r2, r3
	mov	r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r1
	str	r3, [r7, #24]
.L280:
	ldr	r3, [r7, #24]
	cmp	r3, #290
	ble	.L269
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r7]
	ldr	r2, [r7, #20]
	subs	r2, r1, r2
	str	r2, [r3]
	ldr	r3, [r7, #44]
	movs	r2, #51
	mul	r0, r2, r3
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	adds	r5, r2, r3
	ldr	r1, [r7, #20]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r5]
	ldr	r3, [r7, #56]
	movs	r2, #51
	mul	r0, r2, r3
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	adds	r5, r2, r3
	ldr	r1, [r7, #20]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r5]
.L269:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L268:
	ldr	r3, [r7, #92]
	subs	r3, r3, #5
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L290
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L267:
	ldr	r3, [r7, #96]
	subs	r3, r3, #5
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L291
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #5
	str	r3, [r7, #28]
	b	.L292
.L296:
	movs	r3, #5
	str	r3, [r7, #32]
	b	.L293
.L295:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	ble	.L294
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #44]
	cmp	r2, r3
	blt	.L294
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #24
	mul	r3, r1, r3
	ldr	r1, [r7, #88]
	add	r3, r3, r1
	ldr	r2, [r2]
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #24
	mul	r3, r1, r3
	ldr	r1, [r7, #88]
	add	r3, r3, r1
	ldr	r2, [r2]
	str	r2, [r3, #16]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #92]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	mov	r2, r1
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movw	r2, #15000
	cmp	r3, r2
	bne	.L294
	ldr	r3, .L311
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #18
	movs	r1, #1
	ldr	r0, .L311+4
.LPIC35:
	add	r0, pc
	bl	fwrite(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L294:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L293:
	ldr	r3, [r7, #92]
	subs	r3, r3, #5
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L295
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L292:
	ldr	r3, [r7, #96]
	subs	r3, r3, #5
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L296
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	movs	r2, #7
	str	r2, [r3, #8]
	ldr	r0, [r7, #36]
	bl	free(PLT)
	ldr	r0, [r7, #40]
	bl	free(PLT)
	nop
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L312:
	.align	2
.L311:
	.word	stderr(GOT)
	.word	.LC29-(.LPIC35+4)
	.size	susan_corners, .-susan_corners
	.align	1
	.global	susan_corners_quick
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	susan_corners_quick, %function
susan_corners_quick:
	@ args = 12, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r5, .L324
.LPIC36:
	add	r5, pc
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #72]
	mul	r3, r2, r3
	lsls	r3, r3, #2
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [r7, #8]
	bl	memset(PLT)
	movs	r3, #7
	str	r3, [r7, #24]
	b	.L314
.L318:
	movs	r3, #7
	str	r3, [r7, #28]
	b	.L315
.L317:
	movs	r3, #100
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #68]
	subs	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #68]
	subs	r3, r3, #5
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #68]
	subs	r3, r3, #6
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #68]
	subs	r3, r3, #6
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #68]
	subs	r3, r3, #5
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #68]
	subs	r3, r3, #3
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L316
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r1, [r7]
	ldr	r2, [r7, #20]
	subs	r2, r1, r2
	str	r2, [r3]
.L316:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L315:
	ldr	r3, [r7, #68]
	subs	r3, r3, #7
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L317
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L314:
	ldr	r3, [r7, #72]
	subs	r3, r3, #7
	ldr	r2, [r7, #24]
	cmp	r2, r3
	blt	.L318
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #7
	str	r3, [r7, #24]
	b	.L319
.L323:
	movs	r3, #7
	str	r3, [r7, #28]
	b	.L320
.L325:
	.align	2
.L324:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
.L322:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	ble	.L321
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	cmp	r2, r3
	blt	.L321
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r2, [r7, #24]
	subs	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	adds	r1, r2, r3
	ldr	r2, [r7, #32]
	movw	r3, #34079
	movt	r3, 20971
	smull	r3, r4, r2, r3
	asrs	r0, r4, #3
	asrs	r3, r2, #31
	subs	r3, r0, r3
	str	r3, [r1, #20]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r0
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	subs	r1, r1, #2
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	adds	r1, r1, #1
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	subs	r1, r1, #2
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	adds	r1, r1, #2
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	subs	r1, r1, #2
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	subs	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r0
	ldr	r1, [r7, #24]
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	subs	r1, r1, #1
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	adds	r1, r1, #1
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	subs	r1, r1, #1
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	adds	r1, r1, #2
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	subs	r1, r1, #1
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	subs	r3, r2, r3
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r0
	ldr	r1, [r7, #24]
	subs	r1, r1, #2
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	mov	r0, r1
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	subs	r1, r1, #2
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	adds	r1, r1, #1
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	subs	r1, r1, #2
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	adds	r1, r1, #2
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldr	r2, [r7, #68]
	mul	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	subs	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	subs	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	mov	r1, r2
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #1
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	adds	r2, r2, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r2
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	adds	r2, r2, #2
	ldr	r1, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #2
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldr	r1, [r7, #68]
	mul	r1, r1, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	subs	r3, r3, #1
	ldr	r1, [r7, #12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r0
	ldr	r1, [r7, #24]
	subs	r1, r1, #1
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	mov	r0, r1
	ldr	r1, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	subs	r1, r1, #1
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	adds	r1, r1, #1
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	ldr	r1, [r7, #24]
	subs	r1, r1, #1
	ldr	r0, [r7, #68]
	mul	r0, r0, r1
	ldr	r1, [r7, #28]
	add	r1, r1, r0
	adds	r1, r1, #2
	ldr	r0, [r7, #12]
	add	r1, r1, r0
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, r1
	subs	r3, r2, r3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	adds	r0, r2, r3
	ldr	r3, [r7, #32]
	movw	r2, #34953
	movt	r2, 34952
	smull	r1, r2, r3, r2
	add	r2, r2, r3
	asrs	r2, r2, #3
	asrs	r3, r3, #31
	subs	r3, r2, r3
	str	r3, [r0, #12]
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	adds	r0, r2, r3
	ldr	r3, [r7, #36]
	movw	r2, #34953
	movt	r2, 34952
	smull	r1, r2, r3, r2
	add	r2, r2, r3
	asrs	r2, r2, #3
	asrs	r3, r3, #31
	subs	r3, r2, r3
	str	r3, [r0, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movw	r2, #15000
	cmp	r3, r2
	bne	.L321
	ldr	r3, .L326
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	movs	r2, #18
	movs	r1, #1
	ldr	r0, .L326+4
.LPIC37:
	add	r0, pc
	bl	fwrite(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L321:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L320:
	ldr	r3, [r7, #68]
	subs	r3, r3, #7
	ldr	r2, [r7, #28]
	cmp	r2, r3
	blt	.L322
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L319:
	ldr	r3, [r7, #72]
	subs	r3, r3, #7
	ldr	r2, [r7, #24]
	cmp	r2, r3
	blt	.L323
	ldr	r3, [r7, #20]
	movs	r2, #24
	mul	r3, r2, r3
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	movs	r2, #7
	str	r2, [r3, #8]
	nop
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L327:
	.align	2
.L326:
	.word	stderr(GOT)
	.word	.LC29-(.LPIC37+4)
	.size	susan_corners_quick, .-susan_corners_quick
	.section	.rodata
	.align	2
.LC30:
	.ascii	"No argument following -d\000"
	.align	2
.LC31:
	.ascii	"No argument following -t\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 360168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #358400
	subw	sp, sp, #1788
	add	r7, sp, #16
	add	r3, r7, #1768
	subw	r3, r3, #1764
	str	r0, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1768
	str	r1, [r3]
	ldr	r5, .L370
.LPIC38:
	add	r5, pc
	ldr	r3, .L370+4
	ldr	r3, [r5, r3]
	ldr	r3, [r3]
	add	r2, r7, #358400
	addw	r2, r2, #1764
	str	r3, [r2]
	add	r3, r7, #1768
	subw	r3, r3, #1740
	mov	r2, #1082130432
	str	r2, [r3]	@ float
	add	r3, r7, #1768
	sub	r3, r3, #1736
	movs	r2, #3
	str	r2, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1732
	movs	r2, #20
	str	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1728
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1724
	movs	r2, #1
	str	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1720
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1716
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1712
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1704
	movw	r2, #1850
	str	r2, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1700
	movw	r2, #2650
	str	r2, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1708
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1764
	ldr	r3, [r3]
	cmp	r3, #2
	bgt	.L329
	bl	usage(PLT)
.L329:
	add	r3, r7, #1768
	sub	r3, r3, #1768
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r0, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	add	r2, r7, #1768
	subw	r2, r2, #1748
	add	r1, r7, #1768
	subw	r1, r1, #1756
	bl	get_image(PLT)
	b	.L330
.L349:
	add	r3, r7, #1768
	sub	r3, r3, #1736
	ldr	r3, [r3]
	lsls	r2, r3, #2
	add	r3, r7, #1768
	sub	r3, r3, #1768
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #1768
	sub	r3, r3, #1688
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1688
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L331
	add	r3, r7, #1768
	sub	r3, r3, #1688
	add	r2, r7, #1768
	sub	r2, r2, #1688
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1688
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #51
	cmp	r3, #65
	bhi	.L348
	adr	r2, .L334
	ldr	r3, [r2, r3, lsl #2]
	add	r2, r2, r3
	bx	r2
	.p2align 2
.L334:
	.word	.L333+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L335+1-.L334
	.word	.L336+1-.L334
	.word	.L337+1-.L334
	.word	.L338+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L348+1-.L334
	.word	.L339+1-.L334
	.word	.L348+1-.L334
	.word	.L340+1-.L334
	.word	.L341+1-.L334
	.word	.L348+1-.L334
	.word	.L342+1-.L334
	.word	.L343+1-.L334
	.p2align 1
.L342:
	add	r3, r7, #1768
	subw	r3, r3, #1708
	movs	r2, #0
	str	r2, [r3]
	b	.L348
.L338:
	add	r3, r7, #1768
	subw	r3, r3, #1708
	movs	r2, #1
	str	r2, [r3]
	b	.L348
.L336:
	add	r3, r7, #1768
	subw	r3, r3, #1708
	movs	r2, #2
	str	r2, [r3]
	b	.L348
.L340:
	add	r3, r7, #1768
	sub	r3, r3, #1728
	movs	r2, #1
	str	r2, [r3]
	b	.L348
.L339:
	add	r3, r7, #1768
	subw	r3, r3, #1724
	movs	r2, #0
	str	r2, [r3]
	b	.L348
.L335:
	add	r3, r7, #1768
	subw	r3, r3, #1716
	movs	r2, #1
	str	r2, [r3]
	b	.L348
.L333:
	add	r3, r7, #1768
	sub	r3, r3, #1720
	movs	r2, #1
	str	r2, [r3]
	b	.L348
.L341:
	add	r3, r7, #1768
	sub	r3, r3, #1712
	movs	r2, #1
	str	r2, [r3]
	b	.L348
.L337:
	add	r3, r7, #1768
	sub	r3, r3, #1736
	add	r2, r7, #1768
	sub	r2, r2, #1736
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r2, r7, #1768
	sub	r2, r2, #1736
	add	r3, r7, #1768
	subw	r3, r3, #1764
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L344
	ldr	r3, .L370+8
.LPIC39:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L344:
	add	r3, r7, #1768
	sub	r3, r3, #1736
	ldr	r3, [r3]
	lsls	r2, r3, #2
	add	r3, r7, #1768
	sub	r3, r3, #1768
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	atof(PLT)
	vmov.f64	d7, d0
	add	r3, r7, #1768
	subw	r3, r3, #1740
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1740
	vldr.32	s15, [r3]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L368
	b	.L348
.L368:
	add	r3, r7, #1768
	sub	r3, r3, #1720
	movs	r2, #1
	str	r2, [r3]
	b	.L348
.L343:
	add	r3, r7, #1768
	sub	r3, r3, #1736
	add	r2, r7, #1768
	sub	r2, r2, #1736
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r2, r7, #1768
	sub	r2, r2, #1736
	add	r3, r7, #1768
	subw	r3, r3, #1764
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L347
	ldr	r3, .L370+12
.LPIC40:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	movs	r0, #0
	bl	exit(PLT)
.L347:
	add	r3, r7, #1768
	sub	r3, r3, #1736
	ldr	r3, [r3]
	lsls	r2, r3, #2
	add	r3, r7, #1768
	sub	r3, r3, #1768
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r3, [r3]
	add	r4, r7, #1768
	subw	r4, r4, #1732
	mov	r0, r3
	bl	atoi(PLT)
	str	r0, [r4]
	nop
	b	.L348
.L331:
	bl	usage(PLT)
.L348:
	add	r3, r7, #1768
	sub	r3, r3, #1736
	add	r2, r7, #1768
	sub	r2, r2, #1736
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L330:
	add	r2, r7, #1768
	sub	r2, r2, #1736
	add	r3, r7, #1768
	subw	r3, r3, #1764
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L349
	add	r3, r7, #1768
	sub	r3, r3, #1728
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L350
	add	r3, r7, #1768
	subw	r3, r3, #1708
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L350
	add	r3, r7, #1768
	subw	r3, r3, #1708
	movs	r2, #1
	str	r2, [r3]
.L350:
	add	r3, r7, #1768
	subw	r3, r3, #1708
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L352
	cmp	r3, #2
	beq	.L353
	cmp	r3, #0
	bne	.L351
	add	r3, r7, #1768
	subw	r3, r3, #1732
	add	r0, r7, #1768
	sub	r0, r0, #1752
	movs	r2, #2
	ldr	r1, [r3]
	bl	setup_brightness_lut(PLT)
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r1, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1740
	vldr.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r3, [r3]
	add	r0, r7, #1768
	sub	r0, r0, #1720
	str	r3, [sp]
	mov	r3, r4
	vmov.f64	d0, d7
	ldr	r0, [r0]
	bl	susan_smoothing(PLT)
	b	.L351
.L352:
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	mul	r3, r3, r2
	lsls	r3, r3, #2
	add	r4, r7, #1768
	sub	r4, r4, #1696
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r4]
	add	r3, r7, #1768
	subw	r3, r3, #1732
	add	r0, r7, #1768
	sub	r0, r0, #1752
	movs	r2, #6
	ldr	r1, [r3]
	bl	setup_brightness_lut(PLT)
	add	r3, r7, #1768
	sub	r3, r3, #1728
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L355
	add	r3, r7, #1768
	sub	r3, r3, #1720
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L356
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r6, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r0, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1700
	add	r1, r7, #1768
	sub	r1, r1, #1696
	str	r0, [sp, #4]
	str	r2, [sp]
	ldr	r3, [r3]
	mov	r2, r6
	ldr	r1, [r1]
	mov	r0, r4
	bl	susan_principle_small(PLT)
	b	.L357
.L356:
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r6, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r0, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1700
	add	r1, r7, #1768
	sub	r1, r1, #1696
	str	r0, [sp, #4]
	str	r2, [sp]
	ldr	r3, [r3]
	mov	r2, r6
	ldr	r1, [r1]
	mov	r0, r4
	bl	susan_principle(PLT)
.L357:
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r1, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	mul	r2, r3, r2
	add	r3, r7, #1768
	sub	r3, r3, #1696
	ldr	r0, [r3]
	bl	int_to_uchar(PLT)
	b	.L351
.L355:
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	mul	r3, r3, r2
	add	r4, r7, #1768
	subw	r4, r4, #1692
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r4]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	mul	r3, r3, r2
	mov	r2, r3
	add	r3, r7, #1768
	subw	r3, r3, #1692
	movs	r1, #100
	ldr	r0, [r3]
	bl	memset(PLT)
	add	r3, r7, #1768
	sub	r3, r3, #1720
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L359
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r6, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r0, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	add	r2, r7, #1768
	subw	r2, r2, #1692
	add	r1, r7, #1768
	sub	r1, r1, #1696
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	add	r3, r7, #1768
	subw	r3, r3, #1700
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r6
	ldr	r2, [r2]
	ldr	r1, [r1]
	mov	r0, r4
	bl	susan_edges_small(PLT)
	b	.L360
.L359:
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r6, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r0, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	add	r2, r7, #1768
	subw	r2, r2, #1692
	add	r1, r7, #1768
	sub	r1, r1, #1696
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	add	r3, r7, #1768
	subw	r3, r3, #1700
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r6
	ldr	r2, [r2]
	ldr	r1, [r1]
	mov	r0, r4
	bl	susan_edges(PLT)
.L360:
	add	r3, r7, #1768
	subw	r3, r3, #1724
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L361
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	add	r1, r7, #1768
	subw	r1, r1, #1692
	add	r0, r7, #1768
	sub	r0, r0, #1696
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	susan_thin(PLT)
.L361:
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r0, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r4, [r3]
	add	r1, r7, #1768
	subw	r1, r1, #1692
	add	r3, r7, #1768
	subw	r3, r3, #1716
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r4
	ldr	r1, [r1]
	bl	edge_draw(PLT)
	b	.L351
.L353:
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	mul	r3, r3, r2
	lsls	r3, r3, #2
	add	r4, r7, #1768
	sub	r4, r4, #1696
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r4]
	add	r3, r7, #1768
	subw	r3, r3, #1732
	add	r0, r7, #1768
	sub	r0, r0, #1752
	movs	r2, #6
	ldr	r1, [r3]
	bl	setup_brightness_lut(PLT)
	add	r3, r7, #1768
	sub	r3, r3, #1728
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L362
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r6, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r0, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1704
	add	r1, r7, #1768
	sub	r1, r1, #1696
	str	r0, [sp, #4]
	str	r2, [sp]
	ldr	r3, [r3]
	mov	r2, r6
	ldr	r1, [r1]
	mov	r0, r4
	bl	susan_principle(PLT)
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r1, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	mul	r2, r3, r2
	add	r3, r7, #1768
	sub	r3, r3, #1696
	ldr	r0, [r3]
	bl	int_to_uchar(PLT)
	b	.L369
.L362:
	add	r3, r7, #1768
	sub	r3, r3, #1712
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L364
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r6, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r0, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1704
	add	r1, r7, #1768
	sub	r1, r1, #1696
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	add	r2, r7, #1768
	subw	r2, r2, #1684
	str	r2, [sp]
	ldr	r3, [r3]
	mov	r2, r6
	ldr	r1, [r1]
	mov	r0, r4
	bl	susan_corners_quick(PLT)
	b	.L365
.L364:
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r4, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1752
	ldr	r6, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r0, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1704
	add	r1, r7, #1768
	sub	r1, r1, #1696
	str	r0, [sp, #8]
	str	r2, [sp, #4]
	add	r2, r7, #1768
	subw	r2, r2, #1684
	str	r2, [sp]
	ldr	r3, [r3]
	mov	r2, r6
	ldr	r1, [r1]
	mov	r0, r4
	bl	susan_corners(PLT)
.L365:
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r0, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1716
	add	r1, r7, #1768
	subw	r1, r1, #1684
	ldr	r3, [r3]
	bl	corner_draw(PLT)
.L369:
	nop
.L351:
	add	r3, r7, #1768
	sub	r3, r3, #1768
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r0, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1756
	ldr	r1, [r3]
	add	r3, r7, #1768
	subw	r3, r3, #1748
	ldr	r2, [r3]
	add	r3, r7, #1768
	sub	r3, r3, #1744
	ldr	r3, [r3]
	bl	put_image(PLT)
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L370+4
	ldr	r3, [r5, r3]
	add	r2, r7, #358400
	addw	r2, r2, #1764
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L367
	bl	__stack_chk_fail(PLT)
.L367:
	add	r7, r7, #358400
	addw	r7, r7, #1772
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L371:
	.align	2
.L370:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC38+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC30-(.LPIC39+4)
	.word	.LC31-(.LPIC40+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
