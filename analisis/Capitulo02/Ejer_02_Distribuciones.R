#Ejercicio No. 2 Distribuciones

library(swirl)

#Dado el título de esta lección, ¿qué crees que cubrirá?

#Distribuciones Comunes

#La primera distribución que examinaremos es la Bernoulli, que está asociada con experimentos que tienen solo 2 resultados posibles. Estos también son llamados (por personas que saben) ensayos binarios.


#Puede sorprenderle saber que probablemente haya tenido experiencia con los ensayos de Bernoulli. ¿Cuál de las siguientes sería una prueba de Bernoulli?

#Robar una carta de un mazo
#girar una ruleta
#tirar un dado
#lanzar una moneda  #Respuesta

#Por simplicidad, generalmente decimos que las variables aleatorias de Bernoulli toman solo los valores 1 y 0.

#Supongamos que también especificamos que la probabilidad de que el resultado de Bernoulli de 1 sea p. ¿Cuál de los siguientes representa la probabilidad de un resultado 0?

#1-p

#Si la probabilidad de un 1 es p y la probabilidad de un 0 es 1-p, ¿cuál de los siguientes representa el PMF de una distribución de Bernoulli? Recuerde que el PMF es la función que representa la probabilidad de que X = x.Si la probabilidad de un 1 es p y la probabilidad de un 0 es 1-p, ¿cuál de los siguientes representa el PMF de una distribución de Bernoulli? Recuerde que el PMF es la función que representa la probabilidad de que X = x.

#p^x * (1-p)^(1-x)

#Recordemos la definición de la expectativa de una variable aleatoria. Supongamos que tenemos una variable aleatoria de Bernoulli y, como antes, la probabilidad de que sea igual a 1 (un éxito) es p y la probabilidad de que sea igual a 0 (un fallo) es 1-p. ¿Cuál es su promedio?

#p

#Dada la misma variable aleatoria de Bernoulli anterior, ¿cuál de las siguientes representa E (X ^ 2)

#p

#Usa las respuestas de las dos últimas preguntas para encontrar la varianza de la variable aleatoria de Bernoulli.

#Recordar Var = E(X^2)-(E(X)) ^ 2

#p(1-p)


#Las variables aleatorias binomiales se obtienen como la suma de los ensayos iid Bernoulli. Específicamente, dejemos que X_1, ..., X_n sea iid Bernoulli (p) variables aleatorias; entonces X = X_1 + X_2 + ... X_n es una variable aleatoria binomial. Las variables aleatorias binomiales representan el número de éxitos, k, de n ensayos independientes de Bernoulli. Cada uno de los ensayos tiene probabilidad p.


#El PMF de una variable aleatoria binomial X es la función que representa la probabilidad de que X = x. En otras palabras, que hay x éxitos de n ensayos independientes. ¿Cuál de los siguientes representa el PMF de una distribución binomial? Aquí x, el número de éxitos, va de 0 a n, el número de intentos, y elegir (n, x) representa el coeficiente binomial 'n elegir x', que es el número de formas en que pueden ocurrir x éxitos de n ensayos independientemente de orden.


#p^x
#choose(n,x) * p*x*(1-p)*(1-x)
#choose(n,x) * p^(n-x) * (1-p)^x #NO
#choose(n,x) * p^x * (1-p)^(n-x) #SI

#Supongamos que íbamos a lanzar una moneda sesgada 5 veces. La probabilidad de lanzar una cabeza es .8 y una cola .2. ¿Cuál es la probabilidad de que arrojes al menos 3 caras?


#choose(5,5)*(.8)^5*(.2)^(5-5) for 5=3,4,5

#Ahora puede verificar su respuesta con la función R pbinom. El cuantil es 2, el tamaño es 5, la probabilidad es .8 y la cola inferior es FALSA. Pruebalo ahora.

pbinom(2,5,8, lower.tail = FALSE)

pbinom(2,size=5,prob=.8,lower.tail=FALSE)


#Otra distribución muy común es la normal o gaussiana. Tiene una función de densidad complicada que implica su media mu y varianza sigma ^ 2. El hecho clave de la fórmula de densidad es que, cuando se traza, forma una curva en forma de campana, simétrica respecto a su media mu. La varianza sigma ^ 2 corresponde al ancho de la campana, cuanto mayor es la varianza, más gruesa es la campana. Denotamos una variable aleatoria X normalmente distribuida como X ~ N (mu, sigma ^ 2).


#Cuando mu = 0 y sigma = 1, la distribución resultante se denomina distribución normal estándar y a menudo se etiqueta como Z.

#Aquí hay una imagen de la función de densidad de una distribución normal estándar. Está centrado en su media 0 y las líneas verticales (en los puntos enteros del eje x) indican las desviaciones estándar.


#Aproximadamente el 68%, 95% y 99% de la densidad normal se encuentran dentro de 1, 2 y 3 desviaciones estándar de la media, respectivamente. Estos se muestran en las tres áreas sombreadas de la figura. Por ejemplo, la porción más oscura (entre -1 y 1) representa el 68% del área.


#La función R qnorm (prob) devuelve el valor de x (cuantil) para el cual el área bajo la distribución normal estándar a la izquierda de x es igual al parámetro prob. (Recuerde que toda el área debajo de la curva es 1.)

#Use qnorm ahora para encontrar el décimo percentil del estándar normal.

#Recuerde que el problema prob debe estar entre 0 y 1. No tiene que especificar ninguno de los otros parámetros, ya que el valor predeterminado es el estándar normal.


qnorm(.10)

#Veremos esto ahora dibujando la línea vertical en el cuantil -1.281552.


#¿Cuál de los siguientes esperaría que fuera el primer percentil?

qnorm(0.01)

#Al mirar la imagen, ¿puedes decir cuál es el percentil 50?

qnorm(0.50)

#Podemos usar la simetría de la curva de campana para determinar otros cuantiles. Dado que el 2.5% del área bajo la curva cae a la izquierda de x = -1.96, ¿cuál es el percentil 97.5 para la normal estándar?

qnorm(0.975)

#Aquí hay dos hechos útiles sobre las distribuciones normales. Si X es una variable aleatoria normal con media mu y varianza sigma ^ 2, es decir, X ~ N (mu, sigma ^ 2),

#entonces la variable aleatoria Z definida como Z = (X -mu) / sigma se distribuye normalmente con media 0 y varianza 1, es decir, Z ~ N (0, 1). (Z es normal normal).

#Lo contrario también es cierto. Si Z es normal estándar, es decir, Z ~ N (0,1), entonces la variable aleatoria X definida como X = mu + sigma * Z normalmente se distribuye con media mu y varianza sigma ^ 2, es decir, X ~ N (mu , sigma ^ 2)


#Estas fórmulas le permiten calcular fácilmente cuantiles (y por lo tanto percentiles) para CUALQUIER variable normalmente distribuida si conoce su media y varianza. Mostraremos cómo encontrar el percentil 97.5 de una distribución normal con media 3 y varianza 4.

#Nuevamente, podemos usar la función qnorm de R y simplemente especificar la media y la desviación estándar (la raíz cuadrada de la varianza). Hacer esto ahora.

#Encuentre el percentil 97.5 de una distribución normal con media 3 y desviación estándar 2.

qnorm(0.975, mean = 3, sd = 2)

#Vamos a verificarlo usando la fórmula anterior, X = mu + sigma * Z. Aquí usaremos el percentil 97.5 para la normal estándar como el valor Z en la fórmula. Recuerde que anteriormente calculamos que esto era 1.96. Multipliquemos esto por la desviación estándar de la distribución normal dada (2) y agreguemos su media (3) para ver si obtenemos un resultado cercano al que nos dio qnorm.

1.96*2+3


#Suponga que tiene una distribución normal con una media de 1020 y una desviación estándar de 50 y desea calcular la probabilidad de que la variable aleatoria asociada X> 1200. La forma más fácil de hacerlo es utilizar la función pnorm de R en la que especifica el cuantil (1200 ), la media (1020) y la desviación estándar (50). También debe especificar que la cola inferior es FALSA ya que estamos pidiendo una probabilidad de que la variable aleatoria sea mayor que nuestro cuantil. Hacer esto ahora.

pnorm(1200, mean = 1020, sd = 50, lower.tail = FALSE)


#Alternativamente, podríamos usar la fórmula anterior para transformar la distribución dada a una normal estándar. Calculamos el número de desviaciones estándar que el número especificado (1200) es de la media con Z = (X -mu) / sigma. Este es nuestro nuevo cuantil. Entonces podemos usar la distribución normal estándar y los valores predeterminados de pnorm.

#Recuerde especificar que lower.tail es FALSE. Hacer esto ahora.


pnorm((1200-1020)/50, lower.tail = FALSE)

#Para practicar, usando la misma distribución, encuentre el percentil 75%. Use qnorm y especifique la probabilidad (.75), la media (1020) y la desviación estándar (50). Como queremos incluir la parte izquierda de la curva, podemos usar el valor predeterminado lower.tail = TRUE.

qnorm(0.75, mean = 1020, sd = 50, lower.tail = TRUE)

#Tenga en cuenta que las funciones R pnorm y qnorm son inversas. ¿Qué esperarías que devuelva pnorm (qnorm (.53))?

pnorm(qnorm(.53))

#¿Qué tal qnorm (pnorm (.53))?
  
qnorm(pnorm(.53))

#Ahora hablemos de nuestra última distribución común, el Poisson. Esto es, como nos dice Wikipedia, "una distribución de probabilidad discreta que expresa la probabilidad de que ocurra un número determinado de eventos en un intervalo fijo de tiempo y / o espacio si estos eventos ocurren con una tasa promedio conocida e independientemente del tiempo transcurrido desde último evento."

#En otras palabras, los modelos de distribución de Poisson cuentan o número de eventos en algún intervalo de tiempo. De Wikipedia, "Cualquier variable que se distribuye por Poisson solo toma valores enteros".

#El PMF de la distribución de Poisson tiene un parámetro, lambda. Al igual que con las otras distribuciones, el PMF calcula la probabilidad de que la variable aleatoria distribuida por Poisson X tome el valor x. Específicamente, P (X = x) = (lambda ^ x) e ^ (- lambda) / x !. Aquí x varía de 0 a infinito.

#La media y la varianza de la distribución de Poisson son ambas lambda.

#Las variables aleatorias de Poisson se utilizan para modelar tasas como la tasa de fallas del disco duro. Escribimos X ~ Poisson (lambda * t) donde lambda es el recuento esperado por unidad de tiempo y  t es el tiempo total de monitoreo.

#Por ejemplo, supongamos que la cantidad de personas que se presentan en una parada de autobús es Poisson con una media de 2.5 por hora, y queremos saber la probabilidad de que se presenten como máximo 3 personas en un período de 4 horas. Usamos la función R ppois que devuelve una probabilidad de que la variable aleatoria sea menor o igual a 3. Solo necesitamos especificar el cuantil (3) y la media (2.5 * 4). Podemos usar los parámetros predeterminados, lower.tail = TRUE y log.p = FALSE. Pruebalo ahora.

ppois(3, lambda = 2.5*4, lower.tail = TRUE, log.p = FALSE)


#Finalmente, la distribución de Poisson se aproxima a la distribución binomial en ciertos casos. Recuerde que la distribución binomial es la distribución discreta del número de éxitos, k, de n ensayos binarios independientes, cada uno con probabilidad p. Si n es grande y p es pequeño, entonces la distribución de Poisson con lambda igual a n * p es una buena aproximación a la distribución binomial.

#Para ver esto, use la función R pbinom para estimar la probabilidad de que vea como máximo 5 éxitos de 1000 ensayos, cada uno de los cuales tiene una probabilidad de .01. Como antes, puede usar los valores de parámetros predeterminados (lower.tail = TRUE y log.p = FALSE) y solo especificar el cuantil, el tamaño y la probabilidad.

pbinom(5, size = 1000, prob = 0.01, lower.tail = TRUE, log.p = FALSE)

#Ahora use la función ppois con cuantil igual a 5 y lambda igual a n * p para ver si obtiene un resultado similar.

ppois(5, lambda = 1000 * 0.01)

#¿Ves cómo están cerca? Muy bien, ¿verdad? Esto funcionó porque n era grande (1000) y p era pequeño (.01).

