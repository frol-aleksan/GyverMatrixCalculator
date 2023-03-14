# GyverMatrixCalculator
Программа создана специально для того, чтобы рассчитывать необходимое количество ленты, разъемов, провода и 
ориентировочной мощности блока питания в белом режиме при максимальной яркости (наиболее энергоемкий режим)
для реализации матрицы по заданным размерам.

Все просто.

Выбираем направление, тип гирлянды или ленты, выбираем необходимый тип размера в модулях (например, 20x10; данный тип размера выбран по умолчанию) или в сантиметрах (т. е. если если требуется сделать матрицу размерами 2 на 1 метр, указываем 200 по ширине и 100 по высоте), указываем желаемые размеры, жмем Рассчитать.

Программа вычислит
- размеры матрицы от центра первого до центра последнего модуля согласно размерам в модулях, учитывая плотность ленты/гирлянды
- размеры матрицы в модулях согласно физическим размерам, учитывая плотность и ширину ленты/гирлянды
- необходимое количество ленты/гирлянды
- примерный потребляемый ток в белом режиме на максимальной яркости
- излишек диодов

Поддерживаются гирлянды
- 12 см между центрами модулей
- 10 см между центрами модулей

Поддерживаются ленты
- 30 модулей на метр (расстояние 3.34 см между центрами)
- 60 модулей на метр (расстояние 1.67 см между центрами)
- 74 модуля на метр (расстояние 1.35 см между центрами)
- 96 модулей на метр (расстояние 1.04 см между центрами)
- 100 модулей на метр (расстояние 1 см между центрами)
- 144 модуля на метр (расстояние 0.69 см между центрами; стоит иметь ввиду, что ширина такой ленты больше, чем расстояние между центрами модулей, поэтому, к примеру, матрица 10x10 будет иметь размеры 12x6.94 см)

Примечания:
- Если выбрана гирлянда, будет посчитано количество гирлянд по 50 модулей. Также будет вичислено необходимое количество провода из расчета "ширина матрицы + 3 метра до точки подключения" (максимальная длина провода, при которой эффекты выводятся на матрицу без помех) и количество пар разъемов, необходимых для соединения нитей матрицы согласно схеме
- Если выбрана лента, ее количество будет выражено в метрах
- Расчет производится только по схеме "зигзаг" как наиболее удобной в плане компоновки
- Программа может вычислять излишек ленты с погрешностью +/- пара модулей из-за накопления ошибки при делении

Схема сборно-разборной матрицы на разъемах, под которую считает данный калькулятор:
![SCHEME](https://github.com/frol-aleksan/GyverPanelWiFi/blob/master/schemes/matrix%20scheme.jpg)

Направление разъемов на схеме соответствует действительности:

====< - «мама» (разъем с отверстиями)

====> - «папа» (разъем с штырьками)
