	.text
	.file	"example.c"
	.globl	CWE416_Use_After_Free__return_freed_ptr_01_bad // -- Begin function CWE416_Use_After_Free__return_freed_ptr_01_bad
	.p2align	2
	.type	CWE416_Use_After_Free__return_freed_ptr_01_bad,@function
CWE416_Use_After_Free__return_freed_ptr_01_bad: // @CWE416_Use_After_Free__return_freed_ptr_01_bad
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	adrp	x8, .L.str
	add	x0, x8, :lo12:.L.str
	bl	helperBad
	str	x0, [x29, #24]
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadataObj
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	mov	x0, x19
	bl	printLine
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end0:
	.size	CWE416_Use_After_Free__return_freed_ptr_01_bad, .Lfunc_end0-CWE416_Use_After_Free__return_freed_ptr_01_bad
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function helperBad
	.type	helperBad,@function
helperBad:                              // @helperBad
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
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	sub	x0, x29, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	stur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	str	xzr, [sp, #16]
	str	xzr, [sp]
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	cbz	x19, .LBB1_8
// %bb.1:
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	mov	x0, x19
	bl	strlen
	str	x0, [sp, #16]
	add	x0, sp, #16
	mov	w1, #1
	mov	w2, #8
	bl	setMetadataObj
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, x19, #1
	bl	malloc
	str	x0, [sp]
	mov	x0, sp
	bl	addPAC
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	cbnz	x19, .LBB1_3
// %bb.2:
	mov	w0, #-1
	bl	exit
.LBB1_3:
	str	xzr, [sp, #8]
.LBB1_4:                                // =>This Inner Loop Header: Depth=1
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
	b.hs	.LBB1_7
// %bb.5:                               //   in Loop: Header=BB1_4 Depth=1
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	sub	x8, x20, x21
	sub	x8, x8, #1
	add	x19, x19, x8
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldrb	w20, [x19]
	mov	x0, x19
	bl	addPAC
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x0, x19, x21
	strb	w20, [x0]
	bl	addPAC
	mov	x0, sp
	bl	addPAC
// %bb.6:                               //   in Loop: Header=BB1_4 Depth=1
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
	b	.LBB1_4
.LBB1_7:
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x8, x19, x20
	strb	wzr, [x8]
	mov	x0, sp
	bl	addPAC
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	mov	x0, sp
	bl	removeMetadata
	mov	x0, x19
	bl	free
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	b	.LBB1_9
.LBB1_8:
	str	xzr, [x29, #24]
.LBB1_9:
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	sub	x0, x29, #8
	bl	removeMetadataStack
	add	x0, sp, #8
	bl	removeMetadataStack
	add	x0, x29, #24
	bl	removeMetadataStack
	mov	x0, x19
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x21, [sp, #48]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end1:
	.size	helperBad, .Lfunc_end1-helperBad
	.cfi_endproc
                                        // -- End function
	.globl	CWE416_Use_After_Free__return_freed_ptr_01_good // -- Begin function CWE416_Use_After_Free__return_freed_ptr_01_good
	.p2align	2
	.type	CWE416_Use_After_Free__return_freed_ptr_01_good,@function
CWE416_Use_After_Free__return_freed_ptr_01_good: // @CWE416_Use_After_Free__return_freed_ptr_01_good
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-16]!           // 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	good1
	ldp	x29, x30, [sp], #16             // 16-byte Folded Reload
	ret
.Lfunc_end2:
	.size	CWE416_Use_After_Free__return_freed_ptr_01_good, .Lfunc_end2-CWE416_Use_After_Free__return_freed_ptr_01_good
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -8
	.cfi_offset w20, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	mov	x19, x1
	mov	w20, w0
	sub	x0, x29, #4
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #4
	bl	setMetadata
	mov	x0, sp
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	stur	wzr, [x29, #-4]
	str	w20, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	str	x19, [sp]
	mov	x0, sp
	bl	addPAC
	mov	x0, xzr
	bl	time
                                        // kill: def $w0 killed $w0 killed $x0
	bl	srand
	adrp	x8, .L.str.1
	add	x0, x8, :lo12:.L.str.1
	bl	printLine
	bl	CWE416_Use_After_Free__return_freed_ptr_01_good
	adrp	x8, .L.str.2
	add	x0, x8, :lo12:.L.str.2
	bl	printLine
	adrp	x8, .L.str.3
	add	x0, x8, :lo12:.L.str.3
	bl	printLine
	bl	CWE416_Use_After_Free__return_freed_ptr_01_bad
	adrp	x8, .L.str.4
	add	x0, x8, :lo12:.L.str.4
	bl	printLine
	sub	x0, x29, #4
	bl	removeMetadataStack
	mov	x0, sp
	bl	removeMetadataStack
	add	x0, sp, #8
	bl	removeMetadataStack
	mov	w0, wzr
	ldp	x20, x19, [sp, #32]             // 16-byte Folded Reload
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function good1
	.type	good1,@function
good1:                                  // @good1
	.cfi_startproc
// %bb.0:
	stp	x29, x30, [sp, #-32]!           // 16-byte Folded Spill
	str	x19, [sp, #16]                  // 8-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 32
	.cfi_offset w19, -16
	.cfi_offset w30, -24
	.cfi_offset w29, -32
	adrp	x8, .L.str.5
	add	x0, x8, :lo12:.L.str.5
	bl	helperGood
	str	x0, [x29, #24]
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadataObj
	add	x0, x29, #24
	bl	addPAC
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	mov	x0, x19
	bl	printLine
	ldr	x19, [sp, #16]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp], #32             // 16-byte Folded Reload
	ret
.Lfunc_end4:
	.size	good1, .Lfunc_end4-good1
	.cfi_endproc
                                        // -- End function
	.p2align	2                               // -- Begin function helperGood
	.type	helperGood,@function
helperGood:                             // @helperGood
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
	mov	x19, x0
	add	x0, x29, #24
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	sub	x0, x29, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #8
	bl	setMetadata
	stur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	str	xzr, [sp, #16]
	str	xzr, [sp]
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	cbz	x19, .LBB5_8
// %bb.1:
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	mov	x0, x19
	bl	strlen
	str	x0, [sp, #16]
	add	x0, sp, #16
	mov	w1, #1
	mov	w2, #8
	bl	setMetadataObj
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, x19, #1
	bl	malloc
	str	x0, [sp]
	mov	x0, sp
	bl	addPAC
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	cbnz	x19, .LBB5_3
// %bb.2:
	mov	w0, #-1
	bl	exit
.LBB5_3:
	str	xzr, [sp, #8]
.LBB5_4:                                // =>This Inner Loop Header: Depth=1
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
	b.hs	.LBB5_7
// %bb.5:                               //   in Loop: Header=BB5_4 Depth=1
	sub	x0, x29, #8
	mov	w1, wzr
	bl	authPAC
	ldur	x19, [x29, #-8]
	sub	x0, x29, #8
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	sub	x8, x20, x21
	sub	x8, x8, #1
	add	x19, x19, x8
	mov	x0, x19
	mov	w1, wzr
	bl	authPAC
	ldrb	w20, [x19]
	mov	x0, x19
	bl	addPAC
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x21, [sp, #8]
	add	x0, sp, #8
	bl	addPAC
	add	x0, x19, x21
	strb	w20, [x0]
	bl	addPAC
	mov	x0, sp
	bl	addPAC
// %bb.6:                               //   in Loop: Header=BB5_4 Depth=1
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
	b	.LBB5_4
.LBB5_7:
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	add	x0, sp, #16
	mov	w1, wzr
	bl	authPAC
	ldr	x20, [sp, #16]
	add	x0, sp, #16
	bl	addPAC
	add	x8, x19, x20
	strb	wzr, [x8]
	mov	x0, sp
	bl	addPAC
	mov	x0, sp
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [sp]
	mov	x0, sp
	bl	addPAC
	str	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	b	.LBB5_9
.LBB5_8:
	str	xzr, [x29, #24]
.LBB5_9:
	add	x0, x29, #24
	mov	w1, wzr
	bl	authPAC
	ldr	x19, [x29, #24]
	add	x0, x29, #24
	bl	addPAC
	sub	x0, x29, #8
	bl	removeMetadataStack
	add	x0, x29, #24
	bl	removeMetadataStack
	add	x0, sp, #8
	bl	removeMetadataStack
	mov	x0, x19
	ldp	x20, x19, [sp, #64]             // 16-byte Folded Reload
	ldr	x21, [sp, #48]                  // 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #80
	ret
.Lfunc_end5:
	.size	helperGood, .Lfunc_end5-helperGood
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"BadSink"
	.size	.L.str, 8

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"Calling good()..."
	.size	.L.str.1, 18

	.type	.L.str.2,@object                // @.str.2
.L.str.2:
	.asciz	"Finished good()"
	.size	.L.str.2, 16

	.type	.L.str.3,@object                // @.str.3
.L.str.3:
	.asciz	"Calling bad()..."
	.size	.L.str.3, 17

	.type	.L.str.4,@object                // @.str.4
.L.str.4:
	.asciz	"Finished bad()"
	.size	.L.str.4, 15

	.type	.L.str.5,@object                // @.str.5
.L.str.5:
	.asciz	"GoodSink"
	.size	.L.str.5, 9

	.ident	"Debian clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
