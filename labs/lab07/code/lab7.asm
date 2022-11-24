;--------------------------------
; Программа вычисления варианта
;--------------------------------
%include 'in_out.asm'

SECTION .data
msg: DB 'x: ',0
rem: DB 'Ответ: ',0 	

SECTION .bss 	
x: 	RESB 80 	

SECTION .text
GLOBAL _start 	
_start:
	mov eax, msg
	call sprintLF

	mov ecx, x
	mov edx, 80
	call sread

	mov eax,x ; вызов подпрограммы преобразования
	call atoi ; ASCII кода в число, `eax=x`

	mov edx, 8
	mul edx
	mov edx, 6
	add eax, edx
	mov edx, 10
	mul edx
	mov edx, eax

	mov eax,rem
	call sprint
	mov eax,edx
	call iprintLF

	call quit

