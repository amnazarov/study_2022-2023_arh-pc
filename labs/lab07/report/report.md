---
## Front matter
title: "Лабораторная работа №7.Арифметические Операции в NASM "
subtitle: "Архитектура ЭВМ"
author: "Алексей Назаров НММбд-02-22"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоение арифметических инструкций языка ассемблера NASM.

# Выполнение лабораторной работы


Создадим каталог и перейдем в него. Создадим `lab7-1.asm`

![Создание `lab-1.asm`](image/1.png){ #fig:001 width=70% }

## Складывание строк

Введем текст листинга в файл 

![Текст в lab-1.asm](image/2.png){ #fig:002 width=70% }

Оттранслируем, слинкуем и запустим

![Компиляция  и запуск кода](image/3.png){ #fig:003 width=70% }

Вывелось "j" 

## Складывание чисел

Уберем ковычки и скомпилируем 

![Выполнение кода](image/4.png){ #fig:004 width=70% }

Вывелся перенос строки (его символ 10)

## Программа вывода значение регистра eax

### Создадим фалй lab7-2.asm

![Создание фалйа lab7-2.asm](image/5.png){ #fig:005 width=70% }

Введем код

![Код lab7-2.asm](image/6.png){ #fig:006 width=70% }

Скомпилируем и запустим 

![Компиляция и запуск](image/7.png){ #fig:007 width=70% }

Программа вывела 106, так как мы суммируем адрессы двух строк

### Заменим sprintLF на iprintLF

![Запуск измененной программы ](image/8.png){ #fig:008 width=70% }

Вывелось 10

Заменим iprintLF на iprint

![Запуск ./lab7-2](image/9.png){ #fig:009 width=70% }

Вывелось 10, без перевода строки

## Программа для вычесления выражения f(x)

Создадим файл lab7-3.asm

![Создание файла `lab7-3.asm`](image/10.png){ #fig:010 width=70% }

Скомпиллируем и  запустим Код. 

![Компиляция и запуск `lab7-3.asm`](image/11.png){ #fig:011 width=70% }

## Вычисления выражения f(x) = (4*6 + 2)/5

Заменим числа на 4, 6, 2 и 5

![Изменения кода для вычесления другой функции](image/12.png){ #fig:012 width=70% }

Скомпилируем и запустим

![Вывод  lab7-3.asm](image/13.png){ #fig:013 width=70% }

## Вычесление варианта по студенческому билеты

Создадим файл `variant.asm` с текстом листинга `7.4` 

![Код variant.asm](image/14.png){ #fig:014 width=70% }

1. Для вывода  "Ваш вариант" используются стоки 31-32 

2. инструкции на строка 19-21  используется для ввода текста в `x` из консоли

3. call atoi используется для преобразования ACII кода в число 

4. За вычисление варианта отвечают строки 26-29 

5. Остаток от деления записывается в edx

6.  `inc edx` увеличивает значение edx на 1

7.  За вывод результата вычислений отвечают строки 33-34 (выделенно желтым)


Запустим программу и узнаем номер варианта


![Запуск программы по вычислению варианта](image/15.png){ #fig:015 width=70% }

Получили 13

# Задания для самостоятельной работы

Написать программу для вычисления (8x+6)*10 

Напишем, код, который будет вычислять это выражение

![Код, вычисления выражения (8x+6) * 10](image/16.png){ #fig:016 width=70% }

Запустим код и введем туда 1 и 4

![Результаты для 1 и 4](image/17.png){ #fig:017 width=70% }


# Выводы

Мы освоили арифмитические операции в NASM 
