%include "in_out.asm"

section .data
  msg1 db "x: ",0h
  msg2 db "a: ",0h
  msg3 db "Ответ: ",0h
section .bss
  A resb 20
  X resb 20
  ans  resb 20
section .text

GLOBAL _start

_start:

	mov eax, msg1 
	call sprintLF ; выводим msg1

	mov ecx, X
	mov edx, 20
	call sread
	mov eax, X
	call atoi
	mov [X], eax	; Записываем ввод в виде числа в   X

	mov eax, msg2
	call sprintLF 	; Выводим msg2

	mov ecx, A
	mov edx, 20
	call sread
	mov eax, A
	call atoi
	mov [A], eax 	; Записсываем ввод в виде числа в A

.else:

	xor ecx, ecx
	mov ecx, [A]
	cmp ecx, 7
	jge .if		; Если A больше 7 переходим на .if

	xor eax, eax
	mov eax, [A]

	mul byte [X]	; Умножаем A на X

	je .final

.if:
	xor eax, eax
	mov eax, [A]
	sub eax, 7	; А - 7	

.final:	

	push eax
	mov eax, msg3
	call sprintLF
	pop eax
	
	call iprintLF

	call quit			

