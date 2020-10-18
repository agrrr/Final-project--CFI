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
	.file	"pgp.c"
	.text
	.global	rel_version
	.data
	.align	2
	.type	rel_version, %object
	.size	rel_version, 8
rel_version:
	.ascii	"2.6.3ia\000"
	.global	rel_date
	.align	2
	.type	rel_date, %object
	.size	rel_date, 11
rel_date:
	.ascii	"1996-03-04\000"
	.global	PGP_EXTENSION
	.align	2
	.type	PGP_EXTENSION, %object
	.size	PGP_EXTENSION, 5
PGP_EXTENSION:
	.ascii	".pgp\000"
	.global	ASC_EXTENSION
	.align	2
	.type	ASC_EXTENSION, %object
	.size	ASC_EXTENSION, 5
ASC_EXTENSION:
	.ascii	".asc\000"
	.global	SIG_EXTENSION
	.align	2
	.type	SIG_EXTENSION, %object
	.size	SIG_EXTENSION, 5
SIG_EXTENSION:
	.ascii	".sig\000"
	.global	BAK_EXTENSION
	.align	2
	.type	BAK_EXTENSION, %object
	.size	BAK_EXTENSION, 5
BAK_EXTENSION:
	.ascii	".bak\000"
	.align	2
	.type	HLP_EXTENSION, %object
	.size	HLP_EXTENSION, 5
HLP_EXTENSION:
	.ascii	".hlp\000"
	.global	CONSOLE_FILENAME
	.align	2
	.type	CONSOLE_FILENAME, %object
	.size	CONSOLE_FILENAME, 9
CONSOLE_FILENAME:
	.ascii	"_CONSOLE\000"
	.align	2
	.type	HELP_FILENAME, %object
	.size	HELP_FILENAME, 8
HELP_FILENAME:
	.ascii	"pgp.hlp\000"
	.comm	globalPubringName,256,4
	.comm	globalSecringName,256,4
	.comm	globalRandseedName,256,4
	.comm	globalCommentString,128,4
	.global	verbose
	.bss
	.type	verbose, %object
	.size	verbose, 1
verbose:
	.space	1
	.comm	pgpout,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"PK\003\004\000"
	.align	2
.LC1:
	.ascii	"ZOO \000"
	.align	2
.LC2:
	.ascii	"GIF8\000"
	.align	2
.LC3:
	.ascii	"\352`\000"
	.align	2
.LC4:
	.ascii	"Rar!\000"
	.align	2
.LC5:
	.ascii	"HPAK\000"
	.align	2
.LC6:
	.ascii	"\037\213\000"
	.align	2
.LC7:
	.ascii	"\037\235\000"
	.align	2
.LC8:
	.ascii	"\032\013\000"
	.align	2
.LC9:
	.ascii	"\032HP%\000"
	.section	.data.rel.local,"aw",%progbits
	.align	2
	.type	compressSig, %object
	.size	compressSig, 40
compressSig:
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
	.section	.rodata
	.align	2
.LC10:
	.ascii	"PKZIP\000"
	.align	2
.LC11:
	.ascii	"Zoo\000"
	.align	2
.LC12:
	.ascii	"GIF\000"
	.align	2
.LC13:
	.ascii	"Arj\000"
	.align	2
.LC14:
	.ascii	"RAR\000"
	.align	2
.LC15:
	.ascii	"Hpack\000"
	.align	2
.LC16:
	.ascii	"gzip\000"
	.align	2
.LC17:
	.ascii	"compressed\000"
	.align	2
.LC18:
	.ascii	"PAK\000"
	.align	2
.LC19:
	.ascii	"Hyper\000"
	.align	2
.LC20:
	.ascii	"Lha\000"
	.align	2
.LC21:
	.ascii	"Lharc\000"
	.section	.data.rel.local
	.align	2
	.type	compressName, %object
	.size	compressName, 48
compressName:
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
	.section	.rodata
	.align	2
.LC22:
	.ascii	".zip\000"
	.align	2
.LC23:
	.ascii	".zoo\000"
	.align	2
.LC24:
	.ascii	".gif\000"
	.align	2
.LC25:
	.ascii	".arj\000"
	.align	2
.LC26:
	.ascii	".rar\000"
	.align	2
.LC27:
	.ascii	".hpk\000"
	.align	2
.LC28:
	.ascii	".gz\000"
	.align	2
.LC29:
	.ascii	".Z\000"
	.align	2
.LC30:
	.ascii	".pak\000"
	.align	2
.LC31:
	.ascii	".hyp\000"
	.align	2
.LC32:
	.ascii	".lha\000"
	.align	2
.LC33:
	.ascii	".lzh\000"
	.section	.data.rel.local
	.align	2
	.type	compressExt, %object
	.size	compressExt, 48
compressExt:
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.section	.rodata
	.align	2
.LC34:
	.ascii	"-lh5-\000"
	.text
	.align	1
	.global	compressSignature
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	compressSignature, %function
compressSignature:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L2
.L5:
	ldr	r3, .L9
.LPIC0:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r4, [r2, r3, lsl #2]
	ldr	r3, .L9+4
.LPIC1:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r2, r3, lsl #2]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	mov	r2, r3
	mov	r1, r4
	ldr	r0, [r7, #4]
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	ldr	r3, [r7, #12]
	b	.L4
.L3:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	cmp	r3, #9
	bls	.L5
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	movs	r2, #5
	ldr	r1, .L9+8
.LPIC2:
	add	r1, pc
	mov	r0, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #12]
	b	.L4
.L6:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L7
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #108
	bne	.L7
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #122
	beq	.L8
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #104
	bne	.L7
.L8:
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L7
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	b	.L4
.L7:
	mov	r3, #-1
.L4:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L10:
	.align	2
.L9:
	.word	compressSig-(.LPIC0+4)
	.word	compressSig-(.LPIC1+4)
	.word	.LC34-(.LPIC2+4)
	.size	compressSignature, .-compressSignature
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	file_compressible, %function
file_compressible:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L16
.LPIC3:
	add	r4, pc
	ldr	r3, .L16+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	add	r3, r7, #12
	movs	r2, #8
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	get_header_info_from_file(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	compressSignature(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L12
	movs	r3, #0
	b	.L14
.L12:
	movs	r3, #1
.L14:
	mov	r0, r3
	ldr	r3, .L16+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L15
	bl	__stack_chk_fail(PLT)
.L15:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L17:
	.align	2
.L16:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	__stack_chk_guard(GOT)
	.size	file_compressible, .-file_compressible
	.section	.rodata
	.align	2
.LC35:
	.ascii	"\012Stopped at user request\012\000"
	.text
	.align	1
	.global	breakHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	breakHandler, %function
breakHandler:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, .L19
.LPIC4:
	add	r2, pc
	ldr	r3, .L19+4
	ldr	r3, [r2, r3]
	ldr	r4, [r3]
	ldr	r3, .L19+8
.LPIC5:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	fprintf(PLT)
	movs	r0, #6
	bl	exitPGP(PLT)
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	pgpout(GOT)
	.word	.LC35-(.LPIC5+4)
	.size	breakHandler, .-breakHandler
	.section	.rodata
	.align	2
.LC36:
	.ascii	"\012\033[0;0H\033[J\015           \015\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	clearscreen, %function
clearscreen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r3, r4, r7, lr}
	add	r7, sp, #0
	ldr	r4, .L22
.LPIC6:
	add	r4, pc
	ldr	r3, .L22+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #23
	movs	r1, #1
	ldr	r0, .L22+8
.LPIC7:
	add	r0, pc
	bl	fwrite(PLT)
	ldr	r3, .L22+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	fflush(PLT)
	nop
	pop	{r3, r4, r7, pc}
.L23:
	.align	2
.L22:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	pgpout(GOT)
	.word	.LC36-(.LPIC7+4)
	.size	clearscreen, .-clearscreen
	.section	.rodata
	.align	2
.LC37:
	.ascii	"Pretty Good Privacy(tm) %s - Public-key encryption "
	.ascii	"for the masses.\012\000"
	.align	2
.LC38:
	.ascii	"(c) 1990-96 Philip Zimmermann, Phil's Pretty Good S"
	.ascii	"oftware.\000"
	.align	2
.LC39:
	.ascii	" %s\012\000"
	.align	2
.LC40:
	.ascii	"International version - not for use in the USA. Doe"
	.ascii	"s not use RSAREF.\012\000"
	.align	2
.LC41:
	.ascii	"Current time: %s\012\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	signon_msg, %function
signon_msg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	ldr	r4, .L30
.LPIC8:
	add	r4, pc
	ldr	r3, .L30+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #4]
	ldr	r3, .L30+8
.LPIC9:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L29
	ldr	r3, .L30+12
.LPIC10:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L29
	ldr	r3, .L30+16
.LPIC11:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, .L30+20
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L30+24
.LPIC12:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L30+28
.LPIC13:
	add	r3, pc
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L30+32
.LPIC14:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r2, r0
	ldr	r3, .L30+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	fputs(PLT)
	ldr	r3, .L30+20
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L30+36
.LPIC15:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L30+40
.LPIC16:
	add	r3, pc
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L30+44
.LPIC17:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r2, r0
	ldr	r3, .L30+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	fputs(PLT)
	mov	r3, r7
	mov	r0, r3
	bl	get_timestamp(PLT)
	ldr	r3, .L30+48
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L30+52
.LPIC18:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r6, r0
	mov	r3, r7
	mov	r0, r3
	bl	ctdate(PLT)
	mov	r3, r0
	mov	r2, r3
	mov	r1, r6
	mov	r0, r5
	bl	fprintf(PLT)
	b	.L24
.L29:
	nop
.L24:
	ldr	r3, .L30+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L28
	bl	__stack_chk_fail(PLT)
.L28:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L31:
	.align	2
.L30:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	__stack_chk_guard(GOT)
	.word	quietmode-(.LPIC9+4)
	.word	printed.7806-(.LPIC10+4)
	.word	printed.7806-(.LPIC11+4)
	.word	stderr(GOT)
	.word	.LC37-(.LPIC12+4)
	.word	rel_version-(.LPIC13+4)
	.word	.LC38-(.LPIC14+4)
	.word	rel_date-(.LPIC15+4)
	.word	.LC39-(.LPIC16+4)
	.word	.LC40-(.LPIC17+4)
	.word	pgpout(GOT)
	.word	.LC41-(.LPIC18+4)
	.size	signon_msg, .-signon_msg
	.global	emit_radix_64
	.bss
	.type	emit_radix_64, %object
	.size	emit_radix_64, 1
emit_radix_64:
	.space	1
	.local	sign_flag
	.comm	sign_flag,1,1
	.global	moreflag
	.type	moreflag, %object
	.size	moreflag, 1
moreflag:
	.space	1
	.global	filter_mode
	.type	filter_mode, %object
	.size	filter_mode, 1
filter_mode:
	.space	1
	.local	preserve_filename
	.comm	preserve_filename,1,1
	.local	decrypt_only_flag
	.comm	decrypt_only_flag,1,1
	.local	de_armor_only
	.comm	de_armor_only,1,1
	.local	strip_sig_flag
	.comm	strip_sig_flag,1,1
	.global	clear_signatures
	.data
	.type	clear_signatures, %object
	.size	clear_signatures, 1
clear_signatures:
	.byte	1
	.comm	strip_spaces,1,1
	.local	c_flag
	.comm	c_flag,1,1
	.local	u_flag
	.comm	u_flag,1,1
	.global	encrypt_to_self
	.bss
	.type	encrypt_to_self, %object
	.size	encrypt_to_self, 1
encrypt_to_self:
	.space	1
	.global	sign_new_userids
	.data
	.type	sign_new_userids, %object
	.size	sign_new_userids, 1
sign_new_userids:
	.byte	1
	.global	batchmode
	.bss
	.type	batchmode, %object
	.size	batchmode, 1
batchmode:
	.space	1
	.global	quietmode
	.type	quietmode, %object
	.size	quietmode, 1
quietmode:
	.space	1
	.global	force_flag
	.data
	.type	force_flag, %object
	.size	force_flag, 1
force_flag:
	.byte	1
	.global	literal_mode
	.type	literal_mode, %object
	.size	literal_mode, 1
literal_mode:
	.byte	98
	.global	my_name
	.bss
	.align	2
	.type	my_name, %object
	.size	my_name, 256
my_name:
	.space	256
	.global	keepctx
	.type	keepctx, %object
	.size	keepctx, 1
keepctx:
	.space	1
	.global	interactive_add
	.type	interactive_add, %object
	.size	interactive_add, 1
interactive_add:
	.space	1
	.global	compress_enabled
	.data
	.type	compress_enabled, %object
	.size	compress_enabled, 1
compress_enabled:
	.byte	1
	.global	timeshift
	.bss
	.align	2
	.type	timeshift, %object
	.size	timeshift, 4
timeshift:
	.space	4
	.global	version_byte
	.data
	.align	2
	.type	version_byte, %object
	.size	version_byte, 4
version_byte:
	.word	3
	.global	nomanual
	.bss
	.type	nomanual, %object
	.size	nomanual, 1
nomanual:
	.space	1
	.global	makerandom
	.align	2
	.type	makerandom, %object
	.size	makerandom, 4
makerandom:
	.space	4
	.local	outputfile
	.comm	outputfile,4,4
	.local	errorLvl
	.comm	errorLvl,4,4
	.local	mcguffin
	.comm	mcguffin,256,4
	.global	signature_checked
	.type	signature_checked, %object
	.size	signature_checked, 1
signature_checked:
	.space	1
	.global	checksig_pass
	.align	2
	.type	checksig_pass, %object
	.size	checksig_pass, 4
checksig_pass:
	.space	4
	.comm	use_charset_header,1,1
	.global	charset_header
	.align	2
	.type	charset_header, %object
	.size	charset_header, 16
charset_header:
	.space	16
	.comm	plainfile,256,4
	.global	myArgc
	.data
	.align	2
	.type	myArgc, %object
	.size	myArgc, 4
myArgc:
	.word	2
	.comm	myArgv,4,4
	.global	passwds
	.bss
	.align	2
	.type	passwds, %object
	.size	passwds, 4
passwds:
	.space	4
	.global	keypasswds
	.align	2
	.type	keypasswds, %object
	.size	keypasswds, 4
keypasswds:
	.space	4
	.section	.data.rel.local
	.align	2
	.type	passwdstail, %object
	.size	passwdstail, 4
passwdstail:
	.word	passwds
	.section	.rodata
	.align	2
.LC42:
	.ascii	"PGPPASS\000"
	.align	2
.LC43:
	.ascii	"PGPPASSFD\000"
	.align	2
.LC44:
	.ascii	"pubring.pgp\000"
	.align	2
.LC45:
	.ascii	"secring.pgp\000"
	.align	2
.LC46:
	.ascii	"randseed.bin\000"
	.align	2
.LC47:
	.ascii	"config.txt\000"
	.align	2
.LC48:
	.ascii	"\007No configuration file found.\012\000"
	.align	2
.LC49:
	.ascii	"TMP\000"
	.align	2
.LC50:
	.ascii	"\012\007Out of memory.\012\000"
	.align	2
.LC51:
	.ascii	"-@\000"
	.align	2
.LC52:
	.ascii	"abcdefghiklmo:prstu:vwxz:ABCDEFGHIKLMO:PRSTU:VWX?\000"
	.align	2
.LC53:
	.ascii	"CH\000"
	.align	2
.LC54:
	.ascii	"-\000"
	.align	2
.LC55:
	.ascii	"\012File %s wiped and deleted. \000"
	.align	2
.LC56:
	.ascii	"\012\007Error: Can't wipe out file '%s' - read only"
	.ascii	", maybe?\012\000"
	.align	2
.LC57:
	.ascii	"\012\007File '%s' does not exist.\012\000"
	.align	2
.LC58:
	.ascii	"\012For details on licensing and distribution, see "
	.ascii	"the PGP User's Guide.\012For other cryptography pro"
	.ascii	"ducts and custom development services, contact:\012"
	.ascii	"Philip Zimmermann, 3021 11th St, Boulder CO 80304 U"
	.ascii	"SA, phone +1 303 541-0140\012\000"
	.align	2
.LC59:
	.ascii	"@translator@\000"
	.align	2
.LC60:
	.ascii	"\012For a usage summary, type:  pgp -h\012\000"
	.align	2
.LC61:
	.ascii	"stdin\000"
	.align	2
.LC62:
	.ascii	"Error writing file \"%s\"\012\000"
	.align	2
.LC63:
	.ascii	"File %s created containing %d random bytes.\012\000"
	.align	2
.LC64:
	.ascii	"\007Invalid filename: '%s' too long\012\000"
	.align	2
.LC65:
	.ascii	"\012\007Input file '%s' looks like it may have been"
	.ascii	" created by PGP. \000"
	.align	2
.LC66:
	.ascii	"\012Is it safe to assume that it was created by PGP"
	.ascii	" (y/N)? \000"
	.align	2
.LC67:
	.ascii	"\012Note: '%s' is not a pure text file.\012File wil"
	.ascii	"l be treated as binary data.\012\000"
	.align	2
.LC68:
	.ascii	"\012\007Error: Only text files may be sent as displ"
	.ascii	"ay-only.\012\000"
	.align	2
.LC69:
	.ascii	"\012A secret key is required to make a signature. \000"
	.align	2
.LC70:
	.ascii	"\012You specified no user ID to select your secret "
	.ascii	"key,\012so the default user ID and key will be the "
	.ascii	"most recently\012added key on your secret keyring.\012"
	.ascii	"\000"
	.align	2
.LC71:
	.ascii	"\007Signature error\012\000"
	.align	2
.LC72:
	.ascii	"\012\012Recipients' public key(s) will be used to e"
	.ascii	"ncrypt. \000"
	.align	2
.LC73:
	.ascii	"\012A user ID is required to select the recipient's"
	.ascii	" public key. \000"
	.align	2
.LC74:
	.ascii	"\012Enter the recipient's user ID: \000"
	.align	2
.LC75:
	.ascii	"\000"
	.align	2
.LC76:
	.ascii	"\007Encryption error\012\000"
	.align	2
.LC77:
	.ascii	"\012Ciphertext file: %s\012\000"
	.align	2
.LC78:
	.ascii	"\012Signature file: %s\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 848
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #868
	add	r7, sp, #16
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	ldr	r4, .L199
.LPIC19:
	add	r4, pc
	ldr	r3, .L199+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #844]
	add	r3, r7, #32
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #36
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #13
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #14
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #15
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #16
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #17
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #18
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #19
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #20
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #52
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #60
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #21
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L199+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L199+12
	ldr	r2, [r4, r2]
	str	r3, [r2]
	add	r5, r7, #56
	ldr	r3, .L199+16
.LPIC20:
	add	r3, pc
	mov	r0, r3
	bl	getenv(PLT)
	str	r0, [r5]
	add	r3, r7, #56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L33
	add	r5, r7, #64
	movs	r0, #20
	bl	xmalloc(PLT)
	str	r0, [r5]
	add	r3, r7, #56
	ldr	r0, [r3]
	bl	strlen(PLT)
	mov	r3, r0
	mov	r1, r3
	add	r3, r7, #64
	ldr	r3, [r3]
	adds	r2, r3, #4
	add	r3, r7, #56
	ldr	r0, [r3]
	bl	hashpass(PLT)
	ldr	r3, .L199+20
.LPIC21:
	add	r3, pc
	ldr	r2, [r3]
	add	r3, r7, #64
	ldr	r3, [r3]
	str	r2, [r3]
	ldr	r3, .L199+24
.LPIC22:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #64
	ldr	r3, [r3]
	str	r3, [r2]
.L33:
	add	r3, r7, #28
	movs	r2, #1
	str	r2, [r3]
	b	.L34
.L43:
	add	r3, r7, #28
	ldr	r3, [r3]
	lsls	r3, r3, #2
	mov	r2, r7
	ldr	r2, [r2]
	add	r2, r2, r3
	add	r3, r7, #56
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #56
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L194
	add	r3, r7, #56
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #122
	bne	.L194
	add	r3, r7, #56
	add	r2, r7, #56
	ldr	r2, [r2]
	adds	r2, r2, #2
	str	r2, [r3]
	add	r3, r7, #56
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L38
	add	r3, r7, #28
	add	r2, r7, #28
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	add	r3, r7, #28
	ldr	r3, [r3]
	lsls	r3, r3, #2
	mov	r2, r7
	ldr	r2, [r2]
	add	r2, r2, r3
	add	r3, r7, #56
	ldr	r2, [r2]
	str	r2, [r3]
.L38:
	add	r3, r7, #56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L195
	add	r5, r7, #64
	movs	r0, #20
	bl	xmalloc(PLT)
	str	r0, [r5]
	add	r3, r7, #56
	ldr	r0, [r3]
	bl	strlen(PLT)
	mov	r3, r0
	mov	r1, r3
	add	r3, r7, #64
	ldr	r3, [r3]
	adds	r2, r3, #4
	add	r3, r7, #56
	ldr	r0, [r3]
	bl	hashpass(PLT)
	b	.L41
.L42:
	add	r3, r7, #56
	ldr	r3, [r3]
	add	r2, r7, #56
	adds	r1, r3, #1
	str	r1, [r2]
	movs	r2, #32
	strb	r2, [r3]
.L41:
	add	r3, r7, #56
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L42
	add	r3, r7, #64
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L199+28
.LPIC23:
	add	r3, pc
	ldr	r3, [r3]
	add	r2, r7, #64
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #64
	ldr	r3, [r3]
	ldr	r2, .L199+32
.LPIC24:
	add	r2, pc
	str	r3, [r2]
	b	.L37
.L194:
	nop
.L37:
	add	r3, r7, #28
	add	r2, r7, #28
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L34:
	add	r2, r7, #28
	adds	r3, r7, #4
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L43
	b	.L40
.L195:
	nop
.L40:
	add	r5, r7, #56
	ldr	r3, .L199+36
.LPIC25:
	add	r3, pc
	mov	r0, r3
	bl	getenv(PLT)
	str	r0, [r5]
	add	r3, r7, #56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L44
	add	r3, r7, #56
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L44
	add	r5, r7, #68
	add	r3, r7, #56
	ldr	r0, [r3]
	bl	atoi(PLT)
	str	r0, [r5]
	add	r3, r7, #68
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L44
	add	r3, r7, #56
	add	r2, r7, #588
	str	r2, [r3]
	b	.L45
.L47:
	add	r3, r7, #56
	add	r2, r7, #56
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L45:
	add	r1, r7, #56
	add	r3, r7, #68
	movs	r2, #1
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	read(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L46
	add	r3, r7, #56
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L47
.L46:
	add	r5, r7, #64
	movs	r0, #20
	bl	xmalloc(PLT)
	str	r0, [r5]
	add	r3, r7, #56
	ldr	r2, [r3]
	add	r3, r7, #588
	subs	r1, r2, r3
	add	r3, r7, #64
	ldr	r3, [r3]
	adds	r2, r3, #4
	add	r3, r7, #588
	mov	r0, r3
	bl	hashpass(PLT)
	add	r3, r7, #56
	ldr	r2, [r3]
	add	r3, r7, #588
	subs	r3, r2, r3
	mov	r2, r3
	add	r3, r7, #588
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #64
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L199+40
.LPIC26:
	add	r3, pc
	ldr	r3, [r3]
	add	r2, r7, #64
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #64
	ldr	r3, [r3]
	ldr	r2, .L199+44
.LPIC27:
	add	r2, pc
	str	r3, [r2]
.L44:
	add	r3, r7, #28
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L199+48
.LPIC28:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L199+52
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	buildfilename(PLT)
	ldr	r3, .L199+56
.LPIC29:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L199+60
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	buildfilename(PLT)
	ldr	r3, .L199+64
.LPIC30:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L199+68
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	buildfilename(PLT)
	ldr	r3, .L199+72
.LPIC31:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L199+76
.LPIC32:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L199+80
.LPIC33:
	add	r3, pc
	mov	r0, r3
	bl	buildfilename(PLT)
	movs	r1, #0
	ldr	r3, .L199+84
.LPIC34:
	add	r3, pc
	mov	r0, r3
	bl	access(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L48
	add	r3, r7, #28
	add	r2, r7, #28
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	ldr	r3, .L199+88
.LPIC35:
	add	r3, pc
	mov	r0, r3
	bl	processConfigFile(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L48
	movs	r0, #5
	bl	exit(PLT)
.L48:
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L49
	ldr	r3, .L199+12
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L199+92
.LPIC36:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L49:
	bl	init_charset(PLT)
	add	r5, r7, #56
	ldr	r3, .L199+96
.LPIC37:
	add	r3, pc
	mov	r0, r3
	bl	getenv(PLT)
	str	r0, [r5]
	add	r3, r7, #56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L50
	add	r3, r7, #56
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L50
	add	r3, r7, #56
	ldr	r0, [r3]
	bl	settmpdir(PLT)
.L50:
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L199+100
	ldr	r3, [r4, r3]
	str	r2, [r3]
	ldr	r3, .L199+100
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L51
	ldr	r3, .L199+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L199+104
.LPIC38:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r0, #7
	bl	exitPGP(PLT)
.L51:
	ldr	r3, .L199+100
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L199+100
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	b	.L52
.L83:
	ldr	r3, .L199+108
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	mov	r2, r7
	ldr	r2, [r2]
	add	r3, r3, r2
	ldr	r3, [r3]
	movs	r2, #2
	ldr	r1, .L199+112
.LPIC39:
	add	r1, pc
	mov	r0, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	add	r5, r7, #28
	mov	r1, r7
	adds	r3, r7, #4
	ldr	r2, .L199+116
.LPIC40:
	add	r2, pc
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	pgp_getopt(PLT)
	str	r0, [r5]
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L54
.L53:
	ldr	r3, .L199+108
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r2, r7, #4
	ldr	r2, [r2]
	cmp	r2, r3
	beq	.L196
	ldr	r3, .L199+108
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r1, .L199+108
	ldr	r1, [r4, r1]
	str	r2, [r1]
	lsls	r3, r3, #2
	mov	r2, r7
	ldr	r2, [r2]
	add	r2, r2, r3
	ldr	r3, .L199+100
	ldr	r3, [r4, r3]
	ldr	r1, [r3]
	ldr	r3, .L199+120
.LPIC41:
	add	r3, pc
	ldr	r3, [r3]
	adds	r0, r3, #1
	ldr	r5, .L199+124
.LPIC42:
	add	r5, pc
	str	r0, [r5]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L54:
	add	r5, r7, #28
	add	r3, r7, #28
	ldr	r0, [r3]
	bl	to_lower(PLT)
	str	r0, [r5]
	add	r3, r7, #18
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L57
	add	r3, r7, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L58
	add	r3, r7, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L57
	add	r3, r7, #28
	ldr	r3, [r3]
	cmp	r3, #118
	bne	.L57
.L58:
	add	r3, r7, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L59
	add	r3, r7, #21
	movs	r2, #86
	strb	r2, [r3]
	b	.L60
.L59:
	add	r3, r7, #21
	add	r2, r7, #28
	ldr	r2, [r2]
	strb	r2, [r3]
.L60:
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L57:
	add	r3, r7, #28
	ldr	r3, [r3]
	subs	r3, r3, #43
	cmp	r3, #79
	bhi	.L61
	adr	r2, .L63
	ldr	r3, [r2, r3, lsl #2]
	add	r2, r2, r3
	bx	r2
	.p2align 2
.L63:
	.word	.L62+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L64+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L65+1-.L63
	.word	.L66+1-.L63
	.word	.L67+1-.L63
	.word	.L68+1-.L63
	.word	.L69+1-.L63
	.word	.L70+1-.L63
	.word	.L61+1-.L63
	.word	.L64+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L71+1-.L63
	.word	.L72+1-.L63
	.word	.L73+1-.L63
	.word	.L61+1-.L63
	.word	.L74+1-.L63
	.word	.L75+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L76+1-.L63
	.word	.L77+1-.L63
	.word	.L78+1-.L63
	.word	.L61+1-.L63
	.word	.L79+1-.L63
	.word	.L61+1-.L63
	.word	.L61+1-.L63
	.word	.L80+1-.L63
	.p2align 1
.L65:
	add	r3, r7, #16
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, .L199+128
.LPIC43:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L66:
	ldr	r3, .L199+132
.LPIC44:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #17
	ldr	r2, .L199+136
.LPIC45:
	add	r2, pc
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L67:
	add	r3, r7, #20
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	ldr	r3, .L199+140
.LPIC46:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L68:
	ldr	r3, .L199+144
.LPIC47:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L69:
	add	r3, r7, #19
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L70:
	ldr	r3, .L199+148
.LPIC48:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L64:
	bl	usage(PLT)
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L71:
	add	r3, r7, #18
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L72:
	ldr	r3, .L199+152
.LPIC49:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L73:
	ldr	r3, .L199+156
.LPIC50:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L75:
	ldr	r3, .L199+160
.LPIC51:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L74:
	ldr	r3, .L199+164
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L199+168
.LPIC52:
	add	r2, pc
	str	r3, [r2]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L76:
	ldr	r3, .L199+172
.LPIC53:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L77:
	ldr	r3, .L199+176
.LPIC54:
	add	r3, pc
	movs	r2, #116
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L78:
	ldr	r3, .L199+164
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #255
	mov	r1, r3
	ldr	r3, .L199+180
.LPIC55:
	add	r3, pc
	mov	r0, r3
	bl	strncpy(PLT)
	ldr	r3, .L199+184
.LPIC56:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L79:
	add	r3, r7, #15
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L80:
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L62:
	ldr	r3, .L199+164
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	processConfigLine(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L81
	ldr	r3, .L199+164
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #2
	ldr	r1, .L199+188
.LPIC57:
	add	r1, pc
	mov	r0, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L82
	bl	init_charset(PLT)
.L82:
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
	b	.L52
.L200:
	.align	2
.L199:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+4)
	.word	__stack_chk_guard(GOT)
	.word	stderr(GOT)
	.word	pgpout(GOT)
	.word	.LC42-(.LPIC20+4)
	.word	keypasswds-(.LPIC21+4)
	.word	keypasswds-(.LPIC22+4)
	.word	passwdstail-(.LPIC23+4)
	.word	passwdstail-(.LPIC24+4)
	.word	.LC43-(.LPIC25+4)
	.word	passwdstail-(.LPIC26+4)
	.word	passwdstail-(.LPIC27+4)
	.word	.LC44-(.LPIC28+4)
	.word	globalPubringName(GOT)
	.word	.LC45-(.LPIC29+4)
	.word	globalSecringName(GOT)
	.word	.LC46-(.LPIC30+4)
	.word	globalRandseedName(GOT)
	.word	my_name-(.LPIC31+4)
	.word	.LC47-(.LPIC32+4)
	.word	mcguffin-(.LPIC33+4)
	.word	mcguffin-(.LPIC34+4)
	.word	mcguffin-(.LPIC35+4)
	.word	.LC48-(.LPIC36+4)
	.word	.LC49-(.LPIC37+4)
	.word	myArgv(GOT)
	.word	.LC50-(.LPIC38+4)
	.word	optind(GOT)
	.word	.LC51-(.LPIC39+4)
	.word	.LC52-(.LPIC40+4)
	.word	myArgc-(.LPIC41+4)
	.word	myArgc-(.LPIC42+4)
	.word	emit_radix_64-(.LPIC43+4)
	.word	strip_sig_flag-(.LPIC44+4)
	.word	strip_sig_flag-(.LPIC45+4)
	.word	c_flag-(.LPIC46+4)
	.word	decrypt_only_flag-(.LPIC47+4)
	.word	filter_mode-(.LPIC48+4)
	.word	verbose-(.LPIC49+4)
	.word	moreflag-(.LPIC50+4)
	.word	preserve_filename-(.LPIC51+4)
	.word	optarg(GOT)
	.word	outputfile-(.LPIC52+4)
	.word	sign_flag-(.LPIC53+4)
	.word	literal_mode-(.LPIC54+4)
	.word	my_name-(.LPIC55+4)
	.word	u_flag-(.LPIC56+4)
	.word	.LC53-(.LPIC57+4)
.L81:
	ldr	r3, .L201
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	fputc(PLT)
.L61:
	bl	arg_error(PLT)
	add	r3, r7, #15
	add	r2, r7, #15
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #17
	add	r2, r7, #17
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #18
	add	r2, r7, #18
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #19
	add	r2, r7, #19
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #20
	ldrb	r2, [r2]
	strb	r2, [r3]
	add	r3, r7, #21
	add	r2, r7, #21
	ldrb	r2, [r2]
	strb	r2, [r3]
.L52:
	ldr	r3, .L201+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r2, r7, #4
	ldr	r2, [r2]
	cmp	r2, r3
	bgt	.L83
	b	.L56
.L196:
	nop
.L56:
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, .L201+12
.LPIC58:
	add	r3, pc
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #18
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L84
	add	r3, r7, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L84
	bl	key_usage(PLT)
.L84:
	bl	signon_msg(PLT)
	ldr	r3, .L201+16
.LPIC59:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L85
	ldr	r3, .L201+20
.LPIC60:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L201+24
.LPIC61:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	b	.L86
.L85:
	ldr	r3, .L201+28
.LPIC62:
	add	r3, pc
	ldrb	r2, [r3]	@ zero_extendqisi2
.L86:
	add	r3, r7, #22
	strb	r2, [r3]
	add	r3, r7, #22
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L87
	ldr	r3, .L201+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L201+36
	ldr	r2, [r4, r2]
	str	r3, [r2]
.L87:
	bl	initsigs(PLT)
	bl	noise(PLT)
	add	r3, r7, #18
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L88
	add	r5, r7, #24
	add	r3, r7, #21
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	do_keyopt(PLT)
	str	r0, [r5]
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L89
	bl	user_error(PLT)
.L89:
	add	r3, r7, #24
	ldr	r0, [r3]
	bl	exitPGP(PLT)
.L88:
	ldr	r3, .L201+40
.LPIC63:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L90
	ldr	r3, .L201+44
.LPIC64:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L90
	ldr	r3, .L201+48
.LPIC65:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
.L90:
	ldr	r3, .L201+52
.LPIC66:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L91
	add	r3, r7, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L91
	ldr	r3, .L201+56
.LPIC67:
	add	r3, pc
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #14
	ldr	r2, .L201+60
.LPIC68:
	add	r2, pc
	ldrb	r2, [r2]
	strb	r2, [r3]
.L91:
	ldr	r3, .L201+64
.LPIC69:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L92
	ldr	r3, .L201+68
.LPIC70:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
.L92:
	ldr	r3, .L201+72
.LPIC71:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L93
	add	r3, r7, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L93
	add	r3, r7, #20
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L93
	add	r3, r7, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L93
	add	r3, r7, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L94
	ldr	r3, .L201+76
.LPIC72:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L95
	bl	arg_error(PLT)
.L95:
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	wipefile(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L96
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	remove(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L96
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+80
.LPIC73:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #0
	bl	exitPGP(PLT)
	b	.L97
.L96:
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L98
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+84
.LPIC74:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	b	.L97
.L98:
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+88
.LPIC75:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L97:
	movs	r0, #3
	bl	exitPGP(PLT)
.L94:
	add	r3, r7, #14
	movs	r2, #1
	strb	r2, [r3]
.L93:
	ldr	r3, .L201+92
.LPIC76:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	bne	.L99
	ldr	r3, .L201+96
.LPIC77:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L100
	ldr	r3, .L201+100
.LPIC78:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L101
	ldr	r3, .L201+104
.LPIC79:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
	bl	signon_msg(PLT)
.L101:
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+108
.LPIC80:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	add	r5, r7, #56
	ldr	r3, .L201+112
.LPIC81:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	str	r0, [r5]
	add	r3, r7, #56
	ldr	r2, .L201+116
.LPIC82:
	add	r2, pc
	mov	r1, r2
	ldr	r0, [r3]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L102
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	add	r3, r7, #56
	ldr	r1, [r3]
	mov	r0, r2
	bl	fprintf(PLT)
.L102:
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r4, [r3]
	ldr	r3, .L201+120
.LPIC83:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	fprintf(PLT)
	movs	r0, #5
	bl	exit(PLT)
.L99:
	ldr	r3, .L201+124
.LPIC84:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L103
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	add	r3, r7, #36
	adds	r2, r2, #8
	str	r2, [r3]
	b	.L104
.L103:
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r2, [r2, #8]
	str	r2, [r3]
	ldr	r3, .L201+8
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	add	r3, r7, #36
	adds	r2, r2, #12
	str	r2, [r3]
.L104:
	add	r5, r7, #36
	add	r3, r7, #36
	ldr	r0, [r3]
	bl	ParseRecipients(PLT)
	str	r0, [r5]
.L100:
	ldr	r3, .L201+128
.LPIC85:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L105
	add	r3, r7, #32
	ldr	r2, .L201+132
.LPIC86:
	add	r2, pc
	str	r2, [r3]
	b	.L106
.L105:
	ldr	r3, .L201+136
.LPIC87:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L107
	ldr	r3, .L201+140
.LPIC88:
	add	r3, pc
	ldr	r3, [r3]
	mov	r2, r3
	add	r5, r7, #24
	add	r3, r7, #32
	movs	r1, #0
	ldr	r0, [r3]
	bl	cryptRandWriteFile(PLT)
	str	r0, [r5]
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L108
	ldr	r3, .L201
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	add	r3, r7, #32
	ldr	r2, [r3]
	ldr	r3, .L201+144
.LPIC89:
	add	r3, pc
	mov	r1, r3
	bl	fprintf(PLT)
	movs	r0, #1
	bl	exitPGP(PLT)
.L108:
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+148
.LPIC90:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L201+152
.LPIC91:
	add	r3, pc
	ldr	r3, [r3]
	add	r2, r7, #32
	ldr	r2, [r2]
	mov	r0, r5
	bl	fprintf(PLT)
	add	r3, r7, #14
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L109
	movs	r0, #0
	bl	exitPGP(PLT)
.L109:
	ldr	r3, .L201+156
.LPIC92:
	add	r3, pc
	movs	r2, #98
	strb	r2, [r3]
	b	.L106
.L107:
	add	r3, r7, #14
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L110
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	no_extension(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L110
	add	r3, r7, #32
	add	r2, r7, #332
	ldr	r1, [r3]
	mov	r0, r2
	bl	strcpy(PLT)
	add	r3, r7, #332
	ldr	r2, .L201+160
.LPIC93:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	force_extension(PLT)
	add	r3, r7, #332
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L111
	add	r3, r7, #32
	add	r2, r7, #332
	str	r2, [r3]
	b	.L110
.L111:
	add	r3, r7, #332
	ldr	r2, .L201+164
.LPIC94:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	force_extension(PLT)
	add	r3, r7, #332
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L112
	add	r3, r7, #32
	add	r2, r7, #332
	str	r2, [r3]
	b	.L110
.L112:
	add	r3, r7, #332
	ldr	r2, .L201+168
.LPIC95:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	force_extension(PLT)
	add	r3, r7, #332
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L110
	add	r3, r7, #32
	add	r2, r7, #332
	str	r2, [r3]
.L110:
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L106
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+172
.LPIC96:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #32
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+176
.LPIC97:
	add	r3, pc
	mov	r2, r3
	movs	r3, #2
	str	r3, [r2]
	bl	user_error(PLT)
.L106:
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	strlen(PLT)
	mov	r3, r0
	cmp	r3, #251
	bls	.L113
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+180
.LPIC98:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #32
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+184
.LPIC99:
	add	r3, pc
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	bl	user_error(PLT)
.L113:
	add	r3, r7, #32
	ldr	r1, [r3]
	ldr	r3, .L201+188
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	strcpy(PLT)
	ldr	r3, .L201+192
.LPIC100:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L114
	movs	r0, #0
	bl	setoutdir(PLT)
	b	.L115
.L114:
	ldr	r3, .L201+196
.LPIC101:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L116
	ldr	r3, .L201+200
.LPIC102:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	bl	setoutdir(PLT)
	b	.L115
.L116:
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	setoutdir(PLT)
.L115:
	ldr	r3, .L201+204
.LPIC103:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L117
	add	r5, r7, #44
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	readPhantomInput(PLT)
	b	.L118
.L117:
	add	r3, r7, #44
	add	r2, r7, #32
	ldr	r2, [r2]
	str	r2, [r3]
.L118:
	add	r1, r7, #12
	add	r3, r7, #44
	movs	r2, #1
	ldr	r0, [r3]
	bl	get_header_info_from_file(PLT)
	add	r3, r7, #14
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L119
	ldr	r3, .L201+208
	ldr	r3, [r4, r3]
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L120
	add	r3, r7, #44
	movs	r1, #0
	ldr	r0, [r3]
	bl	is_armor_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L120
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	do_armorfile(PLT)
	b	.L121
.L120:
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	do_decrypt(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L121
	bl	user_error(PLT)
.L121:
	ldr	r3, .L201+212
.LPIC104:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L122
	ldr	r3, .L201+216
.LPIC105:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L122
	movs	r0, #1
	bl	exitPGP(PLT)
	b	.L119
.L122:
	movs	r0, #0
	bl	exitPGP(PLT)
.L119:
	ldr	r3, .L201+220
.LPIC106:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L123
	ldr	r3, .L201+224
.LPIC107:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L123
	add	r3, r7, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	legal_ctb(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L123
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+228
.LPIC108:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #32
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+232
.LPIC109:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	add	r5, r7, #13
	movs	r0, #110
	bl	getyesno(PLT)
	mov	r3, r0
	strb	r3, [r5]
	b	.L124
.L123:
	ldr	r3, .L201+236
.LPIC110:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L124
	ldr	r3, .L201+240
.LPIC111:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L124
	add	r3, r7, #12
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	legal_ctb(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L124
	add	r3, r7, #13
	movs	r2, #1
	strb	r2, [r3]
.L124:
	ldr	r3, .L201+244
.LPIC112:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L125
	ldr	r3, .L201+248
.LPIC113:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L125
	add	r3, r7, #76
	ldr	r2, .L201+252
.LPIC114:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
	ldr	r3, .L201+256
.LPIC115:
	add	r3, pc
	movs	r2, #116
	strb	r2, [r3]
	b	.L126
.L125:
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	file_tail(PLT)
	mov	r2, r0
	add	r3, r7, #76
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
.L126:
	add	r3, r7, #60
	add	r2, r7, #76
	str	r2, [r3]
	ldr	r3, .L201+260
.LPIC116:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L127
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	is_text_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L127
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+264
.LPIC117:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #44
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+268
.LPIC118:
	add	r3, pc
	movs	r2, #98
	strb	r2, [r3]
.L127:
	ldr	r3, .L201+272
.LPIC119:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L128
	ldr	r3, .L201+276
.LPIC120:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L128
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+280
.LPIC121:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+284
.LPIC122:
	add	r3, pc
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	bl	user_error(PLT)
.L128:
	ldr	r3, .L201+288
.LPIC123:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L129
	add	r3, r7, #17
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L129
	add	r3, r7, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L129
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L129
	ldr	r3, .L201+292
.LPIC124:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L129
	ldr	r3, .L201+188
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	file_compressible(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L129
	movs	r2, #1
	b	.L130
.L129:
	movs	r2, #0
.L130:
	add	r3, r7, #23
	strb	r2, [r3]
	ldr	r3, .L201+296
.LPIC125:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L131
	ldr	r3, .L201+300
.LPIC126:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L132
	ldr	r3, .L201+304
.LPIC127:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L132
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+308
.LPIC128:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L132:
	ldr	r3, .L201+312
.LPIC129:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L133
	ldr	r3, .L201+316
.LPIC130:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L133
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+320
.LPIC131:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L133:
	ldr	r3, .L201+208
	ldr	r3, [r4, r3]
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #52
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L201+324
.LPIC132:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L134
	add	r5, r7, #48
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	add	r3, r7, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L135
	add	r3, r7, #17
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L135
	ldr	r3, .L201+328
.LPIC133:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L135
	ldr	r3, .L201+332
.LPIC134:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L135
	add	r3, r7, #52
	add	r2, r7, #44
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, .L201+208
	ldr	r3, [r4, r3]
	movs	r2, #1
	strb	r2, [r3]
.L135:
	add	r2, r7, #48
	add	r3, r7, #44
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	make_canonical(PLT)
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L136
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L136:
	add	r3, r7, #44
	add	r2, r7, #48
	ldr	r2, [r2]
	str	r2, [r3]
.L134:
	add	r3, r7, #23
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L137
	add	r3, r7, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L137
	ldr	r3, .L201+336
.LPIC135:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L137
	add	r3, r7, #22
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L138
.L137:
	add	r5, r7, #48
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	b	.L139
.L138:
	add	r5, r7, #48
	movs	r0, #1
	bl	tempfile(PLT)
	str	r0, [r5]
.L139:
	add	r3, r7, #17
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L140
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L141
.L140:
	movs	r3, #1
	b	.L142
.L141:
	movs	r3, #0
.L142:
	uxtb	r6, r3
	ldr	r3, .L201+340
.LPIC136:
	add	r3, pc
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r5, r7, #24
	add	r3, r7, #44
	add	r1, r7, #13
	ldrb	r0, [r1]	@ zero_extendqisi2
	add	r1, r7, #60
	ldr	r1, [r1]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	add	r2, r7, #48
	ldr	r2, [r2]
	str	r2, [sp]
	ldr	r3, [r3]
	ldr	r2, .L201+344
.LPIC137:
	add	r2, pc
	mov	r1, r6
	bl	signfile(PLT)
	str	r0, [r5]
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	add	r3, r7, #44
	add	r2, r7, #48
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L144
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+348
.LPIC138:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+352
.LPIC139:
	add	r3, pc
	mov	r2, r3
	movs	r3, #20
	str	r3, [r2]
	bl	user_error(PLT)
	b	.L144
.L131:
	add	r3, r7, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L144
	add	r3, r7, #23
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L145
	add	r3, r7, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L145
	ldr	r3, .L201+356
.LPIC140:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L145
	add	r3, r7, #22
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L146
.L145:
	add	r5, r7, #48
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	b	.L147
.L146:
	add	r5, r7, #48
	movs	r0, #1
	bl	tempfile(PLT)
	str	r0, [r5]
.L147:
	ldr	r3, .L201+360
.LPIC141:
	add	r3, pc
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r5, r7, #24
	add	r3, r7, #60
	add	r1, r7, #48
	add	r0, r7, #44
	ldr	r3, [r3]
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	make_literal(PLT)
	str	r0, [r5]
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	add	r3, r7, #44
	add	r2, r7, #48
	ldr	r2, [r2]
	str	r2, [r3]
.L144:
	add	r3, r7, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L148
	ldr	r3, .L201+364
.LPIC142:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L149
	add	r3, r7, #22
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L150
.L149:
	add	r5, r7, #48
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	b	.L151
.L150:
	add	r5, r7, #48
	movs	r0, #1
	bl	tempfile(PLT)
	str	r0, [r5]
.L151:
	add	r3, r7, #20
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L152
	ldr	r3, .L201+368
.LPIC143:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L153
	ldr	r3, .L201+372
.LPIC144:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L153
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+376
.LPIC145:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L153:
	add	r3, r7, #36
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L154
	add	r3, r7, #36
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L154
	add	r3, r7, #36
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L155
.L154:
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+380
.LPIC146:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L201+36
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+384
.LPIC147:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r2, #1
	movs	r1, #255
	ldr	r3, .L201+388
.LPIC148:
	add	r3, pc
	mov	r0, r3
	bl	getstring(PLT)
	add	r5, r7, #40
	movs	r0, #8
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r5]
	add	r3, r7, #40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L156
	ldr	r3, .L201
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L201+392
.LPIC149:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r0, #7
	bl	exitPGP(PLT)
.L156:
	add	r3, r7, #40
	ldr	r3, [r3]
	ldr	r2, .L201+396
.LPIC150:
	add	r2, pc
	str	r2, [r3]
	add	r3, r7, #40
	ldr	r3, [r3]
	adds	r3, r3, #4
	ldr	r2, .L201+400
.LPIC151:
	add	r2, pc
	str	r2, [r3]
	b	.L157
.L155:
	add	r3, r7, #40
	add	r2, r7, #36
	ldr	r2, [r2]
	str	r2, [r3]
.L157:
	add	r3, r7, #36
	add	r2, r7, #40
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L158
.L202:
	.align	2
.L201:
	.word	stderr(GOT)
	.word	optind(GOT)
	.word	myArgv(GOT)
	.word	myArgc-(.LPIC58+4)
	.word	outputfile-(.LPIC59+4)
	.word	outputfile-(.LPIC60+4)
	.word	.LC54-(.LPIC61+4)
	.word	filter_mode-(.LPIC62+4)
	.word	stdout(GOT)
	.word	pgpout(GOT)
	.word	decrypt_only_flag-(.LPIC63+4)
	.word	strip_sig_flag-(.LPIC64+4)
	.word	decrypt_only_flag-(.LPIC65+4)
	.word	decrypt_only_flag-(.LPIC66+4)
	.word	de_armor_only-(.LPIC67+4)
	.word	de_armor_only-(.LPIC68+4)
	.word	outputfile-(.LPIC69+4)
	.word	preserve_filename-(.LPIC70+4)
	.word	sign_flag-(.LPIC71+4)
	.word	myArgc-(.LPIC72+4)
	.word	.LC55-(.LPIC73+4)
	.word	.LC56-(.LPIC74+4)
	.word	.LC57-(.LPIC75+4)
	.word	myArgc-(.LPIC76+4)
	.word	filter_mode-(.LPIC77+4)
	.word	quietmode-(.LPIC78+4)
	.word	quietmode-(.LPIC79+4)
	.word	.LC58-(.LPIC80+4)
	.word	.LC59-(.LPIC81+4)
	.word	.LC59-(.LPIC82+4)
	.word	.LC60-(.LPIC83+4)
	.word	filter_mode-(.LPIC84+4)
	.word	filter_mode-(.LPIC85+4)
	.word	.LC61-(.LPIC86+4)
	.word	makerandom-(.LPIC87+4)
	.word	makerandom-(.LPIC88+4)
	.word	.LC62-(.LPIC89+4)
	.word	.LC63-(.LPIC90+4)
	.word	makerandom-(.LPIC91+4)
	.word	literal_mode-(.LPIC92+4)
	.word	ASC_EXTENSION-(.LPIC93+4)
	.word	PGP_EXTENSION-(.LPIC94+4)
	.word	SIG_EXTENSION-(.LPIC95+4)
	.word	.LC57-(.LPIC96+4)
	.word	errorLvl-(.LPIC97+4)
	.word	.LC64-(.LPIC98+4)
	.word	errorLvl-(.LPIC99+4)
	.word	plainfile(GOT)
	.word	filter_mode-(.LPIC100+4)
	.word	outputfile-(.LPIC101+4)
	.word	outputfile-(.LPIC102+4)
	.word	filter_mode-(.LPIC103+4)
	.word	strip_spaces(GOT)
	.word	batchmode-(.LPIC104+4)
	.word	signature_checked-(.LPIC105+4)
	.word	batchmode-(.LPIC106+4)
	.word	filter_mode-(.LPIC107+4)
	.word	.LC65-(.LPIC108+4)
	.word	.LC66-(.LPIC109+4)
	.word	force_flag-(.LPIC110+4)
	.word	makerandom-(.LPIC111+4)
	.word	moreflag-(.LPIC112+4)
	.word	makerandom-(.LPIC113+4)
	.word	CONSOLE_FILENAME-(.LPIC114+4)
	.word	literal_mode-(.LPIC115+4)
	.word	literal_mode-(.LPIC116+4)
	.word	.LC67-(.LPIC117+4)
	.word	literal_mode-(.LPIC118+4)
	.word	moreflag-(.LPIC119+4)
	.word	literal_mode-(.LPIC120+4)
	.word	.LC68-(.LPIC121+4)
	.word	errorLvl-(.LPIC122+4)
	.word	compress_enabled-(.LPIC123+4)
	.word	makerandom-(.LPIC124+4)
	.word	sign_flag-(.LPIC125+4)
	.word	filter_mode-(.LPIC126+4)
	.word	quietmode-(.LPIC127+4)
	.word	.LC69-(.LPIC128+4)
	.word	quietmode-(.LPIC129+4)
	.word	my_name-(.LPIC130+4)
	.word	.LC70-(.LPIC131+4)
	.word	literal_mode-(.LPIC132+4)
	.word	emit_radix_64-(.LPIC133+4)
	.word	clear_signatures-(.LPIC134+4)
	.word	emit_radix_64-(.LPIC135+4)
	.word	literal_mode-(.LPIC136+4)
	.word	my_name-(.LPIC137+4)
	.word	.LC71-(.LPIC138+4)
	.word	errorLvl-(.LPIC139+4)
	.word	emit_radix_64-(.LPIC140+4)
	.word	literal_mode-(.LPIC141+4)
	.word	emit_radix_64-(.LPIC142+4)
	.word	filter_mode-(.LPIC143+4)
	.word	quietmode-(.LPIC144+4)
	.word	.LC72-(.LPIC145+4)
	.word	.LC73-(.LPIC146+4)
	.word	.LC74-(.LPIC147+4)
	.word	mcguffin-(.LPIC148+4)
	.word	.LC50-(.LPIC149+4)
	.word	mcguffin-(.LPIC150+4)
	.word	.LC75-(.LPIC151+4)
.L160:
	add	r3, r7, #36
	add	r2, r7, #36
	ldr	r2, [r2]
	adds	r2, r2, #4
	str	r2, [r3]
.L158:
	add	r3, r7, #36
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L159
	add	r3, r7, #36
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L160
.L159:
	add	r5, r7, #24
	add	r3, r7, #23
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r2, r7, #48
	add	r1, r7, #44
	add	r0, r7, #40
	ldr	r2, [r2]
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	encryptfile(PLT)
	str	r0, [r5]
	b	.L161
.L152:
	add	r5, r7, #24
	add	r3, r7, #23
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r1, r7, #48
	add	r3, r7, #44
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	idea_encryptfile(PLT)
	str	r0, [r5]
.L161:
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	add	r3, r7, #44
	add	r2, r7, #48
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L165
	ldr	r3, .L203
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L203+4
.LPIC152:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	add	r3, r7, #20
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L163
	movs	r3, #22
	b	.L164
.L163:
	movs	r3, #21
.L164:
	ldr	r2, .L203+8
.LPIC153:
	add	r2, pc
	str	r3, [r2]
	bl	user_error(PLT)
	b	.L165
.L148:
	add	r3, r7, #23
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L165
	add	r3, r7, #17
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L165
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L165
	ldr	r3, .L203+12
.LPIC154:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L166
	add	r3, r7, #22
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L167
.L166:
	add	r5, r7, #48
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	b	.L168
.L167:
	add	r5, r7, #48
	movs	r0, #1
	bl	tempfile(PLT)
	str	r0, [r5]
.L168:
	add	r2, r7, #48
	add	r3, r7, #44
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	squish_file(PLT)
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	add	r3, r7, #44
	add	r2, r7, #48
	ldr	r2, [r2]
	str	r2, [r3]
.L165:
	add	r3, r7, #22
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L169
	ldr	r3, .L203+16
.LPIC155:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L170
	add	r3, r7, #52
	add	r2, r7, #32
	add	r0, r7, #44
	movs	r1, #0
	str	r1, [sp]
	ldr	r3, [r3]
	ldr	r2, [r2]
	movs	r1, #0
	ldr	r0, [r0]
	bl	armor_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L171
	ldr	r3, .L203+20
.LPIC156:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	bl	user_error(PLT)
.L171:
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L173
	add	r3, r7, #52
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	b	.L173
.L170:
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	writePhantomOutput(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L173
	ldr	r3, .L203+24
.LPIC157:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	bl	user_error(PLT)
.L173:
	add	r3, r7, #44
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	b	.L174
.L169:
	ldr	r3, .L203+28
.LPIC158:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L175
	ldr	r3, .L203+32
.LPIC159:
	add	r3, pc
	ldr	r2, [r3]
	add	r3, r7, #588
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L184
.L175:
	add	r3, r7, #32
	add	r2, r7, #588
	ldr	r1, [r3]
	mov	r0, r2
	bl	strcpy(PLT)
	add	r3, r7, #588
	mov	r0, r3
	bl	drop_extension(PLT)
.L184:
	ldr	r3, .L203+36
.LPIC160:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L177
	add	r3, r7, #588
	mov	r0, r3
	bl	no_extension(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L177
	ldr	r3, .L203+40
.LPIC161:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L178
	add	r3, r7, #588
	ldr	r2, .L203+44
.LPIC162:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	force_extension(PLT)
	b	.L177
.L178:
	ldr	r3, .L203+48
.LPIC163:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L179
	add	r3, r7, #17
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L179
	add	r3, r7, #588
	ldr	r2, .L203+52
.LPIC164:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	force_extension(PLT)
	b	.L177
.L179:
	add	r3, r7, #588
	ldr	r2, .L203+56
.LPIC165:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	force_extension(PLT)
.L177:
	add	r3, r7, #588
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L197
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r5, r7, #72
	add	r3, r7, #588
	movs	r1, #1
	mov	r0, r3
	bl	ck_dup_output(PLT)
	str	r0, [r5]
	add	r3, r7, #72
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L182
	bl	user_error(PLT)
.L182:
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L183
	add	r2, r7, #588
	add	r3, r7, #72
	mov	r1, r2
	ldr	r0, [r3]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L198
.L183:
	add	r3, r7, #72
	add	r2, r7, #588
	ldr	r1, [r3]
	mov	r0, r2
	bl	strcpy(PLT)
	b	.L184
.L197:
	nop
	b	.L181
.L198:
	nop
.L181:
	ldr	r3, .L203+60
.LPIC166:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L185
	add	r3, r7, #52
	add	r2, r7, #32
	add	r5, r7, #588
	add	r0, r7, #44
	movs	r1, #0
	str	r1, [sp]
	ldr	r3, [r3]
	ldr	r2, [r2]
	mov	r1, r5
	ldr	r0, [r0]
	bl	armor_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L186
	ldr	r3, .L203+64
.LPIC167:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	bl	user_error(PLT)
.L186:
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L174
	add	r3, r7, #52
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	b	.L174
.L185:
	add	r2, r7, #588
	add	r3, r7, #44
	mov	r1, r2
	ldr	r0, [r3]
	bl	savetemp(PLT)
	mov	r2, r0
	ldr	r3, .L203+68
.LPIC168:
	add	r3, pc
	str	r2, [r3]
	ldr	r3, .L203+72
.LPIC169:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L189
	ldr	r3, .L203+76
.LPIC170:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	bl	user_error(PLT)
.L189:
	ldr	r3, .L203+80
.LPIC171:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L174
	add	r3, r7, #19
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L190
	ldr	r3, .L203
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L203+84
.LPIC172:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L203+88
.LPIC173:
	add	r3, pc
	ldr	r3, [r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	b	.L174
.L190:
	ldr	r3, .L203+92
.LPIC174:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L174
	ldr	r3, .L203
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L203+96
.LPIC175:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L203+100
.LPIC176:
	add	r3, pc
	ldr	r3, [r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L174:
	add	r3, r7, #15
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L191
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	wipefile(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L191
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	remove(PLT)
	ldr	r3, .L203
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L203+104
.LPIC177:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #32
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L203
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	fputc(PLT)
.L191:
	movs	r0, #0
	bl	exitPGP(PLT)
	movs	r3, #0
	mov	r0, r3
	ldr	r3, .L203+108
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #844]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L193
	bl	__stack_chk_fail(PLT)
.L193:
	add	r7, r7, #852
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L204:
	.align	2
.L203:
	.word	pgpout(GOT)
	.word	.LC76-(.LPIC152+4)
	.word	errorLvl-(.LPIC153+4)
	.word	emit_radix_64-(.LPIC154+4)
	.word	emit_radix_64-(.LPIC155+4)
	.word	errorLvl-(.LPIC156+4)
	.word	errorLvl-(.LPIC157+4)
	.word	outputfile-(.LPIC158+4)
	.word	outputfile-(.LPIC159+4)
	.word	outputfile-(.LPIC160+4)
	.word	emit_radix_64-(.LPIC161+4)
	.word	ASC_EXTENSION-(.LPIC162+4)
	.word	sign_flag-(.LPIC163+4)
	.word	SIG_EXTENSION-(.LPIC164+4)
	.word	PGP_EXTENSION-(.LPIC165+4)
	.word	emit_radix_64-(.LPIC166+4)
	.word	errorLvl-(.LPIC167+4)
	.word	outputfile-(.LPIC168+4)
	.word	outputfile-(.LPIC169+4)
	.word	errorLvl-(.LPIC170+4)
	.word	quietmode-(.LPIC171+4)
	.word	.LC77-(.LPIC172+4)
	.word	outputfile-(.LPIC173+4)
	.word	sign_flag-(.LPIC174+4)
	.word	.LC78-(.LPIC175+4)
	.word	outputfile-(.LPIC176+4)
	.word	.LC55-(.LPIC177+4)
	.word	__stack_chk_guard(GOT)
	.size	main, .-main
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	initsigs, %function
initsigs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	movs	r1, #1
	movs	r0, #2
	bl	signal(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L207
	ldr	r3, .L208
.LPIC178:
	add	r3, pc
	mov	r1, r3
	movs	r0, #2
	bl	signal(PLT)
.L207:
	nop
	pop	{r7, pc}
.L209:
	.align	2
.L208:
	.word	breakHandler-(.LPIC178+4)
	.size	initsigs, .-initsigs
	.section	.rodata
	.align	2
.LC79:
	.ascii	"\012\007Error: Transport armor stripping failed for"
	.ascii	" file %s\012\000"
	.align	2
.LC80:
	.ascii	"Stripped transport armor from '%s', producing '%s'."
	.ascii	"\012\000"
	.align	2
.LC81:
	.ascii	"\012Looking for next packet in '%s'...\012\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	do_armorfile, %function
do_armorfile:
	@ args = 0, pretend = 0, frame = 288
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #288
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	ldr	r4, .L234
.LPIC179:
	add	r4, pc
	ldr	r3, .L234+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #284]
	add	r3, r7, #8
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #12
	movs	r2, #0
	str	r2, [r3]
.L229:
	add	r5, r7, #16
	movs	r0, #0
	bl	tempfile(PLT)
	str	r0, [r5]
	ldr	r3, .L234+8
	ldr	r3, [r4, r3]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, .L234+12
	ldr	r3, [r4, r3]
	movs	r2, #1
	strb	r2, [r3]
	add	r3, r7, #20
	add	r2, r7, #8
	ldr	r2, [r2]
	str	r2, [r3]
	add	r5, r7, #24
	add	r2, r7, #8
	add	r1, r7, #16
	adds	r3, r7, #4
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	de_armor_file(PLT)
	str	r0, [r5]
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L211
	ldr	r3, .L234+16
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L234+20
.LPIC180:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	adds	r3, r7, #4
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L234+24
.LPIC181:
	add	r3, pc
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
	bl	user_error(PLT)
.L211:
	ldr	r3, .L234+28
.LPIC182:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L212
	ldr	r3, .L234+32
.LPIC183:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L213
.L212:
	ldr	r3, .L234+36
.LPIC184:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L214
	ldr	r3, .L234+40
.LPIC185:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L214
	ldr	r3, .L234+44
.LPIC186:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L234+48
.LPIC187:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L215
	add	r3, r7, #16
	ldr	r0, [r3]
	bl	writePhantomOutput(PLT)
	add	r3, r7, #16
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	b	.L210
.L215:
	ldr	r3, .L234+52
.LPIC188:
	add	r3, pc
	ldr	r2, [r3]
	add	r3, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L217
.L214:
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	file_tail(PLT)
	mov	r2, r0
	add	r3, r7, #28
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
	add	r3, r7, #28
	ldr	r2, .L234+56
.LPIC189:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	force_extension(PLT)
.L217:
	add	r5, r7, #16
	add	r2, r7, #28
	add	r3, r7, #16
	mov	r1, r2
	ldr	r0, [r3]
	bl	savetemp(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L218
	ldr	r3, .L234+60
.LPIC190:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	bl	user_error(PLT)
.L218:
	ldr	r3, .L234+64
.LPIC191:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L219
	ldr	r3, .L234+16
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L234+68
.LPIC192:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #16
	adds	r2, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r2]
	mov	r0, r5
	bl	fprintf(PLT)
.L219:
	ldr	r3, .L234+72
.LPIC193:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L220
	add	r3, r7, #16
	ldr	r0, [r3]
	bl	do_decrypt(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L232
.L220:
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
	b	.L232
.L213:
	ldr	r3, .L234+76
.LPIC194:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L223
	ldr	r3, .L234+80
.LPIC195:
	add	r3, pc
	mov	r2, r3
	movs	r3, #1
	str	r3, [r2]
.L223:
	add	r3, r7, #16
	ldr	r0, [r3]
	bl	do_decrypt(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L224
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L224:
	add	r3, r7, #16
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	ldr	r3, .L234+84
.LPIC196:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L222
	ldr	r3, .L234+88
.LPIC197:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	bne	.L225
	add	r5, r7, #16
	movs	r0, #0
	bl	tempfile(PLT)
	str	r0, [r5]
	ldr	r3, .L234+12
	ldr	r3, [r4, r3]
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #8
	add	r2, r7, #20
	ldr	r2, [r2]
	str	r2, [r3]
	add	r2, r7, #8
	add	r1, r7, #16
	adds	r3, r7, #4
	ldr	r1, [r1]
	ldr	r0, [r3]
	bl	de_armor_file(PLT)
	add	r3, r7, #16
	ldr	r0, [r3]
	bl	do_decrypt(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L226
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #1
	str	r2, [r3]
.L226:
	add	r3, r7, #16
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L225:
	ldr	r3, .L234+92
.LPIC198:
	add	r3, pc
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	b	.L222
.L232:
	nop
.L222:
	add	r3, r7, #8
	ldr	r2, [r3]
	adds	r3, r7, #4
	mov	r1, r2
	ldr	r0, [r3]
	bl	is_armor_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L227
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L233
	bl	user_error(PLT)
	b	.L233
.L227:
	ldr	r3, .L234+16
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L234+96
.LPIC199:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	adds	r3, r7, #4
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	b	.L229
.L233:
	nop
.L210:
	ldr	r3, .L234+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #284]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L231
	bl	__stack_chk_fail(PLT)
.L231:
	add	r7, r7, #288
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L235:
	.align	2
.L234:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC179+4)
	.word	__stack_chk_guard(GOT)
	.word	strip_spaces(GOT)
	.word	use_charset_header(GOT)
	.word	pgpout(GOT)
	.word	.LC79-(.LPIC180+4)
	.word	errorLvl-(.LPIC181+4)
	.word	keepctx-(.LPIC182+4)
	.word	de_armor_only-(.LPIC183+4)
	.word	outputfile-(.LPIC184+4)
	.word	de_armor_only-(.LPIC185+4)
	.word	outputfile-(.LPIC186+4)
	.word	.LC54-(.LPIC187+4)
	.word	outputfile-(.LPIC188+4)
	.word	PGP_EXTENSION-(.LPIC189+4)
	.word	errorLvl-(.LPIC190+4)
	.word	quietmode-(.LPIC191+4)
	.word	.LC80-(.LPIC192+4)
	.word	de_armor_only-(.LPIC193+4)
	.word	charset_header-(.LPIC194+4)
	.word	checksig_pass-(.LPIC195+4)
	.word	charset_header-(.LPIC196+4)
	.word	checksig_pass-(.LPIC197+4)
	.word	checksig_pass-(.LPIC198+4)
	.word	.LC81-(.LPIC199+4)
	.size	do_armorfile, .-do_armorfile
	.section	.rodata
	.align	2
.LC82:
	.ascii	"\012\007Can't open ciphertext file '%s'\012\000"
	.align	2
.LC83:
	.ascii	"\012File is encrypted.  Secret key is required to r"
	.ascii	"ead it. \000"
	.align	2
.LC84:
	.ascii	"\012This file has a signature, which will be left i"
	.ascii	"n place.\012\000"
	.align	2
.LC85:
	.ascii	"\012File has signature.  Public key is required to "
	.ascii	"check signature.\012\000"
	.align	2
.LC86:
	.ascii	"/dev/null\000"
	.align	2
.LC87:
	.ascii	"\012File is conventionally encrypted.  \000"
	.align	2
.LC88:
	.ascii	"\012File contains key(s).  Contents follow...\000"
	.align	2
.LC89:
	.ascii	"\012Do you want to add this keyfile to keyring '%s'"
	.ascii	" (y/N)? \000"
	.align	2
.LC90:
	.ascii	"\007Keyring add error. \000"
	.align	2
.LC91:
	.ascii	"\007\012ERROR: Nested data has unexpected format.  "
	.ascii	"CTB=0x%02X\012\000"
	.align	2
.LC92:
	.ascii	"\007\012Error: '%s' is not a ciphertext, signature,"
	.ascii	" or key file.\012\000"
	.align	2
.LC93:
	.ascii	"\012\012This message is marked \"For your eyes only"
	.ascii	"\".  Display now (Y/n)? \000"
	.align	2
.LC94:
	.ascii	"\012\012Plaintext message follows...\012\000"
	.align	2
.LC95:
	.ascii	"------------------------------\012\000"
	.align	2
.LC96:
	.ascii	"Save this file permanently (y/N)? \000"
	.align	2
.LC97:
	.ascii	"Enter filename to save file as: \000"
	.align	2
.LC98:
	.ascii	"[%s]: \000"
	.align	2
.LC99:
	.ascii	"\012Plaintext filename: %s\000"
	.align	2
.LC100:
	.ascii	"\012Plaintext file '%s' looks like it contains a pu"
	.ascii	"blic key.\000"
	.align	2
.LC101:
	.ascii	"\012Plaintext file '%s' looks like a %s file.\000"
	.align	2
.LC102:
	.ascii	"\012\007Output file '%s' may contain more ciphertex"
	.ascii	"t or signature.\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	do_decrypt, %function
do_decrypt:
	@ args = 0, pretend = 0, frame = 544
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #544
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	ldr	r4, .L309
.LPIC200:
	add	r4, pc
	ldr	r3, .L309+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #540]
	add	r3, r7, #12
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #11
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #28
	movs	r2, #0
	strb	r2, [r3]
.L270:
	add	r3, r7, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L237
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	adds	r3, r7, #4
	add	r2, r7, #12
	ldr	r2, [r2]
	str	r2, [r3]
.L237:
	add	r1, r7, #10
	adds	r3, r7, #4
	movs	r2, #1
	ldr	r0, [r3]
	bl	get_header_info_from_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L238
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+12
.LPIC201:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	adds	r3, r7, #4
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L309+16
.LPIC202:
	add	r3, pc
	mov	r2, r3
	movs	r3, #2
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L238:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L308
	ldr	r3, .L309+20
.LPIC203:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L242
	add	r5, r7, #12
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	b	.L243
.L242:
	add	r5, r7, #12
	movs	r0, #1
	bl	tempfile(PLT)
	str	r0, [r5]
.L243:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #4
	bne	.L244
	ldr	r3, .L309+24
.LPIC204:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L245
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+28
.LPIC205:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L245:
	add	r5, r7, #20
	add	r2, r7, #12
	adds	r3, r7, #4
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	decryptfile(PLT)
	str	r0, [r5]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L246
	ldr	r3, .L309+32
.LPIC206:
	add	r3, pc
	mov	r2, r3
	movs	r3, #31
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L246:
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r2, r3
	add	r3, r7, #11
	strb	r2, [r3]
	b	.L247
.L244:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #8
	bne	.L248
	ldr	r3, .L309+36
.LPIC207:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L249
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	add	r3, r7, #12
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3]
	adds	r3, r7, #4
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L309+40
.LPIC208:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L250
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+44
.LPIC209:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L250:
	add	r3, r7, #11
	movs	r2, #0
	strb	r2, [r3]
	b	.L241
.L249:
	ldr	r3, .L309+48
.LPIC210:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L251
	ldr	r3, .L309+52
.LPIC211:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #1
	bgt	.L251
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+56
.LPIC212:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L251:
	ldr	r3, .L309+60
.LPIC213:
	add	r3, pc
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r5, r7, #20
	add	r3, r7, #28
	add	r1, r7, #12
	adds	r0, r7, #4
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	check_signaturefile(PLT)
	str	r0, [r5]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L252
	ldr	r3, .L309+64
.LPIC214:
	add	r3, pc
	mov	r2, r3
	movs	r3, #30
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L252:
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r2, r3
	add	r3, r7, #11
	strb	r2, [r3]
	add	r3, r7, #28
	ldr	r2, .L309+68
.LPIC215:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L247
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	fputc(PLT)
	movs	r3, #0
	b	.L306
.L248:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #36
	bne	.L253
	ldr	r3, .L309+72
.LPIC216:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L254
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+76
.LPIC217:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L254:
	add	r5, r7, #20
	add	r2, r7, #12
	adds	r3, r7, #4
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	idea_decryptfile(PLT)
	str	r0, [r5]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L255
	ldr	r3, .L309+80
.LPIC218:
	add	r3, pc
	mov	r2, r3
	movs	r3, #32
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L255:
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r2, r3
	add	r3, r7, #11
	strb	r2, [r3]
	b	.L247
.L253:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #32
	bne	.L256
	add	r5, r7, #20
	add	r2, r7, #12
	adds	r3, r7, #4
	ldr	r1, [r2]
	ldr	r0, [r3]
	bl	decompress_file(PLT)
	str	r0, [r5]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L257
	ldr	r3, .L309+84
.LPIC219:
	add	r3, pc
	mov	r2, r3
	movs	r3, #33
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L257:
	add	r3, r7, #11
	movs	r2, #1
	strb	r2, [r3]
	b	.L247
.L256:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #40
	beq	.L258
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #44
	bne	.L259
.L258:
	add	r5, r7, #20
	add	r2, r7, #28
	add	r1, r7, #12
	adds	r0, r7, #4
	ldr	r3, .L309+88
.LPIC220:
	add	r3, pc
	ldr	r1, [r1]
	ldr	r0, [r0]
	bl	strip_literal(PLT)
	str	r0, [r5]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L260
	ldr	r3, .L309+92
.LPIC221:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L260:
	add	r3, r7, #11
	movs	r2, #0
	strb	r2, [r3]
	b	.L247
.L259:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #149
	beq	.L261
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #153
	bne	.L241
.L261:
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	ldr	r3, .L309+96
.LPIC222:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L262
	add	r3, r7, #12
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3]
	adds	r3, r7, #4
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #11
	movs	r2, #0
	strb	r2, [r3]
	b	.L241
.L262:
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+100
.LPIC223:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	adds	r1, r7, #4
	movs	r3, #0
	movs	r2, #1
	ldr	r1, [r1]
	movs	r0, #0
	bl	view_keyring(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L263
	ldr	r3, .L309+104
.LPIC224:
	add	r3, pc
	mov	r2, r3
	movs	r3, #15
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L263:
	ldr	r3, .L309+108
.LPIC225:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L264
	ldr	r3, .L309+112
.LPIC226:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L264
	movs	r3, #0
	b	.L306
.L264:
	ldr	r3, .L309+116
.LPIC227:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L265
	movs	r3, #0
	b	.L306
.L265:
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #149
	bne	.L266
	add	r2, r7, #284
	ldr	r3, .L309+120
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
	b	.L267
.L266:
	add	r2, r7, #284
	ldr	r3, .L309+124
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
.L267:
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+128
.LPIC228:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #284
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r0, #110
	bl	getyesno(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L268
	movs	r3, #0
	b	.L306
.L268:
	add	r5, r7, #20
	add	r2, r7, #284
	adds	r3, r7, #4
	mov	r1, r2
	ldr	r0, [r3]
	bl	addto_keyring(PLT)
	str	r0, [r5]
	add	r3, r7, #20
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L269
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+132
.LPIC229:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L309+136
.LPIC230:
	add	r3, pc
	mov	r2, r3
	movs	r3, #12
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L269:
	movs	r3, #0
	b	.L306
.L247:
	add	r3, r7, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L270
	b	.L241
.L308:
	nop
.L241:
	add	r3, r7, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L271
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	add	r3, r7, #10
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, .L309+140
.LPIC231:
	add	r3, pc
	mov	r1, r3
	bl	fprintf(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L272
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L272:
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L273
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L273:
	ldr	r3, .L309+144
.LPIC232:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L271:
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L274
	ldr	r3, .L309+148
.LPIC233:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L275
	ldr	r3, .L309+152
.LPIC234:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L275
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+156
.LPIC235:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	adds	r3, r7, #4
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L309+160
.LPIC236:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L275:
	add	r3, r7, #12
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L276
.L274:
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L276
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L276:
	ldr	r3, .L309+164
.LPIC237:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L277
	add	r3, r7, #28
	ldr	r2, .L309+168
.LPIC238:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L278
.L277:
	add	r3, r7, #28
	ldr	r2, .L309+172
.LPIC239:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L279
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+176
.LPIC240:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L309+180
.LPIC241:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L280
	ldr	r3, .L309+184
.LPIC242:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L280
	movs	r0, #121
	bl	getyesno(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L279
.L280:
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	fputc(PLT)
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	movs	r3, #0
	b	.L306
.L279:
	ldr	r3, .L309+188
.LPIC243:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L281
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+192
.LPIC244:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	b	.L282
.L281:
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	_IO_putc(PLT)
.L282:
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #31
	movs	r1, #1
	ldr	r0, .L309+196
.LPIC245:
	add	r0, pc
	bl	fwrite(PLT)
	add	r3, r7, #28
	ldr	r2, .L309+200
.LPIC246:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r3, r7, #12
	mov	r1, r2
	ldr	r0, [r3]
	bl	more_file(PLT)
	add	r3, r7, #28
	ldr	r2, .L309+204
.LPIC247:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L283
	bl	clearscreen(PLT)
	b	.L284
.L283:
	ldr	r3, .L309+208
.LPIC248:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L284
	ldr	r3, .L309+212
.LPIC249:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L284
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+216
.LPIC250:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r0, #110
	bl	getyesno(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L284
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+220
.LPIC251:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	add	r3, r7, #28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L285
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	add	r3, r7, #28
	mov	r0, r3
	bl	file_tail(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L309+224
.LPIC252:
	add	r3, pc
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L285:
	add	r3, r7, #284
	movs	r2, #1
	movs	r1, #255
	mov	r0, r3
	bl	getstring(PLT)
	add	r3, r7, #284
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L286
	add	r3, r7, #28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L287
	add	r3, r7, #28
	mov	r0, r3
	bl	file_tail(PLT)
	mov	r2, r0
	add	r3, r7, #12
	mov	r1, r2
	ldr	r0, [r3]
	bl	savetemp(PLT)
	b	.L289
.L287:
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	b	.L289
.L286:
	add	r2, r7, #284
	add	r3, r7, #12
	mov	r1, r2
	ldr	r0, [r3]
	bl	savetemp(PLT)
.L289:
	movs	r3, #0
	b	.L306
.L284:
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	movs	r3, #0
	b	.L306
.L278:
	ldr	r3, .L309+228
.LPIC253:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L290
	ldr	r3, .L309+232
.LPIC254:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L309+236
.LPIC255:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L291
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	movs	r3, #0
	b	.L306
.L291:
	ldr	r3, .L309+240
.LPIC256:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, .L309+244
.LPIC257:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L309+248
.LPIC258:
	add	r3, pc
	strb	r2, [r3]
	ldr	r3, .L309+252
.LPIC259:
	add	r3, pc
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L292
.L290:
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	drop_extension(PLT)
.L292:
	ldr	r3, .L309+260
.LPIC260:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L293
	ldr	r3, .L309+264
.LPIC261:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L293
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	writePhantomOutput(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L294
	ldr	r3, .L309+268
.LPIC262:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L294:
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	movs	r3, #0
	b	.L306
.L293:
	ldr	r3, .L309+272
.LPIC263:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L295
	add	r3, r7, #28
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L295
	add	r3, r7, #28
	mov	r0, r3
	bl	file_tail(PLT)
	mov	r3, r0
	mov	r1, r3
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	strcpy(PLT)
.L295:
	ldr	r3, .L309+276
.LPIC264:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L296
	add	r3, r7, #12
	ldr	r2, .L309+256
	ldr	r2, [r4, r2]
	mov	r1, r2
	ldr	r0, [r3]
	bl	savetemp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L297
	ldr	r3, .L309+280
.LPIC265:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L297:
	movs	r3, #0
	b	.L306
.L296:
	ldr	r3, .L309+284
.LPIC266:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L298
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+288
.LPIC267:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L298:
	add	r1, r7, #284
	add	r3, r7, #12
	movs	r2, #8
	ldr	r0, [r3]
	bl	get_header_info_from_file(PLT)
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #284
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #153
	bne	.L299
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+292
.LPIC268:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	add	r5, r7, #16
	ldr	r3, .L309+296
.LPIC269:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	maybe_force_extension(PLT)
	str	r0, [r5]
	b	.L300
.L299:
	add	r5, r7, #24
	add	r3, r7, #284
	mov	r0, r3
	bl	compressSignature(PLT)
	str	r0, [r5]
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L301
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+300
.LPIC270:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L309+304
.LPIC271:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #24
	ldr	r3, [r3]
	ldr	r3, [r2, r3, lsl #2]
	ldr	r2, .L309+256
	ldr	r2, [r4, r2]
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L309+308
.LPIC272:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #24
	ldr	r3, [r3]
	ldr	r3, [r2, r3, lsl #2]
	add	r5, r7, #16
	mov	r1, r3
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	maybe_force_extension(PLT)
	str	r0, [r5]
	b	.L300
.L301:
	add	r3, r7, #284
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L300
	add	r3, r7, #284
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #4
	beq	.L302
	add	r3, r7, #284
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #8
	beq	.L302
	add	r3, r7, #284
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #124
	cmp	r3, #36
	bne	.L300
.L302:
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L309+312
.LPIC273:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	add	r5, r7, #16
	ldr	r3, .L309+316
.LPIC274:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	maybe_force_extension(PLT)
	str	r0, [r5]
.L300:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L303
	add	r3, r7, #16
	ldr	r2, [r3]
	b	.L304
.L303:
	ldr	r3, .L309+256
	ldr	r3, [r4, r3]
	mov	r2, r3
.L304:
	add	r3, r7, #12
	mov	r1, r2
	ldr	r0, [r3]
	bl	savetemp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L305
	ldr	r3, .L309+320
.LPIC275:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L306
.L305:
	ldr	r3, .L309+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	movs	r0, #10
	bl	fputc(PLT)
	movs	r3, #0
.L306:
	mov	r0, r3
	ldr	r3, .L309+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #540]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L307
	bl	__stack_chk_fail(PLT)
.L307:
	add	r7, r7, #544
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L310:
	.align	2
.L309:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC200+4)
	.word	__stack_chk_guard(GOT)
	.word	pgpout(GOT)
	.word	.LC82-(.LPIC201+4)
	.word	errorLvl-(.LPIC202+4)
	.word	moreflag-(.LPIC203+4)
	.word	quietmode-(.LPIC204+4)
	.word	.LC83-(.LPIC205+4)
	.word	errorLvl-(.LPIC206+4)
	.word	decrypt_only_flag-(.LPIC207+4)
	.word	quietmode-(.LPIC208+4)
	.word	.LC84-(.LPIC209+4)
	.word	quietmode-(.LPIC210+4)
	.word	checksig_pass-(.LPIC211+4)
	.word	.LC85-(.LPIC212+4)
	.word	strip_sig_flag-(.LPIC213+4)
	.word	errorLvl-(.LPIC214+4)
	.word	.LC86-(.LPIC215+4)
	.word	quietmode-(.LPIC216+4)
	.word	.LC87-(.LPIC217+4)
	.word	errorLvl-(.LPIC218+4)
	.word	errorLvl-(.LPIC219+4)
	.word	literal_mode-(.LPIC220+4)
	.word	errorLvl-(.LPIC221+4)
	.word	decrypt_only_flag-(.LPIC222+4)
	.word	.LC88-(.LPIC223+4)
	.word	errorLvl-(.LPIC224+4)
	.word	filter_mode-(.LPIC225+4)
	.word	preserve_filename-(.LPIC226+4)
	.word	batchmode-(.LPIC227+4)
	.word	globalSecringName(GOT)
	.word	globalPubringName(GOT)
	.word	.LC89-(.LPIC228+4)
	.word	.LC90-(.LPIC229+4)
	.word	errorLvl-(.LPIC230+4)
	.word	.LC91-(.LPIC231+4)
	.word	errorLvl-(.LPIC232+4)
	.word	filter_mode-(.LPIC233+4)
	.word	moreflag-(.LPIC234+4)
	.word	.LC92-(.LPIC235+4)
	.word	errorLvl-(.LPIC236+4)
	.word	moreflag-(.LPIC237+4)
	.word	CONSOLE_FILENAME-(.LPIC238+4)
	.word	CONSOLE_FILENAME-(.LPIC239+4)
	.word	.LC93-(.LPIC240+4)
	.word	batchmode-(.LPIC241+4)
	.word	filter_mode-(.LPIC242+4)
	.word	quietmode-(.LPIC243+4)
	.word	.LC94-(.LPIC244+4)
	.word	.LC95-(.LPIC245+4)
	.word	CONSOLE_FILENAME-(.LPIC246+4)
	.word	CONSOLE_FILENAME-(.LPIC247+4)
	.word	quietmode-(.LPIC248+4)
	.word	batchmode-(.LPIC249+4)
	.word	.LC96-(.LPIC250+4)
	.word	.LC97-(.LPIC251+4)
	.word	.LC98-(.LPIC252+4)
	.word	outputfile-(.LPIC253+4)
	.word	outputfile-(.LPIC254+4)
	.word	.LC86-(.LPIC255+4)
	.word	outputfile-(.LPIC256+4)
	.word	.LC54-(.LPIC257+4)
	.word	filter_mode-(.LPIC258+4)
	.word	outputfile-(.LPIC259+4)
	.word	plainfile(GOT)
	.word	preserve_filename-(.LPIC260+4)
	.word	filter_mode-(.LPIC261+4)
	.word	errorLvl-(.LPIC262+4)
	.word	preserve_filename-(.LPIC263+4)
	.word	quietmode-(.LPIC264+4)
	.word	errorLvl-(.LPIC265+4)
	.word	verbose-(.LPIC266+4)
	.word	.LC99-(.LPIC267+4)
	.word	.LC100-(.LPIC268+4)
	.word	PGP_EXTENSION-(.LPIC269+4)
	.word	.LC101-(.LPIC270+4)
	.word	compressName-(.LPIC271+4)
	.word	compressExt-(.LPIC272+4)
	.word	.LC102-(.LPIC273+4)
	.word	PGP_EXTENSION-(.LPIC274+4)
	.word	errorLvl-(.LPIC275+4)
	.size	do_decrypt, .-do_decrypt
	.section	.rodata
	.align	2
.LC103:
	.ascii	"\007\012Error: PGP User's Guide not found.\012PGP l"
	.ascii	"ooked for it in the following directories:\012\000"
	.align	2
.LC104:
	.ascii	"\011\"%s\"\012\000"
	.align	2
.LC105:
	.ascii	"and the doc subdirectory of each of the above.  Ple"
	.ascii	"ase put a copy of\012both volumes of the User's Gui"
	.ascii	"de in one of these directories.\012\012Under NO CIR"
	.ascii	"CUMSTANCES should PGP ever be distributed without t"
	.ascii	"he PGP\012User's Guide, which is included in the st"
	.ascii	"andard distribution package.\012If you got a copy o"
	.ascii	"f PGP without the manual, please inform whomever yo"
	.ascii	"u\012got it from that this is an incomplete package"
	.ascii	" that should not be\012distributed further.\012\012"
	.ascii	"PGP will not generate a key without finding the Use"
	.ascii	"r's Guide.\012There is a simple way to override thi"
	.ascii	"s restriction.  See the\012PGP User's Guide for det"
	.ascii	"ails on how to do it.\012\012\000"
	.align	2
.LC106:
	.ascii	"\007Keygen error. \000"
	.align	2
.LC107:
	.ascii	"*\000"
	.align	2
.LC108:
	.ascii	"\007Keyring check error.\012\000"
	.align	2
.LC109:
	.ascii	"\007Maintenance pass error. \000"
	.align	2
.LC110:
	.ascii	"File '%s' is not a public keyring\012\000"
	.align	2
.LC111:
	.ascii	"\012A user ID is required to select the public key "
	.ascii	"you want to sign. \000"
	.align	2
.LC112:
	.ascii	"\012Enter the public key's user ID: \000"
	.align	2
.LC113:
	.ascii	"Warning: '%s' is not a public keyring\012\000"
	.align	2
.LC114:
	.ascii	"\007Key signature error. \000"
	.align	2
.LC115:
	.ascii	"\012A user ID is required to select the key you wan"
	.ascii	"t to revoke or disable. \000"
	.align	2
.LC116:
	.ascii	"\012Enter user ID: \000"
	.align	2
.LC117:
	.ascii	"\012A user ID is required to select the key you wan"
	.ascii	"t to edit. \000"
	.align	2
.LC118:
	.ascii	"\012Enter the key's user ID: \000"
	.align	2
.LC119:
	.ascii	"\007Keyring edit error. \000"
	.align	2
.LC120:
	.ascii	"\012\007Key file '%s' does not exist.\012\000"
	.align	2
.LC121:
	.ascii	"\012A user ID is required to select the key you wan"
	.ascii	"t to extract. \000"
	.align	2
.LC122:
	.ascii	"\007Keyring extract error. \000"
	.align	2
.LC123:
	.ascii	"\012A user ID is required to select the public key "
	.ascii	"you want to\012remove certifying signatures from. \000"
	.align	2
.LC124:
	.ascii	"\012A user ID is required to select the key you wan"
	.ascii	"t to remove. \000"
	.align	2
.LC125:
	.ascii	"\007Key signature remove error. \000"
	.align	2
.LC126:
	.ascii	"\007Keyring remove error. \000"
	.align	2
.LC127:
	.ascii	"\007Keyring view error. \000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	do_keyopt, %function
do_keyopt:
	@ args = 0, pretend = 0, frame = 544
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #552
	add	r7, sp, #8
	mov	r2, r0
	adds	r3, r7, #7
	strb	r2, [r3]
	ldr	r4, .L438
.LPIC276:
	add	r4, pc
	ldr	r3, .L438+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #540]
	ldr	r3, .L438+8
.LPIC277:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L312
	ldr	r3, .L438+12
.LPIC278:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L313
.L312:
	adds	r3, r7, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #103
	beq	.L314
	adds	r3, r7, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	beq	.L314
	adds	r3, r7, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L314
	adds	r3, r7, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L313
	ldr	r3, .L438+16
.LPIC279:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L313
.L314:
	ldr	r3, .L438+20
.LPIC280:
	add	r3, pc
	mov	r2, r3
	movs	r3, #4
	str	r3, [r2]
	bl	arg_error(PLT)
.L313:
	ldr	r3, .L438+24
.LPIC281:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L315
	ldr	r3, .L438+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L438+32
	ldr	r2, [r4, r2]
	str	r3, [r2]
.L315:
	adds	r3, r7, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #86
	cmp	r3, #34
	bhi	.L316
	adr	r2, .L318
	ldr	r3, [r2, r3, lsl #2]
	add	r2, r2, r3
	bx	r2
	.p2align 2
.L318:
	.word	.L317+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L319+1-.L318
	.word	.L316+1-.L318
	.word	.L320+1-.L318
	.word	.L321+1-.L318
	.word	.L322+1-.L318
	.word	.L316+1-.L318
	.word	.L323+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L324+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L325+1-.L318
	.word	.L326+1-.L318
	.word	.L316+1-.L318
	.word	.L316+1-.L318
	.word	.L317+1-.L318
	.word	.L316+1-.L318
	.word	.L327+1-.L318
	.p2align 1
.L323:
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, .L438+36
.LPIC282:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L328
	bl	manuals_missing(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L328
	ldr	r3, .L438+40
.LPIC283:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r2, r0
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	fputs(PLT)
	add	r3, r7, #24
	ldr	r2, .L438+44
	ldr	r2, [r4, r2]
	str	r2, [r3]
	b	.L329
.L330:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	add	r3, r7, #24
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, .L438+48
.LPIC284:
	add	r3, pc
	mov	r1, r3
	bl	fprintf(PLT)
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	adds	r2, r2, #4
	str	r2, [r3]
.L329:
	add	r3, r7, #24
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L330
	ldr	r3, .L438+52
.LPIC285:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r2, r0
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	fputs(PLT)
	movs	r3, #10
	b	.L436
.L328:
	ldr	r3, .L438+56
.LPIC286:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L332
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r1, [r3]
	add	r3, r7, #28
	movs	r2, #5
	mov	r0, r3
	bl	strncpy(PLT)
	b	.L333
.L332:
	add	r3, r7, #28
	movs	r2, #0
	strb	r2, [r3]
.L333:
	ldr	r3, .L438+64
.LPIC287:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L334
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #284
	movs	r2, #5
	mov	r0, r3
	bl	strncpy(PLT)
	b	.L335
.L334:
	add	r3, r7, #284
	movs	r2, #0
	strb	r2, [r3]
.L335:
	ldr	r3, .L438+68
.LPIC288:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L336
	ldr	r3, .L438+72
.LPIC289:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L336
	add	r3, r7, #20
	ldr	r2, .L438+76
.LPIC290:
	add	r2, pc
	str	r2, [r3]
.L336:
	add	r5, r7, #16
	add	r3, r7, #20
	add	r1, r7, #284
	add	r0, r7, #28
	ldr	r2, [r3]
	bl	dokeygen(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L337
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+80
.LPIC291:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+84
.LPIC292:
	add	r3, pc
	mov	r2, r3
	movs	r3, #10
	str	r3, [r2]
.L337:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L320:
	ldr	r3, .L438+88
.LPIC293:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	bgt	.L339
	ldr	r3, .L438+92
.LPIC294:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
	b	.L340
.L339:
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L438+96
.LPIC295:
	add	r3, pc
	mov	r0, r3
	bl	strcpy(PLT)
	ldr	r3, .L438+100
.LPIC296:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L438+104
.LPIC297:
	add	r3, pc
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L340
	ldr	r3, .L438+108
.LPIC298:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
.L340:
	ldr	r3, .L438+112
.LPIC299:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L341
	add	r2, r7, #284
	ldr	r3, .L438+116
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
	b	.L342
.L341:
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #284
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
.L342:
	ldr	r3, .L438+120
.LPIC300:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L343
	ldr	r3, .L438+124
.LPIC301:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L343
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, .L438+128
.LPIC302:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	has_extension(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L343
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r2, [r3]
	add	r3, r7, #284
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
	ldr	r3, .L438+132
.LPIC303:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
.L343:
	add	r5, r7, #16
	add	r3, r7, #284
	movs	r2, #0
	mov	r1, r3
	ldr	r3, .L438+136
.LPIC304:
	add	r3, pc
	mov	r0, r3
	bl	dokeycheck(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L344
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+140
.LPIC305:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+144
.LPIC306:
	add	r3, pc
	mov	r2, r3
	movs	r3, #17
	str	r3, [r2]
.L344:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L345
	ldr	r3, .L438+148
.LPIC307:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L345
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L345:
	add	r5, r7, #16
	add	r3, r7, #284
	movs	r1, #0
	mov	r0, r3
	bl	maint_check(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L346
	add	r3, r7, #16
	ldr	r3, [r3]
	cmn	r3, #7
	beq	.L346
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+152
.LPIC308:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+156
.LPIC309:
	add	r3, pc
	mov	r2, r3
	movs	r3, #17
	str	r3, [r2]
.L346:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmn	r3, #7
	beq	.L347
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L347:
	movs	r3, #0
	b	.L436
.L324:
	ldr	r3, .L438+160
.LPIC310:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	bgt	.L349
	add	r2, r7, #284
	ldr	r3, .L438+116
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
	b	.L350
.L349:
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r2, [r3]
	add	r3, r7, #284
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
.L350:
	add	r3, r7, #284
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L351
	add	r3, r7, #284
	ldr	r2, .L438+164
.LPIC311:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	default_extension(PLT)
.L351:
	ldr	r3, .L438+168
.LPIC312:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L352
	movs	r2, #3
	b	.L353
.L352:
	movs	r2, #2
.L353:
	add	r5, r7, #16
	add	r3, r7, #284
	mov	r1, r2
	mov	r0, r3
	bl	maint_check(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L354
	add	r3, r7, #16
	ldr	r3, [r3]
	cmn	r3, #7
	bne	.L355
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+172
.LPIC313:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #284
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L355:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+176
.LPIC314:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+180
.LPIC315:
	add	r3, pc
	mov	r2, r3
	movs	r3, #17
	str	r3, [r2]
.L354:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L326:
	ldr	r3, .L438+184
.LPIC316:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L356
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #28
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
	b	.L357
.L356:
	add	r2, r7, #28
	ldr	r3, .L438+116
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
.L357:
	ldr	r3, .L438+188
.LPIC317:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L358
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L438+192
.LPIC318:
	add	r3, pc
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L359
.L358:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+196
.LPIC319:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+200
.LPIC320:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L360
	mov	r3, #-1
	b	.L436
.L360:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+204
.LPIC321:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r2, #1
	movs	r1, #255
	ldr	r3, .L438+208
.LPIC322:
	add	r3, pc
	mov	r0, r3
	bl	getstring(PLT)
.L359:
	ldr	r3, .L438+212
.LPIC323:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L361
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+216
.LPIC324:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+220
.LPIC325:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L361:
	add	r5, r7, #16
	add	r3, r7, #28
	mov	r2, r3
	ldr	r3, .L438+224
.LPIC326:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L438+228
.LPIC327:
	add	r3, pc
	mov	r0, r3
	bl	signkey(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L362
	add	r5, r7, #16
	add	r3, r7, #28
	movs	r1, #0
	mov	r0, r3
	bl	maint_update(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmn	r3, #7
	bne	.L363
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r2, r7, #28
	ldr	r1, .L438+232
.LPIC328:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r3, #0
	b	.L436
.L363:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L362
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+236
.LPIC329:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L362:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L364
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+240
.LPIC330:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+244
.LPIC331:
	add	r3, pc
	mov	r2, r3
	movs	r3, #18
	str	r3, [r2]
.L364:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L321:
	ldr	r3, .L438+248
.LPIC332:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L365
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #28
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
	b	.L366
.L365:
	add	r2, r7, #28
	ldr	r3, .L438+116
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
.L366:
	ldr	r3, .L438+252
.LPIC333:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L367
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L438+256
.LPIC334:
	add	r3, pc
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L368
.L367:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+260
.LPIC335:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+264
.LPIC336:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r2, #1
	movs	r1, #255
	ldr	r3, .L438+268
.LPIC337:
	add	r3, pc
	mov	r0, r3
	bl	getstring(PLT)
.L368:
	add	r5, r7, #16
	add	r3, r7, #28
	mov	r1, r3
	ldr	r3, .L438+272
.LPIC338:
	add	r3, pc
	mov	r0, r3
	bl	disable_key(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L369
	add	r5, r7, #16
	add	r3, r7, #28
	movs	r1, #0
	mov	r0, r3
	bl	maint_update(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmn	r3, #7
	bne	.L370
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r2, r7, #28
	ldr	r1, .L438+276
.LPIC339:
	add	r1, pc
	mov	r0, r3
	bl	fprintf(PLT)
	movs	r3, #0
	b	.L436
.L370:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L369
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+280
.LPIC340:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L369:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L371
	ldr	r3, .L438+284
.LPIC341:
	add	r3, pc
	mov	r2, r3
	movs	r3, #18
	str	r3, [r2]
.L371:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L322:
	ldr	r3, .L438+288
.LPIC342:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L372
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #284
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
	b	.L373
.L372:
	add	r2, r7, #284
	ldr	r3, .L438+116
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
.L373:
	ldr	r3, .L438+292
.LPIC343:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L374
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L438+296
.LPIC344:
	add	r3, pc
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L375
.L374:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+300
.LPIC345:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+304
.LPIC346:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r2, #1
	movs	r1, #255
	ldr	r3, .L438+308
.LPIC347:
	add	r3, pc
	mov	r0, r3
	bl	getstring(PLT)
.L375:
	add	r5, r7, #16
	add	r3, r7, #284
	mov	r1, r3
	ldr	r3, .L438+312
.LPIC348:
	add	r3, pc
	mov	r0, r3
	bl	dokeyedit(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L376
	add	r5, r7, #16
	add	r3, r7, #284
	movs	r1, #0
	mov	r0, r3
	bl	maint_update(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmn	r3, #7
	bne	.L377
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3]
.L377:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L376
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+316
.LPIC349:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L376:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L378
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+320
.LPIC350:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+324
.LPIC351:
	add	r3, pc
	mov	r2, r3
	movs	r3, #14
	str	r3, [r2]
.L378:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L319:
	ldr	r3, .L438+328
.LPIC352:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	bgt	.L379
	ldr	r3, .L438+332
.LPIC353:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L379
	bl	arg_error(PLT)
.L379:
	ldr	r3, .L438+336
.LPIC354:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L380
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r1, [r3]
	add	r3, r7, #28
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
	add	r3, r7, #28
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L381
	add	r3, r7, #28
	ldr	r2, .L438+340
.LPIC355:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	default_extension(PLT)
.L381:
	add	r3, r7, #28
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L382
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+344
.LPIC356:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #28
	mov	r2, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+348
.LPIC357:
	add	r3, pc
	mov	r2, r3
	movs	r3, #11
	str	r3, [r2]
	mov	r3, #-1
	b	.L436
.L382:
	add	r3, r7, #12
	add	r2, r7, #28
	str	r2, [r3]
	b	.L383
.L380:
	add	r5, r7, #12
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	readPhantomInput(PLT)
.L383:
	ldr	r3, .L438+352
.LPIC358:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L384
	movs	r2, #3
	b	.L385
.L384:
	movs	r2, #4
.L385:
	ldr	r3, .L438+356
.LPIC359:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L386
	add	r1, r7, #11
	add	r3, r7, #12
	movs	r2, #1
	ldr	r0, [r3]
	bl	get_header_info_from_file(PLT)
	add	r3, r7, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #149
	bne	.L387
	add	r2, r7, #284
	ldr	r3, .L438+360
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
	b	.L389
.L387:
	add	r2, r7, #284
	ldr	r3, .L438+116
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
	b	.L389
.L386:
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, .L438+364
.LPIC360:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L390
	movs	r3, #8
	b	.L391
.L390:
	movs	r3, #12
.L391:
	add	r3, r3, r2
	ldr	r1, [r3]
	add	r3, r7, #284
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
	add	r3, r7, #284
	ldr	r2, .L438+368
.LPIC361:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	default_extension(PLT)
.L389:
	add	r5, r7, #16
	add	r2, r7, #284
	add	r3, r7, #12
	mov	r1, r2
	ldr	r0, [r3]
	bl	addto_keyring(PLT)
	str	r0, [r5]
	ldr	r3, .L438+372
.LPIC362:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L392
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L392:
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L393
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+376
.LPIC363:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+380
.LPIC364:
	add	r3, pc
	mov	r2, r3
	movs	r3, #12
	str	r3, [r2]
.L393:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L327:
	ldr	r3, .L438+384
.LPIC365:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L394
	movs	r2, #4
	b	.L395
.L394:
	movs	r2, #5
.L395:
	ldr	r3, .L438+388
.LPIC366:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L396
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, .L438+392
.LPIC367:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L397
	movs	r3, #12
	b	.L398
.L397:
	movs	r3, #16
.L398:
	add	r3, r3, r2
	ldr	r1, [r3]
	add	r3, r7, #284
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
	b	.L399
.L396:
	add	r2, r7, #284
	ldr	r3, .L438+116
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
.L399:
	ldr	r3, .L438+396
.LPIC368:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L400
	movs	r2, #2
	b	.L401
.L400:
	movs	r2, #3
.L401:
	ldr	r3, .L438+400
.LPIC369:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L402
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L403
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L438+404
.LPIC370:
	add	r3, pc
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L405
.L403:
	ldr	r3, .L438+408
.LPIC371:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
	b	.L405
.L402:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+412
.LPIC372:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L438+416
.LPIC373:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L406
	mov	r3, #-1
	b	.L436
.L406:
	ldr	r3, .L438+32
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L438+420
.LPIC374:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r2, #1
	movs	r1, #255
	ldr	r3, .L438+424
.LPIC375:
	add	r3, pc
	mov	r0, r3
	bl	getstring(PLT)
.L405:
	ldr	r3, .L438+428
.LPIC376:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L407
	ldr	r3, .L438+432
.LPIC377:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L408
	ldr	r3, .L438+60
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r1, [r3]
	add	r3, r7, #28
	movs	r2, #255
	mov	r0, r3
	bl	strncpy(PLT)
	b	.L409
.L408:
	add	r3, r7, #28
	movs	r2, #0
	strb	r2, [r3]
.L409:
	add	r3, r7, #12
	add	r2, r7, #28
	str	r2, [r3]
	b	.L410
.L407:
	add	r5, r7, #12
	movs	r0, #5
	bl	tempfile(PLT)
	str	r0, [r5]
.L410:
	add	r3, r7, #284
	ldr	r2, .L438+436
.LPIC378:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	default_extension(PLT)
	ldr	r3, .L438+440
.LPIC379:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L411
	ldr	r3, .L438+444
.LPIC380:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L412
.L439:
	.align	2
.L438:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC276+4)
	.word	__stack_chk_guard(GOT)
	.word	filter_mode-(.LPIC277+4)
	.word	batchmode-(.LPIC278+4)
	.word	sign_flag-(.LPIC279+4)
	.word	errorLvl-(.LPIC280+4)
	.word	filter_mode-(.LPIC281+4)
	.word	stdout(GOT)
	.word	pgpout(GOT)
	.word	nomanual-(.LPIC282+4)
	.word	.LC103-(.LPIC283+4)
	.word	manual_dirs(GOT)
	.word	.LC104-(.LPIC284+4)
	.word	.LC105-(.LPIC285+4)
	.word	myArgc-(.LPIC286+4)
	.word	myArgv(GOT)
	.word	myArgc-(.LPIC287+4)
	.word	u_flag-(.LPIC288+4)
	.word	my_name-(.LPIC289+4)
	.word	my_name-(.LPIC290+4)
	.word	.LC106-(.LPIC291+4)
	.word	errorLvl-(.LPIC292+4)
	.word	myArgc-(.LPIC293+4)
	.word	mcguffin-(.LPIC294+4)
	.word	mcguffin-(.LPIC295+4)
	.word	.LC107-(.LPIC296+4)
	.word	mcguffin-(.LPIC297+4)
	.word	mcguffin-(.LPIC298+4)
	.word	myArgc-(.LPIC299+4)
	.word	globalPubringName(GOT)
	.word	myArgc-(.LPIC300+4)
	.word	myArgc-(.LPIC301+4)
	.word	PGP_EXTENSION-(.LPIC302+4)
	.word	mcguffin-(.LPIC303+4)
	.word	mcguffin-(.LPIC304+4)
	.word	.LC108-(.LPIC305+4)
	.word	errorLvl-(.LPIC306+4)
	.word	mcguffin-(.LPIC307+4)
	.word	.LC109-(.LPIC308+4)
	.word	errorLvl-(.LPIC309+4)
	.word	myArgc-(.LPIC310+4)
	.word	PGP_EXTENSION-(.LPIC311+4)
	.word	c_flag-(.LPIC312+4)
	.word	.LC110-(.LPIC313+4)
	.word	.LC109-(.LPIC314+4)
	.word	errorLvl-(.LPIC315+4)
	.word	myArgc-(.LPIC316+4)
	.word	myArgc-(.LPIC317+4)
	.word	mcguffin-(.LPIC318+4)
	.word	.LC111-(.LPIC319+4)
	.word	batchmode-(.LPIC320+4)
	.word	.LC112-(.LPIC321+4)
	.word	mcguffin-(.LPIC322+4)
	.word	my_name-(.LPIC323+4)
	.word	.LC69-(.LPIC324+4)
	.word	.LC70-(.LPIC325+4)
	.word	my_name-(.LPIC326+4)
	.word	mcguffin-(.LPIC327+4)
	.word	.LC113-(.LPIC328+4)
	.word	.LC109-(.LPIC329+4)
	.word	.LC114-(.LPIC330+4)
	.word	errorLvl-(.LPIC331+4)
	.word	myArgc-(.LPIC332+4)
	.word	myArgc-(.LPIC333+4)
	.word	mcguffin-(.LPIC334+4)
	.word	.LC115-(.LPIC335+4)
	.word	.LC116-(.LPIC336+4)
	.word	mcguffin-(.LPIC337+4)
	.word	mcguffin-(.LPIC338+4)
	.word	.LC113-(.LPIC339+4)
	.word	.LC109-(.LPIC340+4)
	.word	errorLvl-(.LPIC341+4)
	.word	myArgc-(.LPIC342+4)
	.word	myArgc-(.LPIC343+4)
	.word	mcguffin-(.LPIC344+4)
	.word	.LC117-(.LPIC345+4)
	.word	.LC118-(.LPIC346+4)
	.word	mcguffin-(.LPIC347+4)
	.word	mcguffin-(.LPIC348+4)
	.word	.LC109-(.LPIC349+4)
	.word	.LC119-(.LPIC350+4)
	.word	errorLvl-(.LPIC351+4)
	.word	myArgc-(.LPIC352+4)
	.word	filter_mode-(.LPIC353+4)
	.word	filter_mode-(.LPIC354+4)
	.word	PGP_EXTENSION-(.LPIC355+4)
	.word	.LC120-(.LPIC356+4)
	.word	errorLvl-(.LPIC357+4)
	.word	filter_mode-(.LPIC358+4)
	.word	myArgc-(.LPIC359+4)
	.word	globalSecringName(GOT)
	.word	filter_mode-(.LPIC360+4)
	.word	PGP_EXTENSION-(.LPIC361+4)
	.word	filter_mode-(.LPIC362+4)
	.word	.LC90-(.LPIC363+4)
	.word	errorLvl-(.LPIC364+4)
	.word	filter_mode-(.LPIC365+4)
	.word	myArgc-(.LPIC366+4)
	.word	filter_mode-(.LPIC367+4)
	.word	filter_mode-(.LPIC368+4)
	.word	myArgc-(.LPIC369+4)
	.word	mcguffin-(.LPIC370+4)
	.word	mcguffin-(.LPIC371+4)
	.word	.LC121-(.LPIC372+4)
	.word	batchmode-(.LPIC373+4)
	.word	.LC118-(.LPIC374+4)
	.word	mcguffin-(.LPIC375+4)
	.word	filter_mode-(.LPIC376+4)
	.word	myArgc-(.LPIC377+4)
	.word	PGP_EXTENSION-(.LPIC378+4)
	.word	filter_mode-(.LPIC379+4)
	.word	emit_radix_64-(.LPIC380+4)
.L411:
	movs	r3, #0
.L412:
	add	r5, r7, #16
	add	r2, r7, #284
	add	r1, r7, #12
	ldr	r1, [r1]
	ldr	r0, .L440
.LPIC381:
	add	r0, pc
	bl	extract_from_keyring(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L413
	ldr	r3, .L440+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L440+8
.LPIC382:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L440+12
.LPIC383:
	add	r3, pc
	mov	r2, r3
	movs	r3, #13
	str	r3, [r2]
	ldr	r3, .L440+16
.LPIC384:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L414
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L414:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L413:
	ldr	r3, .L440+20
.LPIC385:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L415
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L415
	ldr	r3, .L440+24
.LPIC386:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L416
	add	r0, r7, #12
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [r0]
	bl	armor_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L417
	ldr	r3, .L440+28
.LPIC387:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L436
.L416:
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	writePhantomOutput(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L417
	ldr	r3, .L440+32
.LPIC388:
	add	r3, pc
	mov	r2, r3
	movs	r3, #3
	str	r3, [r2]
	mov	r3, #-1
	b	.L436
.L417:
	add	r3, r7, #12
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L415:
	movs	r3, #0
	b	.L436
.L325:
	ldr	r3, .L440+36
.LPIC389:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L418
	ldr	r3, .L440+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r2, [r3]
	add	r3, r7, #284
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L419
.L418:
	add	r2, r7, #284
	ldr	r3, .L440+44
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
.L419:
	ldr	r3, .L440+48
.LPIC390:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L420
	ldr	r3, .L440+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L440+52
.LPIC391:
	add	r3, pc
	mov	r0, r3
	bl	strcpy(PLT)
	b	.L421
.L420:
	ldr	r3, .L440+56
.LPIC392:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L422
	ldr	r3, .L440+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L440+60
.LPIC393:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	b	.L423
.L422:
	ldr	r3, .L440+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L440+64
.LPIC394:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L423:
	ldr	r3, .L440+68
.LPIC395:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L424
	mov	r3, #-1
	b	.L436
.L424:
	ldr	r3, .L440+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L440+72
.LPIC396:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	movs	r2, #1
	movs	r1, #255
	ldr	r3, .L440+76
.LPIC397:
	add	r3, pc
	mov	r0, r3
	bl	getstring(PLT)
.L421:
	add	r3, r7, #284
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L425
	add	r3, r7, #284
	ldr	r2, .L440+80
.LPIC398:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	default_extension(PLT)
.L425:
	ldr	r3, .L440+84
.LPIC399:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L426
	add	r3, r7, #284
	mov	r1, r3
	ldr	r3, .L440+88
.LPIC400:
	add	r3, pc
	mov	r0, r3
	bl	remove_sigs(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L427
	ldr	r3, .L440+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L440+92
.LPIC401:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L440+96
.LPIC402:
	add	r3, pc
	mov	r2, r3
	movs	r3, #19
	str	r3, [r2]
	mov	r3, #-1
	b	.L436
.L426:
	ldr	r3, .L440+100
.LPIC403:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	add	r2, r7, #284
	ldr	r1, .L440+104
.LPIC404:
	add	r1, pc
	movs	r0, #0
	bl	remove_from_keyring(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L427
	ldr	r3, .L440+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L440+108
.LPIC405:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L440+112
.LPIC406:
	add	r3, pc
	mov	r2, r3
	movs	r3, #16
	str	r3, [r2]
	mov	r3, #-1
	b	.L436
.L427:
	movs	r3, #0
	b	.L436
.L317:
	ldr	r3, .L440+116
.LPIC407:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	bgt	.L428
	add	r2, r7, #284
	ldr	r3, .L440+44
	ldr	r3, [r4, r3]
	mov	r1, r3
	mov	r0, r2
	bl	strcpy(PLT)
	b	.L429
.L428:
	ldr	r3, .L440+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r2, [r3]
	add	r3, r7, #284
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
.L429:
	ldr	r3, .L440+120
.LPIC408:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #2
	ble	.L430
	ldr	r3, .L440+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L440+124
.LPIC409:
	add	r3, pc
	mov	r0, r3
	bl	strcpy(PLT)
	ldr	r3, .L440+128
.LPIC410:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L440+132
.LPIC411:
	add	r3, pc
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L432
	ldr	r3, .L440+136
.LPIC412:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
	b	.L432
.L430:
	ldr	r3, .L440+140
.LPIC413:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
.L432:
	ldr	r3, .L440+144
.LPIC414:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L433
	ldr	r3, .L440+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, .L440+148
.LPIC415:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	has_extension(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L433
	ldr	r3, .L440+40
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r2, [r3]
	add	r3, r7, #284
	mov	r1, r2
	mov	r0, r3
	bl	strcpy(PLT)
	ldr	r3, .L440+152
.LPIC416:
	add	r3, pc
	movs	r2, #0
	strb	r2, [r3]
.L433:
	add	r3, r7, #284
	mov	r0, r3
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L434
	add	r3, r7, #284
	ldr	r2, .L440+156
.LPIC417:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	default_extension(PLT)
.L434:
	adds	r3, r7, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #86
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, .L440+160
.LPIC418:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r5, r7, #16
	add	r1, r7, #284
	ldr	r0, .L440+164
.LPIC419:
	add	r0, pc
	bl	view_keyring(PLT)
	str	r0, [r5]
	add	r3, r7, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L435
	ldr	r3, .L440+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L440+168
.LPIC420:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L440+172
.LPIC421:
	add	r3, pc
	mov	r2, r3
	movs	r3, #15
	str	r3, [r2]
.L435:
	add	r3, r7, #16
	ldr	r3, [r3]
	b	.L436
.L316:
	bl	arg_error(PLT)
	movs	r3, #0
.L436:
	mov	r0, r3
	ldr	r3, .L440+176
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #540]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L437
	bl	__stack_chk_fail(PLT)
.L437:
	add	r7, r7, #544
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L441:
	.align	2
.L440:
	.word	mcguffin-(.LPIC381+4)
	.word	pgpout(GOT)
	.word	.LC122-(.LPIC382+4)
	.word	errorLvl-(.LPIC383+4)
	.word	filter_mode-(.LPIC384+4)
	.word	filter_mode-(.LPIC385+4)
	.word	emit_radix_64-(.LPIC386+4)
	.word	errorLvl-(.LPIC387+4)
	.word	errorLvl-(.LPIC388+4)
	.word	myArgc-(.LPIC389+4)
	.word	myArgv(GOT)
	.word	globalPubringName(GOT)
	.word	myArgc-(.LPIC390+4)
	.word	mcguffin-(.LPIC391+4)
	.word	sign_flag-(.LPIC392+4)
	.word	.LC123-(.LPIC393+4)
	.word	.LC124-(.LPIC394+4)
	.word	batchmode-(.LPIC395+4)
	.word	.LC118-(.LPIC396+4)
	.word	mcguffin-(.LPIC397+4)
	.word	PGP_EXTENSION-(.LPIC398+4)
	.word	sign_flag-(.LPIC399+4)
	.word	mcguffin-(.LPIC400+4)
	.word	.LC125-(.LPIC401+4)
	.word	errorLvl-(.LPIC402+4)
	.word	myArgc-(.LPIC403+4)
	.word	mcguffin-(.LPIC404+4)
	.word	.LC126-(.LPIC405+4)
	.word	errorLvl-(.LPIC406+4)
	.word	myArgc-(.LPIC407+4)
	.word	myArgc-(.LPIC408+4)
	.word	mcguffin-(.LPIC409+4)
	.word	.LC107-(.LPIC410+4)
	.word	mcguffin-(.LPIC411+4)
	.word	mcguffin-(.LPIC412+4)
	.word	mcguffin-(.LPIC413+4)
	.word	myArgc-(.LPIC414+4)
	.word	PGP_EXTENSION-(.LPIC415+4)
	.word	mcguffin-(.LPIC416+4)
	.word	PGP_EXTENSION-(.LPIC417+4)
	.word	c_flag-(.LPIC418+4)
	.word	mcguffin-(.LPIC419+4)
	.word	.LC127-(.LPIC420+4)
	.word	errorLvl-(.LPIC421+4)
	.word	__stack_chk_guard(GOT)
	.size	do_keyopt, .-do_keyopt
	.section	.rodata
	.align	2
.LC128:
	.ascii	"For more detailed help, consult the PGP User's Guid"
	.ascii	"e.\012\000"
	.text
	.align	1
	.global	user_error
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	user_error, %function
user_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	add	r7, sp, #0
	ldr	r4, .L445
.LPIC422:
	add	r4, pc
	ldr	r3, .L445+4
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L445+8
.LPIC423:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
	ldr	r3, .L445+4
	ldr	r3, [r4, r3]
	ldr	r4, [r3]
	ldr	r3, .L445+12
.LPIC424:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	fprintf(PLT)
	ldr	r3, .L445+16
.LPIC425:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L443
	ldr	r3, .L445+20
.LPIC426:
	add	r3, pc
	ldr	r3, [r3]
	b	.L444
.L443:
	movs	r3, #127
.L444:
	mov	r0, r3
	bl	exitPGP(PLT)
	nop
	pop	{r4, r5, r7, pc}
.L446:
	.align	2
.L445:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC422+4)
	.word	pgpout(GOT)
	.word	.LC60-(.LPIC423+4)
	.word	.LC128-(.LPIC424+4)
	.word	errorLvl-(.LPIC425+4)
	.word	errorLvl-(.LPIC426+4)
	.size	user_error, .-user_error
	.section	.rodata
	.align	2
.LC129:
	.ascii	"exitPGP: exitcode = %d\012\000"
	.text
	.align	1
	.global	exitPGP
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	exitPGP, %function
exitPGP:
	@ args = 0, pretend = 0, frame = 4112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #4096
	sub	sp, sp, #16
	add	r7, sp, #0
	add	r3, r7, #16
	subs	r3, r3, #12
	str	r0, [r3]
	ldr	r3, .L455
.LPIC427:
	add	r3, pc
	ldr	r2, .L455+4
	ldr	r2, [r3, r2]
	ldr	r2, [r2]
	add	r1, r7, #4096
	add	r1, r1, #12
	str	r2, [r1]
	ldr	r2, .L455+8
.LPIC428:
	add	r2, pc
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L448
	ldr	r2, .L455+12
	ldr	r3, [r3, r2]
	ldr	r0, [r3]
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, .L455+16
.LPIC429:
	add	r3, pc
	mov	r1, r3
	bl	fprintf(PLT)
.L448:
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r2, .L455+20
.LPIC430:
	add	r2, pc
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L449
.L450:
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r3, [r3]
	adds	r3, r3, #4
	movs	r2, #16
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #16
	subs	r3, r3, #8
	add	r2, r7, #16
	subs	r2, r2, #8
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
.L449:
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L450
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r2, .L455+24
.LPIC431:
	add	r2, pc
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L451
.L452:
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r3, [r3]
	adds	r3, r3, #4
	movs	r2, #16
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #16
	subs	r3, r3, #8
	add	r2, r7, #16
	subs	r2, r2, #8
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
.L451:
	add	r3, r7, #16
	subs	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L452
	bl	cleanup_tmpf(PLT)
	movs	r0, #0
	bl	cryptRandOpen(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L453
	movs	r0, #0
	bl	cryptRandSave(PLT)
.L453:
	add	r3, r7, #16
	subs	r3, r3, #4
	mov	r2, #4096
	movs	r1, #0
	mov	r0, r3
	bl	memset(PLT)
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	exit(PLT)
.L456:
	.align	2
.L455:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC427+4)
	.word	__stack_chk_guard(GOT)
	.word	verbose-(.LPIC428+4)
	.word	pgpout(GOT)
	.word	.LC129-(.LPIC429+4)
	.word	passwds-(.LPIC430+4)
	.word	keypasswds-(.LPIC431+4)
	.size	exitPGP, .-exitPGP
	.section	.rodata
	.align	2
.LC130:
	.ascii	"\012Invalid arguments.\012\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	arg_error, %function
arg_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r3, r4, r7, lr}
	add	r7, sp, #0
	ldr	r4, .L458
.LPIC432:
	add	r4, pc
	bl	signon_msg(PLT)
	ldr	r3, .L458+4
	ldr	r3, [r4, r3]
	ldr	r4, [r3]
	ldr	r3, .L458+8
.LPIC433:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	fprintf(PLT)
	ldr	r3, .L458+12
.LPIC434:
	add	r3, pc
	mov	r2, r3
	movs	r3, #5
	str	r3, [r2]
	bl	user_error(PLT)
	nop
	pop	{r3, r4, r7, pc}
.L459:
	.align	2
.L458:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC432+4)
	.word	pgpout(GOT)
	.word	.LC130-(.LPIC433+4)
	.word	errorLvl-(.LPIC434+4)
	.size	arg_error, .-arg_error
	.section	.rodata
	.align	2
.LC131:
	.ascii	"en\000"
	.align	2
.LC132:
	.ascii	"pgp\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	build_helpfile, %function
build_helpfile:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L464
.LPIC436:
	add	r4, pc
	ldr	r3, .L464+4
.LPIC435:
	add	r3, pc
	mov	r1, r3
	ldr	r3, .L464+8
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L461
	ldr	r3, .L464+8
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	buildfilename(PLT)
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	strcat(PLT)
	ldr	r3, .L464+12
.LPIC437:
	add	r3, pc
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	force_extension(PLT)
	ldr	r0, [r7, #4]
	bl	file_exists(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L463
.L461:
	ldr	r3, .L464+16
.LPIC438:
	add	r3, pc
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	buildfilename(PLT)
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	bl	strcat(PLT)
	ldr	r3, .L464+20
.LPIC439:
	add	r3, pc
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	force_extension(PLT)
	b	.L460
.L463:
	nop
.L460:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L465:
	.align	2
.L464:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC436+4)
	.word	.LC131-(.LPIC435+4)
	.word	language(GOT)
	.word	HLP_EXTENSION-(.LPIC437+4)
	.word	.LC132-(.LPIC438+4)
	.word	HLP_EXTENSION-(.LPIC439+4)
	.size	build_helpfile, .-build_helpfile
	.section	.rodata
	.align	2
.LC133:
	.ascii	"\012Usage summary:\012To encrypt a plaintext file w"
	.ascii	"ith recipent's public key, type:\012   pgp -e textf"
	.ascii	"ile her_userid [other userids] (produces textfile.p"
	.ascii	"gp)\012To sign a plaintext file with your secret ke"
	.ascii	"y:\012   pgp -s textfile [-u your_userid]          "
	.ascii	" (produces textfile.pgp)\012To sign a plaintext fil"
	.ascii	"e with your secret key, and then encrypt it\012   w"
	.ascii	"ith recipent's public key, producing a .pgp file:\012"
	.ascii	"   pgp -es textfile her_userid [other userids] [-u "
	.ascii	"your_userid]\012To encrypt with conventional encryp"
	.ascii	"tion only:\012   pgp -c textfile\012To decrypt or c"
	.ascii	"heck a signature for a ciphertext (.pgp) file:\012 "
	.ascii	"  pgp ciphertextfile [-o plaintextfile]\012To produ"
	.ascii	"ce output in ASCII for email, add the -a option to "
	.ascii	"other options.\012To generate your own unique publi"
	.ascii	"c/secret key pair:  pgp -kg\012For help on other ke"
	.ascii	"y management functions, type:   pgp -k\012\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	usage, %function
usage:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #264
	add	r7, sp, #0
	ldr	r4, .L472
.LPIC440:
	add	r4, pc
	ldr	r3, .L472+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #260]
	mov	r3, r7
	adds	r2, r7, #4
	str	r2, [r3]
	bl	signon_msg(PLT)
	adds	r3, r7, #4
	ldr	r2, .L472+8
.LPIC441:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	build_helpfile(PLT)
	ldr	r3, .L472+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L467
	mov	r5, r7
	movs	r0, #4
	bl	tempfile(PLT)
	str	r0, [r5]
	ldr	r3, .L472+16
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #2
	str	r3, [r2]
	mov	r3, r7
	adds	r2, r7, #4
	ldr	r1, [r3]
	mov	r0, r2
	bl	copyfiles_by_name(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L468
	mov	r3, r7
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	mov	r3, r7
	adds	r2, r7, #4
	str	r2, [r3]
.L468:
	ldr	r3, .L472+16
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L467:
	mov	r3, r7
	movs	r1, #0
	ldr	r0, [r3]
	bl	more_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L469
	ldr	r3, .L472+20
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L472+24
.LPIC442:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L469:
	ldr	r3, .L472+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L470
	mov	r3, r7
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L470:
	movs	r0, #5
	bl	exit(PLT)
.L473:
	.align	2
.L472:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC440+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC75-(.LPIC441+4)
	.word	ext_c_ptr(GOT)
	.word	CONVERSION(GOT)
	.word	pgpout(GOT)
	.word	.LC133-(.LPIC442+4)
	.size	usage, .-usage
	.section	.rodata
	.align	2
.LC134:
	.ascii	"key\000"
	.align	2
.LC135:
	.ascii	"\012Key management functions:\012To generate your o"
	.ascii	"wn unique public/secret key pair:\012   pgp -kg\012"
	.ascii	"To add a key file's contents to your public or secr"
	.ascii	"et key ring:\012   pgp -ka keyfile [keyring]\012To "
	.ascii	"remove a key or a user ID from your public or secre"
	.ascii	"t key ring:\012   pgp -kr userid [keyring]\012To ed"
	.ascii	"it your user ID or pass phrase:\012   pgp -ke your_"
	.ascii	"userid [keyring]\012To extract (copy) a key from yo"
	.ascii	"ur public or secret key ring:\012   pgp -kx userid "
	.ascii	"keyfile [keyring]\012To view the contents of your p"
	.ascii	"ublic key ring:\012   pgp -kv[v] [userid] [keyring]"
	.ascii	"\012To check signatures on your public key ring:\012"
	.ascii	"   pgp -kc [userid] [keyring]\012To sign someone el"
	.ascii	"se's public key on your public key ring:\012   pgp "
	.ascii	"-ks her_userid [-u your_userid] [keyring]\012To rem"
	.ascii	"ove selected signatures from a userid on a keyring:"
	.ascii	"\012   pgp -krs userid [keyring]\012\000"
	.text
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	key_usage, %function
key_usage:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #264
	add	r7, sp, #0
	ldr	r4, .L480
.LPIC443:
	add	r4, pc
	ldr	r3, .L480+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #260]
	mov	r3, r7
	adds	r2, r7, #4
	str	r2, [r3]
	bl	signon_msg(PLT)
	adds	r3, r7, #4
	ldr	r2, .L480+8
.LPIC444:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	build_helpfile(PLT)
	ldr	r3, .L480+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L475
	mov	r5, r7
	movs	r0, #4
	bl	tempfile(PLT)
	str	r0, [r5]
	ldr	r3, .L480+16
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #2
	str	r3, [r2]
	mov	r3, r7
	adds	r2, r7, #4
	ldr	r1, [r3]
	mov	r0, r2
	bl	copyfiles_by_name(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L476
	mov	r3, r7
	ldr	r0, [r3]
	bl	rmtemp(PLT)
	mov	r3, r7
	adds	r2, r7, #4
	str	r2, [r3]
.L476:
	ldr	r3, .L480+16
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
.L475:
	mov	r3, r7
	movs	r1, #0
	ldr	r0, [r3]
	bl	more_file(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L477
	ldr	r3, .L480+20
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L480+24
.LPIC445:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r3, r0
	mov	r1, r3
	mov	r0, r5
	bl	fprintf(PLT)
.L477:
	ldr	r3, .L480+12
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L478
	mov	r3, r7
	ldr	r0, [r3]
	bl	rmtemp(PLT)
.L478:
	movs	r0, #5
	bl	exit(PLT)
.L481:
	.align	2
.L480:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC443+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC134-(.LPIC444+4)
	.word	ext_c_ptr(GOT)
	.word	CONVERSION(GOT)
	.word	pgpout(GOT)
	.word	.LC135-(.LPIC445+4)
	.size	key_usage, .-key_usage
	.section	.rodata
	.align	2
.LC136:
	.ascii	"\012Including \"%s\"...\012\000"
	.align	2
.LC137:
	.ascii	"r\000"
	.align	2
.LC138:
	.ascii	"PGP\000"
	.text
	.align	1
	.global	ParseRecipients
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	ParseRecipients, %function
ParseRecipients:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #296
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	ldr	r4, .L508
.LPIC446:
	add	r4, pc
	ldr	r3, .L508+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #292]
	add	r3, r7, #28
	adds	r2, r7, #4
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #16
	movs	r2, #128
	str	r2, [r3]
	b	.L483
.L486:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	movs	r2, #2
	ldr	r1, .L508+8
.LPIC447:
	add	r1, pc
	mov	r0, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L507
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r2, r2, #4
	str	r2, [r3]
.L483:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L486
	b	.L485
.L507:
	nop
.L485:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L487
	add	r3, r7, #28
	ldr	r3, [r3]
	b	.L488
.L487:
	adds	r3, r7, #4
	add	r2, r7, #28
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r5, r7, #8
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r5]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L489
	movs	r0, #7
	bl	exitPGP(PLT)
.L489:
	add	r3, r7, #12
	movs	r2, #0
	str	r2, [r3]
	b	.L490
.L504:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	movs	r2, #2
	ldr	r1, .L508+12
.LPIC448:
	add	r1, pc
	mov	r0, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L491
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r2, r7, #4
	adds	r1, r3, #4
	str	r1, [r2]
	add	r2, r7, #12
	ldr	r2, [r2]
	add	r1, r7, #12
	adds	r0, r2, #1
	str	r0, [r1]
	lsls	r2, r2, #2
	add	r1, r7, #8
	ldr	r1, [r1]
	add	r2, r2, r1
	ldr	r3, [r3]
	str	r3, [r2]
	add	r2, r7, #12
	add	r3, r7, #16
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L490
	add	r3, r7, #16
	add	r2, r7, #16
	ldr	r2, [r2]
	adds	r2, r2, #128
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r3, [r3]
	lsls	r2, r3, #2
	add	r5, r7, #8
	add	r3, r7, #8
	mov	r1, r2
	ldr	r0, [r3]
	bl	realloc(PLT)
	str	r0, [r5]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L490
	movs	r0, #7
	bl	exitPGP(PLT)
	b	.L490
.L491:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	cmp	r3, #2
	bne	.L493
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r2, r2, #4
	str	r2, [r3]
	add	r3, r7, #20
	adds	r2, r7, #4
	ldr	r2, [r2]
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L494
.L493:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #20
	adds	r2, r2, #2
	str	r2, [r3]
.L494:
	ldr	r3, .L508+16
	ldr	r3, [r4, r3]
	ldr	r5, [r3]
	ldr	r3, .L508+20
.LPIC449:
	add	r3, pc
	mov	r0, r3
	bl	LANG(PLT)
	mov	r1, r0
	add	r3, r7, #20
	ldr	r2, [r3]
	mov	r0, r5
	bl	fprintf(PLT)
	add	r5, r7, #32
	add	r3, r7, #20
	ldr	r2, .L508+24
.LPIC450:
	add	r2, pc
	mov	r1, r2
	ldr	r0, [r3]
	bl	fopen(PLT)
	str	r0, [r5]
	add	r3, r7, #32
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L496
	ldr	r3, .L508+28
.LPIC451:
	add	r3, pc
	mov	r0, r3
	bl	perror(PLT)
	movs	r0, #3
	bl	exitPGP(PLT)
	b	.L496
.L502:
	add	r3, r7, #36
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	add	r3, r7, #24
	str	r2, [r3]
	add	r3, r7, #24
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L497
	add	r3, r7, #36
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #35
	bne	.L499
.L497:
	add	r3, r7, #8
	add	r2, r7, #8
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #12
	add	r2, r7, #12
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L496
.L500:
	add	r3, r7, #24
	add	r2, r7, #24
	ldr	r2, [r2]
	subs	r2, r2, #1
	str	r2, [r3]
.L499:
	bl	__ctype_b_loc(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	add	r3, r7, #24
	ldr	r3, [r3]
	subs	r3, r3, #1
	add	r1, r7, #36
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	and	r3, r3, #8192
	cmp	r3, #0
	bne	.L500
	add	r2, r7, #36
	add	r3, r7, #24
	ldr	r3, [r3]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r7, #12
	adds	r1, r3, #1
	str	r1, [r2]
	lsls	r3, r3, #2
	add	r2, r7, #8
	ldr	r2, [r2]
	adds	r5, r2, r3
	add	r3, r7, #36
	mov	r0, r3
	bl	store_str(PLT)
	mov	r3, r0
	str	r3, [r5]
	ldr	r3, [r5]
	cmp	r3, #0
	bne	.L501
	movs	r0, #7
	bl	exitPGP(PLT)
.L501:
	add	r3, r7, #8
	add	r2, r7, #8
	ldr	r2, [r2]
	str	r2, [r3]
	add	r3, r7, #16
	add	r2, r7, #16
	ldr	r2, [r2]
	str	r2, [r3]
	add	r2, r7, #12
	add	r3, r7, #16
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L496
	add	r3, r7, #16
	add	r2, r7, #16
	ldr	r2, [r2]
	adds	r2, r2, #128
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r3, [r3]
	lsls	r2, r3, #2
	add	r5, r7, #8
	add	r3, r7, #8
	mov	r1, r2
	ldr	r0, [r3]
	bl	realloc(PLT)
	str	r0, [r5]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L496
	movs	r0, #7
	bl	exitPGP(PLT)
.L496:
	add	r3, r7, #32
	add	r0, r7, #36
	ldr	r2, [r3]
	movs	r1, #255
	bl	fgets(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L502
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	ferror(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L503
	ldr	r3, .L508+32
.LPIC452:
	add	r3, pc
	mov	r0, r3
	bl	perror(PLT)
	movs	r0, #3
	bl	exitPGP(PLT)
.L503:
	add	r3, r7, #32
	ldr	r0, [r3]
	bl	fclose(PLT)
	adds	r3, r7, #4
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r2, r2, #4
	str	r2, [r3]
.L490:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L504
	add	r2, r7, #12
	add	r3, r7, #16
	ldr	r2, [r2]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L505
	add	r3, r7, #16
	ldr	r3, [r3]
	adds	r3, r3, #1
	lsls	r2, r3, #2
	add	r5, r7, #8
	add	r3, r7, #8
	mov	r1, r2
	ldr	r0, [r3]
	bl	realloc(PLT)
	str	r0, [r5]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L505
	movs	r0, #7
	bl	exitPGP(PLT)
.L505:
	add	r3, r7, #12
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r2, r7, #8
	ldr	r2, [r2]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
.L488:
	mov	r0, r3
	ldr	r3, .L508+4
	ldr	r3, [r4, r3]
	ldr	r2, [r7, #292]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L506
	bl	__stack_chk_fail(PLT)
.L506:
	add	r7, r7, #296
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L509:
	.align	2
.L508:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC446+4)
	.word	__stack_chk_guard(GOT)
	.word	.LC51-(.LPIC447+4)
	.word	.LC51-(.LPIC448+4)
	.word	pgpout(GOT)
	.word	.LC136-(.LPIC449+4)
	.word	.LC137-(.LPIC450+4)
	.word	.LC138-(.LPIC451+4)
	.word	.LC138-(.LPIC452+4)
	.size	ParseRecipients, .-ParseRecipients
	.local	printed.7806
	.comm	printed.7806,1,1
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
