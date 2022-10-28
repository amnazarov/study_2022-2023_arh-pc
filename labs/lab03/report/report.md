---
## Front matter
title: "Отчет по лабораторной работе № 3"
subtitle: "Архитектура компьютера"
author: "Назаров Алексей Михайлович"

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
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цели и задачи

1. Ознакомиться с системой контроля версий GIT.
2. Изучить идеологию применения средств контроля версий.

# Выполнение лабораторной работы

## Изменим настройки GIT с помощью git config

(рис. [-@fig:001])

![git config](image/1.png){ #fig:001 width=70% }

## Создание SSH ключей

Сгенерируем ключи (рис. [-@fig:002])

![Создание SSH ключей](image/2.png){ #fig:002 width=70% }

Созданные ключи находятся в директории ~/.ssh c.

## Скопируем публичный ключ коммандой:

(рис. [-@fig:003])

![Скопируем публичный ключ](image/3.png){ #fig:003 width=70% }

## Добавим публичный ключ на GitHub

Создадим аккаунт на GitHub и добавим Ssh ключ. (рис. [-@fig:004])

![Окно создания задания логина и пароля на гитхабе](image/4.png){ #fig:004 width=70% }

Откроем вкладку SSH and GPG keys, перейдя в настройки. (рис. [-@fig:005])

![New SSH key](image/5.png){ #fig:005 width=70% }

## Добавим публичный ключ

(рис. [-@fig:006])

![Добавление нового SSH Ключа](image/6.png){ #fig:006 width=70% }

## Откроем терминал и создадим рабочее пространство и каталог для предмета «Архитектура компьютера»

(рис. [-@fig:007])

![Создание рабочего пространствa](image/7.png){ #fig:007 width=70% }

## Создадим новый репозиторий из шаблона

(рис. [-@fig:008])

![Создание из шаблона](image/8.png){ #fig:008 width=70% }

## Перейдем в каталог курса и склонируем репозиторий

(рис. [-@fig:009])

![Клонирование репозитоиия c GitHub](image/9.png){ #fig:009 width=70% }

Теперь каталог курса находится в arch-pc.

## Настроим содержимое курса

Удалим файл package.json. (рис. [-@fig:010])

![rm package.json](image/10.png){ #fig:010 width=70% }

Создадим необходимые каталоги. (рис. [-@fig:011])

![cоздание файла COURSE и выполнение комманды make](image/11.png){ #fig:011 width=70% }

Исполнив комманду ls, мы проверили что package.json удалился, а
COURSE создался. Также, после выполнения команды make, создался
каталог labs.

## Отправим файлы на сервер

(рис. [-@fig:012]), (рис. [-@fig:013]), (рис. [-@fig:014])

![git add .](image/12.png){ #fig:012 width=70% }

![Git commit](image/13.png){ #fig:013 width=70% }

![Git push](image/14.png){ #fig:014 width=70% }

## Перейдем на страницу репозитория на GitHub и проверим правильность

(рис. [-@fig:015])

![Страница репозитория на GitHub](image/15.png){ #fig:015 width=70% }

Видим, что последние изменения 6 минут назад и появился каталог labs.

# Задания для самостоятельной работы

## Создадим отчет по выполнению лабораторной работы в соответствующем каталоге рабочего пространства

(рис. [-@fig:016])

![Копирование третьей лабораторной в рабочее пространство](image/16.png){ #fig:016 width=70% }

Я создаю отчет во время выполнения лабораторной работы, поэтому нужно
просто его переместить в папку с отчетами.

## Скопируем отчеты о предыдущих работах в соответствующий каталог рабочего пространства.

(рис. [-@fig:017])

![Kопирование лабораторных 1 и 2 в рабочее пространство](image/17.png){ #fig:017 width=70% }

Теперь предыдущие отчеты лежат в папке report каталогов lab02 и lab03.
Так как я находился в каталоге lab03, я указазывал относительные пути
../../lab02/report и ../../lab01/report, что бы не писать полные пути.

## Загрузим файлы на GitHub

Для этого вернемся из lab03 в arch-pc и выполним комманду git add. (рис. [-@fig:018])

![Комманда git add --all](image/18.png){ #fig:018 width=70% }

Я использовал опцию —all, что бы добавить все изменения.

Выполним комманду git commit что бы сохранить изменения. (рис. [-@fig:019])

![Коммит с названием «Добавил отчеты 01 и 02»](image/19.png){ #fig:019 width=70% }

Загрузим изменения на GitHub. рис. [-@fig:020])

![Создание коммита с сообщением "Add previous lab reports"](image/20.png){ #fig:020 width=70% }

## Выводы

При проведении лабораторной работы, мы ознакомились с системой
контроля версий GIT, изучили идеологию применения VCS, создали
репозиторий из шаблона, внесли в него некоторые изменения и добавили
свои отчеты.





