	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 1
	.file	1 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread" "_pthread_types.h"
	.file	2 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread" "_pthread_mutex_t.h"
	.file	3 "/Users/paterakis/NTUA/6th Sem/\316\241\316\277\316\267 \316\245/\316\233\316\265\316\271\317\204\316\277\317\205\317\201\316\263\316\271\316\272\316\254 \316\243\317\205\317\203\317\204\316\256\316\274\316\261\317\204\316\261 \316\245\317\200\316\277\316\273\316\277\316\263\316\271\317\203\317\204\317\216\316\275/\316\225\317\201\316\263\316\261\317\203\317\204\316\256\317\201\316\271\316\277/3rd" "simplesync.c"
	.globl	_increase_fn            ## -- Begin function increase_fn
	.p2align	4, 0x90
_increase_fn:                           ## @increase_fn
Lfunc_begin0:
	.loc	3 41 0                  ## simplesync.c:41:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: increase_fn:arg <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
Ltmp0:
	##DEBUG_VALUE: increase_fn:ip <- $rdi
	movq	%rdi, %rbx
Ltmp1:
	##DEBUG_VALUE: increase_fn:ip <- $rbx
	##DEBUG_VALUE: increase_fn:arg <- $rbx
	.loc	3 45 17 prologue_end    ## simplesync.c:45:17
	movq	___stderrp@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	.loc	3 45 9 is_stmt 0        ## simplesync.c:45:9
	leaq	L_.str(%rip), %rsi
	movl	$10000000, %r15d        ## imm = 0x989680
	movl	$10000000, %edx         ## imm = 0x989680
	xorl	%eax, %eax
	callq	_fprintf
Ltmp2:
	##DEBUG_VALUE: increase_fn:i <- 0
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: increase_fn:arg <- $rbx
	##DEBUG_VALUE: increase_fn:ip <- $rbx
	##DEBUG_VALUE: increase_fn:i <- undef
	.loc	3 49 25 is_stmt 1       ## simplesync.c:49:25
	lock		incl	(%rbx)
Ltmp3:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp4:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp5:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 3, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp6:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 4, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp7:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 5, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp8:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 6, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp9:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 7, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp10:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 8, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp11:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 9, DW_OP_stack_value] undef
	lock		incl	(%rbx)
Ltmp12:
	##DEBUG_VALUE: increase_fn:i <- [DW_OP_plus_uconst 10, DW_OP_stack_value] undef
	.loc	3 46 23                 ## simplesync.c:46:23
	addl	$-10, %r15d
Ltmp13:
	.loc	3 46 9 is_stmt 0        ## simplesync.c:46:9
	jne	LBB0_1
Ltmp14:
## %bb.2:
	##DEBUG_VALUE: increase_fn:arg <- $rbx
	##DEBUG_VALUE: increase_fn:ip <- $rbx
	.loc	3 62 17 is_stmt 1       ## simplesync.c:62:17
	movq	(%r14), %rcx
	.loc	3 62 9 is_stmt 0        ## simplesync.c:62:9
	leaq	L_.str.1(%rip), %rdi
	movl	$26, %esi
	movl	$1, %edx
	callq	_fwrite
Ltmp15:
	.loc	3 64 9 is_stmt 1        ## simplesync.c:64:9
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
Ltmp16:
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
Ltmp17:
Lfunc_end0:
	.cfi_endproc
                                        ## -- End function
	.globl	_decrease_fn            ## -- Begin function decrease_fn
	.p2align	4, 0x90
_decrease_fn:                           ## @decrease_fn
Lfunc_begin1:
	.loc	3 68 0                  ## simplesync.c:68:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: decrease_fn:arg <- $rdi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
Ltmp18:
	##DEBUG_VALUE: decrease_fn:ip <- $rdi
	movq	%rdi, %rbx
Ltmp19:
	##DEBUG_VALUE: decrease_fn:ip <- $rbx
	##DEBUG_VALUE: decrease_fn:arg <- $rbx
	.loc	3 72 17 prologue_end    ## simplesync.c:72:17
	movq	___stderrp@GOTPCREL(%rip), %r14
	movq	(%r14), %rdi
	.loc	3 72 9 is_stmt 0        ## simplesync.c:72:9
	leaq	L_.str.2(%rip), %rsi
	movl	$10000000, %r15d        ## imm = 0x989680
	movl	$10000000, %edx         ## imm = 0x989680
	xorl	%eax, %eax
	callq	_fprintf
Ltmp20:
	##DEBUG_VALUE: decrease_fn:i <- 0
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: decrease_fn:arg <- $rbx
	##DEBUG_VALUE: decrease_fn:ip <- $rbx
	##DEBUG_VALUE: decrease_fn:i <- undef
	.loc	3 76 25 is_stmt 1       ## simplesync.c:76:25
	lock		decl	(%rbx)
Ltmp21:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 1, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp22:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 2, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp23:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 3, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp24:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 4, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp25:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 5, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp26:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 6, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp27:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 7, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp28:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 8, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp29:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 9, DW_OP_stack_value] undef
	lock		decl	(%rbx)
Ltmp30:
	##DEBUG_VALUE: decrease_fn:i <- [DW_OP_plus_uconst 10, DW_OP_stack_value] undef
	.loc	3 73 23                 ## simplesync.c:73:23
	addl	$-10, %r15d
Ltmp31:
	.loc	3 73 9 is_stmt 0        ## simplesync.c:73:9
	jne	LBB1_1
Ltmp32:
## %bb.2:
	##DEBUG_VALUE: decrease_fn:arg <- $rbx
	##DEBUG_VALUE: decrease_fn:ip <- $rbx
	.loc	3 89 17 is_stmt 1       ## simplesync.c:89:17
	movq	(%r14), %rcx
	.loc	3 89 9 is_stmt 0        ## simplesync.c:89:9
	leaq	L_.str.3(%rip), %rdi
	movl	$26, %esi
	movl	$1, %edx
	callq	_fwrite
Ltmp33:
	.loc	3 91 9 is_stmt 1        ## simplesync.c:91:9
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
Ltmp34:
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
Ltmp35:
Lfunc_end1:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3               ## -- Begin function main
LCPI2_0:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
Lfunc_begin2:
	.loc	3 96 0                  ## simplesync.c:96:0
	.cfi_startproc
## %bb.0:
	##DEBUG_VALUE: main:argc <- $edi
	##DEBUG_VALUE: main:argv <- $rsi
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	leaq	-72(%rbp), %rdi
Ltmp36:
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 100 9 prologue_end    ## simplesync.c:100:9
	xorl	%esi, %esi
Ltmp37:
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	callq	_gettimeofday
Ltmp38:
	##DEBUG_VALUE: main:val <- 0
	.loc	3 105 13                ## simplesync.c:105:13
	movl	$0, -20(%rbp)
Ltmp39:
	.loc	3 110 13                ## simplesync.c:110:13
	movq	_lock@GOTPCREL(%rip), %rdi
	xorl	%esi, %esi
	callq	_pthread_mutex_init
Ltmp40:
	.loc	3 110 45 is_stmt 0      ## simplesync.c:110:45
	testl	%eax, %eax
Ltmp41:
	.loc	3 110 13                ## simplesync.c:110:13
	je	LBB2_2
Ltmp42:
## %bb.1:
	##DEBUG_VALUE: main:val <- 0
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 112 17 is_stmt 1      ## simplesync.c:112:17
	leaq	L_str(%rip), %rdi
	callq	_puts
Ltmp43:
	.loc	3 0 17 is_stmt 0        ## simplesync.c:0:17
	movl	$1, %ebx
	jmp	LBB2_9
Ltmp44:
LBB2_2:
	##DEBUG_VALUE: main:val <- 0
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:t1 <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 115 15 is_stmt 1      ## simplesync.c:115:15
	leaq	_increase_fn(%rip), %rdx
	leaq	-40(%rbp), %rdi
	leaq	-20(%rbp), %rcx
	xorl	%esi, %esi
	callq	_pthread_create
Ltmp45:
	##DEBUG_VALUE: main:ret <- $eax
	.loc	3 116 13                ## simplesync.c:116:13
	testl	%eax, %eax
Ltmp46:
	.loc	3 116 13 is_stmt 0      ## simplesync.c:116:13
	jne	LBB2_10
Ltmp47:
## %bb.3:
	##DEBUG_VALUE: main:t1 <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:ret <- $eax
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:t2 <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	.loc	3 120 15 is_stmt 1      ## simplesync.c:120:15
	leaq	_decrease_fn(%rip), %rdx
	leaq	-32(%rbp), %rdi
	leaq	-20(%rbp), %rcx
	xorl	%esi, %esi
	callq	_pthread_create
Ltmp48:
	##DEBUG_VALUE: main:ret <- $eax
	.loc	3 121 13                ## simplesync.c:121:13
	testl	%eax, %eax
Ltmp49:
	.loc	3 121 13 is_stmt 0      ## simplesync.c:121:13
	jne	LBB2_11
Ltmp50:
## %bb.4:
	##DEBUG_VALUE: main:t2 <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:t1 <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:ret <- $eax
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 129 28 is_stmt 1      ## simplesync.c:129:28
	movq	-40(%rbp), %rdi
Ltmp51:
	##DEBUG_VALUE: main:t1 <- $rdi
	.loc	3 129 15 is_stmt 0      ## simplesync.c:129:15
	xorl	%esi, %esi
	callq	_pthread_join
Ltmp52:
	##DEBUG_VALUE: main:ret <- $eax
	.loc	3 130 13 is_stmt 1      ## simplesync.c:130:13
	testl	%eax, %eax
Ltmp53:
	.loc	3 130 13 is_stmt 0      ## simplesync.c:130:13
	jne	LBB2_5
Ltmp54:
LBB2_6:
	##DEBUG_VALUE: main:t2 <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 132 28 is_stmt 1      ## simplesync.c:132:28
	movq	-32(%rbp), %rdi
Ltmp55:
	##DEBUG_VALUE: main:t2 <- $rdi
	.loc	3 132 15 is_stmt 0      ## simplesync.c:132:15
	xorl	%esi, %esi
	callq	_pthread_join
Ltmp56:
	##DEBUG_VALUE: main:ret <- $eax
	.loc	3 133 13 is_stmt 1      ## simplesync.c:133:13
	testl	%eax, %eax
Ltmp57:
	.loc	3 133 13 is_stmt 0      ## simplesync.c:133:13
	jne	LBB2_7
Ltmp58:
LBB2_8:
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	##DEBUG_VALUE: main:val <- undef
	.loc	3 139 19 is_stmt 1      ## simplesync.c:139:19
	xorl	%ebx, %ebx
	cmpl	$0, -20(%rbp)
	sete	%bl
Ltmp59:
	##DEBUG_VALUE: main:ok <- $ebx
	.loc	3 145 37                ## simplesync.c:145:37
	leaq	L_.str.9(%rip), %rax
	leaq	L_.str.10(%rip), %r14
	cmoveq	%rax, %r14
	leaq	-56(%rbp), %rdi
	.loc	3 140 9                 ## simplesync.c:140:9
	xorl	%esi, %esi
	callq	_gettimeofday
Ltmp60:
	.loc	3 141 27                ## simplesync.c:141:27
	movq	-56(%rbp), %rax
	.loc	3 142 52                ## simplesync.c:142:52
	movslq	-48(%rbp), %rcx
	.loc	3 142 70 is_stmt 0      ## simplesync.c:142:70
	movslq	-64(%rbp), %rdx
	.loc	3 141 34 is_stmt 1      ## simplesync.c:141:34
	subq	-72(%rbp), %rax
Ltmp61:
	##DEBUG_VALUE: main:total <- $rax
	.loc	3 142 36                ## simplesync.c:142:36
	imulq	$1000000, %rax, %rax    ## imm = 0xF4240
Ltmp62:
	.loc	3 142 46 is_stmt 0      ## simplesync.c:142:46
	addq	%rcx, %rax
	.loc	3 142 61                ## simplesync.c:142:61
	subq	%rdx, %rax
	.loc	3 142 28                ## simplesync.c:142:28
	cvtsi2sd	%rax, %xmm0
Ltmp63:
	##DEBUG_VALUE: main:micro_tot <- $xmm0
	.loc	3 143 50 is_stmt 1      ## simplesync.c:143:50
	divsd	LCPI2_0(%rip), %xmm0
Ltmp64:
	.loc	3 143 9 is_stmt 0       ## simplesync.c:143:9
	leaq	L_.str.7(%rip), %rdi
	movb	$1, %al
	callq	_printf
Ltmp65:
	.loc	3 145 55 is_stmt 1      ## simplesync.c:145:55
	movl	-20(%rbp), %edx
Ltmp66:
	##DEBUG_VALUE: main:val <- $edx
	.loc	3 145 9 is_stmt 0       ## simplesync.c:145:9
	leaq	L_.str.8(%rip), %rdi
	movq	%r14, %rsi
	xorl	%eax, %eax
	callq	_printf
Ltmp67:
LBB2_9:
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 148 1 is_stmt 1       ## simplesync.c:148:1
	movl	%ebx, %eax
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
Ltmp68:
LBB2_5:
	##DEBUG_VALUE: main:t2 <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:ret <- $eax
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 0 0 is_stmt 0         ## simplesync.c:0:0
	movl	%eax, %ebx
Ltmp69:
	##DEBUG_VALUE: main:ret <- $ebx
	.loc	3 131 17 is_stmt 1      ## simplesync.c:131:17
	callq	___error
Ltmp70:
	movl	%ebx, (%rax)
	leaq	L_.str.6(%rip), %rdi
	callq	_perror
Ltmp71:
	.loc	3 0 17 is_stmt 0        ## simplesync.c:0:17
	jmp	LBB2_6
Ltmp72:
LBB2_7:
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:ret <- $eax
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	movl	%eax, %ebx
Ltmp73:
	##DEBUG_VALUE: main:ret <- $ebx
	.loc	3 134 17 is_stmt 1      ## simplesync.c:134:17
	callq	___error
Ltmp74:
	movl	%ebx, (%rax)
	leaq	L_.str.6(%rip), %rdi
	callq	_perror
Ltmp75:
	.loc	3 0 17 is_stmt 0        ## simplesync.c:0:17
	jmp	LBB2_8
Ltmp76:
LBB2_10:
	##DEBUG_VALUE: main:t1 <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:ret <- $eax
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 117 17 is_stmt 1      ## simplesync.c:117:17
	movl	%eax, %edi
	callq	_main.cold.2
Ltmp77:
LBB2_11:
	##DEBUG_VALUE: main:t2 <- [DW_OP_constu 32, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:t1 <- [DW_OP_constu 40, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:val <- [DW_OP_constu 20, DW_OP_minus, DW_OP_deref] $rbp
	##DEBUG_VALUE: main:ret <- $eax
	##DEBUG_VALUE: main:argv <- [DW_OP_LLVM_entry_value 1] $rsi
	##DEBUG_VALUE: main:argc <- [DW_OP_LLVM_entry_value 1] $edi
	.loc	3 122 17                ## simplesync.c:122:17
	movl	%eax, %edi
	callq	_main.cold.1
Ltmp78:
Lfunc_end2:
	.cfi_endproc
	.file	4 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys" "time.h"
	.file	5 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386" "_types.h"
	.file	6 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types" "_timeval.h"
	.file	7 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys" "_types.h"
	.file	8 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "pthread.h"
	.file	9 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include" "stdio.h"
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function main.cold.1
_main.cold.1:                           ## @main.cold.1
Lfunc_begin3:
	.loc	3 0 0                   ## simplesync.c:0:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
Ltmp79:
	.loc	3 122 17 prologue_end   ## simplesync.c:122:17
	callq	___error
	movl	%ebx, (%rax)
	leaq	L_.str.5(%rip), %rdi
	callq	_perror
	pushq	$1
	popq	%rdi
	.loc	3 123 17                ## simplesync.c:123:17
	callq	_exit
Ltmp80:
Lfunc_end3:
	.cfi_endproc
                                        ## -- End function
	.p2align	4, 0x90         ## -- Begin function main.cold.2
_main.cold.2:                           ## @main.cold.2
Lfunc_begin4:
	.loc	3 0 0                   ## simplesync.c:0:0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -24
	movl	%edi, %ebx
Ltmp81:
	.loc	3 117 17 prologue_end   ## simplesync.c:117:17
	callq	___error
	movl	%ebx, (%rax)
	leaq	L_.str.5(%rip), %rdi
	callq	_perror
	pushq	$1
	popq	%rdi
	.loc	3 118 17                ## simplesync.c:118:17
	callq	_exit
Ltmp82:
Lfunc_end4:
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"About to increase variable %d times\n"

L_.str.1:                               ## @.str.1
	.asciz	"Done increasing variable.\n"

L_.str.2:                               ## @.str.2
	.asciz	"About to decrease variable %d times\n"

L_.str.3:                               ## @.str.3
	.asciz	"Done decreasing variable.\n"

	.comm	_lock,64,3              ## @lock
L_.str.5:                               ## @.str.5
	.asciz	"pthread_create"

L_.str.6:                               ## @.str.6
	.asciz	"pthread_join"

L_.str.7:                               ## @.str.7
	.asciz	"Execution Time:%lf \n"

L_.str.8:                               ## @.str.8
	.asciz	"%sOK, val = %d.\n"

L_.str.9:                               ## @.str.9
	.space	1

L_.str.10:                              ## @.str.10
	.asciz	"NOT "

L_str:                                  ## @str
	.asciz	"\n mutex init failed"

	.file	10 "/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_pthread" "_pthread_t.h"
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.asciz	"Apple clang version 12.0.0 (clang-1200.0.32.29)" ## string offset=0
	.asciz	"simplesync.c"          ## string offset=48
	.asciz	"/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk" ## string offset=61
	.asciz	"MacOSX.sdk"            ## string offset=113
	.asciz	"/Users/paterakis/NTUA/6th Sem/\316\241\316\277\316\267 \316\245/\316\233\316\265\316\271\317\204\316\277\317\205\317\201\316\263\316\271\316\272\316\254 \316\243\317\205\317\203\317\204\316\256\316\274\316\261\317\204\316\261 \316\245\317\200\316\277\316\273\316\277\316\263\316\271\317\203\317\204\317\216\316\275/\316\225\317\201\316\263\316\261\317\203\317\204\316\256\317\201\316\271\316\277/3rd" ## string offset=124
	.asciz	"lock"                  ## string offset=254
	.asciz	"pthread_mutex_t"       ## string offset=259
	.asciz	"__darwin_pthread_mutex_t" ## string offset=275
	.asciz	"_opaque_pthread_mutex_t" ## string offset=300
	.asciz	"__sig"                 ## string offset=324
	.asciz	"long int"              ## string offset=330
	.asciz	"__opaque"              ## string offset=339
	.asciz	"char"                  ## string offset=348
	.asciz	"__ARRAY_SIZE_TYPE__"   ## string offset=353
	.asciz	"increase_fn"           ## string offset=373
	.asciz	"decrease_fn"           ## string offset=385
	.asciz	"main"                  ## string offset=397
	.asciz	"gettimeofday"          ## string offset=402
	.asciz	"int"                   ## string offset=415
	.asciz	"timeval"               ## string offset=419
	.asciz	"tv_sec"                ## string offset=427
	.asciz	"__darwin_time_t"       ## string offset=434
	.asciz	"tv_usec"               ## string offset=450
	.asciz	"__darwin_suseconds_t"  ## string offset=458
	.asciz	"__int32_t"             ## string offset=479
	.asciz	"pthread_mutex_init"    ## string offset=489
	.asciz	"_opaque_pthread_mutexattr_t" ## string offset=508
	.asciz	"_pthread_join"         ## string offset=536
	.asciz	"pthread_join"          ## string offset=550
	.asciz	"_opaque_pthread_t"     ## string offset=563
	.asciz	"__cleanup_stack"       ## string offset=581
	.asciz	"__darwin_pthread_handler_rec" ## string offset=597
	.asciz	"__routine"             ## string offset=626
	.asciz	"__arg"                 ## string offset=636
	.asciz	"__next"                ## string offset=642
	.asciz	"perror"                ## string offset=649
	.asciz	"main.cold.1"           ## string offset=656
	.asciz	"main.cold.2"           ## string offset=668
	.asciz	"arg"                   ## string offset=680
	.asciz	"ip"                    ## string offset=684
	.asciz	"i"                     ## string offset=687
	.asciz	"start"                 ## string offset=689
	.asciz	"end"                   ## string offset=695
	.asciz	"argc"                  ## string offset=699
	.asciz	"argv"                  ## string offset=704
	.asciz	"val"                   ## string offset=709
	.asciz	"t1"                    ## string offset=713
	.asciz	"pthread_t"             ## string offset=716
	.asciz	"__darwin_pthread_t"    ## string offset=726
	.asciz	"ret"                   ## string offset=745
	.asciz	"t2"                    ## string offset=749
	.asciz	"ok"                    ## string offset=752
	.asciz	"total"                 ## string offset=755
	.asciz	"micro_tot"             ## string offset=761
	.asciz	"double"                ## string offset=771
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
Ldebug_loc0:
.set Lset0, Lfunc_begin0-Lfunc_begin0
	.quad	Lset0
.set Lset1, Ltmp1-Lfunc_begin0
	.quad	Lset1
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset2, Ltmp1-Lfunc_begin0
	.quad	Lset2
.set Lset3, Ltmp16-Lfunc_begin0
	.quad	Lset3
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc1:
.set Lset4, Ltmp0-Lfunc_begin0
	.quad	Lset4
.set Lset5, Ltmp1-Lfunc_begin0
	.quad	Lset5
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset6, Ltmp1-Lfunc_begin0
	.quad	Lset6
.set Lset7, Ltmp16-Lfunc_begin0
	.quad	Lset7
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc2:
.set Lset8, Lfunc_begin1-Lfunc_begin0
	.quad	Lset8
.set Lset9, Ltmp19-Lfunc_begin0
	.quad	Lset9
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset10, Ltmp19-Lfunc_begin0
	.quad	Lset10
.set Lset11, Ltmp34-Lfunc_begin0
	.quad	Lset11
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc3:
.set Lset12, Ltmp18-Lfunc_begin0
	.quad	Lset12
.set Lset13, Ltmp19-Lfunc_begin0
	.quad	Lset13
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset14, Ltmp19-Lfunc_begin0
	.quad	Lset14
.set Lset15, Ltmp34-Lfunc_begin0
	.quad	Lset15
	.short	1                       ## Loc expr size
	.byte	83                      ## DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc4:
.set Lset16, Lfunc_begin2-Lfunc_begin0
	.quad	Lset16
.set Lset17, Ltmp36-Lfunc_begin0
	.quad	Lset17
	.short	1                       ## Loc expr size
	.byte	85                      ## super-register DW_OP_reg5
.set Lset18, Ltmp36-Lfunc_begin0
	.quad	Lset18
.set Lset19, Lfunc_end2-Lfunc_begin0
	.quad	Lset19
	.short	4                       ## Loc expr size
	.byte	163                     ## DW_OP_entry_value
	.byte	1                       ## 1
	.byte	85                      ## super-register DW_OP_reg5
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc5:
.set Lset20, Lfunc_begin2-Lfunc_begin0
	.quad	Lset20
.set Lset21, Ltmp37-Lfunc_begin0
	.quad	Lset21
	.short	1                       ## Loc expr size
	.byte	84                      ## DW_OP_reg4
.set Lset22, Ltmp37-Lfunc_begin0
	.quad	Lset22
.set Lset23, Lfunc_end2-Lfunc_begin0
	.quad	Lset23
	.short	4                       ## Loc expr size
	.byte	163                     ## DW_OP_entry_value
	.byte	1                       ## 1
	.byte	84                      ## DW_OP_reg4
	.byte	159                     ## DW_OP_stack_value
	.quad	0
	.quad	0
Ldebug_loc6:
.set Lset24, Ltmp38-Lfunc_begin0
	.quad	Lset24
.set Lset25, Ltmp44-Lfunc_begin0
	.quad	Lset25
	.short	3                       ## Loc expr size
	.byte	17                      ## DW_OP_consts
	.byte	0                       ## 0
	.byte	159                     ## DW_OP_stack_value
.set Lset26, Ltmp44-Lfunc_begin0
	.quad	Lset26
.set Lset27, Ltmp58-Lfunc_begin0
	.quad	Lset27
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	108                     ## -20
.set Lset28, Ltmp66-Lfunc_begin0
	.quad	Lset28
.set Lset29, Ltmp67-Lfunc_begin0
	.quad	Lset29
	.short	1                       ## Loc expr size
	.byte	81                      ## super-register DW_OP_reg1
.set Lset30, Ltmp68-Lfunc_begin0
	.quad	Lset30
.set Lset31, Lfunc_end2-Lfunc_begin0
	.quad	Lset31
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	108                     ## -20
	.quad	0
	.quad	0
Ldebug_loc7:
.set Lset32, Ltmp44-Lfunc_begin0
	.quad	Lset32
.set Lset33, Ltmp51-Lfunc_begin0
	.quad	Lset33
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	88                      ## -40
.set Lset34, Ltmp51-Lfunc_begin0
	.quad	Lset34
.set Lset35, Ltmp52-Lfunc_begin0
	.quad	Lset35
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset36, Ltmp76-Lfunc_begin0
	.quad	Lset36
.set Lset37, Lfunc_end2-Lfunc_begin0
	.quad	Lset37
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	88                      ## -40
	.quad	0
	.quad	0
Ldebug_loc8:
.set Lset38, Ltmp45-Lfunc_begin0
	.quad	Lset38
.set Lset39, Ltmp54-Lfunc_begin0
	.quad	Lset39
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
.set Lset40, Ltmp56-Lfunc_begin0
	.quad	Lset40
.set Lset41, Ltmp58-Lfunc_begin0
	.quad	Lset41
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
.set Lset42, Ltmp68-Lfunc_begin0
	.quad	Lset42
.set Lset43, Ltmp69-Lfunc_begin0
	.quad	Lset43
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
.set Lset44, Ltmp69-Lfunc_begin0
	.quad	Lset44
.set Lset45, Ltmp72-Lfunc_begin0
	.quad	Lset45
	.short	1                       ## Loc expr size
	.byte	83                      ## super-register DW_OP_reg3
.set Lset46, Ltmp72-Lfunc_begin0
	.quad	Lset46
.set Lset47, Ltmp73-Lfunc_begin0
	.quad	Lset47
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
.set Lset48, Ltmp73-Lfunc_begin0
	.quad	Lset48
.set Lset49, Ltmp76-Lfunc_begin0
	.quad	Lset49
	.short	1                       ## Loc expr size
	.byte	83                      ## super-register DW_OP_reg3
.set Lset50, Ltmp76-Lfunc_begin0
	.quad	Lset50
.set Lset51, Ltmp78-Lfunc_begin0
	.quad	Lset51
	.short	1                       ## Loc expr size
	.byte	80                      ## super-register DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc9:
.set Lset52, Ltmp47-Lfunc_begin0
	.quad	Lset52
.set Lset53, Ltmp55-Lfunc_begin0
	.quad	Lset53
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset54, Ltmp55-Lfunc_begin0
	.quad	Lset54
.set Lset55, Ltmp56-Lfunc_begin0
	.quad	Lset55
	.short	1                       ## Loc expr size
	.byte	85                      ## DW_OP_reg5
.set Lset56, Ltmp68-Lfunc_begin0
	.quad	Lset56
.set Lset57, Ltmp72-Lfunc_begin0
	.quad	Lset57
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
.set Lset58, Ltmp77-Lfunc_begin0
	.quad	Lset58
.set Lset59, Lfunc_end2-Lfunc_begin0
	.quad	Lset59
	.short	2                       ## Loc expr size
	.byte	118                     ## DW_OP_breg6
	.byte	96                      ## -32
	.quad	0
	.quad	0
Ldebug_loc10:
.set Lset60, Ltmp59-Lfunc_begin0
	.quad	Lset60
.set Lset61, Ltmp67-Lfunc_begin0
	.quad	Lset61
	.short	1                       ## Loc expr size
	.byte	83                      ## super-register DW_OP_reg3
	.quad	0
	.quad	0
Ldebug_loc11:
.set Lset62, Ltmp61-Lfunc_begin0
	.quad	Lset62
.set Lset63, Ltmp62-Lfunc_begin0
	.quad	Lset63
	.short	1                       ## Loc expr size
	.byte	80                      ## DW_OP_reg0
	.quad	0
	.quad	0
Ldebug_loc12:
.set Lset64, Ltmp63-Lfunc_begin0
	.quad	Lset64
.set Lset65, Ltmp64-Lfunc_begin0
	.quad	Lset65
	.short	1                       ## Loc expr size
	.byte	97                      ## DW_OP_reg17
	.quad	0
	.quad	0
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.ascii	"\202|"                 ## DW_AT_LLVM_sysroot
	.byte	14                      ## DW_FORM_strp
	.ascii	"\357\177"              ## DW_AT_APPLE_sdk
	.byte	14                      ## DW_FORM_strp
	.byte	16                      ## DW_AT_stmt_list
	.byte	23                      ## DW_FORM_sec_offset
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	13                      ## DW_TAG_member
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	56                      ## DW_AT_data_member_location
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	1                       ## DW_TAG_array_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	55                      ## DW_AT_count
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	122                     ## DW_AT_call_all_calls
	.byte	25                      ## DW_FORM_flag_present
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	23                      ## DW_FORM_sec_offset
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	72                      ## DW_TAG_call_site
	.byte	1                       ## DW_CHILDREN_yes
	.byte	127                     ## DW_AT_call_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	125                     ## DW_AT_call_return_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	73                      ## DW_TAG_call_site_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	2                       ## DW_AT_location
	.byte	24                      ## DW_FORM_exprloc
	.byte	126                     ## DW_AT_call_value
	.byte	24                      ## DW_FORM_exprloc
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	72                      ## DW_TAG_call_site
	.byte	0                       ## DW_CHILDREN_no
	.byte	127                     ## DW_AT_call_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	125                     ## DW_AT_call_return_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	19                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	60                      ## DW_AT_declaration
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	20                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	21                      ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	22                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	60                      ## DW_AT_declaration
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	23                      ## Abbreviation Code
	.byte	38                      ## DW_TAG_const_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	24                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	110                     ## DW_AT_linkage_name
	.byte	14                      ## DW_FORM_strp
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	5                       ## DW_FORM_data2
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	60                      ## DW_AT_declaration
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	25                      ## Abbreviation Code
	.byte	19                      ## DW_TAG_structure_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	11                      ## DW_AT_byte_size
	.byte	5                       ## DW_FORM_data2
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	26                      ## Abbreviation Code
	.byte	21                      ## DW_TAG_subroutine_type
	.byte	1                       ## DW_CHILDREN_yes
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	27                      ## Abbreviation Code
	.byte	33                      ## DW_TAG_subrange_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	55                      ## DW_AT_count
	.byte	5                       ## DW_FORM_data2
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	28                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	25                      ## DW_FORM_flag_present
	.byte	60                      ## DW_AT_declaration
	.byte	25                      ## DW_FORM_flag_present
	.byte	63                      ## DW_AT_external
	.byte	25                      ## DW_FORM_flag_present
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	29                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	0                       ## DW_CHILDREN_no
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	6                       ## DW_FORM_data4
	.byte	64                      ## DW_AT_frame_base
	.byte	24                      ## DW_FORM_exprloc
	.byte	110                     ## DW_AT_linkage_name
	.byte	14                      ## DW_FORM_strp
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	25                      ## DW_FORM_flag_present
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	30                      ## Abbreviation Code
	.byte	53                      ## DW_TAG_volatile_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
Lcu_begin0:
.set Lset66, Ldebug_info_end0-Ldebug_info_start0 ## Length of Unit
	.long	Lset66
Ldebug_info_start0:
	.short	4                       ## DWARF version number
.set Lset67, Lsection_abbrev-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset67
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x445 DW_TAG_compile_unit
	.long	0                       ## DW_AT_producer
	.short	12                      ## DW_AT_language
	.long	48                      ## DW_AT_name
	.long	61                      ## DW_AT_LLVM_sysroot
	.long	113                     ## DW_AT_APPLE_sdk
.set Lset68, Lline_table_start0-Lsection_line ## DW_AT_stmt_list
	.long	Lset68
	.long	124                     ## DW_AT_comp_dir
                                        ## DW_AT_APPLE_optimized
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset69, Lfunc_end4-Lfunc_begin0    ## DW_AT_high_pc
	.long	Lset69
	.byte	2                       ## Abbrev [2] 0x32:0x15 DW_TAG_variable
	.long	254                     ## DW_AT_name
	.long	71                      ## DW_AT_type
                                        ## DW_AT_external
	.byte	3                       ## DW_AT_decl_file
	.byte	28                      ## DW_AT_decl_line
	.byte	9                       ## DW_AT_location
	.byte	3
	.quad	_lock
	.byte	3                       ## Abbrev [3] 0x47:0xb DW_TAG_typedef
	.long	82                      ## DW_AT_type
	.long	259                     ## DW_AT_name
	.byte	2                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x52:0xb DW_TAG_typedef
	.long	93                      ## DW_AT_type
	.long	275                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	113                     ## DW_AT_decl_line
	.byte	4                       ## Abbrev [4] 0x5d:0x21 DW_TAG_structure_type
	.long	300                     ## DW_AT_name
	.byte	64                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	78                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x65:0xc DW_TAG_member
	.long	324                     ## DW_AT_name
	.long	126                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	79                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	5                       ## Abbrev [5] 0x71:0xc DW_TAG_member
	.long	339                     ## DW_AT_name
	.long	133                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	80                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x7e:0x7 DW_TAG_base_type
	.long	330                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	7                       ## Abbrev [7] 0x85:0xc DW_TAG_array_type
	.long	145                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x8a:0x6 DW_TAG_subrange_type
	.long	152                     ## DW_AT_type
	.byte	56                      ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x91:0x7 DW_TAG_base_type
	.long	348                     ## DW_AT_name
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	9                       ## Abbrev [9] 0x98:0x7 DW_TAG_base_type
	.long	353                     ## DW_AT_name
	.byte	8                       ## DW_AT_byte_size
	.byte	7                       ## DW_AT_encoding
	.byte	10                      ## Abbrev [10] 0x9f:0x1 DW_TAG_pointer_type
	.byte	11                      ## Abbrev [11] 0xa0:0x43 DW_TAG_subprogram
	.quad	Lfunc_begin0            ## DW_AT_low_pc
.set Lset70, Lfunc_end0-Lfunc_begin0    ## DW_AT_high_pc
	.long	Lset70
	.byte	1                       ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	373                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	159                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	12                      ## Abbrev [12] 0xb9:0xf DW_TAG_formal_parameter
.set Lset71, Ldebug_loc0-Lsection_debug_loc ## DW_AT_location
	.long	Lset71
	.long	680                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	40                      ## DW_AT_decl_line
	.long	159                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0xc8:0xf DW_TAG_variable
.set Lset72, Ldebug_loc1-Lsection_debug_loc ## DW_AT_location
	.long	Lset72
	.long	684                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	43                      ## DW_AT_decl_line
	.long	1054                    ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0xd7:0xb DW_TAG_variable
	.long	687                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	42                      ## DW_AT_decl_line
	.long	666                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	11                      ## Abbrev [11] 0xe3:0x43 DW_TAG_subprogram
	.quad	Lfunc_begin1            ## DW_AT_low_pc
.set Lset73, Lfunc_end1-Lfunc_begin1    ## DW_AT_high_pc
	.long	Lset73
	.byte	1                       ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	385                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	67                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	159                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	12                      ## Abbrev [12] 0xfc:0xf DW_TAG_formal_parameter
.set Lset74, Ldebug_loc2-Lsection_debug_loc ## DW_AT_location
	.long	Lset74
	.long	680                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	67                      ## DW_AT_decl_line
	.long	159                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x10b:0xf DW_TAG_variable
.set Lset75, Ldebug_loc3-Lsection_debug_loc ## DW_AT_location
	.long	Lset75
	.long	684                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	70                      ## DW_AT_decl_line
	.long	1054                    ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x11a:0xb DW_TAG_variable
	.long	687                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	69                      ## DW_AT_decl_line
	.long	666                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	11                      ## Abbrev [11] 0x126:0x15e DW_TAG_subprogram
	.quad	Lfunc_begin2            ## DW_AT_low_pc
.set Lset76, Lfunc_end2-Lfunc_begin2    ## DW_AT_high_pc
	.long	Lset76
	.byte	1                       ## DW_AT_frame_base
	.byte	86
                                        ## DW_AT_call_all_calls
	.long	397                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	95                      ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	666                     ## DW_AT_type
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	12                      ## Abbrev [12] 0x13f:0xf DW_TAG_formal_parameter
.set Lset77, Ldebug_loc4-Lsection_debug_loc ## DW_AT_location
	.long	Lset77
	.long	699                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	95                      ## DW_AT_decl_line
	.long	666                     ## DW_AT_type
	.byte	12                      ## Abbrev [12] 0x14e:0xf DW_TAG_formal_parameter
.set Lset78, Ldebug_loc5-Lsection_debug_loc ## DW_AT_location
	.long	Lset78
	.long	704                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	95                      ## DW_AT_decl_line
	.long	1064                    ## DW_AT_type
	.byte	15                      ## Abbrev [15] 0x15d:0xf DW_TAG_variable
	.byte	3                       ## DW_AT_location
	.byte	145
	.ascii	"\270\177"
	.long	689                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	99                      ## DW_AT_decl_line
	.long	678                     ## DW_AT_type
	.byte	15                      ## Abbrev [15] 0x16c:0xe DW_TAG_variable
	.byte	2                       ## DW_AT_location
	.byte	145
	.byte	72
	.long	695                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	99                      ## DW_AT_decl_line
	.long	678                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x17a:0xf DW_TAG_variable
.set Lset79, Ldebug_loc6-Lsection_debug_loc ## DW_AT_location
	.long	Lset79
	.long	709                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	97                      ## DW_AT_decl_line
	.long	666                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x189:0xf DW_TAG_variable
.set Lset80, Ldebug_loc7-Lsection_debug_loc ## DW_AT_location
	.long	Lset80
	.long	713                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	98                      ## DW_AT_decl_line
	.long	1074                    ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x198:0xf DW_TAG_variable
.set Lset81, Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset81
	.long	745                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	97                      ## DW_AT_decl_line
	.long	666                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x1a7:0xf DW_TAG_variable
.set Lset82, Ldebug_loc9-Lsection_debug_loc ## DW_AT_location
	.long	Lset82
	.long	749                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	98                      ## DW_AT_decl_line
	.long	1074                    ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x1b6:0xf DW_TAG_variable
.set Lset83, Ldebug_loc10-Lsection_debug_loc ## DW_AT_location
	.long	Lset83
	.long	752                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	97                      ## DW_AT_decl_line
	.long	666                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x1c5:0xf DW_TAG_variable
.set Lset84, Ldebug_loc11-Lsection_debug_loc ## DW_AT_location
	.long	Lset84
	.long	755                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	141                     ## DW_AT_decl_line
	.long	126                     ## DW_AT_type
	.byte	13                      ## Abbrev [13] 0x1d4:0xf DW_TAG_variable
.set Lset85, Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset85
	.long	761                     ## DW_AT_name
	.byte	3                       ## DW_AT_decl_file
	.byte	142                     ## DW_AT_decl_line
	.long	1096                    ## DW_AT_type
	.byte	16                      ## Abbrev [16] 0x1e3:0x1a DW_TAG_call_site
	.long	644                     ## DW_AT_call_origin
	.quad	Ltmp38                  ## DW_AT_call_return_pc
	.byte	17                      ## Abbrev [17] 0x1f0:0x5 DW_TAG_call_site_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.byte	1                       ## DW_AT_call_value
	.byte	48
	.byte	17                      ## Abbrev [17] 0x1f5:0x7 DW_TAG_call_site_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.byte	3                       ## DW_AT_call_value
	.byte	145
	.ascii	"\270\177"
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x1fd:0x13 DW_TAG_call_site
	.long	744                     ## DW_AT_call_origin
	.quad	Ltmp40                  ## DW_AT_call_return_pc
	.byte	17                      ## Abbrev [17] 0x20a:0x5 DW_TAG_call_site_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.byte	1                       ## DW_AT_call_value
	.byte	48
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x210:0x13 DW_TAG_call_site
	.long	827                     ## DW_AT_call_origin
	.quad	Ltmp52                  ## DW_AT_call_return_pc
	.byte	17                      ## Abbrev [17] 0x21d:0x5 DW_TAG_call_site_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.byte	1                       ## DW_AT_call_value
	.byte	48
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x223:0x13 DW_TAG_call_site
	.long	827                     ## DW_AT_call_origin
	.quad	Ltmp56                  ## DW_AT_call_return_pc
	.byte	17                      ## Abbrev [17] 0x230:0x5 DW_TAG_call_site_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.byte	1                       ## DW_AT_call_value
	.byte	48
	.byte	0                       ## End Of Children Mark
	.byte	16                      ## Abbrev [16] 0x236:0x19 DW_TAG_call_site
	.long	644                     ## DW_AT_call_origin
	.quad	Ltmp60                  ## DW_AT_call_return_pc
	.byte	17                      ## Abbrev [17] 0x243:0x5 DW_TAG_call_site_parameter
	.byte	1                       ## DW_AT_location
	.byte	84
	.byte	1                       ## DW_AT_call_value
	.byte	48
	.byte	17                      ## Abbrev [17] 0x248:0x6 DW_TAG_call_site_parameter
	.byte	1                       ## DW_AT_location
	.byte	85
	.byte	2                       ## DW_AT_call_value
	.byte	145
	.byte	72
	.byte	0                       ## End Of Children Mark
	.byte	18                      ## Abbrev [18] 0x24f:0xd DW_TAG_call_site
	.long	985                     ## DW_AT_call_origin
	.quad	Ltmp71                  ## DW_AT_call_return_pc
	.byte	18                      ## Abbrev [18] 0x25c:0xd DW_TAG_call_site
	.long	985                     ## DW_AT_call_origin
	.quad	Ltmp75                  ## DW_AT_call_return_pc
	.byte	18                      ## Abbrev [18] 0x269:0xd DW_TAG_call_site
	.long	1008                    ## DW_AT_call_origin
	.quad	Ltmp77                  ## DW_AT_call_return_pc
	.byte	18                      ## Abbrev [18] 0x276:0xd DW_TAG_call_site
	.long	1031                    ## DW_AT_call_origin
	.quad	Ltmp78                  ## DW_AT_call_return_pc
	.byte	0                       ## End Of Children Mark
	.byte	19                      ## Abbrev [19] 0x284:0x16 DW_TAG_subprogram
	.long	402                     ## DW_AT_name
	.byte	4                       ## DW_AT_decl_file
	.byte	197                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	666                     ## DW_AT_type
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	20                      ## Abbrev [20] 0x28f:0x5 DW_TAG_formal_parameter
	.long	673                     ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x294:0x5 DW_TAG_formal_parameter
	.long	159                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	6                       ## Abbrev [6] 0x29a:0x7 DW_TAG_base_type
	.long	415                     ## DW_AT_name
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	21                      ## Abbrev [21] 0x2a1:0x5 DW_TAG_pointer_type
	.long	678                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x2a6:0x21 DW_TAG_structure_type
	.long	419                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	6                       ## DW_AT_decl_file
	.byte	34                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x2ae:0xc DW_TAG_member
	.long	427                     ## DW_AT_name
	.long	711                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	36                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	5                       ## Abbrev [5] 0x2ba:0xc DW_TAG_member
	.long	450                     ## DW_AT_name
	.long	722                     ## DW_AT_type
	.byte	6                       ## DW_AT_decl_file
	.byte	37                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	3                       ## Abbrev [3] 0x2c7:0xb DW_TAG_typedef
	.long	126                     ## DW_AT_type
	.long	434                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	120                     ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x2d2:0xb DW_TAG_typedef
	.long	733                     ## DW_AT_type
	.long	458                     ## DW_AT_name
	.byte	7                       ## DW_AT_decl_file
	.byte	74                      ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x2dd:0xb DW_TAG_typedef
	.long	666                     ## DW_AT_type
	.long	479                     ## DW_AT_name
	.byte	5                       ## DW_AT_decl_file
	.byte	44                      ## DW_AT_decl_line
	.byte	22                      ## Abbrev [22] 0x2e8:0x17 DW_TAG_subprogram
	.long	489                     ## DW_AT_name
	.byte	8                       ## DW_AT_decl_file
	.short	376                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	666                     ## DW_AT_type
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	20                      ## Abbrev [20] 0x2f4:0x5 DW_TAG_formal_parameter
	.long	767                     ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x2f9:0x5 DW_TAG_formal_parameter
	.long	772                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x2ff:0x5 DW_TAG_pointer_type
	.long	93                      ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x304:0x5 DW_TAG_pointer_type
	.long	777                     ## DW_AT_type
	.byte	23                      ## Abbrev [23] 0x309:0x5 DW_TAG_const_type
	.long	782                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x30e:0x21 DW_TAG_structure_type
	.long	508                     ## DW_AT_name
	.byte	16                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	83                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x316:0xc DW_TAG_member
	.long	324                     ## DW_AT_name
	.long	126                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	84                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	5                       ## Abbrev [5] 0x322:0xc DW_TAG_member
	.long	339                     ## DW_AT_name
	.long	815                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	85                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	7                       ## Abbrev [7] 0x32f:0xc DW_TAG_array_type
	.long	145                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0x334:0x6 DW_TAG_subrange_type
	.long	152                     ## DW_AT_type
	.byte	8                       ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	24                      ## Abbrev [24] 0x33b:0x1b DW_TAG_subprogram
	.long	536                     ## DW_AT_linkage_name
	.long	550                     ## DW_AT_name
	.byte	8                       ## DW_AT_decl_file
	.short	359                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
	.long	666                     ## DW_AT_type
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	20                      ## Abbrev [20] 0x34b:0x5 DW_TAG_formal_parameter
	.long	854                     ## DW_AT_type
	.byte	20                      ## Abbrev [20] 0x350:0x5 DW_TAG_formal_parameter
	.long	980                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x356:0x5 DW_TAG_pointer_type
	.long	859                     ## DW_AT_type
	.byte	25                      ## Abbrev [25] 0x35b:0x2e DW_TAG_structure_type
	.long	563                     ## DW_AT_name
	.short	8192                    ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	103                     ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x364:0xc DW_TAG_member
	.long	324                     ## DW_AT_name
	.long	126                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	104                     ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	5                       ## Abbrev [5] 0x370:0xc DW_TAG_member
	.long	581                     ## DW_AT_name
	.long	905                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	105                     ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	5                       ## Abbrev [5] 0x37c:0xc DW_TAG_member
	.long	339                     ## DW_AT_name
	.long	967                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	106                     ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x389:0x5 DW_TAG_pointer_type
	.long	910                     ## DW_AT_type
	.byte	4                       ## Abbrev [4] 0x38e:0x2d DW_TAG_structure_type
	.long	597                     ## DW_AT_name
	.byte	24                      ## DW_AT_byte_size
	.byte	1                       ## DW_AT_decl_file
	.byte	57                      ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x396:0xc DW_TAG_member
	.long	626                     ## DW_AT_name
	.long	955                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	58                      ## DW_AT_decl_line
	.byte	0                       ## DW_AT_data_member_location
	.byte	5                       ## Abbrev [5] 0x3a2:0xc DW_TAG_member
	.long	636                     ## DW_AT_name
	.long	159                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	59                      ## DW_AT_decl_line
	.byte	8                       ## DW_AT_data_member_location
	.byte	5                       ## Abbrev [5] 0x3ae:0xc DW_TAG_member
	.long	642                     ## DW_AT_name
	.long	905                     ## DW_AT_type
	.byte	1                       ## DW_AT_decl_file
	.byte	60                      ## DW_AT_decl_line
	.byte	16                      ## DW_AT_data_member_location
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x3bb:0x5 DW_TAG_pointer_type
	.long	960                     ## DW_AT_type
	.byte	26                      ## Abbrev [26] 0x3c0:0x7 DW_TAG_subroutine_type
                                        ## DW_AT_prototyped
	.byte	20                      ## Abbrev [20] 0x3c1:0x5 DW_TAG_formal_parameter
	.long	159                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	7                       ## Abbrev [7] 0x3c7:0xd DW_TAG_array_type
	.long	145                     ## DW_AT_type
	.byte	27                      ## Abbrev [27] 0x3cc:0x7 DW_TAG_subrange_type
	.long	152                     ## DW_AT_type
	.short	8176                    ## DW_AT_count
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x3d4:0x5 DW_TAG_pointer_type
	.long	159                     ## DW_AT_type
	.byte	28                      ## Abbrev [28] 0x3d9:0xd DW_TAG_subprogram
	.long	649                     ## DW_AT_name
	.byte	9                       ## DW_AT_decl_file
	.byte	169                     ## DW_AT_decl_line
                                        ## DW_AT_prototyped
                                        ## DW_AT_declaration
                                        ## DW_AT_external
                                        ## DW_AT_APPLE_optimized
	.byte	20                      ## Abbrev [20] 0x3e0:0x5 DW_TAG_formal_parameter
	.long	998                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	21                      ## Abbrev [21] 0x3e6:0x5 DW_TAG_pointer_type
	.long	1003                    ## DW_AT_type
	.byte	23                      ## Abbrev [23] 0x3eb:0x5 DW_TAG_const_type
	.long	145                     ## DW_AT_type
	.byte	29                      ## Abbrev [29] 0x3f0:0x17 DW_TAG_subprogram
	.quad	Lfunc_begin4            ## DW_AT_low_pc
.set Lset86, Lfunc_end4-Lfunc_begin4    ## DW_AT_high_pc
	.long	Lset86
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	668                     ## DW_AT_linkage_name
	.long	668                     ## DW_AT_name
                                        ## DW_AT_APPLE_optimized
	.byte	29                      ## Abbrev [29] 0x407:0x17 DW_TAG_subprogram
	.quad	Lfunc_begin3            ## DW_AT_low_pc
.set Lset87, Lfunc_end3-Lfunc_begin3    ## DW_AT_high_pc
	.long	Lset87
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.long	656                     ## DW_AT_linkage_name
	.long	656                     ## DW_AT_name
                                        ## DW_AT_APPLE_optimized
	.byte	21                      ## Abbrev [21] 0x41e:0x5 DW_TAG_pointer_type
	.long	1059                    ## DW_AT_type
	.byte	30                      ## Abbrev [30] 0x423:0x5 DW_TAG_volatile_type
	.long	666                     ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x428:0x5 DW_TAG_pointer_type
	.long	1069                    ## DW_AT_type
	.byte	21                      ## Abbrev [21] 0x42d:0x5 DW_TAG_pointer_type
	.long	145                     ## DW_AT_type
	.byte	3                       ## Abbrev [3] 0x432:0xb DW_TAG_typedef
	.long	1085                    ## DW_AT_type
	.long	716                     ## DW_AT_name
	.byte	10                      ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.byte	3                       ## Abbrev [3] 0x43d:0xb DW_TAG_typedef
	.long	854                     ## DW_AT_type
	.long	726                     ## DW_AT_name
	.byte	1                       ## DW_AT_decl_file
	.byte	118                     ## DW_AT_decl_line
	.byte	6                       ## Abbrev [6] 0x448:0x7 DW_TAG_base_type
	.long	771                     ## DW_AT_name
	.byte	4                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	0                       ## End Of Children Mark
Ldebug_info_end0:
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	6                       ## Header Bucket Count
	.long	6                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	-1                      ## Bucket 1
	.long	-1                      ## Bucket 2
	.long	1                       ## Bucket 3
	.long	2                       ## Bucket 4
	.long	-1                      ## Bucket 5
	.long	647281140               ## Hash in Bucket 0
	.long	1261628793              ## Hash in Bucket 3
	.long	1261628794              ## Hash in Bucket 4
	.long	2090479054              ## Hash in Bucket 4
	.long	2090499946              ## Hash in Bucket 4
	.long	-440181150              ## Hash in Bucket 4
.set Lset88, LNames5-Lnames_begin       ## Offset in Bucket 0
	.long	Lset88
.set Lset89, LNames0-Lnames_begin       ## Offset in Bucket 3
	.long	Lset89
.set Lset90, LNames2-Lnames_begin       ## Offset in Bucket 4
	.long	Lset90
.set Lset91, LNames3-Lnames_begin       ## Offset in Bucket 4
	.long	Lset91
.set Lset92, LNames1-Lnames_begin       ## Offset in Bucket 4
	.long	Lset92
.set Lset93, LNames4-Lnames_begin       ## Offset in Bucket 4
	.long	Lset93
LNames5:
	.long	385                     ## decrease_fn
	.long	1                       ## Num DIEs
	.long	227
	.long	0
LNames0:
	.long	656                     ## main.cold.1
	.long	1                       ## Num DIEs
	.long	1031
	.long	0
LNames2:
	.long	668                     ## main.cold.2
	.long	1                       ## Num DIEs
	.long	1008
	.long	0
LNames3:
	.long	254                     ## lock
	.long	1                       ## Num DIEs
	.long	50
	.long	0
LNames1:
	.long	397                     ## main
	.long	1                       ## Num DIEs
	.long	294
	.long	0
LNames4:
	.long	373                     ## increase_fn
	.long	1                       ## Num DIEs
	.long	160
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	8                       ## Header Bucket Count
	.long	17                      ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	4                       ## Bucket 1
	.long	7                       ## Bucket 2
	.long	9                       ## Bucket 3
	.long	12                      ## Bucket 4
	.long	13                      ## Bucket 5
	.long	14                      ## Bucket 6
	.long	16                      ## Bucket 7
	.long	193495088               ## Hash in Bucket 0
	.long	1297205472              ## Hash in Bucket 0
	.long	-1880351968             ## Hash in Bucket 0
	.long	-113419488              ## Hash in Bucket 0
	.long	77135977                ## Hash in Bucket 1
	.long	-1308701839             ## Hash in Bucket 1
	.long	-243996567              ## Hash in Bucket 1
	.long	519921938               ## Hash in Bucket 2
	.long	1595644866              ## Hash in Bucket 2
	.long	2090147939              ## Hash in Bucket 3
	.long	-594775205              ## Hash in Bucket 3
	.long	-461612197              ## Hash in Bucket 3
	.long	-565815948              ## Hash in Bucket 4
	.long	2065860549              ## Hash in Bucket 5
	.long	1015836598              ## Hash in Bucket 6
	.long	1950534918              ## Hash in Bucket 6
	.long	-503405833              ## Hash in Bucket 7
.set Lset94, Ltypes5-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset94
.set Lset95, Ltypes14-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset95
.set Lset96, Ltypes13-Ltypes_begin      ## Offset in Bucket 0
	.long	Lset96
.set Lset97, Ltypes4-Ltypes_begin       ## Offset in Bucket 0
	.long	Lset97
.set Lset98, Ltypes3-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset98
.set Lset99, Ltypes6-Ltypes_begin       ## Offset in Bucket 1
	.long	Lset99
.set Lset100, Ltypes2-Ltypes_begin      ## Offset in Bucket 1
	.long	Lset100
.set Lset101, Ltypes7-Ltypes_begin      ## Offset in Bucket 2
	.long	Lset101
.set Lset102, Ltypes15-Ltypes_begin     ## Offset in Bucket 2
	.long	Lset102
.set Lset103, Ltypes16-Ltypes_begin     ## Offset in Bucket 3
	.long	Lset103
.set Lset104, Ltypes12-Ltypes_begin     ## Offset in Bucket 3
	.long	Lset104
.set Lset105, Ltypes11-Ltypes_begin     ## Offset in Bucket 3
	.long	Lset105
.set Lset106, Ltypes8-Ltypes_begin      ## Offset in Bucket 4
	.long	Lset106
.set Lset107, Ltypes0-Ltypes_begin      ## Offset in Bucket 5
	.long	Lset107
.set Lset108, Ltypes9-Ltypes_begin      ## Offset in Bucket 6
	.long	Lset108
.set Lset109, Ltypes1-Ltypes_begin      ## Offset in Bucket 6
	.long	Lset109
.set Lset110, Ltypes10-Ltypes_begin     ## Offset in Bucket 7
	.long	Lset110
Ltypes5:
	.long	415                     ## int
	.long	1                       ## Num DIEs
	.long	666
	.short	36
	.byte	0
	.long	0
Ltypes14:
	.long	716                     ## pthread_t
	.long	1                       ## Num DIEs
	.long	1074
	.short	22
	.byte	0
	.long	0
Ltypes13:
	.long	330                     ## long int
	.long	1                       ## Num DIEs
	.long	126
	.short	36
	.byte	0
	.long	0
Ltypes4:
	.long	771                     ## double
	.long	1                       ## Num DIEs
	.long	1096
	.short	36
	.byte	0
	.long	0
Ltypes3:
	.long	563                     ## _opaque_pthread_t
	.long	1                       ## Num DIEs
	.long	859
	.short	19
	.byte	0
	.long	0
Ltypes6:
	.long	458                     ## __darwin_suseconds_t
	.long	1                       ## Num DIEs
	.long	722
	.short	22
	.byte	0
	.long	0
Ltypes2:
	.long	434                     ## __darwin_time_t
	.long	1                       ## Num DIEs
	.long	711
	.short	22
	.byte	0
	.long	0
Ltypes7:
	.long	259                     ## pthread_mutex_t
	.long	1                       ## Num DIEs
	.long	71
	.short	22
	.byte	0
	.long	0
Ltypes15:
	.long	726                     ## __darwin_pthread_t
	.long	1                       ## Num DIEs
	.long	1085
	.short	22
	.byte	0
	.long	0
Ltypes16:
	.long	348                     ## char
	.long	1                       ## Num DIEs
	.long	145
	.short	36
	.byte	0
	.long	0
Ltypes12:
	.long	353                     ## __ARRAY_SIZE_TYPE__
	.long	1                       ## Num DIEs
	.long	152
	.short	36
	.byte	0
	.long	0
Ltypes11:
	.long	300                     ## _opaque_pthread_mutex_t
	.long	1                       ## Num DIEs
	.long	93
	.short	19
	.byte	0
	.long	0
Ltypes8:
	.long	275                     ## __darwin_pthread_mutex_t
	.long	1                       ## Num DIEs
	.long	82
	.short	22
	.byte	0
	.long	0
Ltypes0:
	.long	597                     ## __darwin_pthread_handler_rec
	.long	1                       ## Num DIEs
	.long	910
	.short	19
	.byte	0
	.long	0
Ltypes9:
	.long	508                     ## _opaque_pthread_mutexattr_t
	.long	1                       ## Num DIEs
	.long	782
	.short	19
	.byte	0
	.long	0
Ltypes1:
	.long	479                     ## __int32_t
	.long	1                       ## Num DIEs
	.long	733
	.short	22
	.byte	0
	.long	0
Ltypes10:
	.long	419                     ## timeval
	.long	1                       ## Num DIEs
	.long	678
	.short	19
	.byte	0
	.long	0
.subsections_via_symbols
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
Lline_table_start0:
