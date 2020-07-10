#Ejercicio No. 2 Prueba de Hipotesis

library(swirl)

#En esta lección, como su nombre lo indica, discutiremos las pruebas de hipótesis que se ocupan de tomar decisiones sobre las poblaciones utilizando datos observados.

#Un concepto importante en la prueba de hipótesis es la hipótesis nula, generalmente denotada como H_0. 
#Esta es la hipótesis que representa el status_quo y se supone verdadera. 

#Es una línea de base contra la cual está probando hipótesis alternativas, generalmente denotadas por H_a. 

#Se requiere evidencia estadística para rechazar H_0 a favor de la investigación o hipótesis alternativa.

#Consideraremos el ejemplo motivador de las diapositivas. 

#Un índice de alteración respiratoria (RDI) de más de 30 eventos / hora se considera evidencia de respiración severa con trastornos del sueño (SDB). 

#Suponga que en una muestra de 100 sujetos con sobrepeso con otros factores de riesgo para SDB en una clínica del sueño, la IDR media (X') fue de 32 eventos/hora con una desviación estándar de 10 eventos / hora.


#Queremos probar la hipótesis nula H_0 que mu = 30. Nuestra hipótesis alternativa H_a es mu> 30. 

#Aquí, mu representa la RDI media poblacional hipotética.

#Entonces tenemos dos hipótesis en competencia, H_0 y H_a, de las cuales tendremos que elegir una (usando evidencia estadística). 

#Eso significa que tenemos cuatro resultados posibles determinados por lo que realmente es (la verdad) y qué hipótesis aceptamos en función de nuestros datos. 

#Dos de los resultados son correctos y dos son errores.

#¿Cuál de los siguientes resultados sería correcto?


#H_a es VERDADERO y lo aceptamos

#¿Cuál de los siguientes resultados sería un error?
  
#1: H_a es FALSO y lo rechazamos
#2: H_0 es VERDADERO y lo rechazamos  #esta es
#3: H_a es VERDADERO y lo aceptamos
#4: H_0 es FALSO y lo rechazamos

#Los errores también son claros: rechazar una hipótesis verdadera o aceptar una falsa.

#Distinguimos entre estos dos errores. 

#Un error de tipo RECHAZA una hipótesis nula VERDADERA H_0 y un error de tipo II ACEPTA una hipótesis nula FALSA H_0.

#¿Podemos estar seguros de que tenemos toda la razón?

#1: No entremos en filosofía ahora
#2: sí
#3: no       #NO
#4: siempre

#Dado que hay un elemento de incertidumbre en las preguntas relacionadas con las poblaciones, tratamos con las probabilidades. 

#En nuestra prueba de hipótesis estableceremos la probabilidad de que los errores sean pequeños. Por ahora nos centraremos en los errores de tipo, rechazando una hipótesis correcta.

#Las probabilidades de cometer estos dos tipos de errores están relacionadas. Si disminuye la probabilidad de cometer un error de Tipo I (rechazando una hipótesis verdadera), aumenta la probabilidad de cometer un error de Tipo II (aceptando uno falso) y viceversa.

#Como en las diapositivas, consideraremos un tribunal de justicia estadounidense. La hipótesis nula es que el acusado es inocente. Si un hombre inocente es condenado, ¿qué tipo de error es este?

#Puede enviar al inocente a la cárcel rechazando H_0. Supongamos que una persona culpable no es condenada.

#¿Qué tipo de error es este?

#Typo II aceptando una hipotesis falsa


#De vuelta a dormir (ejemplo)! Una estrategia razonable rechazaría la hipótesis nula si nuestra media de muestra X 'fuera mayor que alguna constante C.

#Elegimos C para que la probabilidad de un error de Tipo I, alfa, sea 0,05 (o alguna otra constante favorita). Muchos artículos científicos usan .05 como un nivel estándar de rechazo.

#Esto significa que alfa, la tasa de error Tipo I, es la probabilidad de rechazar la hipótesis nula cuando, de hecho, es correcta. No queremos alfa demasiado bajo porque nunca rechazaríamos la hipótesis nula, incluso si es falsa.

#Recuerde que el error estándar de una media muestral viene dado por la fórmula s/sqrt(n).

#Recordemos en nuestro ejemplo de sueño que teníamos una muestra de 100 sujetos, nuestra IDR media (X') fue de 32 eventos/hora con una desviación estándar(s) de 10eventos/hora. ¿Cuál es el error estándar de la media en este ejemplo?

10/sqrt(100)

#Bajo H_0, X',se distribuye normalmente con una media mu = 30 y varianza.

#1. (Estamos estimando la varianza como el cuadrado del error estándar que en este caso es 1.)

#Queremos elegir la constante C para que la probabilidad de que X sea mayor que C dado H_0 es del 5%. Es decir, P(X>C|H_0) es 5%. 

#¿Suena familiar?

#Aquí hay una trama para mostrar lo que queremos decir.

# La parte sombreada representa el 5% del área bajo la curva y los valores de X en ella son aquellos para los cuales la probabilidad de que X> C sea del 5%.

qnorm(.95)

#El percentil 95 de una distribución normal estándar es 1.645 desviaciones estándar de la media, por lo que en nuestro ejemplo tenemos que establecer que C sea 1.645 desviaciones estándar MÁS que nuestra media hipotética de 30, es decir, C = 30 + 1.645 * 1 = 31.645 (recuerde que la varianza y la desviación estándar fueron iguales a 1).

#Esto significa que si nuestra OBSERVADA (muestra) significa X '> = C, entonces es solo un 5% de posibilidades de que un sorteo aleatorio de esta distribución N (30,1) sea mayor que C.


#Recuerde que nuestra media observada X'es 32, que es mayor que C = 31.645, por lo que cae en esa región del 5%.

#¿Qué hacemos con H_0?

#Rechazarla

#Entonces, la regla "Rechazar H_0 cuando la media de la muestra X'> = 31.645" tiene la propiedad de que la probabilidad de rechazar H_0 cuando es VERDADERO es del 5% dado el modelo de este ejemplo: media hipotética mu = 30, varianza = 1 yn = 100.

#En lugar de calcular una constante C como punto de corte para aceptar o rechazar la hipótesis nula, simplemente podemos calcular una puntuación Z, el número de desviaciones estándar de la media de la muestra de la media hipotética. Luego podemos compararlo con el cuantil determinado por alfa.

#Cómo hacemos esto? 

#Calcule la distancia entre las dos medias (32-30) y divida por el error estándar de la media, es decir (s / sqrt (n)).

#¿Cuál es el puntaje Z para este ejemplo? 

#Recordemos que la puntuación Z es X'-mu dividida por el error estándar de la media. En este ejemplo, X'= 32, mu=30 y el error estándar es 10/sqrt(100) = 1.

32-30/1

#La puntuación Z es 2. El cuantil es 1.645, entonces desde 2> 1.645. ¿Qué hacemos con H_0?

#Rechazarlo

#La regla general para el rechazo es si sqrt(n)*(X'-mu)/s> Z_ {1-alpha}.

#Nuestra estadística de prueba es (X'-mu)/(s/sqrt(n)), que es normal estándar.

#¿Esto significa que nuestra estadística de prueba tiene qué media y desviación estándar?

#0 y 1

#Vamos a revisar y ampliar. Nuestra hipótesis nula es que la media de la población mu es igual al valor mu_0 y alfa = .05. (Esta es la probabilidad de que rechacemos H_0 si es verdad). Podemos tener varias hipótesis alternativas diferentes.

#Supongamos que nuestra primera alternativa, H_a, es que mu <mu_0. 

#Rechazaríamos H_0 (y aceptaríamos H_a) cuando nuestra media de muestra observada sea significativamente menor que mu_0. 

#Es decir, nuestra estadística de prueba (X'-mu)/(s/sqrt(n)) es menor que Z_alpha. 

#Específicamente, es más de 1.64 desviaciones estándar a la izquierda de la media mu_0.  
  
#Aquí hay una trama para mostrar lo que queremos decir. 

#La parte sombreada representa el 5% del área bajo la curva y los valores de X en ella son aquellos que son al menos 1.64 desviaciones estándar menos que la media.

#La probabilidad de esto es del 5%. Esto significa que si nuestra media muestral cayó en esta área, rechazaríamos una hipótesis nula verdadera, mu = mu_0, con una probabilidad del 5%.

#Ya cubrimos la hipótesis alternativa H_a que mu> mu_0, pero revisemosla. Rechazaríamos H_0 (y aceptaríamos H_a) cuando nuestra media muestral es ¿qué?
  
#1: significativamente menor que mu_0 
#2: igual a mu_0
#3: ¿eh?
#4: significativamente mayor que mu_0 #Respuesta

#Esto significa que nuestra estadística de prueba (X'-mu)/(s/sqrt(n)) es ¿qué?

#1: al menos 1.64 std dev menor que mu_0
#2: al menos 1.64 std dev mayor que mu_0
#3: ¿eh?
#4: igual a mu_0


#Aquí nuevamente está la trama para mostrar esto. La parte sombreada representa el 5% del área bajo la curva y los valores de X en ella son aquellos que son al menos 1.64 desviaciones estándar mayores que la media. 

#La probabilidad de esto es del 5%. Esto significa que si nuestra media observada cayó en esta área, rechazaríamos una hipótesis nula verdadera, que mu = mu_0, con una probabilidad del 5%.


#Finalmente, consideremos la hipótesis alternativa H_a de que mu simplemente no es igual a mu_0, la media hipotetizada por la hipótesis nula H_0.

#Rechazaríamos H_0 (y aceptaríamos H_a) cuando nuestra media muestral sea significativamente diferente de mu_0, es decir, sea menor que o mayor que mu_0.

#Como queremos mantener una tasa de rechazo del 5%, la dividimos por la mitad y consideramos los valores en ambas colas, en los percentiles .025 y .975.

#Esto significa que nuestra estadística de prueba (X'-mu)/(s/sqrt(n)) es menor que .025, Z_ (alpha / 2), o mayor que .975, Z_ (1-alpha / 2).

#Aquí está la trama. 

#Como antes, la parte sombreada representa el 5% del área que compone la región de rechazo. Esta vez, sin embargo, se compone de dos piezas iguales, cada una con un 2.5% del área bajo la curva. 

#Los valores X en las partes sombreadas son valores que están al menos a 1.96 desviaciones estándar de la media hipotética.

#Tenga en cuenta que si rechazamos H_0, o fue FALSO (y, por lo tanto, nuestro modelo está equivocado y estamos en lo correcto al rechazarlo) O H_0 es VERDADERO y hemos cometido un error (Tipo I). La probabilidad de esto es del 5%.

#Como nuestras pruebas se basaron en alfa, la probabilidad de un error de Tipo I, decimos que "fallamos en rechazar H_0" en lugar de "aceptar H_0". Si no podemos rechazar H_0, entonces H_0 podría ser cierto O simplemente podríamos no tener suficientes datos para rechazarlo.

#No hemos corregido la probabilidad de un error de tipo II (aceptando H_0 cuando es falso), lo que llamamos beta. El término PODER se refiere a la cantidad 1-beta y representa la probabilidad de rechazar H_0 cuando es falso. Esto se utiliza para determinar tamaños de muestra apropiados en experimentos.

#¿Cómo crees que llamamos a la región de valores para la que rechazamos H_0?
  
#1: las colas onduladas
#2: la región de rechazo  #Respuesta
#3: la región de interés
#4: las colas sombrías
#5: la región anormal


#Tenga en cuenta que hasta ahora hemos estado hablando de distribuciones NORMALES e implícitamente confiando en el TEOREMA DE LÍMITE CENTRAL (CLT).

#Recuerda el CLT. Para que una distribución sea aproximada por una normal, ¿cuál debe ser el tamaño de la muestra?
  
#1: normal
#2: grande  #Respuesta
#3: pequeño
#4: anormal

#No hay necesidad de preocuparse. 

#Si no tenemos un tamaño de muestra grande, podemos usar la distribución t que usa convenientemente el mismo estadístico de prueba (X'-mu)/(s/sqrt(n)) que usamos anteriormente. Eso significa que todos los ejemplos que acabamos de pasar funcionarían exactamente igual, EXCEPTO en lugar de usar cuantiles NORMALES, usaríamos t cuantiles y n-1 grados de libertad.


#Dijimos que las distribuciones eran muy útiles, ¿no?

#Volvamos a nuestro ejemplo del trastorno del sueño y supongamos que nuestro tamaño de muestra = 16 (en lugar de 100). 

#Como antes,(media muestral) X'= 32,(desviación estándar) s=10. 

#H_0 dice la verdadera media mu=30, y H_a es que mu> 30. 

#Con este tamaño de muestra más pequeño, usamos la prueba t, pero nuestra estadística de prueba se calcula de la misma manera, a saber (X'-mu)/(s/sqrt(n))

#¿Cuál es el valor del estadístico de prueba (X'-mu) / (s / sqrt (n)) con tamaño de muestra 16?


(32-30)/(10/sqrt(16))

#¿Cuántos grados de libertad tenemos con un tamaño de muestra de 16?

15

#Bajo H_0, la probabilidad de que el estadístico de prueba sea mayor que el percentil 95 de la distribución t es del 5%. 

#Use la función R qt con los argumentos .95 y el número correcto de grados de libertad para encontrar el cuantil.

qt(.95,15)


#Entonces, el estadístico de prueba (.8) es menor a 1.75, el percentil 95 de la distribución t con 15 df.

#Esto significa que nuestra media muestral (32) no cae dentro de la región de rechazo ya que H_a era que mu> 30.

#Esto significa que?
  
#1: rechazamos H_0
#2: rechazamos H_a
#3: no podemos rechazar H_0  #Respuesta

#Ahora consideremos una prueba de dos lados. Supongamos que rechazaríamos la hipótesis nula si, de hecho, la media de la muestra fuera demasiado grande o demasiado pequeña.

#Es decir, queremos probar la alternativa H_a que mu no es igual a 30.

#Rechazaremos si el estadístico de prueba, 0.8, es demasiado grande o demasiado pequeño.

#Como discutimos antes, queremos que la probabilidad de rechazar bajo nulo sea del 5%, dividida equitativamente como 2.5% en la cola superior y 2.5% en la cola inferior. 

#Por lo tanto, rechazamos si nuestra estadística de prueba es mayor que qt (.975, 15) o menor que qt (.025, 15).

#¿Espera que qt (.975,15) sea más grande o más pequeño que qt (.95,15)?

#Grande

#Dado que el estadístico de prueba fue menor que qt (.95,15) ¿será mayor o menor que qt (.975,15)?

#Pequeño

#Ahora para la cola izquierda, qt (.025,15). ¿Qué podemos decir al respecto?
  
#1: es más grande que qt (.975,15)
#2: es menor que 0                #Es menor que cero
#3: es mayor que 0
#4: no sabemos nada al respecto


#La conclusión aquí es que si no rechaza la prueba unilateral, sabe que no podrá rechazar las dos caras.


#Entonces la estadística de prueba .8 falló en ambos lados de la prueba. Eso significa que nosotros?

#1: no rechazar H_0 #Respuesta
#2: ¿eh?
#3: rechazar H_a
#4: rechazar H_0

#Ahora generalmente no tenemos que hacer todo este cálculo nosotros mismos porque R proporciona la función t.test que felizmente hace todo el trabajo. 

#Para probar esto, proporcionamos un archivo csv con los datos de altura father_son del sitio web UsingR de John Verzani (http://wiener.math.csi.cuny.edu/UsingR/) y lo leemos en una estructura de datos fs para usted. Haremos una prueba t de estos datos emparejados para ver si padres e hijos tienen alturas similares (nuestra hipótesis nula).

#Mire las dimensiones de fs ahora usando la función R dim.

dim(fs)

#Entonces fs tiene 1078 filas y 2 columnas. Las columnas, fheight y sheight, contienen las alturas de un padre y su hijo. Obviamente hay 1078 de esos pares. Podemos ejecutar t.test en estos datos de una de dos maneras.

#Primero, podemos ejecutarlo con un solo argumento, la diferencia entre las alturas, digamos fs$ sheight-fs$fheight. 

#O podemos ejecutarlo con tres argumentos, las dos alturas más el argumento emparejado establecido en VERDADERO.

#Ejecute t.test ahora usando la forma que prefiera.

t.test(fs$sheight-fs$fheight)

#¿La estadística de prueba es qué?

#Entonces, el estadístico de prueba es 11.79, que es bastante grande, por lo que RECHAZAMOS la hipótesis nula de que la media real de la diferencia fue 0 (si ejecutó la prueba en la diferencia altura-altura) o que la verdadera diferencia en medias fue 0 (si usted ejecutó la prueba en las dos columnas separadas pero emparejadas).

#La estadística de prueba nos dice qué?
  
#1: el número de errores estándar estimados entre la muestra y las medias hipotéticas #Respuesta
#2: la verdadera varianza
#3: la verdadera media
#4: la media de la muestra

#Podemos probar esto multiplicando el estadístico t (11.7885) por la desviación estándar de los datos dividida por la raíz cuadrada del tamaño de la muestra. 

#Ejecute específicamente 11.7885 * sd(fs$sheight-fs$fheight)/sqrt(1078).

11.7885*sd(fs$sheight-fs$fheight)/sqrt(1078)

#Esto debería darte una coincidencia cercana a la media de x que t.test te dio, 0.9969728.

#Tenga en cuenta el intervalo de confianza del 95%, 0.8310296 1.1629160, devuelto por t.test. No contiene la media poblacional hipotética 0, por lo que estamos bastante seguros de que podemos rechazar la hipótesis de manera segura. Esto nos dice que nuestra hipótesis es incorrecta o estamos cometiendo un error (Tipo 1) al rechazarla.

#Probablemente haya notado la fuerte similitud entre los intervalos de confianza que estudiamos en la última lección y estas pruebas de hipótesis.

#¡Eso es porque son equivalentes!

#Si configura alfa en algún valor (digamos .05) y ejecutó muchas pruebas para verificar hipótesis alternativas contra H_0, que mu = mu_0, el conjunto de todos los valores posibles para los que no puede rechazar H_0 forma el (1-alfa)% (que es 95%) intervalo de confianza para mu_0.

#Del mismo modo, si un intervalo (1-alfa)% contiene mu_0, no podemos rechazar H_0.

#Veamos cómo funciona la prueba de hipótesis con distribuciones binomiales considerando el ejemplo de las diapositivas. Una familia tiene 8 hijos, 7 de los cuales son niñas y ninguno es gemelo. Supongamos que la hipótesis nula es que cualquiera de los dos géneros es igualmente probable, como un lanzamiento de moneda iid.

#Entonces nuestra H_0 es que p=.5, donde p es la probabilidad de una niña. 

#Queremos ver si deberíamos rechazar H_0 en base a esta muestra de tamaño 8. 

#Nuestra H_a es que p>.5, por lo que haremos una prueba unilateral, es decir, miraremos solo la cola derecha de la distribución.

#Establezcamos alfa, el nivel de nuestra prueba, en .05 y encontremos las probabilidades asociadas con diferentes regiones de rechazo, donde una región de rechazo i tiene al menos i-1 niñas de un posible 8.

#Hemos definido para usted un vector de 9 largos, mybin, que muestra nueve probabilidades, la i-ésima es la probabilidad de que haya al menos i-1 niñas de los 8 niños posibles. Mira mybin ahora.

mybin


#Entonces mybin[1]=1.0, lo que significa que con probabilidad 1 hay al menos 0 niñas, y mybin[2]=. 996 es la probabilidad de que haya al menos 1 niña de las 8, y así sucesivamente. 

#Las probabilidades disminuyen a medida que aumenta. ¿Cuál es el valor mínimo de i para el cual la probabilidad es menor que 0.05?


#mybin[7]=.144; mybin[8]=.035

#Solo poner 8

#Entonces mybin [8] =. 03 es la probabilidad de tener al menos 7 niñas de una muestra de tamaño 8 bajo H_0 (si p es realmente .5), que es lo que tiene nuestra muestra. 

#Esto es inferior a 0,05, por lo que nuestra muestra cae en esta región de rechazo. ¿Eso significa que aceptamos o rechazamos H_0 (que cualquier género es igualmente probable) en base a esta muestra de tamaño 8?

#Rechazamos H0

#Finalmente, notamos que una prueba de 2 lados significaría que nuestra hipótesis alternativa es que p no es igual a .5, y no es obvio cómo hacer esto con una distribución binomial. Sin embargo, no se preocupe, porque la próxima lección sobre valores p lo aclarará. Es interesante que para distribuciones discretas como binomial y Poisson, invirtiendo las pruebas de 2 lados es cómo R calcula las pruebas exactas.

#(No se basa en el CLT).

