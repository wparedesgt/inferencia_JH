#Ejer_03_Resampling

library(swirl)

#¡En esta lección, obtienes un bono! Hablaremos de dos temas en inferencia estadística, bootstrapping y pruebas de permutación. Ambos caen dentro de la categoría más amplia de métodos de remuestreo. Comenzaremos con bootstrapping.

#El bootstrap es una herramienta útil para hacer inferencias estadísticas. 

#Se utiliza para construir intervalos de confianza y calcular errores estándar para estadísticas que pueden ser difíciles por alguna razón (por ejemplo, falta de datos o falta de forma cerrada). Wikipedia nos dice que el bootstrapping es una técnica que "permite estimar la distribución de muestreo de casi cualquier estadística usando métodos muy simples". Lo simple es bueno, ¿verdad?

#La belleza del bootstrapping es que evita las matemáticas complicadas y en su lugar utiliza la simulación y la computación para inferir propiedades de distribución que de otro modo no podría determinar.

#Es relativamente nuevo, desarrollado en 1979, por Bradley Efron, un estadístico de Stanford. 

#El principio básico de bootstrap utiliza datos OBSERVADOS para construir una distribución de población ESTIMADA usando muestreo aleatorio con reemplazo. 

#A partir de esta distribución (construida a partir de los datos observados) podemos estimar la distribución de la estadística que nos interesa.

#Entonces, ¿en bootstrapping los datos observados sustituyen a qué?
  
#1: una estadística
#2: una población
#3: observaciones     ###
#4: una hipótesis

#En efecto, la muestra original observada sustituye a la población. 

#Nuestros muestreos se convierten en observaciones a partir de las cuales estimamos una estadística y tenemos una idea sobre su distribución. Esto nos permite comprender mejor la población subyacente (de la que no teníamos suficientes datos).


#Aquí hay un punto crítico. Al construir la distribución estimada, tomamos muestras de los datos observados con reemplazo. Si la muestra original es n larga y tomamos muestras n veces sin reemplazo, ¿qué obtendríamos?
  
#1: una muestra peor
#2: la muestra original permutada     ####
#3: una muestra completamente nueva
#4: una mejor muestra

#El ejemplo motivador de las diapositivas implica calcular el promedio de 50 tiradas de un dado. Por supuesto, podemos hacer esto teóricamente cuando sabemos que el dado es justo. Recuerde, E(x)= Suma (x * p (x)) para x = 1,2, ... 6, y p (x) = 1/6 para todos los valores de x.

#Por lo demás, calcule la tirada de dados esperada para un dado justo.

sum(1:6)/6

#Teóricamente, el promedio es 3.5. Aquí, ejecutamos el código y trazamos un histograma después de tomar 1000 promedios, cada uno de 50 tiradas de dados.

#Tenga en cuenta la inusual escala del eje y. Estamos mostrando esto como una función de densidad, por lo que el área de la región de color salmón es teóricamente 1.

#Sin embargo, con esta escala, todas las alturas de los contenedores en realidad suman 5.

#Entonces debes multiplicar cada altura por .2 y sumar todos los resultados para obtener 1.

#El punto es que lo empírico coincide con lo teórico. ¡Hurra! El bin más alto está centrado en 3.5 tal como lo predijeron las matemáticas. ¿Y qué?

#¿Qué pasaría si algún bromista quisiera que hicieras el mismo experimento con un dado que te dio y te advirtió que los dados estaban cargados? En otras palabras, no fue justo. Tiene una distribución aleatoria como esta.

#Los resultados no son igualmente probables, ¿verdad? Entonces, cuando haces tus 1000 corridas de 50 rollos cada una, la densidad de los medios se ve diferente.

#Hemos hecho esto por usted y hemos puesto el resultado en g2. Escriba print (g2) ahora para ver la imagen.

print(g2)

#La imagen es un poco diferente, ¿verdad? Aunque este ejemplo es un poco artificial, ilustra un concepto importante. Realmente queremos una distribución de medios y solo tenemos un conjunto de observaciones.

#(En este caso, fue la distribución empírica asociada con el dado injusto: la gran imagen azul). Utilizamos esa distribución para "crear" muchas (1000) distribuciones mediante muestreo con reemplazo del dado. Realizamos muestreos de 50000 veces, por lo que creamos 1000 distribuciones de 50 rollos cada una.


#Luego calculamos la media de cada una de nuestras distribuciones creadas y obtuvimos una distribución de medias.

#El muestreo de una distribución muchas veces nos da cierta variabilidad en las estadísticas resultantes que calculamos. Luego podemos calcular el error estándar y los intervalos de confianza asociados con la estadística.

#Antes de pasar a más teoría, aquí hay otro ejemplo en el que trataremos de encontrar una distribución de medianas de una población. ¿Recuerdas lo que es una mediana?
  
#1: el resultado más frecuente
#2: percentil 50  ###
#3: una persona que habla con espíritus
#4: un punto a medio camino entre raro y bien hecho

#Recordemos los datos de altura de padre e hijo. Una vez más, lo hemos cargado para usted. Hemos colocado la altura de los hijos en el vector sh y la longitud de este vector se almacena en la variable nh. Use comando head() R para ver las primeras entradas de sh.

head(sh)

#Ahora mira nh para ver cuánto dura sh.

nh

#Ahora crearemos 1000 distribuciones de la misma longitud que el sh original. Haremos esto muestreando sh con reemplazo 1000 * nh veces y almacenaremos los resultados en una matriz con 1000 filas, cada una con entradas nh.

#Luego tomaremos la mediana de cada fila y trazaremos el resultado.

#Tenga en cuenta que cada vez que extraemos de la distribución empírica sh, cada uno de sus puntos de datos nh es igualmente probable que se extraiga, por lo tanto, la probabilidad de dibujar cualquiera es 1 / nh. Las 1000 muestras que creamos variarán del original.


#Aquí está la curva de densidad resultante. Esto estima la distribución de medianas. La línea vertical gruesa muestra dónde se encuentra la mediana de los datos originales observados.

#Almacenamos las 1000 medianas de los conjuntos muestreados en el vector resampledMedians. Use la mediana de la función R para calcular la mediana de los números en este vector.


median(resampledMedians)

median(sh)

#Bastante cerca, ¿verdad? Ahora de vuelta a la teoría. Suponga que tiene una estadística que estima algún parámetro de población, pero no conoce su distribución de muestreo. El principio bootstrap utiliza la distribución definida por los datos observados para aproximar la distribución de muestreo de esa estadística.

#Lo bueno de bootstrapping es que siempre puedes hacerlo con simulación. El procedimiento general sigue simulando primero conjuntos completos de datos B a partir de los datos observados mediante muestreo con reemplazo. Asegúrese de que B es grande y que está muestreando CON reemplazo para crear conjuntos de datos del mismo tamaño que el original.

#Esto se aproxima a partir de la distribución de muestreo de esa estadística, al menos, así como los datos se aproximan a la verdadera distribución de la población. 

#Al calcular la estadística para cada conjunto de datos simulados y usar estas estadísticas simuladas, podemos definir un intervalo de confianza (por ejemplo, encontrar los percentiles 2.5 y 97.5) o tomar la desviación estándar para estimar un error estándar de esa estadística.

#Tenga en cuenta que este proceso no utiliza matemáticas o asintóticas elegantes.

#La única suposición detrás de esto es que la muestra observada es representativa de la población subyacente.

#Hemos creado el vector fh para usted que contiene las alturas de los padres a partir de los datos de padre e hijo con los que hemos estado trabajando. 

#Tiene la misma longitud que los datos de los hijos (1078) que se almacenan en nh. B, el número de bootstraps que queremos se ha establecido en 1000. Ahora haremos un ejemplo en pequeños pasos.

#Nuestra única muestra de datos observados está en el vector fh. Utilice la función R  sample() para muestrear fh nh * B veces. Establezca el argumento replace en TRUE. Ponga el resultado en la variable sam.

sam <- sample(fh, nh*B, replace = TRUE)

#Ahora forme sam en una matriz con B filas y columnas nh. Use la funcion R  matrix() y ponga el resultado en resam.

resam <- matrix(sam, B, nh)

#Ahora use la función R apply() para tomar la mediana (tercer argumento) de cada fila de resam (primer argumento). Ponga el resultado en meds. El segundo argumento, el número 1, especifica que la aplicación de la función es a las filas del primer argumento.


meds <- apply(resam, 1, medianresam)


#Ahora mire la diferencia entre la mediana de fh y la mediana de meds.

median(meds)-median(fh)

#Bastante cerca, ¿verdad? Ahora use la función R sd para estimar el error estándar de los vectores meds.

sd(meds)


#Anteriormente hicimos este mismo proceso para los datos de los hijos y almacenamos las medianas muestreadas en los vectores medianos de 1000 muestras. Encuentre el error estándar de medianos resampled.

sd(resampledMedians)
     
#Ahora encontraremos un intervalo de confianza del 95% para los datos de los hijos con el cuantil de la función R. 

#El primer argumento es el vector de medianos resampled y el segundo es la expresión c (.025, .975). Hacer esto ahora.

quantile(resampledMedians, c(.025,.975))

#Cuantiles bastante cercanos, ¿verdad? Ahora haga lo mismo para los datos de los padres. Recuerde que está almacenado en el vector meds.

quantile(meds, c(.025,.975))

#Otro par de cuantiles cercanos, pero observe que estos cuantiles de las medianas de los padres difieren de los de los hijos.

#Bootstrapping es un tema muy diverso y complicado y acabamos de ver la superficie aquí. La técnica que le mostramos no es paramétrica, es decir, no se basa en ninguna familia parametrizada de distribuciones de probabilidad. Utilizamos solo un conjunto de observaciones que asumimos que son representativas de la población.

#Finalmente, los intervalos de confianza que calculamos podrían no funcionar muy bien debido a sesgos, pero el paquete de arranque R proporciona una solución fácil para este problema.

#Ahora, a las pruebas de permutación, otra herramienta útil utilizada en las comparaciones grupales. Como lo hizo el bootstrapping, las pruebas de permutación muestrean un solo conjunto de datos un billón de veces y calculan una estadística basada en estos muestreos.


#Sin embargo, las pruebas de permutación se basan en la idea de intercambiabilidad de etiquetas de grupo. Mide si los resultados son independientes de la identidad del grupo. Nuestras millones de muestras simplemente permutan las etiquetas de grupo asociadas con los resultados. Veremos un ejemplo de esto.

#Aquí hay una imagen del conjunto de datos InsectSprays que contiene recuentos de la cantidad de errores eliminados por seis aerosoles diferentes.

#Usaremos pruebas de permutación para comparar Spray B con Spray C.

dim(InsectSprays)

names(InsectSprays)


#Utilizaremos las pruebas de permutación para comparar Spray B con Spray C. Subconjuntos de datos para estos dos aerosoles en un subdato de marco de datos.

#Además, los dos marcos de datos Bdata y Cdata contienen los datos de sus respectivos aerosoles.

range(Bdata$count)

range(Cdata$count)


#De los rangos (así como de la imagen), los aerosoles se ven muy diferentes. Pondremos a prueba la hipótesis nula (obviamente falsa) de que sus medias son las mismas.

#Para facilitar el análisis, hemos definido dos matrices para usted, una con los recuentos para los aerosoles B y C. Se llama BCcounts. Míralo ahora.

BCcounts

#La segunda matriz que hemos definido contiene la identificación del aerosol y se llama grupo. Estas dos matrices se alinean entre sí, es decir, las primeras 12 entradas de conteos están asociadas con el aerosol B y las últimas 12 con el aerosol C. Mire el grupo ahora.

group

#También hemos definido para usted una función testStat de una línea que toma dos parámetros, una matriz de conteos y una matriz de identificadores asociados. 

#Supone que todos los recuentos provienen del grupo B o del grupo C. Resta la media de los recuentos del grupo C de la media de los recuentos del grupo B. Escriba testStat sin paréntesis y sin argumentos para ver cómo se define.

testStat

#Ahora establezca una variable obs invocando testStat con los argumentos BCcounts y group y asignando el resultado a obs.

obs <- testStat(BCcounts, group)

#Echa un vistazo a obs ahora.

obs

#Gran diferencia, ¿verdad? Puede verificar esto usando mean en Bdata$count y en Cdata$count y restando este último del primero. 

#De manera equivalente, puede aplicar la mean a Bdata$count-Cdata$count. Haz cualquiera de los dos ahora.

mean(Bdata$count-Cdata$count)


#Entonces, mean(Bdata$count)- mean(Cdata$count) es igual a mean(Bdata$count-Cdata$count) porque?
  
#1: los datos son especiales
#2: matemática
#3: la media es lineal ##

#Ahora aquí es donde la prueba de permutación comienza a involucrar remuestreo. Vamos a probar si la asociación grupal particular de los recuentos afecta o no la diferencia de las medias.

#Mantendremos el mismo conjunto de recuentos, simplemente los etiquetaremos al azar, permutando el conjunto de grupos. R hace que este proceso sea muy fácil. Llamar a la función  sample (que hemos usado varias veces en esta lección) con un argumento, un nombre de matriz, simplemente permutará los elementos de esa matriz.

#llamar sample ajora en el grupo de array.

sample

sample(group)

#Las etiquetas están todas mezcladas ahora. Haremos esta permutación de etiquetas y luego volveremos a calcular la diferencia de las medias de los dos grupos "nuevos" (realmente recién etiquetados).

#Reetiquetaremos y calcularemos la diferencia de medias 10000 veces y almacenaremos las diferencias (de means) en los permisos de la matriz. Esto es lo que parece el código perms <- sapply (1: 10000, function (i) testStat (BCcounts, sample (group))). Pruebalo ahora.

perms <- sapply (1:10000, function(i) 
testStat (BCcounts, sample (group)))

#Podemos tomar la media de la matriz virtual de la expresión booleana perms> obs. Hacer esto ahora.

mean(perms>obs)

#Entonces, en promedio, 0 de las permutaciones tuvieron una diferencia mayor que la observada. Eso significa que rechazaríamos la hipótesis nula de que las medias de los dos aerosoles eran iguales.

#Aquí hay un histograma de la diferencia de las medias. 

#Parece bastante normal, ¿verdad? Podemos ver que la distribución corre aproximadamente entre -10 y +10 y está centrada alrededor de 0. 

#La línea vertical muestra dónde estaba la diferencia de medias observada y vemos que está bastante lejos de la distribución de las permutaciones muestreadas. Esto significa que la identificación del grupo sí importó y los aerosoles B y C fueron bastante diferentes.

#Aquí está la imagen de los InsectSprays nuevamente. Supongamos que ejecutamos el mismo experimento, esta vez comparando los aerosoles D y E, que se parecen más. Hemos redefinido testStat para observar estos aerosoles y restar la media de la pulverización E de la media de la pulverización D.

#También hemos almacenado los datos D y E en DEcounts y las etiquetas de grupo en group. Ejecute testStat ahora con DEcounts y group.

testStat(DEcounts, group)

#Hemos almacenado este valor, 1.416667, en la variable obs para usted. Ahora ejecute el comando de permutación, con DEcounts. Aquí está, perms <- sapply (1: 10000, function (i) testStat (DEcounts, sample (group)))


perms <- sapply(1:10000,function(i)testStat(DEcounts, sample (group)))


#Finalmente, podemos trazar el histograma de la distribución de la diferencia de las medias. Vemos que con estos aerosoles la diferencia de medias observada (la línea vertical) está más cerca de la media de las etiquetas permutadas. Esto indica que los aerosoles D y E son bastante similares y no podemos rechazar la hipótesis nula de que las medias eran iguales.

