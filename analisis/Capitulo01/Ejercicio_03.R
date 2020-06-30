#Ejercicio No. 3

library(swirl)

#Recuerde que una variable aleatoria es un resultado numérico de un experimento. Puede ser discreto (tomar solo un número contable de posibilidades) o continuo (tomar cualquier valor en la línea real o subconjunto de la misma).

#Si tuviera una regla de precisión infinita, ¿medir la altura de los adultos de todo el mundo sería continuo o discreto?

#Continuo

#¿El sorteo de una mano de cartas es continuo o discreto?

#Discreto


#Las variables aleatorias continuas generalmente se asocian con mediciones de tiempo, distancia o algún proceso biológico, ya que pueden tomar cualquier valor, a menudo dentro de un rango específico.

#Las limitaciones de precisión al tomar las medidas pueden implicar que los valores son discretos; de hecho los consideramos continuos.


#Una función de masa de probabilidad (PMF) da la probabilidad de que una variable aleatoria discreta sea exactamente igual a algún valor.


#Por ejemplo, supongamos que tenemos una moneda que puede ser justa o no.

#Supongamos que x = 0 representa un resultado de 'cara' y x = 1 representa un resultado de 'cruz' de un lanzamiento de moneda. Si p es la probabilidad de 'cara', ¿cuál de las siguientes representa el PMF del lanzamiento de la moneda? La variable x es 0 (caras) o 1 (colas).

#1La probabilidad p está asociada con un resultado de 'cara' que ocurre cuando x = 0. ¿Cuál de las dos expresiones tiene un exponente de 1 para p cuando x es 0?

#(p^(1-x))*(1-p)^x


#Una función de densidad de probabilidad está asociada con una variable aleatoria continua. Para citar de Wikipedia, "es una función que describe la probabilidad relativa de que esta variable aleatoria tome un valor dado. La probabilidad de que la variable aleatoria caiga dentro de un rango particular de valores está dada por ... el área bajo la densidad función pero por encima del eje horizontal y entre los valores más bajos y más grandes del rango ".


#Repetiremos dos requisitos de una función de densidad de probabilidad. Debe ser no negativo en todas partes, y el área debajo de él debe ser igual a uno ".


#Considere esta figura: un rectángulo con altura 1 y ancho 2 con una línea diagonal dibujada desde la esquina inferior izquierda (0,0) hacia la esquina superior derecha (2,1). El área de todo el rectángulo es 2 y la geometría elemental nos dice que la diagonal divide el rectángulo en 2 áreas iguales.


#¿Podría la línea diagonal representar una función de densidad de probabilidad para una variable aleatoria con un rango de valores entre 0 y 2? Suponga que el lado inferior del rectángulo es el eje x.

#Yes

#Ahora considere la porción sombreada del triángulo: un triángulo más pequeño con una base de longitud 1.6 y altura determinada por la diagonal. Responderemos la pregunta: "¿Qué proporción del triángulo grande está sombreada?"

#Esta proporción representa la probabilidad de que lanzar un trozo de croquetas de gato al triángulo más grande (debajo de la diagonal) golpee la porción azul.

#1/60

#Tenemos que calcular el área del triángulo azul. (Dado que el área del triángulo grande es 1, el área del triángulo azul es la proporción del triángulo grande sombreado). Conocemos la base, pero ¿cuál es su altura?

#8


#¿Cuál es el área del triángulo azul?

#Multiplica la base por la altura y divide por 2.

#1.6*0.8/2


#Entonces, ¿cuál es la probabilidad de que la croqueta que arrojamos al triángulo más grande golpee la porción azul?

#1.6*0.8/2

#Este ejemplo artificial estaba destinado a ilustrar una función simple de densidad de probabilidad (PDF). La mayoría de los PDF tienen fórmulas subyacentes más complicadas que las líneas. Veremos más de estos en futuras lecciones.


#La función de distribución acumulativa (CDF) de una variable aleatoria X, ya sea discreta o continua, es la función F(x) igual a la probabilidad de que X sea menor o igual que x. En el ejemplo anterior, el área del triángulo azul representa la probabilidad de que la variable aleatoria sea menor o igual que el valor 1.6.


#En el ejemplo del triángulo de arriba, ¿cuál de las siguientes expresiones representa F(x), el CDF?

#El término 'x' es la base, x / 2 es la altura. Conéctelos a la fórmula para el área de un triángulo.

#x*x/4


#Si está familiarizado con el cálculo, puede reconocer que cuando calcula áreas bajo curvas, en realidad está integrando funciones.


#Cuando la variable aleatoria es continua, como en el ejemplo, el PDF es la derivada del CDF. Entonces, integrar el PDF (la línea representada por la diagonal) produce el CDF. Cuando evalúa el CDF en los límites de integración, el resultado es un área.


#Para ver esto en el ejemplo, hemos definido la función mypdf para usted. Esta es la ecuación de la línea representada por la diagonal del rectángulo. Como el PDF, es la derivada de F (x), el CDF.

#Mira mypdf ahora.

#Ahora use la función R integrar para integrar mypdf con los parámetros inferiores iguales a 0 y superiores iguales a 1.6. Vea si obtiene la misma área (probabilidad) que tenía antes.


#integrate(mypdf,0,1.6)


#La función de supervivencia S(x) de una variable aleatoria X se define como la función de x igual a la probabilidad de que la variable aleatoria X sea mayor que el valor x. Este es el complemento del CDF F(x), en nuestro ejemplo, la porción del triángulo inferior que no está sombreada.

#En nuestro ejemplo, ¿cuál de las siguientes expresiones representa la función de supervivencia?

#1-x*x/4


#El cuantil v de un CDF es el punto x_v en el que el CDF tiene el valor v. Más precisamente, F (x_v) = v. Un percentil es un cuantil en el que v se expresa como un porcentaje.

#¿Qué percentil es la mediana?

#50


#¿Cuál es el percentil 50 del CDF F(x)= (x^2) / 4 del ejemplo anterior?

#Solve for the x such that x^2=4*.5=2

#1.414214

#¿Qué significa esto con respecto a la croqueta que lanzamos al triángulo?
  
#1: Todo cae a la derecha de 1.41
#2: Todo cae a la izquierda de 1.41
#3: La mitad cae a la izquierda de 1.41
#4: Todo cae en la línea vertical en 1.41


#Un modelo de probabilidad conecta los datos a una población utilizando supuestos.


#Tenga cuidado de distinguir entre medianas de población y medianas de muestra.


#Una mediana de muestra es un estimador de una mediana de población (el estimado).


