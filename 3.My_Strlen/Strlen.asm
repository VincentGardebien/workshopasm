BITS 64

section .text
    global my_Strlen

my_Strlen:
    xor rcx, rcx
loop_strlen:
    cmp byte[rdi + rcx], 0
    je end_stren
    inc rcx
    jmp loop_strlen

end_stren:
    mov rax, rcx
    ret
