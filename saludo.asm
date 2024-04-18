section .data
    hello db 'Hello, world!',0

section .text
    global _start

_start:
    ; Escribe el mensaje en la consola
    mov eax, 4
    mov ebx, 1
    mov ecx, hello
    mov edx, 13
    int 0x80

    ; Sal del programa
    mov eax, 1
    int 0x80
