﻿                                dir.fmt v 3.0
                                ~~~~~~~~~~~~~

  Плагин второго уровня к плагину Observer (или MultiArc) файл-менеджера FAR. Позволяет
представить результат работы XP/2003/Vista/7 команды DIR в виде псевдоархива.
То есть файл, сформированный командой:

dir /a /s>file.dir

или, для получения юникодного листинга:

cmd /c chcp 65001 & dir /s>file.dir

в виде папки. Мне служит для грубого сравнения каталогов на удаленных машинах и
в качестве библиотекаря моих компакт-дисков. Остальные подобные плагины
(известные мне) не подошли, т.к. требуют наличия FARа или каких-то других
программ для получения "слепка". Функции реализованы лишь в том объеме, который
мне необходим, не обрабатываются все режимы команды DIR, не учитываются
атрибуты и тд. Поэтому прилагаю исходник, кому нужно, тот запросто программу
доработает.


Инсталляция
~~~~~~~~~~~

1. Скопировать dir.so в каталог Far\Plugins\Observer\modules
2. Отредактировать файл observer.ini (добавить строки в существующие секции)
   [Modules]
   DIR=modules\dir.so
   [Filters]
   DIR=*.dir;*.info
3. Перезапустить FAR (или перезагрузить плагин Observer).

                                              автор:
                                                  Александр Арефьев 25.03.2001
                                                  alarf@mail.ru
                                                  http://alarf.newmail.ru

                                              текущий разработчик:
                                                  ConEmu.Maximus5@gmail.com
