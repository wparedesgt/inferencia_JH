#Error Estadard y el Promedio

#Así que ahora hemos hablado mucho sobre las variaciones e incluso hemos tocado un poco la distribución de las variaciones de muestra. 

#Ahora hablemos nuevamente sobre la distribución de medias muestrales. 

#Por lo tanto, recuerde que el promedio de números que se toman de una población es en sí mismo una variable aleatoria. 

#Tiene su propia media poblacional y varianza poblacional. 

#Sabemos que esa media poblacional es la misma que la población original. 

#De hecho, también tenemos un resultado que relaciona su varianza con la varianza de la población original. 

#De hecho, es sigma al cuadrado de la varianza de la población original original dividida por n.

#Entonces, la varianza de la media de la muestra disminuye a cero a medida que acumula más datos.

#Que es exactamente lo que sabemos, que la media se vuelve más concentrada a medida que recopilamos más datos, más concentrada sobre la población significa que está tratando de estimar. 

#Esto es muy útil porque solo obtenemos una media de muestra en un conjunto de datos dado. No obtenemos muchas versiones repetidas para investigar su variabilidad como lo hacemos en estos experimentos de simulación fabricados. 

#Entonces, podemos estimar sigma al cuadrado, y sabemos n, por lo que en realidad sabemos bastante sobre la distribución de la media muestral a partir de los datos que observamos. Entonces, la raíz cuadrada de la estadística es sigma sobre raíz cuadrada n se llama error estándar de la media y usamos esta notación, llamamos una desviación estándar de la distribución de una estadística, lo llamamos error estándar. 

#Entonces, hablamos del error estándar de una media que implica un número que representa la variabilidad de las medias. 

#Y el error estándar de un coeficiente de regresión habla de la variabilidad en los coeficientes de regresión. 

#Así que resumamos. Así que imagina una población que tiene un mu medio y una varianza sigma al cuadrado, así que mide la dispersión, sigma al cuadrado. 

#Si tuviéramos que sacar una muestra aleatoria de esa población y tomar la varianza, esa es una estimación de sigma al cuadrado. Si tuviéramos que tomar la media, eso es una estimación de mu.

#Sin embargo, s cuadrado es en sí mismo una variable aleatoria y tiene una distribución. 

#No sabemos mucho sobre esa distribución, pero sí sabemos una cosa, está centrada en sigma al cuadrado, y se concentra más en sigma al cuadrado, cuantas más observaciones se ingresen en el valor al cuadrado. 

#También, sabemos un poco más sobre la distribución de medias muestrales de esa población. Sabemos que están centrados en mu, y también sabemos que se concentra más en torno a mu a medida que se realizan más observaciones sobre los medios.

#Sin embargo, también sabemos exactamente cuál es la varianza de la distribución de las medias muestrales. A saber, es sigma al cuadrado sobre n. Ahora, en un conjunto de datos dado, no tenemos medias de muestra repetidas para estimar esto.

#Pero lo que hacemos es repetir los sorteos de la población original para estimar sigma al cuadrado. 
#Entonces, la estimación lógica de la varianza muestral de la media es s al cuadrado sobre n. Y así, la estimación lógica del error estándar es s sobre la raíz cuadrada n.


#Esta cantidad aquí, s sobre raíz cuadrada n es tan importante que se le da su propio nombre el error estándar de la media, o el área estándar de muestra de la media. 

#Entonces, s, la desviación estándar, es realmente una estimación de cuán variable es su población.

#S sobre raíz cuadrada n, el error estándar, realmente está hablando de cómo los promedios variables de muestras aleatorias de tamaño n son de la población. Veamos algunos ejemplos de simulación. 

#Las normales estándar tienen una varianza de uno. Entonces eso significa que también tienen una desviación estándar de uno, porque la raíz cuadrada de 1 es 1. 

#Entonces, las medias de n normales, si nuestras matemáticas son correctas, deben tener una desviación estándar de uno sobre la raíz cuadrada n. 

#Entonces, digamos que mi número de simulaciones es 1000, mi n es diez, y aquí lo que voy a hacer, puede examinar este código un poco, pero déjeme decirle lo esencial de lo que estoy haciendo. 

nosim <- 1000
n <- 10
sd(apply(matrix(rnorm(nosim * n), nosim), 1, mean))
1 / sqrt(n)


#Cuando simulo la norma r, número de simulaciones multiplicadas por n. 

#Estoy simulando 1,000 veces diez dibujos de una distribución normal aleatoria, y los estoy organizando en una matriz. Y luego con 1,000 filas y diez columnas, luego para cada fila, estoy calculando la media. 

#Por lo tanto, cada fila es la media de diez IID extraídos de la distribución normal estándar.

#¿Bueno? Y lo he hecho muchas veces, así que cuando tomo la desviación estándar de esto, esta debería ser una buena aproximación de la desviación estándar de los promedios de diez sorteos de la distribución normal estándar. 

#Y si no lo está, si no lo cree así, entonces quizás agregue un par de ceros adicionales al número de simulaciones, pero no demasiado porque su computadora se atascará. 


#Entonces, si haces eso, obtienes 0,31, o punto, alrededor de 0,32. Si solo toma 1 sobre la raíz cuadrada n, eso es 0.31 o alrededor de 0.32. Entonces tienen que ser lo mismo. Vamos a intentarlo otra vez. 

nosim <- 1000
n <- 10
sd(apply(matrix(runif(nosim * n), nosim), 1, mean))

#Uniformes estándar, recuerde que la densidad es una línea plana entre cero y uno. Resulta que tiene una varianza de 1/12.

1 / sqrt(12 * n)


#Entonces tomemos medios de muestras aleatorias de n uniformes. Entonces, lo que haremos es simular en este caso diez uniformes. 

#Toma su promedio. Y luego hazlo una y otra vez. Y luego tome la desviación estándar de la colección de promedios de diez uniformes, y eso nos informará sobre la distribución de los promedios de diez uniformes de esta población. 

#Nuestras matemáticas dicen que debería ser 1 sobre raíz cuadrada 12 veces n. Entonces, si hacemos esto, obtenemos 0.09, y si solo tomamos 1 sobre la raíz cuadrada 12 veces n, obtenemos 0.09. 


nosim <- 1000
n <- 10
sd(apply(matrix(rpois(nosim * n, 4), nosim), 1, mean))
2 / sqrt(n)


#Los 4 de Poisson tienen una varianza de 4, por lo que Poisson es una distribución que cubriremos más adelante en la clase. Pero por el momento, solo piense que es una variable aleatoria, discreta y aleatoria que tiene una varianza de cuatro. 

#Entonces, las medias de muestras aleatorias de n Poisson 4 deben tener una desviación estándar 2 sobre la raíz cuadrada n de acuerdo con nuestra regla. ¿Bueno?
  
#Así que aquí lo hago, obtengo 0.62 cuando simulo empíricamente muchos promedios del tamaño 10 de cuatro patas de Poisson. 

#Tomo la desviación estándar de miles de ellos. Obtengo 0.62. Si hago 2 sobre la raíz cuadrada n, obtengo 0.63. Por lo tanto, puede que me aleje un poco, pero tal vez aumente el número de simulaciones y lo tenga mucho más cerca. 

#Así que veamos un ejemplo más. Recuerde que los lanzamientos de monedas para el punto de sesgo tienen una varianza p por 1 menos p, cuando p es la mitad, eso le da a, 0.25 es la varianza. Según nuestra teoría, las medias de muestras aleatorias de n lanzamientos de monedas deben ser 1 sobre 2 raíces cuadradas n lanzamientos de monedas justos. 

nosim <- 1000
n <- 10
sd(apply(matrix(sample(0 : 1, nosim * n, replace = TRUE),
                nosim), 1, mean))
1 / (2 * sqrt(n))


#Entonces, lo que he hecho aquí es lanzar una moneda diez veces y tomar el promedio de las diez monedas lanzadas. Y lo hago miles de veces. Y voy a ver la variabilidad en esa distribución. Voy a ver la desviación estándar porque me gustan más las desviaciones estándar que las variaciones. 

#Y entonces obtengo 0.16 cuando hago eso. La teoría me dice que tiene que ser aproximadamente 0.16 cuando hago 1 sobre 2 veces la raíz cuadrada n. 

#Tengo alrededor de 0.16. Por lo tanto, obtenga el único momento en el que tendrá que hacer estos experimentos de simulación es en una clase como esta en la que está aprendiendo acerca de lo que realmente implica el error estándar de la media.

