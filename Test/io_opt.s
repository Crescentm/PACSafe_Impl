	.text
	.file	"io.c"
	.globl	printLine                       // -- Begin function printLine
	.p2align	2
	.type	printLine,@function
printLine:                              // @printLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	cbz	x19, .LBB0_2
// %bb.1:
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	mov	x1, x19
	bl	printf
.LBB0_2:
	add	x0, x29, #24
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	printLine, .Lfunc_end0-printLine
	.cfi_endproc
                                        // -- End function
	.globl	printWLine                      // -- Begin function printWLine
	.p2align	2
	.type	printWLine,@function
printWLine:                             // @printWLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	cbz	x19, .LBB1_2
// %bb.1:
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	mov	x1, x19
	bl	wprintf
.LBB1_2:
	add	x0, x29, #24
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end1:
	.size	printWLine, .Lfunc_end1-printWLine
	.cfi_endproc
                                        // -- End function
	.globl	printIntLine                    // -- Begin function printIntLine
	.p2align	2
	.type	printIntLine,@function
printIntLine:                           // @printIntLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	w19, w0
	add	x0, x29, #28
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	str	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	add	x0, x29, #28
	mov	w1, wzr
	bl	authPAC
	ldr	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	adrp	x0, .L.str.2
	add	x0, x0, :lo12:.L.str.2
	mov	w1, w19
	bl	printf
	add	x0, x29, #28
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end2:
	.size	printIntLine, .Lfunc_end2-printIntLine
	.cfi_endproc
                                        // -- End function
	.globl	printShortLine                  // -- Begin function printShortLine
	.p2align	2
	.type	printShortLine,@function
printShortLine:                         // @printShortLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	w19, w0
	add	x0, x29, #28
	mov	w1, #1
	mov	w2, #2
	bl	setMetadata
	strh	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	add	x0, x29, #28
	mov	w1, wzr
	bl	authPAC
	ldrsh	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	adrp	x0, .L.str.3
	add	x0, x0, :lo12:.L.str.3
	mov	w1, w19
	bl	printf
	add	x0, x29, #28
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end3:
	.size	printShortLine, .Lfunc_end3-printShortLine
	.cfi_endproc
                                        // -- End function
	.globl	printFloatLine                  // -- Begin function printFloatLine
	.p2align	2
	.type	printFloatLine,@function
printFloatLine:                         // @printFloatLine
	.cfi_startproc
// %bb.0:
	str	d8, [sp, #-32]!                 // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -32
	fmov	s8, s0
	sub	x0, x29, #4
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	stur	s8, [x29, #-4]
	sub	x0, x29, #4
	bl	addPAC
	sub	x0, x29, #4
	mov	w1, wzr
	bl	authPAC
	ldur	s8, [x29, #-4]
	sub	x0, x29, #4
	bl	addPAC
	fcvt	d0, s8
	adrp	x0, .L.str.4
	add	x0, x0, :lo12:.L.str.4
	bl	printf
	sub	x0, x29, #4
	bl	removeMetadataStack
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	d8, [sp], #32                   // 8-byte Folded Reload
	ret
.Lfunc_end4:
	.size	printFloatLine, .Lfunc_end4-printFloatLine
	.cfi_endproc
                                        // -- End function
	.globl	printLongLine                   // -- Begin function printLongLine
	.p2align	2
	.type	printLongLine,@function
printLongLine:                          // @printLongLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	mov	x1, x19
	bl	printf
	add	x0, x29, #24
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end5:
	.size	printLongLine, .Lfunc_end5-printLongLine
	.cfi_endproc
                                        // -- End function
	.globl	printLongLongLine               // -- Begin function printLongLongLine
	.p2align	2
	.type	printLongLongLine,@function
printLongLongLine:                      // @printLongLongLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	adrp	x0, .L.str.5
	add	x0, x0, :lo12:.L.str.5
	mov	x1, x19
	bl	printf
	add	x0, x29, #24
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end6:
	.size	printLongLongLine, .Lfunc_end6-printLongLongLine
	.cfi_endproc
                                        // -- End function
	.globl	printSizeTLine                  // -- Begin function printSizeTLine
	.p2align	2
	.type	printSizeTLine,@function
printSizeTLine:                         // @printSizeTLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	adrp	x0, .L.str.6
	add	x0, x0, :lo12:.L.str.6
	mov	x1, x19
	bl	printf
	add	x0, x29, #24
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end7:
	.size	printSizeTLine, .Lfunc_end7-printSizeTLine
	.cfi_endproc
                                        // -- End function
	.globl	printHexCharLine                // -- Begin function printHexCharLine
	.p2align	2
	.type	printHexCharLine,@function
printHexCharLine:                       // @printHexCharLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	w19, w0
	add	x0, x29, #28
	mov	w1, #1
	mov	w2, #1
	bl	setMetadata
	strb	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	add	x0, x29, #28
	mov	w1, wzr
	bl	authPAC
	ldrb	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	mov	w1, w19
	bl	printf
	add	x0, x29, #28
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end8:
	.size	printHexCharLine, .Lfunc_end8-printHexCharLine
	.cfi_endproc
                                        // -- End function
	.globl	printWcharLine                  // -- Begin function printWcharLine
	.p2align	2
	.type	printWcharLine,@function
printWcharLine:                         // @printWcharLine
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	str	x19, [sp, #32]                  // 8-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	w19, w0
	add	x0, x29, #28
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	add	x8, sp, #8
	add	x0, x8, #4
	mov	w1, #2
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #8
	mov	w1, #2
	mov	w2, #8
	bl	setMetadata
	str	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	add	x0, x29, #28
	mov	w1, wzr
	bl	authPAC
	ldr	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	str	w19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	str	wzr, [sp, #12]
	adrp	x0, .L.str.8
	add	x0, x0, :lo12:.L.str.8
	add	x1, sp, #8
	bl	printf
	add	x0, x29, #28
	bl	removeMetadataStack
	ldr	x19, [sp, #32]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end9:
	.size	printWcharLine, .Lfunc_end9-printWcharLine
	.cfi_endproc
                                        // -- End function
	.globl	printUnsignedLine               // -- Begin function printUnsignedLine
	.p2align	2
	.type	printUnsignedLine,@function
printUnsignedLine:                      // @printUnsignedLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	w19, w0
	add	x0, x29, #28
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	str	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	add	x0, x29, #28
	mov	w1, wzr
	bl	authPAC
	ldr	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	adrp	x0, .L.str.9
	add	x0, x0, :lo12:.L.str.9
	mov	w1, w19
	bl	printf
	add	x0, x29, #28
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end10:
	.size	printUnsignedLine, .Lfunc_end10-printUnsignedLine
	.cfi_endproc
                                        // -- End function
	.globl	printHexUnsignedCharLine        // -- Begin function printHexUnsignedCharLine
	.p2align	2
	.type	printHexUnsignedCharLine,@function
printHexUnsignedCharLine:               // @printHexUnsignedCharLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	w19, w0
	add	x0, x29, #28
	mov	w1, #1
	mov	w2, #1
	bl	setMetadata
	strb	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	add	x0, x29, #28
	mov	w1, wzr
	bl	authPAC
	ldrb	w19, [x29, #28]
	add	x0, x29, #28
	bl	addPAC
	adrp	x0, .L.str.7
	add	x0, x0, :lo12:.L.str.7
	mov	w1, w19
	bl	printf
	add	x0, x29, #28
	bl	removeMetadataStack
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end11:
	.size	printHexUnsignedCharLine, .Lfunc_end11-printHexUnsignedCharLine
	.cfi_endproc
                                        // -- End function
	.globl	printDoubleLine                 // -- Begin function printDoubleLine
	.p2align	2
	.type	printDoubleLine,@function
printDoubleLine:                        // @printDoubleLine
	.cfi_startproc
// %bb.0:
	str	d8, [sp, #-32]!                 // 8-byte Folded Spill
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -32
	fmov	d8, d0
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	str	d8, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	d8, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	adrp	x0, .L.str.10
	add	x0, x0, :lo12:.L.str.10
	fmov	d0, d8
	bl	printf
	add	x0, sp, #8
	bl	removeMetadataStack
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	ldr	d8, [sp], #32                   // 8-byte Folded Reload
	ret
.Lfunc_end12:
	.size	printDoubleLine, .Lfunc_end12-printDoubleLine
	.cfi_endproc
                                        // -- End function
	.globl	printStructLine                 // -- Begin function printStructLine
	.p2align	2
	.type	printStructLine,@function
printStructLine:                        // @printStructLine
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-48]!           // 16-byte Folded Spill
	str	x21, [sp, #16]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldr	w20, [x19]
	mov	x0, x19
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x19, x21, #4
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldr	w21, [x21, #4]
	mov	x0, x19
	bl	addPAC
	adrp	x0, .L.str.11
	add	x0, x0, :lo12:.L.str.11
	mov	w1, w20
	mov	w2, w21
	bl	printf
	add	x0, x29, #24
	bl	removeMetadataStack
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldr	x21, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #48             // 16-byte Folded Reload
	ret
.Lfunc_end13:
	.size	printStructLine, .Lfunc_end13-printStructLine
	.cfi_endproc
                                        // -- End function
	.globl	printBytesLine                  // -- Begin function printBytesLine
	.p2align	2
	.type	printBytesLine,@function
printBytesLine:                         // @printBytesLine
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x1
	mov	x20, x0
	sub	x0, x29, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #16
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	stur	x20, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	str	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	str	xzr, [sp, #8]
.LBB14_1:                               // =>This Inner Loop Header: Depth=1
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	cmp	x19, x20
	b.hs	.LBB14_4
// %bb.2:                               //   in Loop: Header=BB14_1 Depth=1
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x19, x19, x20
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldrb	w20, [x19]
	mov	x0, x19
	bl	addPAC
	adrp	x0, .L.str.12
	add	x0, x0, :lo12:.L.str.12
	mov	w1, w20
	bl	printf
// %bb.3:                               //   in Loop: Header=BB14_1 Depth=1
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x8, x19, #1
	str	x8, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	b	.LBB14_1
.LBB14_4:
	adrp	x8, .L.str.13
	add	x0, x8, :lo12:.L.str.13
	bl	puts
	add	x0, sp, #16
	bl	removeMetadataStack
	sub	x0, x29, #8
	bl	removeMetadataStack
	add	x0, sp, #8
	bl	removeMetadataStack
	ldp	x20, x19, [sp, #48]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Lfunc_end14:
	.size	printBytesLine, .Lfunc_end14-printBytesLine
	.cfi_endproc
                                        // -- End function
	.globl	decodeHexChars                  // -- Begin function decodeHexChars
	.p2align	2
	.type	decodeHexChars,@function
decodeHexChars:                         // @decodeHexChars
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	str	x21, [sp, #48]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	sub	x0, x29, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #16
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #4
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	str	x21, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	stur	x20, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	str	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	str	xzr, [sp, #8]
.LBB15_1:                               // =>This Inner Loop Header: Depth=1
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x20, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	cmp	x19, x20
	mov	w8, wzr
	b.hs	.LBB15_4
// %bb.2:                               //   in Loop: Header=BB15_1 Depth=1
	bl	__ctype_b_loc
	mov	x19, x0
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [x19]
	mov	x0, x19
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	lsl	x8, x21, #1
	add	x19, x19, x8
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldrb	w21, [x19]
	mov	x0, x19
	bl	addPAC
	sxtw	x8, w21
	mov	x9, #2
	madd	x19, x8, x9, x20
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldrh	w20, [x19]
	mov	x0, x19
	bl	addPAC
	mov	w8, wzr
	tbz	w20, #12, .LBB15_4
// %bb.3:                               //   in Loop: Header=BB15_1 Depth=1
	bl	__ctype_b_loc
	mov	x19, x0
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [x19]
	mov	x0, x19
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	mov	x8, #1
	add	x8, x8, x21, lsl #1
	add	x19, x19, x8
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldrb	w21, [x19]
	mov	x0, x19
	bl	addPAC
	sxtw	x8, w21
	mov	x9, #2
	madd	x19, x8, x9, x20
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldrh	w20, [x19]
	mov	x0, x19
	bl	addPAC
	and	w8, w20, #0x1000
	cmp	w8, #0
	cset	w8, ne
.LBB15_4:                               //   in Loop: Header=BB15_1 Depth=1
	tbz	w8, #0, .LBB15_6
// %bb.5:                               //   in Loop: Header=BB15_1 Depth=1
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	lsl	x8, x20, #1
	add	x0, x19, x8
	adrp	x1, .L.str.12
	add	x1, x1, :lo12:.L.str.12
	add	x2, sp, #4
	bl	__isoc99_sscanf
	add	x0, sp, #4
	mov	w1, wzr
	bl	authPAC
	ldr	w20, [sp, #4]
	add	x0, sp, #4
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x19, x19, x21
	strb	w20, [x19]
	mov	x0, x19
	mov	w1, #1
	mov	w2, #8
	bl	setMetadataObj
	mov	x0, x19
	bl	addPAC
	add	x0, x29, #24
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x8, x19, #1
	str	x8, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	b	.LBB15_1
.LBB15_6:
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x0, sp, #8
	bl	removeMetadataStack
	add	x0, sp, #16
	bl	removeMetadataStack
	sub	x0, x29, #8
	bl	removeMetadataStack
	add	x0, x29, #24
	bl	removeMetadataStack
	add	x0, sp, #4
	bl	removeMetadataStack
	mov	x0, x19
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x21, [sp, #48]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end15:
	.size	decodeHexChars, .Lfunc_end15-decodeHexChars
	.cfi_endproc
                                        // -- End function
	.globl	decodeHexWChars                 // -- Begin function decodeHexWChars
	.p2align	2
	.type	decodeHexWChars,@function
decodeHexWChars:                        // @decodeHexWChars
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	str	x21, [sp, #48]                  // 8-byte Folded Spill
	stp	x20, x19, [sp, #64]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 48
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w21, -32
	.cfi_offset w30, -40
	.cfi_offset w29, -48
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	sub	x0, x29, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #16
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #4
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	str	x21, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	stur	x20, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	str	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	str	xzr, [sp, #8]
.LBB16_1:                               // =>This Inner Loop Header: Depth=1
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x20, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	cmp	x19, x20
	mov	w8, wzr
	b.hs	.LBB16_4
// %bb.2:                               //   in Loop: Header=BB16_1 Depth=1
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	lsl	x8, x20, #1
	mov	x9, #4
	madd	x19, x8, x9, x19
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldr	w20, [x19]
	mov	x0, x19
	bl	addPAC
	mov	w0, w20
	bl	iswxdigit
	mov	w8, wzr
	cbz	w0, .LBB16_4
// %bb.3:                               //   in Loop: Header=BB16_1 Depth=1
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	mov	x8, #1
	add	x8, x8, x20, lsl #1
	mov	x9, #4
	madd	x19, x8, x9, x19
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldr	w20, [x19]
	mov	x0, x19
	bl	addPAC
	mov	w0, w20
	bl	iswxdigit
	cmp	w0, #0
	cset	w8, ne
.LBB16_4:                               //   in Loop: Header=BB16_1 Depth=1
	tbz	w8, #0, .LBB16_6
// %bb.5:                               //   in Loop: Header=BB16_1 Depth=1
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	lsl	x8, x20, #1
	mov	x9, #4
	madd	x0, x8, x9, x19
	adrp	x1, .L.str.14
	add	x1, x1, :lo12:.L.str.14
	add	x2, sp, #4
	bl	__isoc99_swscanf
	add	x0, sp, #4
	mov	w1, wzr
	bl	authPAC
	ldr	w20, [sp, #4]
	add	x0, sp, #4
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x19, x19, x21
	strb	w20, [x19]
	mov	x0, x19
	mov	w1, #1
	mov	w2, #8
	bl	setMetadataObj
	mov	x0, x19
	bl	addPAC
	add	x0, x29, #24
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x8, x19, #1
	str	x8, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	b	.LBB16_1
.LBB16_6:
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x0, sp, #4
	bl	removeMetadataStack
	add	x0, sp, #16
	bl	removeMetadataStack
	add	x0, sp, #8
	bl	removeMetadataStack
	add	x0, x29, #24
	bl	removeMetadataStack
	sub	x0, x29, #8
	bl	removeMetadataStack
	mov	x0, x19
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x21, [sp, #48]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end16:
	.size	decodeHexWChars, .Lfunc_end16-decodeHexWChars
	.cfi_endproc
                                        // -- End function
	.globl	globalReturnsTrue               // -- Begin function globalReturnsTrue
	.p2align	2
	.type	globalReturnsTrue,@function
globalReturnsTrue:                      // @globalReturnsTrue
	.cfi_startproc
// %bb.0:
	mov	w0, #1
	ret
.Lfunc_end17:
	.size	globalReturnsTrue, .Lfunc_end17-globalReturnsTrue
	.cfi_endproc
                                        // -- End function
	.globl	globalReturnsFalse              // -- Begin function globalReturnsFalse
	.p2align	2
	.type	globalReturnsFalse,@function
globalReturnsFalse:                     // @globalReturnsFalse
	.cfi_startproc
// %bb.0:
	mov	w0, wzr
	ret
.Lfunc_end18:
	.size	globalReturnsFalse, .Lfunc_end18-globalReturnsFalse
	.cfi_endproc
                                        // -- End function
	.globl	globalReturnsTrueOrFalse        // -- Begin function globalReturnsTrueOrFalse
	.p2align	2
	.type	globalReturnsTrueOrFalse,@function
globalReturnsTrueOrFalse:               // @globalReturnsTrueOrFalse
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	rand
	mov	w8, #2
	mov	w9, #2
	sdiv	w9, w0, w8
	msub	w0, w9, w8, w0
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end19:
	.size	globalReturnsTrueOrFalse, .Lfunc_end19-globalReturnsTrueOrFalse
	.cfi_endproc
                                        // -- End function
	.globl	good1                           // -- Begin function good1
	.p2align	2
	.type	good1,@function
good1:                                  // @good1
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end20:
	.size	good1, .Lfunc_end20-good1
	.cfi_endproc
                                        // -- End function
	.globl	good2                           // -- Begin function good2
	.p2align	2
	.type	good2,@function
good2:                                  // @good2
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end21:
	.size	good2, .Lfunc_end21-good2
	.cfi_endproc
                                        // -- End function
	.globl	good3                           // -- Begin function good3
	.p2align	2
	.type	good3,@function
good3:                                  // @good3
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end22:
	.size	good3, .Lfunc_end22-good3
	.cfi_endproc
                                        // -- End function
	.globl	good4                           // -- Begin function good4
	.p2align	2
	.type	good4,@function
good4:                                  // @good4
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end23:
	.size	good4, .Lfunc_end23-good4
	.cfi_endproc
                                        // -- End function
	.globl	good5                           // -- Begin function good5
	.p2align	2
	.type	good5,@function
good5:                                  // @good5
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end24:
	.size	good5, .Lfunc_end24-good5
	.cfi_endproc
                                        // -- End function
	.globl	good6                           // -- Begin function good6
	.p2align	2
	.type	good6,@function
good6:                                  // @good6
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end25:
	.size	good6, .Lfunc_end25-good6
	.cfi_endproc
                                        // -- End function
	.globl	good7                           // -- Begin function good7
	.p2align	2
	.type	good7,@function
good7:                                  // @good7
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end26:
	.size	good7, .Lfunc_end26-good7
	.cfi_endproc
                                        // -- End function
	.globl	good8                           // -- Begin function good8
	.p2align	2
	.type	good8,@function
good8:                                  // @good8
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end27:
	.size	good8, .Lfunc_end27-good8
	.cfi_endproc
                                        // -- End function
	.globl	good9                           // -- Begin function good9
	.p2align	2
	.type	good9,@function
good9:                                  // @good9
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end28:
	.size	good9, .Lfunc_end28-good9
	.cfi_endproc
                                        // -- End function
	.globl	bad1                            // -- Begin function bad1
	.p2align	2
	.type	bad1,@function
bad1:                                   // @bad1
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end29:
	.size	bad1, .Lfunc_end29-bad1
	.cfi_endproc
                                        // -- End function
	.globl	bad2                            // -- Begin function bad2
	.p2align	2
	.type	bad2,@function
bad2:                                   // @bad2
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end30:
	.size	bad2, .Lfunc_end30-bad2
	.cfi_endproc
                                        // -- End function
	.globl	bad3                            // -- Begin function bad3
	.p2align	2
	.type	bad3,@function
bad3:                                   // @bad3
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end31:
	.size	bad3, .Lfunc_end31-bad3
	.cfi_endproc
                                        // -- End function
	.globl	bad4                            // -- Begin function bad4
	.p2align	2
	.type	bad4,@function
bad4:                                   // @bad4
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end32:
	.size	bad4, .Lfunc_end32-bad4
	.cfi_endproc
                                        // -- End function
	.globl	bad5                            // -- Begin function bad5
	.p2align	2
	.type	bad5,@function
bad5:                                   // @bad5
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end33:
	.size	bad5, .Lfunc_end33-bad5
	.cfi_endproc
                                        // -- End function
	.globl	bad6                            // -- Begin function bad6
	.p2align	2
	.type	bad6,@function
bad6:                                   // @bad6
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end34:
	.size	bad6, .Lfunc_end34-bad6
	.cfi_endproc
                                        // -- End function
	.globl	bad7                            // -- Begin function bad7
	.p2align	2
	.type	bad7,@function
bad7:                                   // @bad7
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end35:
	.size	bad7, .Lfunc_end35-bad7
	.cfi_endproc
                                        // -- End function
	.globl	bad8                            // -- Begin function bad8
	.p2align	2
	.type	bad8,@function
bad8:                                   // @bad8
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end36:
	.size	bad8, .Lfunc_end36-bad8
	.cfi_endproc
                                        // -- End function
	.globl	bad9                            // -- Begin function bad9
	.p2align	2
	.type	bad9,@function
bad9:                                   // @bad9
	.cfi_startproc
// %bb.0:
	ret
.Lfunc_end37:
	.size	bad9, .Lfunc_end37-bad9
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s\n"
	.size	.L.str, 4

	.type	.L.str.1,@object                // @.str.1
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str.1:
	.word	37                              // 0x25
	.word	108                             // 0x6c
	.word	115                             // 0x73
	.word	10                              // 0xa
	.word	0                               // 0x0
	.size	.L.str.1, 20

	.type	.L.str.2,@object                // @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"%d\n"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"%hd\n"
	.size	.L.str.3, 5

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"%f\n"
	.size	.L.str.4, 4

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"%ld\n"
	.size	.L.str.5, 5

	.type	.L.str.6,@object                // @.str.6
.L.str.6:
	.asciz	"%zu\n"
	.size	.L.str.6, 5

	.type	.L.str.7,@object                // @.str.7
.L.str.7:
	.asciz	"%02x\n"
	.size	.L.str.7, 6

	.type	.L.str.8,@object                // @.str.8
.L.str.8:
	.asciz	"%ls\n"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                // @.str.9
.L.str.9:
	.asciz	"%u\n"
	.size	.L.str.9, 4

	.type	.L.str.10,@object               // @.str.10
.L.str.10:
	.asciz	"%g\n"
	.size	.L.str.10, 4

	.type	.L.str.11,@object               // @.str.11
.L.str.11:
	.asciz	"%d -- %d\n"
	.size	.L.str.11, 10

	.type	.L.str.12,@object               // @.str.12
.L.str.12:
	.asciz	"%02x"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               // @.str.13
.L.str.13:
	.zero	1
	.size	.L.str.13, 1

	.type	.L.str.14,@object               // @.str.14
	.section	.rodata.str4.4,"aMS",@progbits,4
	.p2align	2
.L.str.14:
	.word	37                              // 0x25
	.word	48                              // 0x30
	.word	50                              // 0x32
	.word	120                             // 0x78
	.word	0                               // 0x0
	.size	.L.str.14, 20

	.type	GLOBAL_CONST_TRUE,@object       // @GLOBAL_CONST_TRUE
	.section	.rodata,"a",@progbits
	.globl	GLOBAL_CONST_TRUE
	.p2align	2
GLOBAL_CONST_TRUE:
	.word	1                               // 0x1
	.size	GLOBAL_CONST_TRUE, 4

	.type	GLOBAL_CONST_FALSE,@object      // @GLOBAL_CONST_FALSE
	.globl	GLOBAL_CONST_FALSE
	.p2align	2
GLOBAL_CONST_FALSE:
	.word	0                               // 0x0
	.size	GLOBAL_CONST_FALSE, 4

	.type	GLOBAL_CONST_FIVE,@object       // @GLOBAL_CONST_FIVE
	.globl	GLOBAL_CONST_FIVE
	.p2align	2
GLOBAL_CONST_FIVE:
	.word	5                               // 0x5
	.size	GLOBAL_CONST_FIVE, 4

	.type	globalTrue,@object              // @globalTrue
	.data
	.globl	globalTrue
	.p2align	2
globalTrue:
	.word	1                               // 0x1
	.size	globalTrue, 4

	.type	globalFalse,@object             // @globalFalse
	.bss
	.globl	globalFalse
	.p2align	2
globalFalse:
	.word	0                               // 0x0
	.size	globalFalse, 4

	.type	globalFive,@object              // @globalFive
	.data
	.globl	globalFive
	.p2align	2
globalFive:
	.word	5                               // 0x5
	.size	globalFive, 4

	.type	globalArgc,@object              // @globalArgc
	.bss
	.globl	globalArgc
	.p2align	2
globalArgc:
	.word	0                               // 0x0
	.size	globalArgc, 4

	.type	globalArgv,@object              // @globalArgv
	.globl	globalArgv
	.p2align	3
globalArgv:
	.xword	0
	.size	globalArgv, 8

	.ident	"Debian clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
