        ; x64 abi requires that stack shall be aligned on 16 byte boundary

        ; it is recommended that any function should have at most six arguments

section .data
        msg db 'This is', 10, '%d', 10, '%s%s%s%s%s%s%s', 0
        sen db 'third arg', 10, 0
        ten db 'fourth arg', 10, 0
        fen db 'fifth arg', 10, 0
        ien db 'sixth arg', 10, 0
        xen db 'seventh arg', 10, 0
        yen db 'eighth arg', 10, 0
        zen db 'ninth arg', 10, 0
section .text
extern printf
global main
main:
        push rbp
        mov rbp, rsp
        sub rsp, 16
        mov [rbp -4], dword 4
        mov rdi, msg            ;first argument
        mov rsi, dword 4        ;second argument
        mov rdx, sen            ;third argument
        mov rcx, ten            ;fourth argument
        mov r8, fen             ;fifth argument
        mov r9, ien             ;sixth argument

        sub rsp, 8              ;16 byte alignment
        mov rax, zen
        push rax                ;seventh argument
        mov rax, yen
        push rax                ;eighth argument
        mov rax, xen
        push rax                ;ninth argument
        call printf
        xor rax, rax

        leave
        ret
