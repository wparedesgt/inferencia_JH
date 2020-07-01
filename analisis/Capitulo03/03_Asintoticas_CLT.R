#Asintoticas y CLT

library(tidyverse)

#Quizás el teorema más importante en todas las estadísticas es el llamado Teorema del límite central. 

#Para nuestros propósitos, el Teorema del límite central establece que la distribución de promedios de las variables aleatorias iid se convierte en la de una normal estándar a medida que aumenta el tamaño de la muestra. 

#Debido a que tiene requisitos bastante flexibles en la colección de poblaciones a las que se aplica, el Teorema del límite central se aplica en una variedad casi infinita de entornos, y veremos varios. 

#El resultado básico es que, si tomamos una estimación como el promedio de la muestra, x bar, restamos su media poblacional, mu, y dividimos por su error estándar, sigma sobre la raíz cuadrada n. 

#Esa variable aleatoria se limita a la de una normal estándar. También agregaría que reemplazar la desviación estándar de la población, que es desconocida por la desviación estándar de la muestra, que se conoce, no cambia el Teorema del límite central. 

#La forma más útil en que pensamos sobre el Teorema del límite central es decir que el promedio muestral se distribuye aproximadamente normalmente con una media dada por la media de la población y una varianza dada por el error estándar de la media. Así que veamos varios ejemplos para ilustrar el Teorema del límite central mediante simulación. 

#Primero, comencemos con un dado estándar. Lo interesante de este experimento conceptual y la simulación que vamos a realizar es que imagina si tuvieras que simular normales al azar antes del advenimiento de las computadoras. 

#Por ejemplo, si usted era un estadístico que trabajaba en ese momento y quería evaluar el comportamiento de algo como el estadístico ki cuadrado, que es una función de variables aleatorias normales. Así que dejemos salir, Xi será el resultado para morir i. Y recuerde que la media de la distribución de los dados es 3.5 y que su varianza es 2.92, por lo que el error estándar de la media es la raíz cuadrada 2.92 sobre n. 

#Vamos a tirar n dados, tomar su media, restar 3.5 y dividir entre 1.71 sobre la raíz cuadrada n. 
nosim <- 100000
cfunc <- function(x, n) sqrt(n) * (mean(x) - 3.5) / 1.71
dat <- data.frame(
  x = c(apply(matrix(sample(1 : 6, nosim * 10, replace = TRUE), 
                     nosim), 1, cfunc, 10),
        apply(matrix(sample(1 : 6, nosim * 20, replace = TRUE), 
                     nosim), 1, cfunc, 20),
        apply(matrix(sample(1 : 6, nosim * 30, replace = TRUE), 
                     nosim), 1, cfunc, 30)
  ),
  size = factor(rep(c(10, 20, 30), rep(nosim, 3))))
g <- ggplot(dat, aes(x = x, fill = size)) + geom_histogram(alpha = .20, binwidth=.3, colour = "black", aes(y = ..density..)) 
g <- g + stat_function(fun = dnorm, size = 2)
g + facet_grid(. ~ size)

#Y repita esto una y otra vez. Si el teorema del límite central es correcto, debería verse exactamente como una curva de campana estándar. 

#Entonces, ¿para recordarnos qué está pasando? Lanzamos los dados 10 veces en este primer panel. Restamos 3.5 y dividimos entre 1.71 dividido por la raíz cuadrada n. Repitió ese proceso una y otra y otra vez. 

#Y el histograma muestra la distribución de los diferentes promedios normalizados que obtuvimos. Ya sabemos que esta distribución debe centrarse alrededor de cero porque hemos restado la media 3.5. Por lo tanto, debe centrarse alrededor de cero. Y sabemos exactamente, cuál debe ser la variación de esta distribución si repetimos este proceso infinitamente muchas veces. 

#Sin embargo, lo que nos dice el Teorema del límite central es también la forma. Y la forma tiene que ser como el de una curva de campana. Y porque normalizamos los datos, tiene ser exactamente el de una norma normal. Y vemos que la aproximación es realmente muy buena, incluso para solo diez tiradas. Para 20, se pone aún mejor, y para 30, es aún mejor. Lanzar una moneda es un caso interesante, ya que se remonta al desarrollo original del Teorema del límite central, como una aproximación para la distribución de las proporciones de la muestra. Así que dejemos que Xi sea el resultado 0 o 1 del lanzamiento i-ésimo de una moneda posiblemente injusta. 

#Luego recuerde que generalmente damos la notación p-hat, como la proporción de la muestra. Que es simplemente la media o el promedio, el promedio empírico de la moneda que lanza el 0 como una cola y 1 es una cabeza. 

#Recuerde que el valor esperado de Xi es p y que la varianza de Xi es p por 1 menos p. Entonces, el error estándar de la media, o el error estándar de la proporción de cabezas p-hat es la raíz cuadrada p por 1 menos p sobre n. 

#Entonces, si tomamos el estadístico p-hat, restamos su media poblacional y dividimos por su error estándar, raíz cuadrada p por 1 menos p sobre n que debería distribuirse aproximadamente normalmente si n es lo suficientemente grande. Ahora, note, si la moneda es justa, entonces p es la mitad. Y p por 1 menos p es un cuarto, que como raíz cuadrada es la mitad. Entonces, el error estándar para un lanzamiento de moneda justo es 1 sobre 2 raíz cuadrada n.


#Así que volteemos la moneda n veces, tomemos la proporción muestral de caras, restemos 0.5 y multipliquemos el resultado por 2 raíces cuadradas n. 

#Aquí está el resultado de nuestras simulaciones. 

nosim <- 1000
cfunc <- function(x, n) 2 * sqrt(n) * (mean(x) - 0.5) 
dat <- data.frame(
  x = c(apply(matrix(sample(0:1, nosim * 10, replace = TRUE), 
                     nosim), 1, cfunc, 10),
        apply(matrix(sample(0:1, nosim * 20, replace = TRUE), 
                     nosim), 1, cfunc, 20),
        apply(matrix(sample(0:1, nosim * 30, replace = TRUE), 
                     nosim), 1, cfunc, 30)
  ),
  size = factor(rep(c(10, 20, 30), rep(nosim, 3))))
g <- ggplot(dat, aes(x = x, fill = size)) + geom_histogram(binwidth=.3, colour = "black", aes(y = ..density..)) 
g <- g + stat_function(fun = dnorm, size = 2)
g + facet_grid(. ~ size)

#Considere el panel con diez lanzamientos de monedas aquí a la izquierda. Este es el resultado de lanzar la moneda diez veces, restando la media de la población 0.5 y dividiendo por el error estándar de la media. Raíz cuadrada p veces 1 menos p sobre n. 

#Haciendo esto una y otra vez. Tenemos un buen sentido de cómo se ve la distribución de proporciones normalizadas de diez monedas. Está centrado en cero porque restamos la media y su varianza se rige por la p multiplicada por 1 menos p sobre n. 

#Lo que esta conferencia nos dice es que la distribución debería ser aproximadamente la de un estándar normal. Y como referencia, dibujé la densidad del estándar normal aquí. Puede ver algo de discreción, solo hay dos niveles para una moneda, por lo que el diez, el promedio de diez lanzamientos de monedas solo podría tomar tantas combinaciones diferentes, por lo que parte de la discreción se muestra. 

#Pero cuando llegamos a 20 o 30 lanzamientos de monedas, podríamos ver que en realidad se ve bastante gaussiano. Me gustaría enfatizar que la velocidad a la que la moneda normalizada se lanza a la normalidad se rige por lo sesgada que esté la moneda. 

#Por ejemplo, aquí muestro cómo se ven las simulaciones para una probabilidad de cabeza 0.9.

nosim <- 1000
cfunc <- function(x, n) sqrt(n) * (mean(x) - 0.9) / sqrt(.1 * .9)
dat <- data.frame(
  x = c(apply(matrix(sample(0:1, prob = c(.1,.9), nosim * 10, replace = TRUE), 
                     nosim), 1, cfunc, 10),
        apply(matrix(sample(0:1, prob = c(.1,.9), nosim * 20, replace = TRUE), 
                     nosim), 1, cfunc, 20),
        apply(matrix(sample(0:1, prob = c(.1,.9), nosim * 30, replace = TRUE), 
                     nosim), 1, cfunc, 30)
  ),
  size = factor(rep(c(10, 20, 30), rep(nosim, 3))))
g <- ggplot(dat, aes(x = x, fill = size)) + geom_histogram(binwidth=.3, colour = "black", aes(y = ..density..)) 
g <- g + stat_function(fun = dnorm, size = 2)
g + facet_grid(. ~ size)


#Puedes ver por diez, que la distribución no se ve muy acampanada. A los 30, está llegando allí, pero aún así la probabilidad cuando se aproxima por la distribución normal no sería perfecta. 

#Así que solo tenga esto en cuenta que el teorema del límite central no garantiza que la distribución normal será una buena aproximación. 

#Simplemente que a medida que el número de monedas se limite al infinito eventualmente, será una buena aproximación.

#Dejando de lado la diversión, quería hablar sobre el quincunx de Galton. Una máquina que podrías haber visto si visitaras un museo de ciencias. 

#Básicamente, la cunx de esta máquina está ilustrando el Teorema del límite central con un juego que se parece un poco a Pachinko. 

#Así que aquí hay un ejemplo. 

#Lo que sucedería es que una bola caería aquí y se caería aquí, y golpearía esta clavija. Y luego iría completamente a la izquierda o derecha con la misma probabilidad. 

#Y luego bajaría. 

#Digamos que fue en esta dirección y luego bajó allí. Y luego caería a izquierda o derecha con la misma probabilidad. Y eventualmente, la pelota se abriría camino hacia una papelera, y se recogería aquí. 

#Puede pensar en cada vez que la pelota golpea una clavija y tiene que elegir izquierda o derecha, como un experimento binomial, un lanzamiento de moneda. Si tuviera todos los éxitos, digamos, se dirigiría completamente en esta dirección y si tuviera todos los fracasos, se dirigiría en esa dirección. 

#Sería como lanzar una moneda. Entonces cada fila es como otro lanzamiento de moneda. En virtud del Teorema del límite central, sabemos que la proporción de caras de un montón de lanzamientos de monedas se distribuye aproximadamente de manera normal. 

#Entonces, podríamos multiplicar eso por n y luego también concluir que la suma, el número total de cabezas también se distribuirá aproximadamente de manera normal. 

library(UsingR);data(father.son); x <- father.son$sheight
(mean(x) + c(-1, 1) * qnorm(.975) * sd(x) / sqrt(length(x))) / 12


#Entonces, lo que verás en el museo de ciencias es que las bolas se acumularán aquí, y en realidad dibujarán la distribución normal relevante, allí mismo. 

#Y luego verá, a medida que las bolas se acumulan, se agruparán exactamente en esto, superponiendo esta distribución normal superpuesta. Y luego, cuando se llena hasta ese punto, generalmente hay una pequeña cosa que deja caer todas las bolas y comienza de nuevo. 

#Entonces, en cualquier caso, es una idea divertida. Puedes buscar en Google y ver algunos ejemplos del quincunx de Galton. La divertida aplicación del Teorema del límite central.
