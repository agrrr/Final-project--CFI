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
	.file	"dijkstra_large.c"
	.text
	.global	qHead
	.bss
	.align	2
	.type	qHead, %object
	.size	qHead, 4
qHead:
	.space	4
	.comm	AdjMatrix,40000,4
	.global	g_qCount
	.align	2
	.type	g_qCount, %object
	.size	g_qCount, 4
g_qCount:
	.space	4
	.comm	rgnNodes,800,4
	.comm	ch,4,4
	.comm	iPrev,4,4
	.comm	iNode,4,4
	.comm	i,4,4
	.comm	iCost,4,4
	.comm	iDist,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	" %d\000"
	.text
	.align	1
	.global	print_path
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	print_path, %function
print_path:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L3
.LPIC1:
	add	r4, pc
	ldr	r3, [r7]
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movw	r2, #9999
	cmp	r3, r2
	beq	.L2
	ldr	r3, [r7]
	lsls	r3, r3, #3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r0, [r7, #4]
	bl	print_path(PLT)
.L2:
	ldr	r1, [r7]
	ldr	r3, .L3+4
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L3+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	fflush(PLT)
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L4:
	.align	2
.L3:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	.LC0-(.LPIC0+4)
	.word	stdout(GOT)
	.size	print_path, .-print_path
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Out of memory.\012\000"
	.text
	.align	1
	.global	enqueue
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	enqueue, %function
enqueue:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L11
.LPIC3:
	add	r4, pc
	movs	r0, #16
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, .L11+4
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L6
	ldr	r3, .L11+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #15
	movs	r1, #1
	ldr	r0, .L11+12
.LPIC4:
	add	r0, pc
	bl	fwrite(PLT)
	movs	r0, #1
	bl	exit(PLT)
.L6:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L9
	ldr	r3, .L11+16
.LPIC5:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r3, [r2]
	b	.L8
.L10:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
.L9:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L10
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
.L8:
	ldr	r3, .L11+20
.LPIC6:
	add	r3, pc
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L11+24
.LPIC7:
	add	r2, pc
	str	r3, [r2]
	nop
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L12:
	.align	2
.L11:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	qHead-(.LPIC2+4)
	.word	stderr(GOT)
	.word	.LC1-(.LPIC4+4)
	.word	qHead-(.LPIC5+4)
	.word	g_qCount-(.LPIC6+4)
	.word	g_qCount-(.LPIC7+4)
	.size	enqueue, .-enqueue
	.align	1
	.global	dequeue
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	dequeue, %function
dequeue:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, .L16
.LPIC8:
	add	r3, pc
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, .L16+4
.LPIC9:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L15
	ldr	r3, .L16+8
.LPIC10:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, .L16+12
.LPIC11:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, .L16+16
.LPIC12:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, .L16+20
.LPIC13:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	ldr	r2, .L16+24
.LPIC14:
	add	r2, pc
	str	r3, [r2]
	ldr	r0, [r7, #20]
	bl	free(PLT)
	ldr	r3, .L16+28
.LPIC15:
	add	r3, pc
	ldr	r3, [r3]
	subs	r3, r3, #1
	ldr	r2, .L16+32
.LPIC16:
	add	r2, pc
	str	r3, [r2]
.L15:
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L17:
	.align	2
.L16:
	.word	qHead-(.LPIC8+4)
	.word	qHead-(.LPIC9+4)
	.word	qHead-(.LPIC10+4)
	.word	qHead-(.LPIC11+4)
	.word	qHead-(.LPIC12+4)
	.word	qHead-(.LPIC13+4)
	.word	qHead-(.LPIC14+4)
	.word	g_qCount-(.LPIC15+4)
	.word	g_qCount-(.LPIC16+4)
	.size	dequeue, .-dequeue
	.align	1
	.global	qcount
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	qcount, %function
qcount:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	add	r7, sp, #0
	ldr	r3, .L20
.LPIC17:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L21:
	.align	2
.L20:
	.word	g_qCount-(.LPIC17+4)
	.size	qcount, .-qcount
	.section	.rodata
	.align	2
.LC2:
	.ascii	"Shortest path is 0 in cost. Just stay where you are"
	.ascii	".\000"
	.align	2
.LC3:
	.ascii	"Shortest path is %d in cost. \000"
	.align	2
.LC4:
	.ascii	"Path is: \000"
	.text
	.align	1
	.global	dijkstra
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	dijkstra, %function
dijkstra:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L33
.LPIC18:
	add	r4, pc
	ldr	r3, .L33+4
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	b	.L23
.L24:
	ldr	r3, .L33+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L33+8
	ldr	r2, [r4, r2]
	mov	r1, r2
	movw	r2, #9999
	str	r2, [r1, r3, lsl #3]
	ldr	r3, .L33+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L33+8
	ldr	r2, [r4, r2]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movw	r2, #9999
	str	r2, [r3, #4]
	ldr	r3, .L33+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L33+4
	ldr	r2, [r4, r2]
	str	r3, [r2]
.L23:
	ldr	r3, .L33+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #99
	ble	.L24
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L25
	ldr	r3, .L33+12
.LPIC19:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	b	.L26
.L25:
	ldr	r3, .L33+8
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r1, r3, lsl #3]
	ldr	r3, .L33+8
	ldr	r3, [r4, r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movw	r2, #9999
	str	r2, [r3, #4]
	movw	r2, #9999
	movs	r1, #0
	ldr	r0, [r7, #4]
	bl	enqueue(PLT)
	b	.L27
.L32:
	ldr	r3, .L33+16
	ldr	r3, [r4, r3]
	mov	r2, r3
	ldr	r3, .L33+20
	ldr	r3, [r4, r3]
	mov	r1, r3
	ldr	r3, .L33+24
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	dequeue(PLT)
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	mov	r2, r3
	movs	r3, #0
	str	r3, [r2]
	b	.L28
.L31:
	ldr	r3, .L33+24
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r1, .L33+32
	ldr	r1, [r4, r1]
	mov	r0, r1
	movs	r1, #100
	mul	r2, r1, r2
	add	r3, r3, r2
	ldr	r3, [r0, r3, lsl #2]
	ldr	r2, .L33+36
	ldr	r2, [r4, r2]
	str	r3, [r2]
	ldr	r3, .L33+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movw	r2, #9999
	cmp	r3, r2
	beq	.L29
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L33+8
	ldr	r2, [r4, r2]
	ldr	r3, [r2, r3, lsl #3]
	movw	r2, #9999
	cmp	r3, r2
	beq	.L30
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L33+8
	ldr	r2, [r4, r2]
	ldr	r2, [r2, r3, lsl #3]
	ldr	r3, .L33+36
	ldr	r3, [r4, r3]
	ldr	r1, [r3]
	ldr	r3, .L33+20
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r3, r3, r1
	cmp	r2, r3
	ble	.L29
.L30:
	ldr	r3, .L33+20
	ldr	r3, [r4, r3]
	ldr	r1, [r3]
	ldr	r3, .L33+36
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	add	r2, r2, r1
	ldr	r1, .L33+8
	ldr	r1, [r4, r1]
	str	r2, [r1, r3, lsl #3]
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	ldr	r2, .L33+24
	ldr	r2, [r4, r2]
	ldr	r2, [r2]
	ldr	r1, .L33+8
	ldr	r1, [r4, r1]
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r2, [r3, #4]
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r0, [r3]
	ldr	r3, .L33+20
	ldr	r3, [r4, r3]
	ldr	r2, [r3]
	ldr	r3, .L33+36
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r1, r2, r3
	ldr	r3, .L33+24
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	mov	r2, r3
	bl	enqueue(PLT)
.L29:
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L33+28
	ldr	r2, [r4, r2]
	str	r3, [r2]
.L28:
	ldr	r3, .L33+28
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	cmp	r3, #99
	ble	.L31
.L27:
	bl	qcount(PLT)
	mov	r3, r0
	cmp	r3, #0
	bgt	.L32
	ldr	r3, .L33+8
	ldr	r3, [r4, r3]
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r2, r3, lsl #3]
	mov	r1, r3
	ldr	r3, .L33+40
.LPIC20:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, .L33+44
.LPIC21:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r1, [r7]
	ldr	r3, .L33+8
	ldr	r3, [r4, r3]
	mov	r0, r3
	bl	print_path(PLT)
	movs	r0, #10
	bl	putchar(PLT)
.L26:
	nop
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L34:
	.align	2
.L33:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+4)
	.word	ch(GOT)
	.word	rgnNodes(GOT)
	.word	.LC2-(.LPIC19+4)
	.word	iPrev(GOT)
	.word	iDist(GOT)
	.word	iNode(GOT)
	.word	i(GOT)
	.word	AdjMatrix(GOT)
	.word	iCost(GOT)
	.word	.LC3-(.LPIC20+4)
	.word	.LC4-(.LPIC21+4)
	.size	dijkstra, .-dijkstra
	.section	.rodata
	.align	2
.LC5:
	.ascii	"Usage: dijkstra <filename>\012\000"
	.align	2
.LC6:
	.ascii	"Only supports matrix size is #define'd.\012\000"
	.align	2
.LC7:
	.ascii	"r\000"
	.align	2
.LC8:
	.ascii	"%d\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L44
.LPIC22:
	add	r4, pc
	ldr	r3, .L44+4
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bgt	.L36
	ldr	r3, .L44+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #27
	movs	r1, #1
	ldr	r0, .L44+12
.LPIC23:
	add	r0, pc
	bl	fwrite(PLT)
	ldr	r3, .L44+8
	ldr	r3, [r4, r3]
	ldr	r3, [r3]
	movs	r2, #40
	movs	r1, #1
	ldr	r0, .L44+16
.LPIC24:
	add	r0, pc
	bl	fwrite(PLT)
.L36:
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, .L44+20
.LPIC25:
	add	r2, pc
	mov	r1, r2
	mov	r0, r3
	bl	fopen(PLT)
	str	r0, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L37
.L40:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L38
.L39:
	add	r3, r7, #12
	mov	r2, r3
	ldr	r3, .L44+24
.LPIC26:
	add	r3, pc
	mov	r1, r3
	ldr	r0, [r7, #24]
	bl	__isoc99_fscanf(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, .L44+28
	ldr	r3, [r4, r3]
	mov	r0, r3
	ldr	r3, [r7, #16]
	movs	r1, #100
	mul	r1, r1, r3
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	str	r2, [r0, r3, lsl #2]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L38:
	ldr	r3, [r7, #20]
	cmp	r3, #99
	ble	.L39
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L37:
	ldr	r3, [r7, #16]
	cmp	r3, #99
	ble	.L40
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #50
	str	r3, [r7, #20]
	b	.L41
.L42:
	ldr	r3, [r7, #20]
	movw	r2, #34079
	movt	r2, 20971
	smull	r1, r2, r3, r2
	asrs	r1, r2, #5
	asrs	r2, r3, #31
	subs	r2, r1, r2
	movs	r1, #100
	mul	r2, r1, r2
	subs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r1, [r7, #20]
	ldr	r0, [r7, #16]
	bl	dijkstra(PLT)
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L41:
	ldr	r3, [r7, #16]
	cmp	r3, #99
	ble	.L42
	movs	r0, #0
	bl	exit(PLT)
.L45:
	.align	2
.L44:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	__stack_chk_guard(GOT)
	.word	stderr(GOT)
	.word	.LC5-(.LPIC23+4)
	.word	.LC6-(.LPIC24+4)
	.word	.LC7-(.LPIC25+4)
	.word	.LC8-(.LPIC26+4)
	.word	AdjMatrix(GOT)
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",%progbits
