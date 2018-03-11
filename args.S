        .section .rodata
.LC0:
        .string "FIRST\n%s\n%s\n%s\n%s\n%s\n%d\n%d\n%d\n%d\n"
.LC1:
        .string "TWO"
.LC2:
        .string "THREE"
.LC3:
        .string "FOUR"
.LC4:
        .string "FIVE"
.LC5:
        .string "SIX"

        .text
        .globl main
        .type main, @function
main:
        pushq %rbp
        movq %rsp, %rbp
        push $10
        push $9
        push $8
        push $7
        leaq .LC0(%rip), %rdi
        leaq .LC1(%rip), %rsi
        leaq .LC2(%rip), %rdx
        leaq .LC3(%rip), %rcx
        leaq .LC4(%rip), %r8
        leaq .LC5(%rip), %r9
        xorq %rax, %rax
        call printf@PLT
        xorq %rax, %rax
        leave
        ret


