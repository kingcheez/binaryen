	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/991112-1.c"
	.section	.text.rl_show_char,"ax",@progbits
	.hidden	rl_show_char
	.globl	rl_show_char
	.type	rl_show_char,@function
rl_show_char:                           # @rl_show_char
	.param  	i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push0=, 0
	return  	$pop0
	.endfunc
.Lfunc_end0:
	.size	rl_show_char, .Lfunc_end0-rl_show_char

	.section	.text.rl_character_len,"ax",@progbits
	.hidden	rl_character_len
	.globl	rl_character_len
	.type	rl_character_len,@function
rl_character_len:                       # @rl_character_len
	.param  	i32, i32
	.result 	i32
# BB#0:                                 # %entry
	i32.const	$push2=, 1
	i32.const	$push1=, 2
	i32.call	$push0=, isprint@FUNCTION, $0
	i32.select	$push3=, $pop2, $pop1, $pop0
	return  	$pop3
	.endfunc
.Lfunc_end1:
	.size	rl_character_len, .Lfunc_end1-rl_character_len

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
# BB#0:                                 # %entry
	block
	block
	i32.const	$push0=, 97
	i32.call	$push1=, isprint@FUNCTION, $pop0
	i32.const	$push5=, 0
	i32.eq  	$push6=, $pop1, $pop5
	br_if   	0, $pop6        # 0: down to label1
# BB#1:                                 # %if.end
	i32.const	$push2=, 2
	i32.call	$push3=, isprint@FUNCTION, $pop2
	br_if   	1, $pop3        # 1: down to label0
# BB#2:                                 # %if.end4
	i32.const	$push4=, 0
	return  	$pop4
.LBB2_3:                                # %if.then
	end_block                       # label1:
	call    	abort@FUNCTION
	unreachable
.LBB2_4:                                # %if.then3
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end2:
	.size	main, .Lfunc_end2-main


	.ident	"clang version 3.9.0 "
