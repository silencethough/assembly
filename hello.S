        .section .rodata
.LC0:
        .string "This is %ld\n"
        .text
        .globl main
        .type main, @function
main:
       	pushq %rbp
	movq %rsp, %rbp
        subq $16, %rsp
        movq $4, -16(%rbp)
        movq -16(%rbp), %rsi
        leaq .LC0(%rip), %rdi
        xorq %rax, %rax
        call printf@PLT
        xorq %rax, %rax
        leave
        ret
