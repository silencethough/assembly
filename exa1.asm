section .data
        msg db 'This is %d', 10
section .text
extern printf
global main
main:
        push rbp
        mov rbp, rsp
        sub rsp, 16
        mov [rbp -4], dword 4
        mov rsi, dword 4
        mov rdi, msg
        call printf
        xor rax, rax

        leave
        ret
