#funciones de densidad y probabilidad

#En contraste con la función de masa de probabilidad, que asigna probabilidades a valores específicos para variables aleatorias discretas es la función de densidad de probabilidad, que está asociada con variables aleatorias continuas. Al igual que una función de masa de probabilidad tiene reglas específicas que debe seguir.

#Específicamente, para ser una función de densidad de probabilidad válida, una función debe satisfacer ser mayor o igual a cero en todas partes. Y, entonces, el área total debajo de ella debe ser uno. 

#Y, aquí está la regla básica de una función de densidad de probabilidad. Las áreas bajo funciones de densidad de probabilidad corresponden a probabilidades para esa variable aleatoria. 

#Entonces, por ejemplo, si digo que los cocientes de inteligencia se distribuyen normalmente con una media de 100 y una desviación estándar de 15, eso implica que la población sigue una curva de aspecto específica en forma de campana. Y supongo que la probabilidad, si tuviera que extraer una muestra, la probabilidad de que una persona de esa muestra tenga un coeficiente intelectual entre 100 y digamos, cien, 115, es esta área correcta aquí. Tenga en cuenta nuevamente, nuestra función de densidad de probabilidad es una declaración sobre la población de inteligencia cocientes en este caso. 

#No es una declaración sobre los datos en sí. Nuevamente, vamos a utilizar los datos para evaluar esa suposición y evaluar las declaraciones sobre la probabilidad de la población. Pero inherentemente cada vez que dices la palabra probabilidad, estás hablando de una cantidad de población Es interesante notar que cuando modelamos probabilidades continuas como esta, o probabilidades para variables aleatorias continuas como esta, la probabilidad de que tome cualquier valor específico es de hecho cero porque el área de una línea es cero. 

#Esto no es un problema Esto es solo una peculiaridad de modelar variables aleatorias como si tuvieran una precisión infinita, pero no estropea las obras de ninguna manera. Resulta que la curva en forma de campana es una densidad bastante difícil de trabajar. Al menos hasta que aprendas cómo, lo que haremos en una conferencia separada. Así que trabajemos con una densidad mucho más simple en este momento, específicamente una que se parece a un triángulo rectángulo. Entonces f de x es igual a 2x para x entre 0 y 1, y 0 en caso contrario. Y demos un poco de contexto a su alrededor. Digamos que es la proporción de llamadas de ayuda que recibe una línea de ayuda en un día aleatorio. 

#Entonces, ¿qué significa esto? 

#Esto significa que esta área da la probabilidad de que entre el 20% y el 60% de las llamadas sean atendidas ese día. 

#Hagamos la pregunta, ¿es esta una densidad matemáticamente válida? 

#Tracé la función de densidad de probabilidad aquí. Parece un triángulo rectángulo. Observe que el código R se da aquí, y se da en las diapositivas de la conferencia porque las diapositivas se crean usando el formato de deslizamiento. Por lo tanto, es importante usar git para extraer el repositorio del curso. 

x <- c(-0.5, 0, 1, 1, 1.5); 
y <- c( 0, 0, 2, 0, 0)
plot(x, y, lwd = 3, frame = FALSE, type = "l")

#Y realmente puede buscar en el archivo rmd o R markdown, y obtener todo el código para todos los ejemplos de todas las conferencias. En cualquier caso, debemos analizar si esta función de densidad de probabilidad es o no una función de densidad de probabilidad válida. 

#Tenga en cuenta que siempre es mayor o igual que cero. Y luego, en segundo lugar, calculemos su área. Bueno, eso no es demasiado difícil porque es un triángulo rectángulo. La mitad del área de la base, derecha, que es la mitad, multiplicado por la altura, que es 2. Entonces, la mitad por 2 es 1. Entonces el área es 1. Entonces, de hecho, esta es una función de densidad de probabilidad válida.


#Veamos un ejemplo de trabajo con esta densidad. 

#¿Cuál es la probabilidad de que el 75% o menos de las llamadas se atiendan de forma aleatoria?

plot(x, y, lwd = 3, frame = FALSE, type = "l")
polygon(c(0, .75, .75, 0), c(0, 0, 1.5, 0), lwd = 3, col = "lightblue")

#Bueno, resulta bastante bueno que este sea solo otro triángulo rectángulo que necesitamos descubrir. Entonces, la altura en este punto es 1.5, porque recuerde que la función es solo 2 veces x, entonces en el punto, punto se, 0.75, la altura es 1.5. 

#Y luego, por supuesto, el valor de, la base es 0.75. Pero luego lo dividimos por 2 porque es la mitad del área de la base por la altura. Y eso resulta ser 56%, como se muestra aquí.

1.5 * .75 / 2
pbeta(.75, 2, 1)

#Resulta que esta densidad es en realidad un caso especial de una densidad conocida, llamada distribución beta. Y te doy el código R aquí para obtener directamente esta probabilidad de la distribución beta. 


#Por supuesto, no lo necesitamos, porque solo está trabajando con triángulos. Sin embargo, en entornos más complicados, vamos a necesitar estas funciones. Quiero agregar que la palabra, la letra p, frente a una función pide probabilidades. 

#Entonces pbeta va a pedir la probabilidad de una densidad beta de ser menor a 0.75. Aquí el 2 y el 1 son los parámetros específicos que lo convierten en el triángulo exacto que estamos usando aquí, y ve que obtiene el mismo número, 56%. 

#Ciertas áreas de la densidad son tan útiles que les damos nombres. Por ejemplo, la función de distribución acumulativa de una variable aleatoria x, devuelve la probabilidad de que una variable aleatoria sea menor o igual que el valor x. Por lo tanto, devuelve la probabilidad de que el capital X sea menor o igual que la pequeña x. 

#Y esta definición se aplica si x es discreto o continuo. Entonces, recuerde en nuestra distribución beta que acabamos de ver, la función pbeta en R siempre devuelve cualquiera que sea el primer argumento, la probabilidad de ser menor o igual a eso. Entonces, de hecho, cada vez que haces un nombre de densidad en R, en realidad solo está devolviendo la función de distribución acumulativa. 

#A veces es interesante trabajar con la función de supervivencia en lugar de la función de distribución, y es solo 1 menos la función de distribución. Entonces, en lugar de la probabilidad de ser menor que, es la probabilidad de ser mayor que. 

#Entonces, imagine si quisiéramos la función de distribución acumulativa de la densidad considerada anteriormente. Digamos, por ejemplo, que queríamos saber cuál es la probabilidad de que el 40% o menos de las llamadas sean respondidas en un día determinado. 

#¿Cuál es la probabilidad de que el 50% o menos de las llamadas sean respondidas en un día determinado? 

#¿Y cuál es la probabilidad de que el 60% o menos de las llamadas sean respondidas en un día determinado? 

#Dado el modelo particular que tenemos en este momento, que es este triángulo rectángulo como una población, función de densidad de probabilidad. Bueno, para cualquiera de esos números, solo mirando la imagen, será muy similar a 0.7, cómo lo descubrimos para 0.75. Será un triángulo rectángulo, por lo que será la mitad del área de la base por la altura. 

#Eso siempre será la mitad x, sea cual sea la x que esté conectando, multiplicada por 2x, la altura en ese punto, que resulta ser x al cuadrado. 

#Entonces, la función x al cuadrado toma el número que desea evaluar y le da la probabilidad de que ese porcentaje de llamadas o menos sean respondidas en un día muestreado al azar.

#Entonces vemos eso aquí cuando conectamos pbeta, que es nuestra función de distribución acumulativa en R para estos tres valores. El 2 y el 1 hacen que estamos evaluando la densidad beta específica. 

pbeta(c(0.4, 0.5, 0.6), 2, 1)

#Y eso resulta en 16%, 25% y 36%. Entonces, el 16, entonces la probabilidad de que el 40% de las llamadas o menos sean respondidas en un día determinado es del 16%. 

#La probabilidad de que el 50% de las llamadas o menos sean respondidas en un día determinado es del 25%. 

#Y la probabilidad de que se responda el 60% de las llamadas o menos en un día determinado es del 36%.

#Si quería la función de sobreviviente, es 1 menos la función de distribución acumulativa, por lo que es 1 menos x al cuadrado. 

#En el futuro vamos a tener que trabajar con funciones de densidad más complicadas, pero en realidad será más fácil, porque solo confiaremos, por ejemplo, en la función pnorm y pbeta, como esta, en lugar de calcular directamente ellos afuera.

#Ya has oído hablar de los cuantiles de muestra. Por ejemplo, si obtiene un puntaje en el percentil 95, que es el cuantil 0.95 en un examen, sepa que el 95% de los estudiantes obtuvo un puntaje peor que usted y el 5% mejor. 


#Estos son los llamados cuantiles de muestra. Vamos a definir sus análogos de población. Entonces, recuerde en el cuantil de muestra, si desea definir el percentil 95 o el cuantil de 0.95, lo que haría sería alinear las observaciones de menor a mayor. 

#Y encontraría el puntaje del examen o el punto, de modo que el 95% de la observación se encuentra debajo de él. El cuantil de la función de distribución con la función de distribución F es el punto x sub alfa de manera que ZF de x de alfa es igual a alfa. 

#Eso es un trabalenguas, así que veamos si podemos hacer un dibujo. Si dibujáramos una densidad, F de x, la función de distribución evaluada en x, es el área debajo del punto x. 

#Cuál es la probabilidad de que una variable aleatoria de esta población sea menor o igual que x. Por lo tanto, puede considerarlo como una población de puntajes de exámenes. 

#Y es una población infinita de estudiantes. 

#Y aquí, esta sería la probabilidad de obtener una puntuación para un estudiante extraído al azar de esta población de x o inferior. 

#El cuantil alfa es nosotros mueva esta línea hasta encontrar el punto x sub alfa, de modo que exactamente la probabilidad alfa se encuentre debajo de ella. Eso es exactamente lo que estamos haciendo con nuestros datos cuando encontramos un cuantil empírico. 

#Seguimos encontrando los puntos de datos de manera que, por ejemplo, el 95% de los puntajes de las pruebas se encuentran debajo de ellos. Esa sería la muestra del percentil 95. 

#Ahora movemos el punto x a lo largo hasta que encontremos el punto tal que la probabilidad de estar debajo de él sea del 95% en esta distribución de la población. 

#Nuevamente, el percentil es simplemente un cuantil con alfa expresado como un porcentaje en lugar de una proporción. Y la mediana es el per, quizás el cuantil más conocido, es el percentil 50. 

#Vamos a usar mucho los cuantiles, por lo que vale la pena reforzar este punto. 

#Entonces el percentil 95 de una población la distribución es el punto, de modo que la probabilidad de que se extraiga una variable aleatoria de esa población es menor que ese valor es del 95%. 

#Y la probabilidad de que una variable aleatoria extraída de esa población sea mayor es del 5%. Analicemos nuestro ejemplo anterior. 

#¿Cuál es la mediana de la distribución con la que estábamos trabajando antes? 

#Recuerda que la distribución parecía un triángulo rectángulo. En la función de distribución, por ejemplo, si se desea encontrar la probabilidad de que x proporción de llamadas se respondan en un día determinado o menos, que F de x, esa función de distribución,

#funcionó para ser simplemente x al cuadrado. Donde x tiene que ser un valor ntre 0 y 1 para que tenga sentido. En este caso, queremos resolver 0.5 iguales F de x, que es igual a x al cuadrado. 

sqrt(0.5)

#Resultando en la solución raíz cuadrada 0.5. Esto es 0.7. Entonces, lo que esto significa es que aproximadamente el 50% de los días, el 70% de las llamadas telefónicas o menos reciben respuesta. 

#Y en aproximadamente el 50% de los días, aproximadamente el 70% de las llamadas telefónicas o más reciben respuesta. Trabajamos mucho con los cuantiles, especialmente los cuantiles de la distribución normal. Casi nunca pasamos por este proceso de trabajar directamente con las densidades para calcular los cuantiles, porque las distribuciones con las que trabajamos son comunes y esto ya se ha hecho por nosotros. 


#En R, hay un truco fácil. Básicamente, q delante del nombre de la función, nombre de densidad de la función, da los cuantiles. Entonces, en este caso, sabemos que esta es una densidad beta. Bueno, no lo sabemos. Te digo que esta es una densidad beta.


qbeta(0.5,2,1)

#Y entonces qbeta nos da el cuantil relevante. Aquí conectamos 0.5. Y recuerde que R toma el argumento del cuantil como una proporción. Por lo tanto, si conecta 0.5, funcionará. Si conecta 50 por 50%, no funcionará.

#De acuerdo, y el 2 y el 1 son los parámetros que realmente no hemos descrito completamente. Pero tendrá que aceptar mi palabra de que esos son los parámetros que producen la densidad de datos específica que estamos analizando. 

#Y cuando conectamos esto, obtenemos 0.7, 0.71, exactamente como lo hicimos antes. 

#Tal vez se pregunte, en este punto, he oído hablar de una mediana antes, pero no fue tan complicado. Simplemente ordené mis observaciones de menor a mayor y tomé el medio, o el promedio de las dos observaciones intermedias, si tuviera un número par de observaciones.

#Allí tenías una cantidad de muestra. Es un estimador. En esta clase, vamos a construir no solo estimadores sino también los objetivos de estimación o el estimado. 

#Entonces, en este caso, su mediana de muestra está estimando su mediana de población. Entonces, por ejemplo, una mediana de muestra de nuestro ejemplo anterior es si tuviéramos que muestrear un par de días, calcular el porcentaje de llamadas que fueron respondidas en ese, de esos días. Alinee esos porcentajes y tome el del medio, esa sería la mediana. 

#Pensaríamos en eso como un objetivo como un, como un estimador de una población. 
#Una especie de verdadero porcentaje medio de llamadas que reciben respuesta. Y, por supuesto, hay muchas suposiciones que necesitaremos hacer para conectar esa muestra con la población.

#Sin embargo, vamos a tener los ojos abiertos sobre esos supuestos y los desarrollaremos formalmente. Entonces, en cualquier caso, en esta clase, para cada estimador habrá un estimado. La media de la muestra estimará la media de la población. 

#La mediana de la muestra estimará la mediana de la población La desviación estándar de la muestra estimará la desviación estándar de la población. Y así. 

#Este es el proceso formal de inferencia estadística, que vincula su muestra a una población.

