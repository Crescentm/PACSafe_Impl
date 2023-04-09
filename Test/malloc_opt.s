	.text
	.file	"malloc.c"
	.file	0 "/home/parallels/PAC_Impl/Test" "malloc.c" md5 0xea40dfd08ba335771be2cefddd7fa897
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin0:
	.loc	0 4 0                           // malloc.c:4:0
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             // 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	wzr, [x29, #-4]
.Ltmp0:
	.loc	0 5 24 prologue_end             // malloc.c:5:24
	mov	x0, #100
	bl	malloc
	.loc	0 5 9 is_stmt 0                 // malloc.c:5:9
	str	x0, [sp, #16]
	.loc	0 7 7 is_stmt 1                 // malloc.c:7:7
	str	wzr, [sp, #12]
	.loc	0 8 27                          // malloc.c:8:27
	ldr	x1, [sp, #16]
	.loc	0 8 3 is_stmt 0                 // malloc.c:8:3
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	.loc	0 9 3 is_stmt 1                 // malloc.c:9:3
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	add	x1, sp, #12
	bl	__isoc99_scanf
	.loc	0 10 3                          // malloc.c:10:3
	ldr	x8, [sp, #16]
	.loc	0 10 8 is_stmt 0                // malloc.c:10:8
	ldrsw	x9, [sp, #12]
	.loc	0 10 3                          // malloc.c:10:3
	add	x8, x8, x9
	.loc	0 10 20                         // malloc.c:10:20
	mov	w9, #65
	strb	w9, [x8]
	.loc	0 12 3 is_stmt 1                // malloc.c:12:3
	mov	w0, wzr
	ldp	x29, x30, [sp, #32]             // 16-byte Folded Reload
	add	sp, sp, #48
	ret
.Ltmp1:
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" %p\n"
	.size	.L.str, 5

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	" %d"
	.size	.L.str.1, 4

	.section	.debug_abbrev,"",@progbits
	.byte	1                               // Abbreviation Code
	.byte	17                              // DW_TAG_compile_unit
	.byte	1                               // DW_CHILDREN_yes
	.byte	37                              // DW_AT_producer
	.byte	37                              // DW_FORM_strx1
	.byte	19                              // DW_AT_language
	.byte	5                               // DW_FORM_data2
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	114                             // DW_AT_str_offsets_base
	.byte	23                              // DW_FORM_sec_offset
	.byte	16                              // DW_AT_stmt_list
	.byte	23                              // DW_FORM_sec_offset
	.byte	27                              // DW_AT_comp_dir
	.byte	37                              // DW_FORM_strx1
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	115                             // DW_AT_addr_base
	.byte	23                              // DW_FORM_sec_offset
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	27                              // DW_FORM_addrx
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	0                               // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.word	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.hword	5                               // DWARF version number
	.byte	1                               // DWARF Unit Type
	.byte	8                               // Address Size (in bytes)
	.word	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	1                               // Abbrev [1] 0xc:0x4c DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.byte	2                               // Abbrev [2] 0x23:0x5 DW_TAG_pointer_type
	.word	40                              // DW_AT_type
	.byte	3                               // Abbrev [3] 0x28:0x4 DW_TAG_base_type
	.byte	3                               // DW_AT_name
	.byte	8                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	4                               // Abbrev [4] 0x2c:0x1 DW_TAG_pointer_type
	.byte	5                               // Abbrev [5] 0x2d:0x26 DW_TAG_subprogram
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
	.byte	4                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.word	83                              // DW_AT_type
                                        // DW_AT_external
	.byte	6                               // Abbrev [6] 0x3c:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	16
	.byte	6                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	5                               // DW_AT_decl_line
	.word	35                              // DW_AT_type
	.byte	6                               // Abbrev [6] 0x47:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	12
	.byte	7                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.word	83                              // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x53:0x4 DW_TAG_base_type
	.byte	5                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	36                              // Length of String Offsets Set
	.hword	5
	.hword	0
.Lstr_offsets_base0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Debian clang version 14.0.6"   // string offset=0
.Linfo_string1:
	.asciz	"malloc.c"                      // string offset=28
.Linfo_string2:
	.asciz	"/home/parallels/PAC_Impl/Test" // string offset=37
.Linfo_string3:
	.asciz	"char"                          // string offset=67
.Linfo_string4:
	.asciz	"main"                          // string offset=72
.Linfo_string5:
	.asciz	"int"                           // string offset=77
.Linfo_string6:
	.asciz	"buf1"                          // string offset=81
.Linfo_string7:
	.asciz	"ptr_offset"                    // string offset=86
	.section	.debug_str_offsets,"",@progbits
	.word	.Linfo_string0
	.word	.Linfo_string1
	.word	.Linfo_string2
	.word	.Linfo_string3
	.word	.Linfo_string4
	.word	.Linfo_string5
	.word	.Linfo_string6
	.word	.Linfo_string7
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	.Lfunc_begin0
.Ldebug_addr_end0:
	.ident	"Debian clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
