# GyverMatrixCalculator
## Описание
Программа GyverMatrixCalculator создана специально для того, чтобы рассчитывать необходимое количество светодиодной адресной ленты (гирлянд), разъемов, провода и 
ориентировочной мощности блока питания в белом режиме при максимальной яркости (наиболее энергоемкий режим) для сборки светодиодной матрицы по проектам от AlexGyver и от сторонних разработчиков по заданным размерам.<p>
Все просто.<p>
Выбираем направление лент (гирлянд) и их тип, указываем размеры в пикселях или в сантиметрах
(т. е. если если требуется сделать двухметровую матрицу, указываем 200, выбрав предварительно размеры в сантиметрах), жмем Рассчитать.

## Возможности
### Расчет необходимого количества светодиодных адресных лент и гирлянд следующих типов:
 - Адресная светодиодная гирлянда с расстоянием 10 см между диодами под пайку (50 диодов в гирлянде);
 - Адресная светодиодная гирлянда с расстоянием 12 см между диодами под пайку (50 диодов в гирлянде);
 - Готовая адресная светодиодная гирлянда с расстоянием 10 см между диодами (100 диодов в гирлянде);
 - Адресная светодиодная лента с плотностью 30 диодов на метр;
 - Адресная светодиодная лента с плотностью 60 диодов на метр;
 - Адресная светодиодная лента с плотностью 74 диода на метр;
 - Адресная светодиодная лента с плотностью 96 диодов на метр;
 - Адресная светодиодная лента с плотностью 100 диодов на метр;
 - Адресная светодиодная лента с плотностью 144 диода на метр.

### Выбор направления светодиодных лент в матрице
 - По вертикали;
 - По горизонтали.

### Вычисления
 - Вывод размеров в сантиметрах согласно указанному количеству светодиодов по ширине и высоте матрицы;
 - Вывод количества светодиодов по указаннным размерам матрицы в сантиметрах;
 - Вычисление общего количества диодов в матрице;
 - Вычисление необходимого количества светодиодных лент (гирлянд);
 - Вычисление излишка диодов после сборки светодиодной матрицы;
 - Вычисление необходимого количества пар разъемов для соедиинения компонентов светодиодной матрицы (только для светодиодных гирлянд);
 - Вычисление необходимого количества провода (только для светодиодных гирлянд);
 - Вычисление максимального потребляемого тока согласно даташиту (из расчета 60 мА на диод, белый режим, 100% яркость);
 - Вычисление максимального потребляемого тока по итогам реальных замеров (из расчета 15 мА на диод, белый режим, яркость 100%).

## Примечания
 - Программа может вычислять остаток диодов с некоторой погрешностью (в пределах пары диодов) из-за накопления ошибки при делении;
 - Замеры потребляемого тока были произведены с использованием светодиодной матрицы 16x16, питаемой от блока питания на 6А, был включен белый режим, яркость 100%;
 - Даже с учетом 15 мА на диод в белом режиме матрица выдает очень яркое свечение, чего объективно с избытком (поберегите свои глаза!);
 - В динамическом режиме и на малых яркостях (до 1/3 от максимума) энергопотребление выходит гораздо ниже, и может быть достаточно блока питания на 1-2 А.
 - Вычисление производится по схеме "зигзаг" как наиболее удобной в плане компоновки.

## Схема сборно-разборной матрицы на разъемах
![SCHEME](https://github.com/frol-aleksan/GyverPanelWiFi/blob/master/schemes/matrix%20scheme.jpg)
