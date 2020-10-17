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
	.file	"pbmsrch_small.c"
	.text
	.local	table
	.comm	table,1024,4
	.local	len
	.comm	len,4,4
	.local	findme
	.comm	findme,4,4
	.align	1
	.global	init_search
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	init_search, %function
init_search:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, .L6
.LPIC0:
	add	r3, pc
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L3:
	ldr	r3, .L6+4
.LPIC1:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, .L6+8
.LPIC2:
	add	r3, pc
	mov	r1, r3
	ldr	r3, [r7, #12]
	str	r2, [r1, r3, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #255
	bls	.L3
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L4
.L5:
	ldr	r3, .L6+12
.LPIC3:
	add	r3, pc
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	mov	r1, r2
	subs	r3, r3, #1
	ldr	r2, .L6+16
.LPIC4:
	add	r2, pc
	str	r3, [r2, r1, lsl #2]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L4:
	ldr	r3, .L6+20
.LPIC5:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bcc	.L5
	ldr	r3, .L6+24
.LPIC6:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r3, [r2]
	nop
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L7:
	.align	2
.L6:
	.word	len-(.LPIC0+4)
	.word	len-(.LPIC1+4)
	.word	table-(.LPIC2+4)
	.word	len-(.LPIC3+4)
	.word	table-(.LPIC4+4)
	.word	len-(.LPIC5+4)
	.word	findme-(.LPIC6+4)
	.size	init_search, .-init_search
	.align	1
	.global	strsearch
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	strsearch, %function
strsearch:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, .L16
.LPIC7:
	add	r3, pc
	ldr	r3, [r3]
	subs	r4, r3, #1
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	str	r0, [r7, #8]
	b	.L9
.L12:
	add	r4, r4, r5
.L10:
	ldr	r3, [r7, #8]
	cmp	r4, r3
	bcs	.L11
	ldr	r3, [r7, #4]
	add	r3, r3, r4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L16+4
.LPIC8:
	add	r3, pc
	ldr	r5, [r3, r2, lsl #2]
	cmp	r5, #0
	bne	.L12
.L11:
	cmp	r5, #0
	bne	.L9
	ldr	r3, .L16+8
.LPIC9:
	add	r3, pc
	ldr	r0, [r3]
	ldr	r3, .L16+12
.LPIC10:
	add	r3, pc
	ldr	r3, [r3]
	subs	r3, r4, r3
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, .L16+16
.LPIC11:
	add	r3, pc
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r1, [r7, #12]
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #12]
	b	.L14
.L13:
	adds	r4, r4, #1
.L9:
	ldr	r3, [r7, #8]
	cmp	r4, r3
	bcc	.L10
	movs	r3, #0
.L14:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L17:
	.align	2
.L16:
	.word	len-(.LPIC7+4)
	.word	table-(.LPIC8+4)
	.word	findme-(.LPIC9+4)
	.word	len-(.LPIC10+4)
	.word	len-(.LPIC11+4)
	.size	strsearch, .-strsearch
	.section	.rodata
	.align	2
.LC108:
	.ascii	"\000"
	.align	2
.LC109:
	.ascii	" not\000"
	.align	2
.LC110:
	.ascii	"\"%s\" is%s in \"%s\"\000"
	.align	2
.LC111:
	.ascii	" [\"%s\"]\000"
	.align	2
.LC0:
	.ascii	"abb\000"
	.align	2
.LC1:
	.ascii	"you\000"
	.align	2
.LC2:
	.ascii	"not\000"
	.align	2
.LC3:
	.ascii	"it\000"
	.align	2
.LC4:
	.ascii	"dad\000"
	.align	2
.LC5:
	.ascii	"yoo\000"
	.align	2
.LC6:
	.ascii	"hoo\000"
	.align	2
.LC7:
	.ascii	"oo\000"
	.align	2
.LC8:
	.ascii	"oh\000"
	.align	2
.LC9:
	.ascii	"xx\000"
	.align	2
.LC10:
	.ascii	"x\000"
	.align	2
.LC11:
	.ascii	"field\000"
	.align	2
.LC12:
	.ascii	"new\000"
	.align	2
.LC13:
	.ascii	"row\000"
	.align	2
.LC14:
	.ascii	"regime\000"
	.align	2
.LC15:
	.ascii	"boom\000"
	.align	2
.LC16:
	.ascii	"that\000"
	.align	2
.LC17:
	.ascii	"impact\000"
	.align	2
.LC18:
	.ascii	"and\000"
	.align	2
.LC19:
	.ascii	"zoom\000"
	.align	2
.LC20:
	.ascii	"texture\000"
	.align	2
.LC21:
	.ascii	"magnet\000"
	.align	2
.LC22:
	.ascii	"doom\000"
	.align	2
.LC23:
	.ascii	"loom\000"
	.align	2
.LC24:
	.ascii	"freq\000"
	.align	2
.LC25:
	.ascii	"current\000"
	.align	2
.LC26:
	.ascii	"phase\000"
	.align	2
.LC27:
	.ascii	"images\000"
	.align	2
.LC28:
	.ascii	"appears\000"
	.align	2
.LC29:
	.ascii	"conductor\000"
	.align	2
.LC30:
	.ascii	"wavez\000"
	.align	2
.LC31:
	.ascii	"normal\000"
	.align	2
.LC32:
	.ascii	"free\000"
	.align	2
.LC33:
	.ascii	"termed\000"
	.align	2
.LC34:
	.ascii	"provide\000"
	.align	2
.LC35:
	.ascii	"for\000"
	.align	2
.LC36:
	.ascii	"struct\000"
	.align	2
.LC37:
	.ascii	"about\000"
	.align	2
.LC38:
	.ascii	"have\000"
	.align	2
.LC39:
	.ascii	"proper\000"
	.align	2
.LC40:
	.ascii	"involve\000"
	.align	2
.LC41:
	.ascii	"describedly\000"
	.align	2
.LC42:
	.ascii	"thats\000"
	.align	2
.LC43:
	.ascii	"spaces\000"
	.align	2
.LC44:
	.ascii	"circumstance\000"
	.align	2
.LC45:
	.ascii	"the\000"
	.align	2
.LC46:
	.ascii	"member\000"
	.align	2
.LC47:
	.ascii	"such\000"
	.align	2
.LC48:
	.ascii	"guide\000"
	.align	2
.LC49:
	.ascii	"regard\000"
	.align	2
.LC50:
	.ascii	"officers\000"
	.align	2
.LC51:
	.ascii	"implement\000"
	.align	2
.LC52:
	.ascii	"principalities\000"
	.data
	.align	2
.LC106:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC9
	.word	.LC10
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC26
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC18
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	0
	.section	.rodata
	.align	2
.LC54:
	.ascii	"cabbie\000"
	.align	2
.LC55:
	.ascii	"your\000"
	.align	2
.LC56:
	.ascii	"It isn't here\000"
	.align	2
.LC57:
	.ascii	"But it is here\000"
	.align	2
.LC58:
	.ascii	"hodad\000"
	.align	2
.LC59:
	.ascii	"yoohoo\000"
	.align	2
.LC60:
	.ascii	".\000"
	.align	2
.LC61:
	.ascii	"In recent years, the field of photonic \000"
	.align	2
.LC62:
	.ascii	"crystals has found new\000"
	.align	2
.LC63:
	.ascii	"applications in the RF and microwave\000"
	.align	2
.LC64:
	.ascii	"regime. A new type of metallic\000"
	.align	2
.LC65:
	.ascii	"electromagnetic crystal has been\000"
	.align	2
.LC66:
	.ascii	"developed that is having a\000"
	.align	2
.LC67:
	.ascii	"significant impact on the field of\000"
	.align	2
.LC68:
	.ascii	"antennas. It consists of a\000"
	.align	2
.LC69:
	.ascii	"conductive surface, covered with a\000"
	.align	2
.LC70:
	.ascii	"special texture which alters its\000"
	.align	2
.LC71:
	.ascii	"electromagnetic properties. Made of solid\000"
	.align	2
.LC72:
	.ascii	"metal, the structure\000"
	.align	2
.LC73:
	.ascii	"conducts DC currents, but over a\000"
	.align	2
.LC74:
	.ascii	"particular frequency range it does\000"
	.align	2
.LC75:
	.ascii	"not conduct AC currents. It does not\000"
	.align	2
.LC76:
	.ascii	"reverse the phase of reflected\000"
	.align	2
.LC77:
	.ascii	"waves, and the effective image currents\000"
	.align	2
.LC78:
	.ascii	"appear in-phase, rather than\000"
	.align	2
.LC79:
	.ascii	"out-of-phase as they are on normal\000"
	.align	2
.LC80:
	.ascii	"conductors. Furthermore, surface\000"
	.align	2
.LC81:
	.ascii	"waves do not propagate, and instead\000"
	.align	2
.LC82:
	.ascii	"radiate efficiently into free\000"
	.align	2
.LC83:
	.ascii	"space. This new material, termed a\000"
	.align	2
.LC84:
	.ascii	"high-impedance surface, provides\000"
	.align	2
.LC85:
	.ascii	"a useful new ground plane for novel\000"
	.align	2
.LC86:
	.ascii	"low-profile antennas and other\000"
	.align	2
.LC87:
	.ascii	"electromagnetic structures.\000"
	.align	2
.LC88:
	.ascii	"The recent protests about the Michigamua\000"
	.align	2
.LC89:
	.ascii	"student organization have raised an\000"
	.align	2
.LC90:
	.ascii	"important question as to the proper nature\000"
	.align	2
.LC91:
	.ascii	"and scope of University involvement\000"
	.align	2
.LC92:
	.ascii	"with student organizations. Accordingly\000"
	.align	2
.LC93:
	.ascii	"the panel described in my Statement of\000"
	.align	2
.LC94:
	.ascii	"February 25, 2000 that is considering the\000"
	.align	2
.LC95:
	.ascii	"question of privileged space also will\000"
	.align	2
.LC96:
	.ascii	"consider under what circumstances and in\000"
	.align	2
.LC97:
	.ascii	"what ways the University, its\000"
	.align	2
.LC98:
	.ascii	"administrators and faculty members should\000"
	.align	2
.LC99:
	.ascii	"be associated with such organizations\000"
	.align	2
.LC100:
	.ascii	"and it will recommend guiding principles\000"
	.align	2
.LC101:
	.ascii	"in this regard. The University's\000"
	.align	2
.LC102:
	.ascii	"Executive Officers and I will then decide\000"
	.align	2
.LC103:
	.ascii	"whether and how to implement such\000"
	.align	2
.LC104:
	.ascii	"principles.\000"
	.data
	.align	2
.LC107:
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC59
	.word	.LC59
	.word	.LC59
	.word	.LC59
	.word	.LC9
	.word	.LC10
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.word	.LC76
	.word	.LC77
	.word	.LC78
	.word	.LC79
	.word	.LC80
	.word	.LC81
	.word	.LC82
	.word	.LC83
	.word	.LC84
	.word	.LC85
	.word	.LC86
	.word	.LC87
	.word	.LC88
	.word	.LC89
	.word	.LC90
	.word	.LC91
	.word	.LC92
	.word	.LC93
	.word	.LC94
	.word	.LC95
	.word	.LC96
	.word	.LC97
	.word	.LC98
	.word	.LC99
	.word	.LC100
	.word	.LC101
	.word	.LC102
	.word	.LC103
	.word	.LC104
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 472
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #472
	add	r7, sp, #0
	ldr	r4, .L26
.LPIC12:
	add	r4, pc
	ldr	r3, .L26+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #468]
	ldr	r3, .L26+8
.LPIC13:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #236
	mov	r1, r2
	movs	r2, #232
	mov	r0, r3
	bl	memcpy(PLT)
	add	r3, r7, #8
	ldr	r2, .L26+12
.LPIC14:
	add	r2, pc
	mov	r0, r3
	mov	r1, r2
	movs	r3, #228
	mov	r2, r3
	bl	memcpy(PLT)
	mov	r3, r7
	movs	r2, #0
	str	r2, [r3]
	b	.L19
.L23:
	mov	r3, r7
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #472
	add	r3, r3, r2
	ldr	r3, [r3, #-236]
	mov	r0, r3
	bl	init_search(PLT)
	add	r3, r7, #8
	mov	r2, r7
	ldr	r2, [r2]
	ldr	r3, [r3, r2, lsl #2]
	adds	r5, r7, #4
	mov	r0, r3
	bl	strsearch(PLT)
	str	r0, [r5]
	mov	r3, r7
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #472
	add	r3, r3, r2
	ldr	r1, [r3, #-236]
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L20
	ldr	r3, .L26+16
.LPIC15:
	add	r3, pc
	mov	r0, r3
	b	.L21
.L20:
	ldr	r3, .L26+20
.LPIC16:
	add	r3, pc
	mov	r0, r3
.L21:
	add	r3, r7, #8
	mov	r2, r7
	ldr	r2, [r2]
	ldr	r3, [r3, r2, lsl #2]
	mov	r2, r0
	ldr	r0, .L26+24
.LPIC17:
	add	r0, pc
	bl	printf(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L22
	adds	r3, r7, #4
	ldr	r1, [r3]
	ldr	r3, .L26+28
.LPIC18:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
.L22:
	movs	r0, #10
	bl	putchar(PLT)
	mov	r3, r7
	mov	r2, r7
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L19:
	mov	r3, r7
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #472
	add	r3, r3, r2
	ldr	r3, [r3, #-236]
	cmp	r3, #0
	bne	.L23
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L26+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #468]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L25
	bl	__stack_chk_fail(PLT)
.L25:
	add	r7, r7, #472
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC106-(.LPIC13+4)
	.word	.LC107-(.LPIC14+4)
	.word	.LC108-(.LPIC15+4)
	.word	.LC109-(.LPIC16+4)
	.word	.LC110-(.LPIC17+4)
	.word	.LC111-(.LPIC18+4)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
