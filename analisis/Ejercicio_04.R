#Ejercicio_04

library(swirl)

#Probabilidad Condicional


#La probabilidad condicional. (Las diapositivas para este y otros cursos de Ciencia de datos se pueden encontrar en github https://github.com/DataScienceSpecialization/courses/. Si desea utilizarlos, debe descargarlos como un archivo zip y verlos localmente. Esta lección corresponde a 06_Inferencia estadística / 03_Probabilidad_condicional.)

#En esta lección, como su nombre indica, discutiremos la probabilidad condicional.

#Si le dieran un dado justo y le preguntaran cuál es la probabilidad de sacar un 3, ¿qué responderían?

#1/6

#Suponga que la persona que le dio el dado lo rodó a sus espaldas y le dijo que el lanzamiento era extraño. ¿Cuál es la probabilidad de que el resultado sea un 3?

#Dado que hay 3 números impares en el dado, sus posibilidades se han reducido a 3 y desea saber la probabilidad de 1 de ellos.

#La probabilidad de este segundo evento está condicionada a esta nueva información, por lo que la probabilidad de obtener un 3 es ahora un tercio.


#Representamos la probabilidad condicional de un evento A dado que B ha ocurrido con la notación P (A | B). Más específicamente, definimos la probabilidad condicional del evento A, dado que B ha ocurrido con lo siguiente.


#P(A|B) = P(A&B)/P(B). 

#P (A|B) es la probabilidad de que AMBOS A y B ocurran divididos por la probabilidad de que B ocurra.

#De vuelta a nuestro ejemplo de dados. 

#¿Cuál de las siguientes expresiones representa P (A&B), donde A es el evento de lanzar un 3 y B es el evento de que el lanzamiento sea impar?

#(1/6)/(1/2)

#A partir de la definición de P(A|B), podemos escribir P(A&B)= P(A|B)*P(B), ¿verdad? Usemos esto para expresar P(B|A).


#1/6

#Continuando con el mismo ejemplo de dados. ¿Cuál de las siguientes expresiones representa P (A&B) / P (B), donde A es el evento de lanzar un 3 y B es el evento de que el lanzamiento sea impar?

A#quí A es un subconjunto de B, por lo que la probabilidad de que A y B ocurran es la probabilidad de que A suceda. La probabilidad de B es el recíproco del número de números impares entre 1 y 6 (inclusive).


#(1/6)/(1/2)

#A partir de la definición de P (A|B), podemos escribir P(A&B)=P (A|B)*P(B), ¿verdad? Usemos esto para expresar P(B|A).


#P(B|A)=P(B&A)/P(A)=P(A|B)*P(B)/P(A). 

#Esta es una forma simple de la regla de Bayes que relaciona las dos probabilidades condicionales.


#Supongamos que no conocemos P(A) en sí, pero solo conocemos sus probabilidades condicionales, es decir, la probabilidad de que ocurra si ocurre B y la probabilidad de que ocurra si B no ocurre.

#Estos son P(A|B) y P(A|~B)

#Respectivamente. Usamos ~ B para representar 'no B' o 'complemento B'.


#Entonces podemos expresar.

#P(A)=P(A|B)*P(B)+P(A|~ B)*P(~ B) 

#Y sustituir esto en el denominador de la fórmula de Bayes.

#P(B|A) = P(A|B) * P(B) / ( P(A|B) * P(B) + P(A|~B) * P(~B) )

#La regla de Bayes tiene aplicabilidad a las pruebas de diagnóstico médico. Ahora discutiremos el ejemplo de la prueba de VIH de las diapositivas.


#Supongamos que conocemos las tasas de precisión de la prueba tanto para el caso positivo (resultado positivo cuando el paciente tiene VIH) como negativo (resultado negativo de la prueba cuando el paciente no tiene VIH). Estos se conocen como prueba de sensibilidad y especificidad, respectivamente.


#Deje que 'D' sea el evento de que el paciente tiene VIH, y deje que '+' indique un resultado positivo de la prueba y '-' un negativo. ¿Qué información sabemos? Recuerde que conocemos las tasas de precisión de la prueba de VIH.

#La pista aquí es la precisión. La prueba es positiva cuando el paciente tiene la enfermedad y negativa cuando no la tiene.

#P(+|D) and (-|~D)


#Supongamos que una persona obtiene un resultado positivo de la prueba y proviene de una población con una tasa de prevalencia del VIH de 0.001. Nos gustaría saber la probabilidad de que realmente tenga VIH. ¿Cuál de los siguientes representa esto?


#Ya se nos ha dado la información de que la prueba fue positiva '+'. Queremos saber si D está presente dado el resultado positivo de la prueba.

#P(D|+)


#Por la fórmula de Bayes.

#P(D|+)=P(+|D)*P(D)/(P(+|D)*P(D)+P(+|~D)*P(~D))

#Podemos utilizar la prevalencia del VIH en la población del paciente como valor para P (D). Tenga en cuenta que desde P(~D) = 1-P(D) y P(+|~D)=1-P(-|~ D) podemos calcular P(D|+). En otras palabras, conocemos valores para todos los términos en el lado derecho de la ecuación. ¡Vamos a hacerlo!

#La prevalencia de la enfermedad es .001. La sensibilidad de la prueba (+ resultado con enfermedad) es del 99.7% y la especificidad (- resultado sin enfermedad) es del 98.5%. Primero calcule el numerador, P(+|D)*P(D). (Esto también es parte del denominador).


#Multiplique la sensibilidad de la prueba por la prevalencia.

0.997*0.001

#0.000997

#Ahora resuelva el resto del denominador, P(+|~D)*P(~D).
#Multiplique el complemento de especificidad de prueba por el complemento de prevalencia.

(1-.985)*(1-.001)

#0.014985


#Ahora junte las piezas para calcular la probabilidad de que el paciente tenga la enfermedad dado el resultado positivo de su prueba.

#P(D|+). 

#Inserte sus dos últimas respuestas en la fórmula:

#P(+|D)*P(D)/(P(+|D)*P(D)+P(+|~D)*P(~ D)) 

#Para calcular P(D|+).

(0.997*0.001) / ((0.997*0.001)+(1-0.985)*(1-0.001))

#0.06238268

#Por lo tanto, el paciente tiene una probabilidad del 6% de tener VIH dado este resultado positivo de la prueba. La expresión P(D|+) se denomina valor predictivo positivo. Del mismo modo, P(~D|-), se denomina valor predictivo negativo, la probabilidad de que un paciente no tenga la enfermedad dado un resultado negativo de la prueba.


#La razón de probabilidad de diagnóstico de una prueba positiva, DLR_ +, es la razón de las dos probabilidades condicionales + una, dada la presencia de enfermedad y la otra dada la ausencia. 

#Específicamente:

#DLR_+= P(+|D)/P(+|~D). 

#Del mismo modo, el DLR_- se define como una relación. ¿Cuál de las siguientes crees que representa el DLR_-?

#DLR_- = P(-|D)/P(-|~D)

#Dado que el numerador está cerca de 1 y el denominador está cerca de 0, ¿espera que DLR_+ sea grande o pequeño?

#Large

#Ahora recuerde que:

#DLR_-= P(-|D)/P(-|~ D). 

#Aquí el numerador es el complemento de la sensibilidad y el denominador es la especificidad. Según la aritmética y lo que sabe sobre las pruebas de precisión, ¿espera que DLR_- sea grande o pequeño?

#Small

#Ahora un poco más sobre las razones de probabilidad. 

#Recordemos la fórmula de Bayes. 

#P(D|+) = P(+|D)*P(D)/(P(+|D)*P(D)+P(+|~D)*P(~D)) 

#y observe que si reemplazamos todas las apariciones de 'D' con '~ D', el denominador no cambia.

#Esto significa que si formamos una relación de:

#P(D|+) a P(~D|+) 

#Obtendríamos una expresión mucho más simple (ya que los denominadores complicados se cancelarían entre sí). Me gusta esto....


#P(D|+) / P(~D|+) = P(+|D)*P(D)/(P(+|~D)*P(~D)) = P(+|D)/P(+|~D)*P(D)/P(~D).

#El lado izquierdo de la ecuación representa las probabilidades de enfermedad posteriores a la prueba dado un resultado positivo de la prueba. La ecuación dice que las probabilidades de enfermedad posteriores a la prueba son iguales a las probabilidades de enfermedad previas a la prueba (es decir, P(D)/P(~D)).

#DLR_+

#En otras palabras, un valor DLR_ + igual a N indica que la hipótesis de enfermedad es N veces más respaldada por los datos que la hipótesis de no enfermedad.


#Tomando la fórmula anterior y reemplazando los signos '+' con '-' se obtiene una fórmula con DLR_-. 

#Específicamente.

#P(D|-)/P(~D|-) = P(-|D)/P(-|~D)*P(D)/P(~ D). 

#Al igual que con el caso positivo, esto relaciona las probabilidades de enfermedad después de la prueba, P (D|-)/P (~ D|-), con las de la prueba previa de enfermedad, P(D)/P(~ D).

#La ecuación:

#P(D|-)/P(~D|-)= P(-|D)/P(-|~D)*P(D)/P(~ D) 

#Dice qué pasa con las probabilidades posteriores a la prueba de enfermedad en relación con las probabilidades de enfermedad previas a la prueba dados los resultados negativos de la prueba?


#las probabilidades posteriores a la prueba son menores que las probabilidades previas a la prueba

#Dos eventos, A y B, son independientes si no tienen efecto entre sí. 

#Formalmente, P(A&B) = P(A)*P(B). 

#Es fácil ver que si A y B son independientes, entonces P(A|B) = P(A). 

#La definición es similar para las variables aleatorias X e Y.

#Hemos visto ejemplos de independencia en nuestras lecciones de probabilidad anteriores. Repasemos un poco.

#¿Cuál es la probabilidad de tirar un '6' dos veces seguidas con un dado justo?

#1/36

#Te dan un dado justo y te piden que lo tires dos veces. ¿Cuál es la probabilidad de que la segunda tirada del dado coincida con la primera?

#1/6

#Si la posibilidad de desarrollar una enfermedad con un componente genético o ambiental es p, ¿es la posibilidad de que usted y su hermano desarrollen esa enfermedad p * p?

#No


#Concluiremos con iid. Se dice que las variables aleatorias son iid si son independientes e idénticamente distribuidas. Por independiente queremos decir "estadísticamente no relacionados entre sí".

#Distribuido de manera idéntica significa que "todos han sido extraídos de la misma distribución de población".


#Las variables aleatorias que son iid son el modelo predeterminado para muestras aleatorias y muchas de las teorías importantes de la estadística asumen que las variables son iid. Por lo general, asumiremos que nuestras muestras son aleatorias y las variables son iid.


