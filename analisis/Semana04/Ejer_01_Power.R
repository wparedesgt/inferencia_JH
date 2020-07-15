#Ejercicio Power 01

library(swirl)

#En esta lección, como su nombre lo indica, discutiremos PODER, que es la probabilidad de rechazar la hipótesis nula cuando es falsa, lo cual es bueno y apropiado.

#Por lo tanto, quieres más PODER.

#El poder entra en juego cuando estás diseñando un experimento, y en particular, si estás tratando de determinar si un resultado nulo (no rechazar una hipótesis nula) es significativo. Por ejemplo, es posible que deba determinar si el tamaño de su muestra fue lo suficientemente grande como para producir un resultado significativo, en lugar de aleatorio.

#El poder te da la oportunidad de detectar si tu hipótesis ALTERNATIVA es verdadera.

#¿Recuerdas la definición de un error tipo II? Recuerda, los errores son malos.

#1: Calcular mal una puntuación t
#2: aceptar una hipótesis nula falsa  ###
#3: Rechazar una hipótesis nula verdadera
#4: Deletreo incorrecto de la palabra hipótesis


#Beta es la probabilidad de un error de Tipo II, aceptando una hipótesis nula falsa; el complemento de esto es obviamente (1 - beta) que representa la probabilidad de rechazar una hipótesis nula falsa. ¡Esto es bueno y esto es PODER!


#Recordemos nuestro ejemplo anterior que involucra el Índice de dificultad respiratoria y las alteraciones del sueño. Nuestra hipótesis nula H_0 era que mu = 30 y nuestra hipótesis alternativa H_a era que mu> 30.

#¿Cuál de las siguientes expresiones representa nuestra estadística de prueba bajo esta hipótesis nula? Aquí X 'representa la media muestral, s es la desviación estándar de la muestra yn es el tamaño de la muestra. Suponga que X 'sigue una distribución t.

#1:30 / (s / sqrt (n))
#2: X '/ (s ^ 2 / n)
#3: (X'-30) / (s / sqrt (n)) ######
#4: (X'-30) / (s ^ 2 / n)

#En la expresión del estadístico de prueba (X'-30) / (s / sqrt (n)), ¿qué representa (s / sqrt (n))?

#1: una medida estándar
#2: una muestra estándar
#3: un error estándar  ###
#4: una varianza estándar
#5: un portador estándar

#Supongamos que estamos probando una hipótesis nula H_0 con un nivel alfa de .05. Dado que H_a propone que mu> 30 (la media hipotetizada por H_0), el poder es la probabilidad de que la verdadera media mu sea mayor que el cuantil (1-alfa) o qnorm (.95). Para simplificar, supongamos que estamos trabajando con distribuciones normales de las cuales conocemos las variaciones.

#Aquí está la imagen que hemos usado mucho en estas lecciones. Como sabes, la parte sombreada representa el 5% del área bajo la curva. Si un estadístico de prueba cayera en esta porción sombreada, rechazaríamos H_0 porque la media de la muestra está demasiado lejos de la media (centro) de la distribución hipotetizada por H_0. En su lugar, preferiríamos H_a, que mu> 30. Esto sucede con probabilidad 0.05.


#Bien podría preguntarse: "¿Qué tiene esto que ver con el PODER?" Buena pregunta. Veremos algunas fotos para mostrarte.


#Primero tenemos que enfatizar un punto clave. Las dos hipótesis, H_0 y H_a, en realidad representan dos distribuciones ya que están hablando de medios o centros de distribuciones. 

#H_0 dice que la media es mu_0 (30 en nuestro ejemplo) y H_a dice que la media es mu_a.

#Asumimos normalidad e igual varianza, digamos sigma^2/n, para ambas hipótesis, entonces bajo H_0, X'~N(mu_0,sigma^2/n) y bajo H_a, X'~N(mu_a,sigma^2/n).

#Aquí hay una foto con las dos distribuciones. Hemos dibujado una línea vertical en nuestro lugar favorito, en el percentil 95 de la distribución roja. A la derecha de la línea se encuentra el 5% de la distribución roja.

#¡Test rápido! ¿Qué distribución representa H_0?
  
#1: el azul
#2: el rojo

#De la imagen, ¿cuál es la media propuesta por H_a?
  
#1:30
#2: 32  ###
#3: 36
#4: 28


#¿Ves cuánto de la distribución azul se encuentra a la derecha de esa gran línea vertical?


#Eso es poder

#Es el área debajo de la curva azul (H_a) a la derecha de la línea vertical.

#Tenga en cuenta que la colocación de la línea vertical depende de la distribución nula. Aquí hay otra foto con distribuciones más gordas. La línea vertical todavía está en el percentil 95 de la distribución nula (roja) y el 5% de la distribución aún se encuentra a su derecha. La línea está calibrada para mu_0 y la varianza.

#Regresando a la imagen original.


#Hemos robado descaradamente el código de trazado de las diapositivas para que pueda ver H_a en acción. Miremos las imágenes antes de profundizar en los números. Hemos arreglado mu_0 a 30, sigma (desviación estándar) a 4 yn (tamaño de muestra) a 16. La función myplot solo necesita una media alternativa, mu_a, como argumento. Ejecute myplot ahora con un argumento de 34 para ver qué hace.

myplot(34)


#La distribución representada por H_a se movió hacia la derecha, por lo que casi toda (100%) de la curva azul está a la derecha de la línea vertical, lo que indica que con mu_a = 34, la prueba es más poderosa, es decir, hay una mayor probabilidad de que Es correcto rechazar la hipótesis nula ya que parece falsa. Ahora intente myplot con un argumento de 33.3.

myplot(33.3)

#Esto no es tan poderoso como la prueba con mu_a = 34 pero hace una imagen bonita. Ahora prueba myplot con un argumento de 30.

myplot(30)

#¡UH oh! ¿La curva roja desapareció? No. está justo debajo de la curva azul. ¡El poder ahora, el área debajo de la curva azul a la derecha de la línea, es exactamente 5% o alfa!


#Entonces ¿Que aprendimos?

#Primero, la potencia es una función que depende de un valor específico de una media alternativa, mu_a, que es cualquier valor mayor que mu_0, la media hipotetizada por H_0. (Recuerde que H_a especificó mu> 30.)


#En segundo lugar, si mu_a es mucho mayor que mu_0 = 30, entonces la potencia (probabilidad) es mayor que si mu_a está cerca de 30. A medida que mu_a se acerca a 30, la media bajo H_0, la potencia se aproxima a alfa.

myplot(28)

#Vemos que la curva azul se ha movido a la izquierda del rojo, por lo que el área debajo de ella, a la derecha de la línea, es menor que el 5% debajo de la curva roja. Esto es aún menos poderoso y contradice H_a, por lo que no vale la pena mirarlo.

#Aquí hay una imagen de las curvas de potencia para diferentes tamaños de muestra. Nuevamente, esto usa el código "prestado" de las diapositivas. Los medios alternativos, los mu_a, se trazan a lo largo del eje horizontal y la potencia a lo largo de la vertical.

#¿Qué nos muestra el gráfico sobre mu_a?
  
#  1: a medida que se hace más grande, se vuelve menos poderoso
#2: el poder es independiente de mu_a
#3: a medida que se hace más grande, se vuelve más poderoso  ##


#¿Qué nos muestra el gráfico sobre el tamaño de la muestra?
  
#  1: a medida que se hace más grande, se vuelve menos poderoso
#2: la potencia es independiente del tamaño de la muestra
#3: a medida que se hace más grande, se vuelve más poderoso ##


#Ahora volvamos a los números. Nuestra prueba para determinar el rechazo de H_0 implicó comparar un estadístico de prueba, a saber, Z=(X'-30)/(sigma/sqrt(n)), contra algún cuantil, digamos Z_95, que dependía de nuestro tamaño de nivel alfa(.05 en este caso). H_a propuso que mu>mu_0, por lo que probamos si Z>Z_95.

#Esto es equivalente a X'>Z_95*(sigma/sqrt (n))+30, ¿verdad?

#Recordemos esa ingeniosa función R pnorm, que nos da la probabilidad de que un valor extraído de una distribución normal sea mayor o menor que/igual a un argumento de cuantil especificado dependiendo del indicador lower.tail. La función también toma una desviación media y estándar como argumentos.

#Supongamos que llamamos pnorm con el cuantil 30+Z_95*(sigma/sqrt(n)) y especificamos mu_a como nuestro argumento medio. Esto devolvería una probabilidad que podemos interpretar como PODER. ¿Por qué?

#Recordemos nuestra imagen de dos distribuciones. 30+Z_95*(sigma/sqrt(n)) representa el punto en el que cae nuestra línea vertical. Es el punto en la distribución nula en el nivel (1-alfa).

#Estudia esta foto. Llamar a pnorm con 30+Z_95*(sigma/sqrt(n)) como el cuantil y mu_a, digamos 32, como la media y la cola inferior. ¿FALSO hace qué?
  
#1: devuelve el área debajo de la curva azul a la derecha de la línea   ##
#2: devuelve el área debajo de la curva azul a la izquierda de la línea
#3: devuelve el área debajo de la curva roja a la izquierda de la línea
#4: devuelve el área debajo de la curva roja a la derecha de la línea


#Probemos algunos ejemplos ahora. Antes de hacerlo, ¿qué sabemos que retornará pnorm si especificamos un cuantil menor que la media?
  
# 1: una respuesta dependiente de alfa
#2: una respuesta inferior a .50   ##
#3: una respuesta mayor que 1
#4: una respuesta dependiente de beta


z <- qnorm(.95)

pnorm(30+z, mean = 30, lower.tail = FALSE)


#Eso no es sorprendente, ¿verdad? Con la media establecida en mu_0, las dos distribuciones, nulo y alternativo, son las mismas y power = alpha.

#Ahora ejecute pnorm ahora con el cuantil 30 + z, mean = 32, y lower.tail = FALSE.


pnorm(30+z, mean = 32, lower.tail = FALSE)

#¿Ves cómo esto es mucho más poderoso? 64% frente al 5%. Cuando la media muestral es bastante diferente de (muchos errores estándar mayores que) la media hipotetizada por la hipótesis nula, la probabilidad de rechazar H_0 cuando es falsa es mucho mayor. Eso es poder!

#Veamos nuevamente las distribuciones corpulentas.

#Con esta desviación estándar = 2 (distribución más gruesa), ¿la potencia será mayor o menor que con la desviación estándar = 1?
  
#1: lo mismo
#2: menos de  ##
#3: mayor


#Para ver esto, ejecute pnorm ahora con el cuantil 30 + z, mean = 32 y sd = 1. No olvide establecer lower.tail = FALSE para obtener la cola correcta.

pnorm(30+z, mean = 32, sd = 1, lower.tail = FALSE)


#Ahora ejecute pnorm ahora con el cuantil 30 + z * 2, mean = 32 y sd = 2.

#No olvide establecer lower.tail = FALSE para obtener la cola correcta.

pnorm(30+z*2, mean = 32, sd = 2, lower.tail = FALSE)

#¿Ve el consumo de energía del 64% al 26%? Repasemos algunos hechos básicos sobre el poder. Vimos antes en nuestras imágenes que el poder de la prueba depende de mu_a. Cuando H_a especifica que mu> mu_0, entonces, a medida que mu_a crece y excede mu_0 cada vez más, ¿qué le sucede al poder?

#Se incrementa

#Aquí hay otra pregunta. Recordemos nuestras curvas de poder de antes.

#Ingresa

#A medida que aumenta la varianza, ¿qué le sucede al poder?
  
#1: disminuye ##
#2: no cambia
#3: aumenta

#A medida que aumenta alfa, ¿qué le sucede al poder?
  
#1: no cambia
#2: aumenta  ##
#3: disminuye

#Si H_a propuso que mu! = Mu_0, calcularíamos la potencia unilateral utilizando alfa/2 en la dirección de mu_a (ya sea menor o mayor que mu_0). (Esto es solo aproximadamente correcto, excluye la probabilidad de obtener una estadística de prueba grande en la dirección opuesta a la verdad.

#Dado que la potencia aumenta a medida que el alfa aumenta, ¿la potencia de una prueba unilateral será mayor o menor que la potencia de la prueba bilateral asociada?
  
# 1: son lo mismo
#2: mayor          ###
#3: menos de

#Finalmente, si H_a especifica que mu <mu_0, ¿podríamos seguir haciendo el mismo tipo de cálculos de potencia?
  
#  1: no
#2: sí   ###


#Supongamos que H_a dice que mu> mu_0. Entonces power = 1 - beta = Prob (X '> mu_0 + z_ (1-alpha) * sigma / sqrt (n)) suponiendo que X' ~ N (mu_a, sigma ^ 2 / n). ¿Qué cantidades sabemos en esta declaración, dado el contexto del problema? Trabajemos en esto.

#¿Qué nos dice la hipótesis nula H_0 de que la media de la población es igual?
  
#1: mu_0  ###
#2: mu_a
#3: alfa
#4: beta

#Después de que se propone la media nula mu_0, ¿qué especifica el diseñador de la prueba de hipótesis para rechazar o no rechazar H_0? En otras palabras, ¿cuál es el tamaño del nivel de la prueba?
  
#1: alfa  #
#2: beta
#3: mu_0
#4: mu_a

#Entonces sabemos que los quantiles mu_0 y alfa son especificadas por el diseñador de la prueba. En la declaración 1-beta=Prob(X'>mu_0+z_(1-alpha)*sigma/sqrt(n)) dados mu_a> se especifican mu_0, mu_0 y alpha, y X' depende de los datos. Las otras cuatro cantidades(beta,sigma,n y mu_a) son todas desconocidas.

#Debería ser obvio que especificar tres de estas incógnitas nos permitirá resolver el cuarto que falta. Por lo general, solo intenta resolver el poder (1-beta) o el tamaño de muestra n.


#Un punto interesante es que el poder no necesita mu_a, sigma y n individualmente. En cambio, solo se necesita sqrt(n)*(mu_a- mu_0)/sigma.

#La cantidad (mu_a-mu_0)/sigma se llama TAMAÑO DE EFECTO. Esta es la diferencia en las medias en unidades de desviación estándar. No tiene unidades, por lo que se puede interpretar en diferentes entornos.

#Trabajaremos algunos ejemplos de esto ahora. Sin embargo, en lugar de asumir que estamos trabajando con distribuciones normales, trabajemos con distribuciones t. Recuerde, están bastante cerca de lo normal con tamaños de muestra lo suficientemente grandes.

#La potencia sigue siendo una probabilidad, es decir, P((X'-mu_0)/(S/sqrt(n))> t_(1-alfa,n-1) dado H_a que mu> mu_a). Observe que usamos el t cuantil en lugar de la z. Además, dado que la distribución propuesta no está centrada en mu_0, tenemos que usar la distribución t no central.

#R viene al rescate nuevamente con la función power.t.test. Podemos omitir uno de los argumentos y la función lo resuelve. Primero usémoslo para resolver el poder.


#Lo ejecutaremos tres veces con los mismos valores para n (16) y alfa (.05) pero diferentes valores de delta y desviación estándar. Mostraremos que si delta (diferencia de medias) dividido por la desviación estándar es la misma, la potencia devuelta también será la misma. En otras palabras, el tamaño del efecto es constante para las tres pruebas.

#Especificaremos un delta positivo; esto le dice a power.t.test que H_a propone que mu> mu_0, por lo que necesitaremos una prueba unilateral. Primero ejecute power.t.test (n = 16, delta = 2/4, sd = 1, type = "one.sample", alt = "one.sided") $ power.

power.t.test(n = 16, delta = 2/4, sd = 1, type = "one.sample", alternative = "one.sided")$power

#Ahora cambie delta a 2 y sd a 4, observe que todo el lo mismo.

power.t.test(n = 16, delta = 2, sd = 4, type = "one.sample", alternative = "one.sided")$power

#Misma respuesta, ahora cambie el delta a 100 y el sd a 200, observe que nuevamente da la misma respuesta.

power.t.test(n = 16, delta = 100, sd = 200, type = "one.sample", alternative = "one.sided")$power


#Por lo tanto, mantener el tamaño del efecto (la relación delta / sd) constante conservó la potencia. Probemos un experimento similar, excepto que ahora especificaremos la potencia que queremos y resolveremos para el tamaño de muestra n.

#Primero ejecute power.t.test (power = .8, delta = 2/4, sd = 1, type = "one.sample", alt = "one.sided") $ n

power.t.test(power=.8, delta = 2/4, sd = 1, type = "one.sample", alt = "one.sided")$n

#Ahora cambie delta a 2 y sd a 4, observe que la respuesta sigue siendo la misma.

power.t.test(power=.8, delta = 2, sd = 4, type = "one.sample", alt = "one.sided")$n

#Ahora cambie delta a 100 y sd a 200, observara la misma respuesta.

power.t.test(power=.8, delta = 100, sd = 200, type = "one.sample", alt = "one.sided")$n

#Ahora use power.t.test para encontra delta para power = .8 y n = 26 con sd = 1

power.t.test(power = .8, n = 26, sd = 1, type = "one.sample", alt = "one.sided")$delta

#No es un resultado sorprendente, ¿verdad? Antes le dije que con un tamaño de efecto de .5 y una potencia de .8, necesita un tamaño de muestra un poco más de 26. Ahora ejecútelo con n = 27.

power.t.test(power = .8, n = 27, sd = 1, type = "one.sample", alt = "one.sided")$delta

#¿Qué crees que sucederá si duplicas SD a 2 y ejecutas la misma prueba?
  
#  1: delta se reducirá a la mitad
#2: delta se duplicará ##
#3: delta no cambiará

#Ahora para una revisión rápida. Llamamos a esto power.u.test ya que viene después de power.t.test Jajaja


#1. ¿Por qué se especifica el nivel de una prueba?
  
# 1: delta
#2: ninguno de los otros
#3: alfa   ###
#4: beta
#5: gamma

#2. ¿Qué es un error tipo II?
  
# 1: rechazar una hipótesis verdadera
#2: rechazar una hipótesis falsa
#3: aceptar una hipótesis verdadera
#4: aceptar una hipótesis falsa   ####


#Que es poder power?
  
# 1: beta
#2: None of the others  ###
#3: delta
#4: thrilling
#5: gamma
#6: alpha

#Eres un perfeccionista que diseña un experimento y quieres que tanto alfa como beta sean pequeños.

#¿Pueden ambos ser 0 para esta prueba única?
  
#  1: sí
#2: no     ####


#5. Suponga que H_0 propone mu = mu_0 y H_a propone que mu <mu_0. Probarás una serie de mu_a con power! = Alpha. ¿Cuál de las siguientes no es cierto?
  
#  1: mu_a-mu_0 = 0  ###
#2: mu_a-mu_0 <0
#3: ¿eh?
#  4: mu_0-mu_a> 0

#6. Suponga que H_0 propone mu = mu_0 y H_a propone que mu <mu_0. ¿Cual de los siguientes es verdadero?
  
#1: cuanto más pequeño es mu_0-mu_a, más potente es la prueba
#2: cuanto más pequeño es mu_a-mu_0, más potente es la prueba  #
#3: mu_0 = mu_a maximiza el poder


#7. ¿Qué expresión representa el efecto de tamaño?
  
#1: (mu_a - mu_0) / n
#2: (mu_a - mu_0) / sqrt (n)
#3: (mu_a - mu_0) / sqrt (sigma)
#4: (mu_a - mu_0) / sigma




