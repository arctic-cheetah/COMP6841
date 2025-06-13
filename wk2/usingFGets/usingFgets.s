	.file	"usingFgets.c"
	.text
.Ltext0:
	.file 0 "/home/k-730/COMP6841/wk2/usingFGets" "usingFgets.c"
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"flag.txt"
	.align 4
.LC2:
	.string	"Your payload worked! Your are admin."
	.align 4
.LC3:
	.string	"There is no flag file. If you're seeing this locally, that's okay. Try a remote exploit. If you're seeing this remotely, please contact the admin."
.LC4:
	.string	"Here is your flag:"
.LC5:
	.string	"%s"
	.text
	.globl	printFlag
	.type	printFlag, @function
printFlag:
.LFB6:
	.file 1 "printFlag.c"
	.loc 1 6 17
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$84, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 1 11 16
	subl	$8, %esp
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	.LC1@GOTOFF(%ebx), %eax
	pushl	%eax
	call	fopen@PLT
	addl	$16, %esp
	movl	%eax, -12(%ebp)
	.loc 1 14 8
	cmpl	$0, -12(%ebp)
	jne	.L2
	.loc 1 15 9
	subl	$12, %esp
	leal	.LC2@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	.loc 1 16 9
	subl	$12, %esp
	leal	.LC3@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
.L2:
	.loc 1 20 5
	subl	$12, %esp
	leal	.LC4@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	.loc 1 21 11
	jmp	.L3
.L4:
	.loc 1 22 9
	subl	$8, %esp
	leal	-76(%ebp), %eax
	pushl	%eax
	leal	.LC5@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
.L3:
	.loc 1 21 12
	subl	$4, %esp
	pushl	-12(%ebp)
	pushl	$64
	leal	-76(%ebp), %eax
	pushl	%eax
	call	fgets@PLT
	addl	$16, %esp
	.loc 1 21 44
	testl	%eax, %eax
	jne	.L4
	.loc 1 25 5
	subl	$12, %esp
	pushl	-12(%ebp)
	call	fclose@PLT
	addl	$16, %esp
	.loc 1 26 12
	movl	$0, %eax
	.loc 1 27 1
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	printFlag, .-printFlag
	.section	.rodata
.LC6:
	.string	"Welcome!"
.LC7:
	.string	"Everything is good."
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.file 2 "usingFgets.c"
	.loc 2 11 33
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 13 5
	subl	$12, %esp
	leal	.LC6@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	.loc 2 14 5
	call	printName
	.loc 2 15 5
	subl	$12, %esp
	leal	.LC7@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	.loc 2 17 12
	movl	$0, %eax
	.loc 2 18 1
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.section	.rodata
.LC8:
	.string	"What is your name?"
.LC9:
	.string	"> "
.LC10:
	.string	"Welcome, %s!\n"
	.align 4
.LC11:
	.string	"You are in this program, but we do not grant you the rank of Admin."
	.align 4
.LC12:
	.string	"Now go away, or I will taunt you a second time."
	.align 4
.LC13:
	.string	"With great power comes great responsibility..."
	.text
	.globl	printName
	.type	printName, @function
printName:
.LFB8:
	.loc 2 20 17
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	.loc 2 21 9
	movl	$-1, -12(%ebp)
	.loc 2 24 5
	subl	$12, %esp
	leal	.LC8@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	.loc 2 26 5
	subl	$12, %esp
	leal	.LC9@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	.loc 2 27 5
	movl	stdin@GOT(%ebx), %eax
	movl	(%eax), %eax
	subl	$4, %esp
	pushl	%eax
	pushl	$17
	leal	-28(%ebp), %eax
	pushl	%eax
	call	fgets@PLT
	addl	$16, %esp
	.loc 2 29 8
	cmpl	$-1, -12(%ebp)
	jne	.L9
	.loc 2 30 9
	subl	$8, %esp
	leal	-28(%ebp), %eax
	pushl	%eax
	leal	.LC10@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	.loc 2 31 9
	subl	$12, %esp
	leal	.LC11@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	.loc 2 32 9
	subl	$12, %esp
	leal	.LC12@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	jmp	.L10
.L9:
	.loc 2 34 9
	subl	$8, %esp
	leal	-28(%ebp), %eax
	pushl	%eax
	leal	.LC10@GOTOFF(%ebx), %eax
	pushl	%eax
	call	printf@PLT
	addl	$16, %esp
	.loc 2 35 9
	subl	$12, %esp
	leal	.LC13@GOTOFF(%ebx), %eax
	pushl	%eax
	call	puts@PLT
	addl	$16, %esp
	.loc 2 36 9
	call	printFlag
.L10:
	.loc 2 38 12
	movl	$0, %eax
	.loc 2 39 1
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE8:
	.size	printName, .-printName
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB9:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE9:
	.text
.Letext0:
	.file 3 "/usr/include/bits/types.h"
	.file 4 "/usr/include/bits/types/struct_FILE.h"
	.file 5 "/usr/include/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3ce
	.value	0x5
	.byte	0x1
	.byte	0x4
	.long	.Ldebug_abbrev0
	.uleb128 0xe
	.long	.LASF59
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF8
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF9
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x2f
	.byte	0x2c
	.long	0x3b
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.long	.LASF12
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x2d
	.uleb128 0x5
	.long	.LASF13
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x65
	.uleb128 0x10
	.byte	0x4
	.uleb128 0x3
	.long	0x9c
	.uleb128 0x7
	.long	0x92
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x11
	.long	0x9c
	.uleb128 0x12
	.long	.LASF60
	.byte	0x94
	.byte	0x4
	.byte	0x32
	.byte	0x8
	.long	0x221
	.uleb128 0x1
	.long	.LASF15
	.byte	0x34
	.byte	0x7
	.long	0x34
	.byte	0
	.uleb128 0x1
	.long	.LASF16
	.byte	0x37
	.byte	0x9
	.long	0x92
	.byte	0x4
	.uleb128 0x1
	.long	.LASF17
	.byte	0x38
	.byte	0x9
	.long	0x92
	.byte	0x8
	.uleb128 0x1
	.long	.LASF18
	.byte	0x39
	.byte	0x9
	.long	0x92
	.byte	0xc
	.uleb128 0x1
	.long	.LASF19
	.byte	0x3a
	.byte	0x9
	.long	0x92
	.byte	0x10
	.uleb128 0x1
	.long	.LASF20
	.byte	0x3b
	.byte	0x9
	.long	0x92
	.byte	0x14
	.uleb128 0x1
	.long	.LASF21
	.byte	0x3c
	.byte	0x9
	.long	0x92
	.byte	0x18
	.uleb128 0x1
	.long	.LASF22
	.byte	0x3d
	.byte	0x9
	.long	0x92
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF23
	.byte	0x3e
	.byte	0x9
	.long	0x92
	.byte	0x20
	.uleb128 0x1
	.long	.LASF24
	.byte	0x41
	.byte	0x9
	.long	0x92
	.byte	0x24
	.uleb128 0x1
	.long	.LASF25
	.byte	0x42
	.byte	0x9
	.long	0x92
	.byte	0x28
	.uleb128 0x1
	.long	.LASF26
	.byte	0x43
	.byte	0x9
	.long	0x92
	.byte	0x2c
	.uleb128 0x1
	.long	.LASF27
	.byte	0x45
	.byte	0x16
	.long	0x23a
	.byte	0x30
	.uleb128 0x1
	.long	.LASF28
	.byte	0x47
	.byte	0x14
	.long	0x23f
	.byte	0x34
	.uleb128 0x1
	.long	.LASF29
	.byte	0x49
	.byte	0x7
	.long	0x34
	.byte	0x38
	.uleb128 0x13
	.long	.LASF61
	.byte	0x4
	.byte	0x4a
	.byte	0x7
	.long	0x34
	.byte	0x18
	.value	0x1e0
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4c
	.byte	0x8
	.long	0x244
	.byte	0x3f
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4d
	.byte	0xb
	.long	0x78
	.byte	0x40
	.uleb128 0x1
	.long	.LASF32
	.byte	0x50
	.byte	0x12
	.long	0x49
	.byte	0x44
	.uleb128 0x1
	.long	.LASF33
	.byte	0x51
	.byte	0xf
	.long	0x57
	.byte	0x46
	.uleb128 0x1
	.long	.LASF34
	.byte	0x52
	.byte	0x8
	.long	0x244
	.byte	0x47
	.uleb128 0x1
	.long	.LASF35
	.byte	0x54
	.byte	0xf
	.long	0x254
	.byte	0x48
	.uleb128 0x1
	.long	.LASF36
	.byte	0x5c
	.byte	0xd
	.long	0x84
	.byte	0x4c
	.uleb128 0x1
	.long	.LASF37
	.byte	0x5e
	.byte	0x17
	.long	0x25e
	.byte	0x54
	.uleb128 0x1
	.long	.LASF38
	.byte	0x5f
	.byte	0x19
	.long	0x268
	.byte	0x58
	.uleb128 0x1
	.long	.LASF39
	.byte	0x60
	.byte	0x14
	.long	0x23f
	.byte	0x5c
	.uleb128 0x1
	.long	.LASF40
	.byte	0x61
	.byte	0x9
	.long	0x90
	.byte	0x60
	.uleb128 0x1
	.long	.LASF41
	.byte	0x62
	.byte	0x15
	.long	0x26d
	.byte	0x64
	.uleb128 0x1
	.long	.LASF42
	.byte	0x63
	.byte	0x7
	.long	0x34
	.byte	0x68
	.uleb128 0x1
	.long	.LASF43
	.byte	0x65
	.byte	0x8
	.long	0x272
	.byte	0x6c
	.byte	0
	.uleb128 0x5
	.long	.LASF44
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa8
	.uleb128 0x14
	.long	.LASF62
	.byte	0x4
	.byte	0x2c
	.byte	0xe
	.uleb128 0x8
	.long	.LASF45
	.uleb128 0x3
	.long	0x235
	.uleb128 0x3
	.long	0xa8
	.uleb128 0x9
	.long	0x9c
	.long	0x254
	.uleb128 0x6
	.long	0x26
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	0x22d
	.uleb128 0x8
	.long	.LASF46
	.uleb128 0x3
	.long	0x259
	.uleb128 0x8
	.long	.LASF47
	.uleb128 0x3
	.long	0x263
	.uleb128 0x3
	.long	0x23f
	.uleb128 0x9
	.long	0x9c
	.long	0x282
	.uleb128 0x6
	.long	0x26
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.long	0xa3
	.uleb128 0x7
	.long	0x282
	.uleb128 0x15
	.long	.LASF63
	.byte	0x6
	.byte	0x95
	.byte	0xe
	.long	0x298
	.uleb128 0x3
	.long	0x221
	.uleb128 0x7
	.long	0x298
	.uleb128 0x16
	.long	.LASF48
	.byte	0x6
	.byte	0xb8
	.byte	0xc
	.long	0x34
	.long	0x2b8
	.uleb128 0x4
	.long	0x298
	.byte	0
	.uleb128 0xa
	.long	.LASF49
	.value	0x28e
	.byte	0xe
	.long	0x92
	.long	0x2d8
	.uleb128 0x4
	.long	0x97
	.uleb128 0x4
	.long	0x34
	.uleb128 0x4
	.long	0x29d
	.byte	0
	.uleb128 0xa
	.long	.LASF50
	.value	0x16b
	.byte	0xc
	.long	0x34
	.long	0x2ef
	.uleb128 0x4
	.long	0x282
	.uleb128 0x17
	.byte	0
	.uleb128 0xa
	.long	.LASF51
	.value	0x108
	.byte	0xe
	.long	0x298
	.long	0x30a
	.uleb128 0x4
	.long	0x287
	.uleb128 0x4
	.long	0x287
	.byte	0
	.uleb128 0xc
	.long	.LASF56
	.byte	0x2
	.byte	0x14
	.long	0x34
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x342
	.uleb128 0xb
	.long	.LASF52
	.byte	0x2
	.byte	0x15
	.byte	0x9
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xb
	.long	.LASF53
	.byte	0x2
	.byte	0x16
	.byte	0xa
	.long	0x342
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x9
	.long	0x9c
	.long	0x352
	.uleb128 0x6
	.long	0x26
	.byte	0xf
	.byte	0
	.uleb128 0x18
	.long	.LASF64
	.byte	0x2
	.byte	0xb
	.byte	0x5
	.long	0x34
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x387
	.uleb128 0xd
	.long	.LASF54
	.byte	0xe
	.long	0x34
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF55
	.byte	0x1b
	.long	0x387
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.long	0x92
	.uleb128 0xc
	.long	.LASF57
	.byte	0x1
	.byte	0x6
	.long	0x34
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c5
	.uleb128 0xb
	.long	.LASF58
	.byte	0x1
	.byte	0x8
	.byte	0xb
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.string	"str"
	.byte	0x1
	.byte	0x9
	.byte	0xa
	.long	0x3c5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.byte	0
	.uleb128 0x1a
	.long	0x9c
	.uleb128 0x6
	.long	0x26
	.byte	0x3f
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF50:
	.string	"printf"
.LASF12:
	.string	"__off_t"
.LASF16:
	.string	"_IO_read_ptr"
.LASF28:
	.string	"_chain"
.LASF34:
	.string	"_shortbuf"
.LASF22:
	.string	"_IO_buf_base"
.LASF10:
	.string	"long long unsigned int"
.LASF11:
	.string	"__int64_t"
.LASF37:
	.string	"_codecvt"
.LASF4:
	.string	"long long int"
.LASF8:
	.string	"signed char"
.LASF29:
	.string	"_fileno"
.LASF17:
	.string	"_IO_read_end"
.LASF3:
	.string	"long int"
.LASF15:
	.string	"_flags"
.LASF23:
	.string	"_IO_buf_end"
.LASF32:
	.string	"_cur_column"
.LASF46:
	.string	"_IO_codecvt"
.LASF31:
	.string	"_old_offset"
.LASF36:
	.string	"_offset"
.LASF59:
	.string	"GNU C17 11.5.0 -m32 -mtune=generic -march=i686 -g -O0 -fno-stack-protector -fasynchronous-unwind-tables"
.LASF45:
	.string	"_IO_marker"
.LASF30:
	.string	"_short_backupbuf"
.LASF2:
	.string	"unsigned int"
.LASF40:
	.string	"_freeres_buf"
.LASF7:
	.string	"long unsigned int"
.LASF20:
	.string	"_IO_write_ptr"
.LASF53:
	.string	"name"
.LASF6:
	.string	"short unsigned int"
.LASF58:
	.string	"file_ptr"
.LASF24:
	.string	"_IO_save_base"
.LASF63:
	.string	"stdin"
.LASF35:
	.string	"_lock"
.LASF61:
	.string	"_flags2"
.LASF42:
	.string	"_mode"
.LASF49:
	.string	"fgets"
.LASF21:
	.string	"_IO_write_end"
.LASF41:
	.string	"_prevchain"
.LASF56:
	.string	"printName"
.LASF62:
	.string	"_IO_lock_t"
.LASF60:
	.string	"_IO_FILE"
.LASF51:
	.string	"fopen"
.LASF27:
	.string	"_markers"
.LASF5:
	.string	"unsigned char"
.LASF9:
	.string	"short int"
.LASF47:
	.string	"_IO_wide_data"
.LASF33:
	.string	"_vtable_offset"
.LASF44:
	.string	"FILE"
.LASF52:
	.string	"isAdmin"
.LASF14:
	.string	"char"
.LASF48:
	.string	"fclose"
.LASF13:
	.string	"__off64_t"
.LASF18:
	.string	"_IO_read_base"
.LASF26:
	.string	"_IO_save_end"
.LASF57:
	.string	"printFlag"
.LASF43:
	.string	"_unused2"
.LASF54:
	.string	"argv"
.LASF25:
	.string	"_IO_backup_base"
.LASF55:
	.string	"argc"
.LASF39:
	.string	"_freeres_list"
.LASF38:
	.string	"_wide_data"
.LASF64:
	.string	"main"
.LASF19:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"usingFgets.c"
.LASF1:
	.string	"/home/k-730/COMP6841/wk2/usingFGets"
	.ident	"GCC: (Debian 11.5.0-2) 11.5.0"
	.section	.note.GNU-stack,"",@progbits
