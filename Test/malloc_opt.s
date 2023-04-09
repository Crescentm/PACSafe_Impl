	.text
	.file	"malloc.c"
	.file	0 "/home/parallels/PAC_Impl/Test" "malloc.c" md5 0x2730fda56efcfef1fc4cce1e3e7fecb6
	.globl	func1                           // -- Begin function func1
	.p2align	2
	.type	func1,@function
func1:                                  // @func1
.Lfunc_begin0:
	.loc	0 16 0                          // malloc.c:16:0
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             // 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
.Ltmp0:
	.loc	0 16 15 prologue_end            // malloc.c:16:15
	adrp	x0, .L.str
	add	x0, x0, :lo12:.L.str
	bl	printf
	.loc	0 16 42 is_stmt 0               // malloc.c:16:42
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #16]             // 16-byte Folded Reload
	add	sp, sp, #32
	ret
.Ltmp1:
.Lfunc_end0:
	.size	func1, .Lfunc_end0-func1
	.cfi_endproc
                                        // -- End function
	.globl	main                            // -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   // @main
.Lfunc_begin1:
	.loc	0 18 0 is_stmt 1                // malloc.c:18:0
	.cfi_startproc
// %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             // 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	add	x0, sp, #16
	mov	w1, #1
	mov	w2, #24
	bl	setMetadata
	stur	wzr, [x29, #-4]
.Ltmp2:
	.loc	0 21 3 prologue_end             // malloc.c:21:3
	adrp	x0, .L.str.1
	add	x0, x0, :lo12:.L.str.1
	bl	printf
	.loc	0 23 16                         // malloc.c:23:16
	mov	x0, #16
	bl	malloc
	.loc	0 23 7 is_stmt 0                // malloc.c:23:7
	str	x0, [sp, #8]
	.loc	0 25 3 is_stmt 1                // malloc.c:25:3
	add	x0, sp, #8
	mov	w1, #1
	mov	w2, #16
	bl	setMetadataObj
	add	x0, sp, #8
	bl	addPAC
	add	x0, sp, #8
	mov	w1, wzr
	bl	authPAC
	ldr	x0, [sp, #8]
	.loc	0 25 12 is_stmt 0               // malloc.c:25:12
	add	x8, sp, #16
	str	x8, [x0]
	.loc	0 32 3 is_stmt 1                // malloc.c:32:3
	bl	addPAC
	add	x0, sp, #16
	bl	removeMetadataStack
	mov	w0, wzr
	ldp	x29, x30, [sp, #48]             // 16-byte Folded Reload
	add	sp, sp, #64
	ret
.Ltmp3:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        // -- End function
	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Hello, world!\n"
	.size	.L.str, 15

	.type	.L.str.1,@object                // @.str.1
.L.str.1:
	.asciz	"there!\n"
	.size	.L.str.1, 8

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
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	19                              // DW_TAG_structure_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	13                              // DW_TAG_member
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	37                              // DW_FORM_strx1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	56                              // DW_AT_data_member_location
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
	.byte	53                              // DW_TAG_volatile_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
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
	.byte	8                               // Abbreviation Code
	.byte	21                              // DW_TAG_subroutine_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	24                              // DW_TAG_unspecified_parameters
	.byte	0                               // DW_CHILDREN_no
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	0                               // DW_CHILDREN_no
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
	.byte	11                              // Abbreviation Code
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
	.byte	12                              // Abbreviation Code
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
	.byte	1                               // Abbrev [1] 0xc:0xcf DW_TAG_compile_unit
	.byte	0                               // DW_AT_producer
	.hword	12                              // DW_AT_language
	.byte	1                               // DW_AT_name
	.word	.Lstr_offsets_base0             // DW_AT_str_offsets_base
	.word	.Lline_table_start0             // DW_AT_stmt_list
	.byte	2                               // DW_AT_comp_dir
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin0       // DW_AT_high_pc
	.word	.Laddr_table_base0              // DW_AT_addr_base
	.byte	2                               // Abbrev [2] 0x23:0x5 DW_TAG_pointer_type
	.word	40                              // DW_AT_type
	.byte	3                               // Abbrev [3] 0x28:0x8 DW_TAG_typedef
	.word	48                              // DW_AT_type
	.byte	11                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	14                              // DW_AT_decl_line
	.byte	4                               // Abbrev [4] 0x30:0x20 DW_TAG_structure_type
	.byte	16                              // DW_AT_byte_size
	.byte	0                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	5                               // Abbrev [5] 0x34:0x9 DW_TAG_member
	.byte	3                               // DW_AT_name
	.word	80                              // DW_AT_type
	.byte	0                               // DW_AT_decl_file
	.byte	11                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x3d:0x9 DW_TAG_member
	.byte	4                               // DW_AT_name
	.word	130                             // DW_AT_type
	.byte	0                               // DW_AT_decl_file
	.byte	12                              // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x46:0x9 DW_TAG_member
	.byte	10                              // DW_AT_name
	.word	151                             // DW_AT_type
	.byte	0                               // DW_AT_decl_file
	.byte	13                              // DW_AT_decl_line
	.byte	12                              // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0x50:0x5 DW_TAG_pointer_type
	.word	85                              // DW_AT_type
	.byte	6                               // Abbrev [6] 0x55:0x5 DW_TAG_volatile_type
	.word	90                              // DW_AT_type
	.byte	3                               // Abbrev [3] 0x5a:0x8 DW_TAG_typedef
	.word	98                              // DW_AT_type
	.byte	9                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	8                               // DW_AT_decl_line
	.byte	4                               // Abbrev [4] 0x62:0x20 DW_TAG_structure_type
	.byte	24                              // DW_AT_byte_size
	.byte	0                               // DW_AT_decl_file
	.byte	4                               // DW_AT_decl_line
	.byte	5                               // Abbrev [5] 0x66:0x9 DW_TAG_member
	.byte	4                               // DW_AT_name
	.word	130                             // DW_AT_type
	.byte	0                               // DW_AT_decl_file
	.byte	5                               // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x6f:0x9 DW_TAG_member
	.byte	6                               // DW_AT_name
	.word	134                             // DW_AT_type
	.byte	0                               // DW_AT_decl_file
	.byte	6                               // DW_AT_decl_line
	.byte	8                               // DW_AT_data_member_location
	.byte	5                               // Abbrev [5] 0x78:0x9 DW_TAG_member
	.byte	7                               // DW_AT_name
	.word	151                             // DW_AT_type
	.byte	0                               // DW_AT_decl_file
	.byte	7                               // DW_AT_decl_line
	.byte	16                              // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	7                               // Abbrev [7] 0x82:0x4 DW_TAG_base_type
	.byte	5                               // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	2                               // Abbrev [2] 0x86:0x5 DW_TAG_pointer_type
	.word	139                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x8b:0x7 DW_TAG_subroutine_type
	.word	146                             // DW_AT_type
	.byte	9                               // Abbrev [9] 0x90:0x1 DW_TAG_unspecified_parameters
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x92:0x5 DW_TAG_volatile_type
	.word	130                             // DW_AT_type
	.byte	7                               // Abbrev [7] 0x97:0x4 DW_TAG_base_type
	.byte	8                               // DW_AT_name
	.byte	8                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	10                              // Abbrev [10] 0x9b:0xf DW_TAG_subprogram
	.byte	0                               // DW_AT_low_pc
	.word	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
	.byte	12                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	16                              // DW_AT_decl_line
	.word	130                             // DW_AT_type
                                        // DW_AT_external
	.byte	11                              // Abbrev [11] 0xaa:0x26 DW_TAG_subprogram
	.byte	1                               // DW_AT_low_pc
	.word	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	109
	.byte	13                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	18                              // DW_AT_decl_line
	.word	130                             // DW_AT_type
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0xb9:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	16
	.byte	3                               // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	19                              // DW_AT_decl_line
	.word	90                              // DW_AT_type
	.byte	12                              // Abbrev [12] 0xc4:0xb DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	143
	.byte	8
	.byte	14                              // DW_AT_name
	.byte	0                               // DW_AT_decl_file
	.byte	20                              // DW_AT_decl_line
	.word	208                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	2                               // Abbrev [2] 0xd0:0x5 DW_TAG_pointer_type
	.word	213                             // DW_AT_type
	.byte	6                               // Abbrev [6] 0xd5:0x5 DW_TAG_volatile_type
	.word	40                              // DW_AT_type
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_str_offsets,"",@progbits
	.word	64                              // Length of String Offsets Set
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
	.asciz	"foo"                           // string offset=67
.Linfo_string4:
	.asciz	"dummy1"                        // string offset=71
.Linfo_string5:
	.asciz	"int"                           // string offset=78
.Linfo_string6:
	.asciz	"coolFunct"                     // string offset=82
.Linfo_string7:
	.asciz	"dummy2"                        // string offset=92
.Linfo_string8:
	.asciz	"char"                          // string offset=99
.Linfo_string9:
	.asciz	"Foo"                           // string offset=104
.Linfo_string10:
	.asciz	"dumm2"                         // string offset=108
.Linfo_string11:
	.asciz	"Bar"                           // string offset=114
.Linfo_string12:
	.asciz	"func1"                         // string offset=118
.Linfo_string13:
	.asciz	"main"                          // string offset=124
.Linfo_string14:
	.asciz	"bar"                           // string offset=129
	.section	.debug_str_offsets,"",@progbits
	.word	.Linfo_string0
	.word	.Linfo_string1
	.word	.Linfo_string2
	.word	.Linfo_string3
	.word	.Linfo_string4
	.word	.Linfo_string5
	.word	.Linfo_string6
	.word	.Linfo_string7
	.word	.Linfo_string8
	.word	.Linfo_string9
	.word	.Linfo_string10
	.word	.Linfo_string11
	.word	.Linfo_string12
	.word	.Linfo_string13
	.word	.Linfo_string14
	.section	.debug_addr,"",@progbits
	.word	.Ldebug_addr_end0-.Ldebug_addr_start0 // Length of contribution
.Ldebug_addr_start0:
	.hword	5                               // DWARF version number
	.byte	8                               // Address size
	.byte	0                               // Segment selector size
.Laddr_table_base0:
	.xword	.Lfunc_begin0
	.xword	.Lfunc_begin1
.Ldebug_addr_end0:
	.ident	"Debian clang version 14.0.6"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
