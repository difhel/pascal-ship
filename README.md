> **Это архив моей проектной работы, и, возможно, моего первого open source проекта от 2021 года. Этот репозиторий архивирован и не может быть использован для реальных вычислений, поскольку используемая модель не годится для научных вычислений.**

<img src="https://github.com/nightadmin/pascal-ship/blob/main/index.jpg" height=200 width=200>

# pascal-ship
Программа для моделирования процесса погружения подводной лодки по её характеристикам, характеристикам жидкости и времени погружения.
# Оглавление 
 - [Описание проектной работы](https://github.com/nightadmin/pascal-ship/blob/main/README.md#описание-проектной-работы)
 - [Теория](https://github.com/nightadmin/pascal-ship/blob/main/README.md#теория)
 - [Описание работы программы](https://github.com/nightadmin/pascal-ship/blob/main/README.md#описание-работы-программы)
 - [Установка программы](https://github.com/nightadmin/pascal-ship/blob/main/README.md#установка-программы)
 - [Разработчик](https://github.com/nightadmin/pascal-ship/blob/main/README.md#разработчик)
# Описание проектной работы 

Программа, которой посвящен репозиторий, является итоговым результатом проектной работы [Марка Фомина](https://github.com/nightadmin) по моделированию процесса погружения подводной лодки на примере рассмотрения процесса погружения подлодки проекта 941 "Акула", в рамках которой былы собраны некоторые теоретические и исторические данные касательно данной темы, а такде была разработана программа, которая высчитывает глубину погружения подлодки по следующим характеристикам: время погружения, коэффициент вязкости воды, масса и объём подлодки, плотность воды. По полученным данным можно, используя табличный процессор (например, Microsoft Excel), составить график глубины погружения от времени.

# Теория
На лодку действуют следующие силы:
* сила тяжести
* сила Архимеда
* сила сопротивления жидкости.

<img src="https://github.com/nightadmin/pascal-ship/blob/main/forces.png" alt="Силы, действующие на лодку">

Они высчитываются по легко находящимся в Интернете формулам. Для рассмотрения процесса погружения нам необходимо знать все значящие константы, список которых приведён выше. Далее методом Эйлера мы получаем два числа для каждого отрезка времени: время погружения и текущую глубину, по которым и строится график.


# Описание работы программы

При запуске программу не нужно устанавливать, она не требует загрузки данных в Program Files. Пользователя встречает простой интерфейс с пятью полями ввода и кнопкой расчёта.

<img src="" alt="Скриншот: пользовательский интерфейс">

Необходимо заполнить все поля в указанных единицах измерения без указания их самих. Во всех полях должны находиться целые или с плавающей точкой числа. В случае неправильного заполнения полей программа выдаст сообщение об ошибке.

<img src="" alt="Скриншот: сообщение об ошибке">

Если правильно введены все данные, программа выдаст результат.

<img src="" alt="Скриншот: успешный расчёт">

По данным, сохранённым по указанному пути лежит текстовый файл "logs.txt". Необходимо создать график по содержимому двух столбцов таблицы (столбцы разделены пробелом).
Получится примерно такой график:

<img src="" alt="Скриншот: график">.



# Установка программы
Вам необходимо скомпилировать exe-файл самостоятельно, указав в качестве пути в команде Assign File путь в любое место вашего компьютера, к которому ваш пользователь имеет доступ. После успешной отработки именно по этому пути будет находиться файл "logs.txt", который необходим для создания графика по инструкции выше.
В папке "prebuilt" находится пример exe-файла, который ведёт по пути к файлу логов разработчика.

Для копирования исходного кода используйте следующие команды:
```bash
mkdir boat
cd boat
git clone https://github.com/nightadmin/pascal-ship.git
cd pascal-ship
ls
```
Далее необходимо создать проект с данными файлами, например с использованием IDE Lazarus.

# Разработчик
 
[Марк Фомин](https://github.com/nightadmin). Обращайтесь по всем вопросам.
