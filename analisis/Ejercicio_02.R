#Ejercicio No2

#En esta lección, revisaremos ideas básicas de probabilidad, el estudio de cuantificar la probabilidad de que ocurran eventos particulares. Tenga en cuenta la similitud entre las palabras probabilidad y probablemente. Cada vez que usa la última palabra, está insinuando que es más probable que un evento ocurra.

#El primer paso para comprender la probabilidad es ver si comprende qué resultados de un experimento son posibles. Por ejemplo, si lanzara un solo dado justo una vez, ¿cuántos resultados son posibles?

#6

#La probabilidad de un resultado particular de un experimento es la relación del número de formas en que ese resultado puede ocurrir con todos los resultados posibles del experimento. Dado que hay 6 posibles resultados para el experimento de lanzar un dado, y suponemos que el dado es justo, cada resultado es igualmente probable. Entonces, ¿cuál es la probabilidad de sacar un 2?

#1/6

#¿Cuál es la probabilidad de sacar un número par?

#1/2


#Dado que la probabilidad de un resultado o evento particular E es la relación de formas en que E podría ocurrir con el número de todos los resultados o eventos posibles, la probabilidad de E, denotada P(E), siempre está entre 0 y 1.

#Los eventos imposibles tienen una probabilidad de 0 (ya que no pueden ocurrir) y los eventos que seguramente ocurrirán tienen una probabilidad de 1.

#Si está haciendo un experimento con n posibles resultados, digamos e1, e2, ..., en, entonces la suma de las probabilidades de todos los resultados es 1. Si todos los resultados son igualmente probables, como en el caso de un justo muere, entonces la probabilidad de cada uno es 1 / n.

#Si A y B son dos eventos independientes, entonces la probabilidad de que ambos ocurran es el producto de las probabilidades. P (A y B) = P (A) * P (B)


#Supongamos que tiraste el dado justo dos veces seguidas. ¿Cuál es la probabilidad de sacar dos 4?


#La probabilidad de sacar los primeros 4 es 1/6. El segundo lanzamiento de los dados no depende del resultado del primero, por lo que también tiene un probabilidad de 1/6. La probabilidad de que ocurran ambos eventos es 1/6 * 1/6. Esto tiene sentido intuitivo ya que la probabilidad de que ocurran 2 de estos eventos tiene que ser menor que la probabilidad de solo 1 evento.

#1/36


#Supongamos que tiraste el dado justo dos veces. ¿Cuál es la probabilidad de sacar el mismo número dos veces seguidas

#1/6

#Ahora considere el experimento de lanzar 2 dados, uno rojo y otro verde. Suponga que los dados son justos y no están cargados. ¿Cuántos resultados distintos son posibles?

#36

#Si un evento E puede ocurrir de más de una manera y estas formas son disjuntas (mutuamente excluyentes), entonces P (E) es la suma de las probabilidades de cada una de las formas en que puede ocurrir.

#Lanzando estos dos dados, ¿cuál es la probabilidad de lanzar un 10?

#Como la tirada de dados más alta posible es un '6', las únicas combinaciones que dan '10' son 4 + 6 y 5 + 5. El primero ocurre de dos maneras: los dados rojos obtienen '4' y los verdes obtienen '6' O los rojos obtienen '6' y los verdes obtienen '4'.

#El otro se obtiene solo de una manera y es 5+5 por eso son 3 de 36

#3/36

#¿Qué suma es más probable al tirar estos dos dados?

#7

#La probabilidad de que ocurra al menos uno de los dos eventos, A y B, es la suma de sus probabilidades individuales menos la probabilidad de su intersección. P (A U B) = P (A) + P (B) - P (A y B).

#Es fácil ver por qué esto es así. Calcular P (A) y P (B) cuenta los resultados que están en A y B dos veces, por lo que se cuentan en exceso. La probabilidad de la intersección de los dos eventos, denotada como A&B, debe restarse de la suma.


#Volver a lanzar dos dados. ¿Qué expresión representa la probabilidad de obtener un número par o un número mayor que 8?

#La probabilidad de obtener un número par es 1/2 o 18/36. Hay 10 formas de obtener un número mayor que '8': 4 formas de obtener '9', 3 para '10', 2 para '11' y 1 para '12'. ¿Qué tan grande es la intersección entre sacar un número par y aquellos mayores que '8'?

#(18+10-4)/36

#Se deduce que si A y B son disjuntos o mutuamente excluyentes, es decir, solo uno de ellos puede ocurrir, entonces P (A U B) = P (A) + P (B).


#¿Cuál de las siguientes expresiones representa la probabilidad de obtener un número mayor que 10?

#Los únicos resultados mayores que 10 son 11 y 12, que se excluyen mutuamente. El primero, 11, puede ocurrir de dos maneras, y el segundo, 12, puede ocurrir solo con una tirada de doble 6.

#(2+1)/36



#Use la respuesta a la pregunta anterior y el hecho de que la suma de todos los resultados debe sumar 1 para determinar la probabilidad de obtener un número menor o igual a 10.

#(2+1)/36 + 1

##repuesta que no entiendo 11/12


#Ahora aplicaremos los conceptos de probabilidad a los naipes.

#Un mazo de cartas es un conjunto de 52 cartas, 4 palos de 13 cartas cada uno. Hay dos trajes rojos, diamantes y corazones, y dos trajes negros, espadas y palos. Cada una de las 13 cartas de un palo tiene un valor: un as que a veces se considera 1, un número del 2 al 10 y 3 cartas de cara, rey, reina y jota. Hemos creado un mazo en R para ti. Escribe 'deck' para verlo ahora.


#Al dibujar una sola carta, ¿cuántos resultados son posibles?

#52

#¿Cuál es la probabilidad de sacar un Jack?

#4/52

#Si le reparten una mano de 5 cartas, ¿cuál es la probabilidad de obtener las 5 del mismo valor?

#0

#Cual es la posibilidad de sacar una carta de cara

#12/52


#Supongamos que robas una carta de cara y no la reemplazas en el mazo. ¿Cuál es la probabilidad de que cuando robas una segunda carta también sea una carta de cara?

#11/51


#Supongamos que robas una carta de cara y no la reemplazas en el mazo. ¿Cuál es la probabilidad de que cuando robas una segunda carta también sea una carta del mismo palo?

#2/51

