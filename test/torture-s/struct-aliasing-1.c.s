	.text
	.file	"/b/build/slave/linux/build/src/src/work/gcc/gcc/testsuite/gcc.c-torture/execute/struct-aliasing-1.c"
	.section	.text.foo,"ax",@progbits
	.hidden	foo
	.globl	foo
	.type	foo,@function
foo:                                    # @foo
	.param  	i32, i32
	.result 	i32
	.local  	i32
# BB#0:                                 # %entry
	i32.load	$2=, 0($1)
	i32.const	$push0=, 0
	i32.store	$discard=, 0($0), $pop0
	i32.load	$push1=, 0($1)
	i32.add 	$push2=, $2, $pop1
	return  	$pop2
	.endfunc
.Lfunc_end0:
	.size	foo, .Lfunc_end0-foo

	.section	.text.main,"ax",@progbits
	.hidden	main
	.globl	main
	.type	main,@function
main:                                   # @main
	.result 	i32
	.local  	i32, i32, i32
# BB#0:                                 # %entry
	i32.const	$push5=, __stack_pointer
	i32.load	$push6=, 0($pop5)
	i32.const	$push7=, 16
	i32.sub 	$2=, $pop6, $pop7
	i32.const	$push8=, __stack_pointer
	i32.store	$discard=, 0($pop8), $2
	i32.const	$push0=, 1
	i32.store	$push1=, 12($2), $pop0
	i32.const	$0=, 12
	i32.add 	$0=, $2, $0
	i32.const	$1=, 12
	i32.add 	$1=, $2, $1
	block
	i32.call	$push2=, foo@FUNCTION, $0, $1
	i32.ne  	$push3=, $pop1, $pop2
	br_if   	0, $pop3        # 0: down to label0
# BB#1:                                 # %if.end
	i32.const	$push4=, 0
	i32.const	$push9=, 16
	i32.add 	$2=, $2, $pop9
	i32.const	$push10=, __stack_pointer
	i32.store	$discard=, 0($pop10), $2
	return  	$pop4
.LBB1_2:                                # %if.then
	end_block                       # label0:
	call    	abort@FUNCTION
	unreachable
	.endfunc
.Lfunc_end1:
	.size	main, .Lfunc_end1-main


	.ident	"clang version 3.9.0 "
