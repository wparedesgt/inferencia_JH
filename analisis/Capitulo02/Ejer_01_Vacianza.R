#Ejercicio con Swirl 01 

library(swirl)

#Practiquemos calcular la varianza de un lanzamiento de dados ahora. 

#Primero necesitamos calcular E(X^2). 

#A partir de la definición de los valores esperados, esto significa que tomaremos una suma ponderada sobre todos los valores posibles de X^2.

#El peso es la probabilidad de que ocurra X.

#Para su comodidad, hemos definido un vector de 6 longitudes para usted, dice_sqr, que contiene los cuadrados de los enteros 1 a 6. Esto nos dará los valores X^2.

#Míralo ahora.

#dice_sqr

#Ahora necesitamos weights. Para estos, podemos usar cualquiera de los tres archivos PDF (dice_fair, dice_high y dice_low) que definimos en la lección anterior.

#Usando la capacidad de R para multiplicar vectores por componentes y su función 'sum', podemos calcular fácilmente E(X^2) para cualquiera de estos dados. Simplemente suma el producto dice_sqr * PDF.

#Pruebe esto ahora con dice_fair y ponga el resultado en una variable ex2_fair.

ex2_fair <- sum(dice_fair * dice_sqr)

#Recuerde que el valor esperado de una tirada justa de dados es 3.5. Resta el cuadrado de eso de ex2_fair para calcular la varianza de la muestra.

ex2_fair - 3.5^2


#Ahora use un enfoque similar para calcular la varianza muestral de dice_high en un solo paso. 

#Suma el producto apropiado y resta el cuadrado de la media. Recuerde que edh contiene el valor esperado de dice_high.

sum(dice_high * dice_sqr)-edh^2

#Tenga en cuenta que cuando hablamos de varianza estamos usando unidades cuadradas.

#Debido a que a menudo es más útil usar medidas en las mismas unidades que X, definimos la desviación estándar de X como la raíz cuadrada de Var (X).

#Aquí hay una figura de las diapositivas. Muestra varias distribuciones normales, todas centradas en una media común 0, pero con diferentes desviaciones estándar. Como puede ver en la tecla de color a la derecha, cuanto más delgada es la campana, más pequeña es la desviación estándar y cuanto más grande es la desviación estándar, más gruesa es la campana.

#Al igual que distinguimos entre una media poblacional y una media muestral, debemos distinguir entre una varianza poblacional sigma^2 y una varianza muestral s^2. 

#Se definen de manera similar pero con una ligera diferencia. La varianza muestral se define como la suma de n distancias al cuadrado de la media muestral dividida por (n-1), donde n es el número de muestras u observaciones. 

#Dividimos por n-1 porque este es el número de grados de libertad en el sistema. 

#Las primeras muestras u observaciones n-1 son independientes dada la media. El último no es independiente, ya que se puede calcular a partir de la media muestral utilizada en la fórmula.

#En otras palabras, la varianza de la muestra es CASI la desviación cuadrática promedio de la media de la muestra.

#Al igual que con la media muestral, la varianza muestral también es una variable aleatoria con una distribución poblacional asociada. Su valor esperado o media es la varianza de la población y su distribución se concentra más alrededor de la varianza de la población con más datos. La desviación estándar de la muestra es la raíz cuadrada de la varianza de la muestra.

#Para ilustrar este punto, considere esta figura que traza la distribución de 10000 variaciones. 

#Cada variación se calculó en una muestra de normales estándar de tamaño 10. La línea vertical indica la desviación estándar 1.

#Aquí hacemos el mismo experimento pero esta vez (el bulto más alto) cada una de las 10000 variaciones tiene más de 20 muestras normales estándar. Hemos trazado el primer gráfico (el bulto más corto) y puede ver que la distribución de las variaciones se está volviendo más estrecha y se está acercando a la línea vertical.


#Finalmente, repetimos el experimento usando 30 muestras para cada una de las 10000 variaciones. Puede ver que con más datos, la distribución se concentra más en torno a la varianza de la población que está tratando de estimar.

#Ahora recuerde que las medias de los estimadores imparciales son iguales a los valores que están tratando de estimar. Podemos deducir de lo anterior que la varianza de la muestra es un estimador imparcial de la varianza de la población.

#Recuerde que el promedio de muestras aleatorias de una población es en sí mismo una variable aleatoria con una distribución centrada alrededor de la media de la población. Específicamente, E(X ') = mu, donde X' representa una media muestral y mu es la media poblacional.

#Podemos mostrar que, si la población es infinita, la varianza de la media muestral es la varianza poblacional dividida por el tamaño de la muestra.

#Específicamente, Var(X') = sigma^2/n. 

#Analicemos esto en cuatro pasos cortos.


#¿Cuál de los siguientes es igual a Var (X')? 

#Aquí X 'representa la media de la muestra y 'Sum(X_i)' representa la suma de las n muestras X_1, ... X_n. 

#Suponga que estas muestras son independientes.

#Var(1/n * Sum(X_i))

#¿Cuál de los siguientes es igual a Var(1/n*Sum X_i))?

#1/n^2*Var(Sum(X_i))

#Recuerde que Var es un valor esperado y que los valores esperados son lineales.

#Recuerde también que nuestras muestras X_1, X_2, ..., X_n son independientes.

#¿A qué equivale Var(Sum (X_i))?

#Sum(Var(X_i))

#Finalmente, cada X_i proviene de una población con varianza sigma^2.

#¿A qué equivale Sum(Var(X_i))? 

#Como antes, Sum se toma sobre n valores.

#n*(sigma)^2

#Así que hemos demostrado que:

#Var(X')=Var(1/n*Sum(X_i)) = (1/n^2)*Var(Sum(X_i)) = (1/n^2)*Sum(sigma^2) = sigma^2/n

#Para poblaciones infinitas cuando nuestras muestras son independientes.


#La desviación estándar de una estadística se denomina error estándar, por lo que el error estándar de la media muestral es la raíz cuadrada de su varianza.

#Acabamos de demostrar que la varianza de una media muestral es:

#sigma^2/n y la estimamos con:

#s^2/n. 

#De ello se deduce que su raíz cuadrada.

#s/sqrt(n), es el error estándar de la media muestral.


#La desviación estándar de la muestra, s, nos dice qué tan variable es la población, y s/sqrt(n), el error estándar, nos dice cuánto varían los promedios de muestras aleatorias de tamaño n de la población.

#Veamos esto con algunas simulaciones.


#La función R rnorm(n,mean,sd), genera n muestras normales aleatorias independientes (por lo tanto, no correlacionadas) con la media y la desviación estándar especificadas. 

#Los valores predeterminados para este último son la media 0 y la desviación estándar 1. 

#Escriba la expresión sd(apply(matrix(rnorm(10000),1000),1,mean)) en el indicador.

sd(apply(matrix(rnorm(10000),1000),1,mean))

#Esto devuelve la desviación estándar de 1000 promedios, cada uno de una muestra de 10 números normales aleatorios con media 0 y desviación estándar 1. 

#La teoría nos dice que el error estándar, s/sqrt(n), de las medias muestrales indica cuántos promedios de muestras aleatorias de tamaño n(en este caso 10) varían. 

#Ahora calcule 1/sqrt(10) para ver si coincide con la desviación estándar que acabamos de calcular con nuestra simulación.

1/sqrt(10)

#Bastante cerca, ¿verdad? Probemos algunos más. 

#Las distribuciones uniformes estándar tienen varianza 1/12. La teoría nos dice que el error estándar de medias de muestras independientes de tamaño n tendría qué error estándar?

#1/sqrt(12*n)

#Calcule 1/sqrt(120). Este sería el error estándar de las medias de muestras uniformes de tamaño 10.

1/sqrt(120)

#Ahora verifíquelo como lo hicimos antes. Use la expresión sd (apply (matrix (runif (10000), 1000), 1, mean)).

sd (apply(matrix(runif(10000),1000), 1, mean))

#Bastante cerca de nuevo, ¿verdad? Poisson (4) son distribuciones con varianza 4;

#¿Qué error estándar significaría tener muestras aleatorias de n Poisson (4)?

#2/sqrt(n)

#Haremos otra simulación para probar la teoría. 

#Primero, suponga que está tomando promedios de 10 muestras de Poisson(4) y calcule el error estándar de estas medias. 

#Usa la fórmula que acabas de elegir.

2/sqrt(10)

#Ahora verifíquelo como lo hicimos antes. Use la expresión sd (apply (matrix (rpois (10000,4), 1000), 1, mean))

sd(apply(matrix(rpois(10000,4),1000),1,mean))

#Como magia, ¿verdad? 

#Una prueba final. Los lanzamientos de monedas tienen una varianza de 0.25; medios de muestras aleatorias de n lanzamientos de monedas tienen qué error estándar?

#1/(2*sqrt(n))

#Ya sabes que hacer. Suponga que está tomando promedios de 10 lanzamientos de monedas y calcule el error estándar de estos medios con la fórmula teórica que acaba de elegir.

1/(2*sqrt(10))

#Ahora verifíquelo como lo hicimos antes. Use la expresión sd(apply(matrix(sample(0:1,10000,TRUE), 1000),1, mean)).

sd(apply(matrix(sample(0:1,10000,TRUE), 1000),1, mean))

#Finalmente, aquí hay algo interesante. 

#La desigualdad de Chebyshev ayuda a interpretar las variaciones. Establece que la probabilidad de que una variable aleatoria X sea al menos k desviaciones estándar de su media es menor que 1/(k^2).

#En otras palabras, la probabilidad de que X sea al menos 2 desviaciones estándar de la media es menor que 1/4, 3 desviaciones estándar 1/9, 4 desviaciones estándar 1/16, etc.

#Sin embargo, esta estimación es bastante conservadora para las variables aleatorias que normalmente se distribuyen, es decir, con distribuciones de curva de campana. 

#En estos casos, la probabilidad de tener al menos 2 desviaciones estándar de la media es aproximadamente del 5% (en comparación con el límite superior de Chebyshev del 25%) y la probabilidad de tener al menos 3 desviaciones estándar de la media es aproximadamente del 2%.


#Suponga que tiene una medida que fue 4 desviaciones estándar de la media de la distribución. 

#¿Cuál sería el límite superior de la probabilidad de que esto suceda utilizando la desigualdad de Chebyshev?

#1/16


#Ahora para revisar. La varianza de la muestra estima qué?

#la varianza de la poblacion

#¿En qué se centra la distribución de la varianza muestral?

#Varianza de la poblacion


#Verdadero o falso: la varianza de la muestra se concentra más en torno a la varianza de la población con tamaños de muestra más grandes

#Verdadero

#La varianza de la media muestral es la varianza poblacional dividida por?

#n

#El error estándar de la media muestral es la desviación estándar muestral dividida entre?

#sqrt(n)







