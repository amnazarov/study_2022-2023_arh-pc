%include 'in_out.asm'


SECTION .data
func db "Функция: f(x)=12x-7",0
msg db "Результат: ",0
SECTION .text

global _start

_start:
  pop ecx   ; Извлекаем из стека в `ecx` количество
            ; аргументов (первое значение в стеке)
  pop edx   ; Извлекаем из стека в `edx` имя программы
            ; (второе значение в стеке)
  sub ecx,1 ; Уменьшаем `ecx` на 1 (количество
            ; аргументов без названия программы)
  mov esi, 0 ; Используем `esi` для хранения
            ; промежуточных сумм
  mov eax, func

  call sprintLF


next:
  cmp ecx,0h
  jz _end 
          
  pop eax 
  call atoi 

  push ecx
  mov ecx,12
  mul ecx
  sub eax, 7
  pop ecx

  add esi,eax 
  
  loop next 
  
_end:

  mov eax, msg ; вывод сообщения "Результат: "
  call sprint
  mov eax, esi ; записываем сумму в регистр `eax`
  call iprintLF ; печать результата

  call quit ; завершение программы

