#Distribucion Normal

#Probabilidades Definitivamente, la distribución más importante para saber es la distribución normal. 

#En la próxima conferencia veremos por qué es tan importante o una de las razones por las que es tan importante. 

#Sin embargo, si todas las distribuciones se unieran y eligieran un líder, seguramente sería la distribución normal. De todos modos, una variable aleatoria se establece para seguir una distribución Gaut o Gauss normal con media mu y varianza sigma al cuadrado. Si su densidad asociada es esta función aquícon la curva de campana, que mostraremos en un minuto. 


#Si X es una variable aleatoria con esta densidad, entonces el valor esperado de X es mu, y su varianza es sigma al cuadrado. Y simplemente escribimos esto en forma abreviada como X, con un poco de tilde aquí, mu sigma normal al cuadrado. 

#Cuando mu es igual a 0 y sigma es igual a 1, la distribución resultante se llama distribución normal estándar. Y las variables aleatorias normales estándar a menudo se denominan z. 

x <- seq(-3, 3, length = 1000)
library(ggplot2)
g <- ggplot(data.frame(x = x, y = dnorm(x)), 
            aes(x = x, y = y)) + geom_line(size = 2)
g <- g + geom_vline(xintercept = -3 : 3, size = 2)
g

#Aquí dibujo la función de densidad normal estándar, la famosa curva de campana que probablemente hayas visto antes. Recuerde que para la distribución normal estándar, su media es 0 y su desviación y varianza estándar son 1. 

#Aquí he dibujado 1 desviación estándar por encima y por debajo de la media, 2 desviaciones estándar por encima y por debajo de la media, y 3 desviaciones estándar por encima y debajo de la media. Las unidades de la normal estándar pueden considerarse simplemente como unidades de desviación estándar. Por ejemplo, si va 1 en esta dirección, ha ido 1 unidad de desviación estándar. 

#Y señalaría que para las normales no estándar, tiene mucho sentido y creo que los estadísticos simplemente se acostumbran a volver a la normalidad estándar en virtud de hablar sobre desviaciones estándar de la media. 

#Entonces, si desea saber la probabilidad de que una normal no estándar, esté entre mu más 1 sigma, de donde mu y sigma provienen de su distribución y mu menos 1 sigma. Entonces, ese sería el área entre 1 desviación estándar [RUIDO] de la media para la normal no estándar. 

#Bueno, esa es exactamente la misma área de probabilidad para uno, para, entre menos 1 y más 1 en la normal estándar. 

#Básicamente, todas las distribuciones normales se ven idénticas. Lo único que cambia son las unidades a lo largo del eje. 

#Y luego, si revierte, cuando habla de probabilidades normales de hablar de desviaciones estándar de la media, todas las probabilidades y todo vuelven a los cálculos normales estándar. Revisaremos algunos de los ejemplos, pero esa es la intuición. 

#Permítanme pasar por algunas probabilidades básicas de referencia en la distribución normal estándar y recurrir a ellas, tal vez esto nos ayudará a recordarlas. 

#Entonces, si hablamos de una desviación estándar de la media, en la distribución normal estándar o en cualquier distribución normal. 1 desviación estándar de la media, entonces aproximadamente el 34% debería estar aquí, y el 34% de la masa debería estar aquí. 

#De modo que esta área total dentro de 1 desviación estándar aquí [RUIDO] es del 68%. Veamos ahora dos desviaciones estándar. 


#Entonces esta área magenta aquí. 

#Entonces, si pasamos de menos dos a más dos, y esto está en cualquier distribución normal, la probabilidad de que sea, una distribución normal dentro de dos desviaciones estándar de la media. La masa de probabilidad asociada con eso es del 95%. 

#Eso deja 2.5% en cualquier cola. 

#Lo usaremos con frecuencia cuando hablemos de intervalos de confianza. Ahora veamos tres desviaciones estándar de la media. 

#Esa área es aproximadamente el 99% de la masa. Pensé que es difícil de leer, pero es aproximadamente el 99% de la masa. Entonces, estas probabilidades de referencia deberían comprometerse con la memoria. Repasemos algunas reglas simples para moverse entre normales normales y no estándar. 

#Entonces, si X es normal con mu media en sigma variable al cuadrado, entonces si convertimos las unidades si de X a desviaciones estándar de la media. 

#En otras palabras, reste la media mu y divida por la desviación estándar sigma. 

#La variable aleatoria resultante Z es una normal estándar. Por el contrario, si tenemos un estándar normal y volvemos a convertir las unidades a los datos originales. 

#En otras palabras, multiplicamos por sigma y sumamos la media. La variable aleatoria resultante X es normal no estándar con mu media y varianza sigma al cuadrado. 

#Ya hemos discutido este primer punto aquí. 

#Ese 68%, 95% y 99% de la distribución normal se encuentra dentro de 1, 2 y 3 desviaciones estándar de la media, respectivamente. 

#Hablemos también sobre algunos cuantiles normales estándar que deberíamos comprometer con la memoria. Estoy dibujando una distribución normal aquí. Y déjenme poner el punto, menos 1.28. La media es, por supuesto, 0, por supuesto, la distribución normal estándar. Ese punto es tal que el 10% de la densidad, por supuesto, esto no se dibuja a una escala muy buena, el 10% de la guarida, la densidad se encuentra debajo de ella y luego el 90% se encuentra por encima de ella. Ahora, para un estándar no necesariamente estándar, no estándar, este punto no es negativo 1.28, es mu menos 1.28 veces sigma.


#Y este punto aquí es mu. Pero entonces eso seguiría la misma regla. El 10% de esta distribución normal potencialmente no estándar se encuentra por debajo del punto mu menos 1,28 sigma. Por simetría, este punto aquí, 1.28 en la distribución normal estándar, es el cuantil, de modo que el 10% se encuentra por encima. 

#Para una normalidad potencialmente no estándar, este punto sería mu más 1.28 veces sigma.

#Entonces, este punto 1.28, en la normal estándar y mu más 1.28 veces sigma en la normal potencialmente no estándar. Sería el punto tal que el 10% se encuentra por encima y el 90% se encuentra por debajo. 


#Hagamos uno más. 


#Uno de los cuantiles más importantes que debemos recordar es 1.96, o lo suficientemente cerca de 2, a menudo lo redondeamos a 2. Negativo 1.96 es el punto de tal manera que el 2.5% de la masa de la distribución normal se encuentra debajo de él. Y positivo 1.96 es el punto tal que el 2.5% de la masa se encuentra por encima de él. 

#Esto significaría que el 97.5% se encuentra por encima de este punto aquí mismo, y el 97.5 por debajo de ese punto allí mismo. De modo que el 95% se encuentra en el medio. 

#Si se trata de una normal potencialmente no estándar, observe que es mu menos 1.96 veces sigma y mu más 1.96 veces sigma. O, de nuevo, el centro sería nuevo y para la normal estándar, el centro sería 0. 

#Por supuesto, observe este cálculo para la normal estándar cuando conecte mu igual a 0 y sigma igual a 1, solo por supuesto le devuelve el número correcto, 1.96 por sí mismo. Veamos algunos cálculos rápidos de dificultad creciente. 

#Entonces, ¿cuál es el percentil 95 de una distribución cuadrada normal de mu sigma? 

#En otras palabras, queremos que el punto X.95 de una distribución normal tenga una media mu en la variante sigma al cuadrado de modo que el 95% se encuentre debajo de él. Desea que sea 95% y que sea 5%. Entonces este es el valor si tuviéramos que tomar muestras de esta población. 

#Este sería el punto tal que el 95% de las muestras serían más pequeñas que si tuviéramos que extraer una muestra suficientemente grande. 

#La respuesta fácil es usar el calificador q para la densidad en R. En este caso, qnorm y el quintil que queremos .95. 

#Y asegúrese de que conectamos la media, mu y desviación estándar que queremos. La raíz cuadrada de sigma al cuadrado. Asegúrese de conectar el estándar desviación no las variantes. Pero hay otra forma de hacer esto que es fácil. 

#Porque tenemos nuestros cuartiles normales estándar memorizados. Entonces sabemos para la normal estándar que está centrada en 0 y las unidades a lo largo del eje son unidades de desviación estándar de la media. 

#Que el punto 1.645 desviaciones estándar de la media es el punto tal que el 95% se encuentra por debajo de él. Y el 5% se encuentra por encima. Entonces, sabemos que para una normal no estándar, el punto que sigue a la misma probabilidad, el cuantil que tiene el mismo 95% por debajo y 5% por encima. 

#Tiene que ser exactamente 1.645 desviaciones estándar de la media. Entonces podemos simplemente tomar mu plus sigma multiplicado por 1.645 y eso tendrá que darnos nuestra respuesta. Permítanme responder una pregunta muy genérica y, a medida que avancemos en ella, creo que informará algunas de nuestras próximas dos preguntas en las que ponemos algo de contexto. 

#Entonces, ¿cuál es la probabilidad de que un mu sigma cuadrado normal sea mayor que x? Así que tome nuestra distribución normal que no es estándar, por lo que está centrada en mu. Y el ancho se rige por la variable sigma al cuadrado. Y tome un punto X, nos gustaría saber qué es esta área aquí. 

#Por lo tanto, en R, podríamos hacer pnorm, x significa igual a mu, desviación estándar es igual a sigma, por supuesto, recuerde que agrega el valor sigma, no el valor cuadrado sigma. De lo contrario, te equivocarás. 

#Y luego queremos lower.tail es igual a false para decirle a R que queremos la cola superior en lugar de la cola inferior. 

#O podría omitir eso, podría omitir eso y hacer 1 menos eso. 

#Bueno, esa es la manera fácil. Pero es una manera conceptualmente fácil de hacerlo y de una manera que podemos hacer estas cosas en mi cabeza y tener una idea de cómo son las probabilidades con bastante rapidez. 

#Es convertir X en cuántas desviaciones estándar de la media es. Para hacer eso, simplemente tomamos X, restamos la media mu y dividimos por la desviación estándar sigma. Este nuevo número aquí es simplemente X expresado en cuántas desviaciones estándar de la media es. Entonces, por ejemplo, si esto resulta ser alrededor de dos desviaciones estándar de la media, sabemos que eso debería ser alrededor del 2.5%. 

#Pongamos un poco de contexto alrededor de esto al considerar un ejemplo específico. Suponga que el número de clics diarios en los anuncios para las empresas se distribuye aproximadamente con una media de 1.020 clics por día y una desviación estándar de 50 clics por día. 

#Bueno, supongamos que los días get son una especie de muestra aleatoria de días, en el sentido de que si hablamos de un día específico, es un sorteo de esta distribución general. 

#¿Cuál es la probabilidad de obtener más de 1.060 clics en un día determinado? 

#Bueno, 1.160 clics es 2.8 desviaciones estándar de la media. Entonces, sabemos que esta probabilidad tiene que ser bastante baja porque se trata de 3, casi 3 desviaciones estándar de la media.

#Recordamos, recordamos que 3 desviaciones estándar están bastante lejos fuera en la cola de lo normal. Entonces sabemos que esta probabilidad tiene que ser bastante pequeña. 

#Pero trabajemos en ello. Entonces no es muy probable. Podemos obtener eso con pnorm, 1,160, la media es igual a 1,020, la desviación estándar es igual a 50. Y ponemos la cola inferior es igual a falsa porque queremos que la probabilidad sea mayor que ella. 

pnorm(1160, mean = 1020, sd = 50, lower.tail = FALSE)

#Y obtenemos .003 aproximadamente. Solo para ilustrar que si hacemos este cálculo directamente usando la distribución normal estándar, donde hemos expresado 1,160 como el número de desviaciones estándar de la media que es, entonces obtenemos la misma respuesta. 

#Conecto pnorm 2.8 y hago lower.tail es igual a falso y, por supuesto, nos da el mismo número. 

pnorm(2.8, lower.tail = FALSE)

#Así que hemos hecho un cálculo de probabilidad, hagamos un cálculo cuantil que sea similar. 


#Suponga que el número de clics diarios en los anuncios de esta empresa se distribuye aproximadamente de manera normal con una media de 1020 y una desviación estándar de 50. ¿Qué número de clics diarios en los anuncios representaría aquel en el que el 75% tiene menos clics? 

#Y nuevamente asumiremos que los días son nuestra muestra aleatoria de una población de días. 

#Hay muestras Así que no nos preocupará si un día está cerca de otro día. Va a estar más relacionado o si los días de fin de semana tienen más clics o menos clics que los días de la semana. O cualquiera de estas complejidades que aprenderemos más adelante en la clase sobre cómo lidiar mejor. 

#Hagamos un poco de trabajo de scratch antes de ir a R y hacer el cálculo. Aquí está nuestra distribución normal con 1,020. Porque 1,020 es tanto la media como la mediana de esta distribución normal específica. Sabemos que ese punto es el punto donde aproximadamente el 50% se encuentra debajo de él. Entonces, sea cual sea el número que obtengamos, debe estar por encima de 1020. 

#Considere también una desviación estándar por encima de la media, [RUIDO] 1070. Ese punto, recuerde, entre una desviación estándar, recuerde que fue 68%. Bueno, eso deja fuera esta pequeña cola aquí. Veamos si podemos pensar en eso. Bueno, si hay un 68% entre estos dos números, eso pondría un 32% fuera de él y luego un 16% en cualquier cola porque la distribución normal es simétrica. 

qnorm(0.75, mean = 1020, sd = 50)


#Entonces, a partir de 1070 a continuación, debería ser aproximadamente el 84%. Entonces sabemos que cualquier número que obtengamos debe estar entre 1,020 y 1,070. Y aquí está el comando aquí donde hacemos qnorm 0.75, media igual a 1.020 y desviación estándar igual a 50 y, por supuesto, obtenemos un número entre los dos números de los que estábamos hablando antes, 1.054.

