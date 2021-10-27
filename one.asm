section .text
global _start

_start:
mov eax, 4
mov ebx, 1
mov ecx, msg0
mov edx, len0
int 80h

mov eax, 3
mov ebx, 2
mov ecx, num
mov edx, 5
int 80h

mov eax, 4
mov ebx, 1
mov ecx, msg1
mov edx, len1
int 80h

mov eax, 4
mov ebx, 1
mov ecx, num,
mov edx, 5
int 80h

mov eax, 1
mov ebx, 0
int 80h


section .data
msg0 db "Enter a Number: "
len0 equ $ - msg0
msg1 db "Your Number: "
len1 equ $ - msg1

section .bss
num resb 5
