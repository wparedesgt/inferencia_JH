#Ejercicio No. 3 Asintoticas

library(swirl)

#En esta lección, analizaremos las asintóticas, un tema que describe cómo se comportan las estadísticas a medida que los tamaños de muestra se hacen muy grandes y se acercan al infinito.

#Pretender que los tamaños de muestra y las poblaciones son infinitas es útil para hacer inferencias y aproximaciones estadísticas, ya que a menudo conduce a una buena comprensión de los procedimientos.

#Los asintóticos generalmente no brindan garantías sobre el rendimiento de la muestra finita, pero forman la base para la interpretación de la frecuencia de las probabilidades (la proporción a largo plazo de las veces que ocurre un evento).

#Recordemos nuestras simulaciones y discusiones de medias de muestra en lecciones anteriores. Ahora podemos hablar sobre la distribución de medias muestrales de una colección de observaciones iid. ¿La media de la media muestral estima qué?

#Media de la población

#La Ley de Números Grandes (LLN) dice que el promedio (promedio) se acerca a lo que está estimando. 

#Vimos en nuestras simulaciones que cuanto mayor es el tamaño de la muestra, mejor es la estimación. 
#Cuando lanzamos una moneda justa una y otra vez, eventualmente converge a la verdadera probabilidad de una cara (.5).

#El LLN forma la base del pensamiento de estilo de frecuencia.

#Para ver esto en acción, copiamos un código de las diapositivas y creamos la función coinPlot. Se necesita un número entero n, que es el número de lanzamientos de monedas que se simularán. Cuando coinPlot realiza estos lanzamientos de monedas, calcula la suma acumulativa (suponiendo que las caras sean 1 y las colas 0), pero después de cada lanzamiento divide la suma acumulativa por el número de lanzamientos realizados hasta el momento. Luego traza este valor para cada uno de los lanzamientos k = 1 ... n. Pruébelo ahora para n = 10.


#Su salida depende del generador de números aleatorios de R, pero su trama probablemente salte un poco y, en el décimo giro, su suma acumulativa / 10 probablemente sea diferente de la mía. Si hicieras esto varias veces, tus tramas variarían bastante. Ahora llame a coinPlot nuevamente, esta vez con 10000 como argumento.

#¿Ver la diferencia? ¡Asintóticas en acción! La línea se acerca a su asíntota de .5. Esta es la probabilidad que espera, ya que lo que estamos tramando, la suma / número acumulativo de lanzamientos, representa la probabilidad de que la moneda caiga en la cara. Como sabemos, esto es .5.

#Decimos que un estimador es CONSISTENTE si converge con lo que está tratando de estimar. El LLN dice que la media muestral de las muestras iid es consistente para la media poblacional. Esto es bueno, ¿verdad?


#Según nuestra lección anterior, ¿cree que la varianza de la muestra (y, por lo tanto, la desviación de la muestra) también son consistentes?

#YES

#Ahora, para algo realmente importante, el TEOREMA DEL LÍMITE CENTRAL (CLT), uno de los teoremas más importantes en todas las estadísticas. Establece que la distribución de los promedios de las variables iid (debidamente normalizadas) se convierte en la normal estándar a medida que aumenta el tamaño de la muestra.

#Analicemos esto para ver qué significa. Primero, 'correctamente normalizado' significa que transformó la media muestral X '. Restaste la media poblacional mu de ella y dividiste la diferencia entre sigma / sqrt (n). Aquí sigma es la desviación estándar de la población y n es el tamaño de la muestra.

#En segundo lugar, el CLT dice que para n grande, esta variable normalizada, (X'-mu) / (sigma / sqrt (n)) se distribuye casi normalmente con media 0 y varianza 1. Recuerde que n debe ser grande para que el CLT aplicar.


#¿Reconoces sigma/sqrt(n) de nuestra lección sobre la varianza? Dado que la desviación estándar de la población sigma es desconocida, ¿qué sigma/sqrt(n) a menudo se aproxima por qué?


#El error estandard de la media del ejemplo

#Reformulemos el CLT. Suponga que X_1, X_2, ... X_n son variables aleatorias independientes, distribuidas idénticamente de una población infinita con mu media y sigma de varianza ^ 2. Entonces, si n es grande, la media de las X, llámela X ', es aproximadamente normal con la media mu y la varianza sigma ^ 2 / n. Denotamos esto como X '~ N (mu, sigma ^ 2 / n).


#Para mostrar el CLT en acción, considere esta figura de las diapositivas. Presenta 3 histogramas de 1000 promedios de tiradas de dados con tamaños de muestra de 10, 20 y 30 respectivamente. Cada promedio de n tiradas de dados (n = 10,20,30) se ha normalizado restando la media (3.5) y luego dividiendo por el error estándar, sqrt (2.92 / n). La normalización ha hecho que cada histograma parezca una normal estándar, es decir, media 0 y desviación estándar 1.


#Observe que el CLT no dijo nada acerca de la distribución original de la población original. ¡Ahí es precisamente donde radica su utilidad! Podemos suponer la normalidad de una muestra media sin importar el tipo de población que tengamos, siempre que el tamaño de nuestra muestra sea lo suficientemente grande y nuestras muestras sean independientes.

#Veamos cómo funciona con un experimento binomial como lanzar una moneda.


#Recuerde que si la probabilidad de una cabeza (llámela 1) es p, entonces la probabilidad de una cola (0) es 1-p. El valor esperado es p y la varianza es p-p ^ 2 o p (1-p). Supongamos que hacemos n lanzamientos de monedas y dejamos que p 'represente el promedio de estos n lanzamientos. 

#Normalizamos p 'restando la media p y dividiendo por la desviación estándar sqrt (p (1-p) / n). Hagamos esto durante 1000 intentos y grafiquemos el histograma resultante.

#Aquí hay una figura de las diapositivas que muestra los resultados de 3 de estos ensayos en los que cada ensayo tiene un valor diferente de n (10, 20 y 30) y la moneda es justa, por lo que E (X) =. 5 y el error estándar es 1 / (2sqrt (n)).

#Observe cómo con mayor n (30) el histograma se ajusta alrededor de la media 0.

#Aquí hay otra trama de las diapositivas del mismo experimento, esta vez usando una moneda sesgada. Establecemos la probabilidad de una cabeza en .9, por lo que E (X) =. 9 y el error estándar es sqrt (.09 / n) 

#Nuevamente, cuanto más grande es el tamaño de la muestra, más se parece la distribución normal, aunque con este sesgo la moneda la aproximación normal no es tan buena como lo fue con la moneda justa.


#Sabemos por el CLT que para n grande, la media de la muestra es normal con mu media y desviación estándar sigma/sqrt(n). También sabemos que el 95% del área bajo una curva normal está dentro de dos desviaciones estándar de la media. Esta figura, una normal estándar con mu = 0 y sigma = 1, ilustra este punto; toda la porción sombreada representa el área dentro de 2 desviaciones estándar de la media y la porción más oscura muestra el 68% del área dentro de 1 desviación estándar.

#Se deduce que el 5% del área bajo la curva no está sombreada. Por simetría de la curva, solo el 2.5% de los datos es mayor que la media + 2 desviaciones estándar (mu + 2 * sigma / sqrt (n)) y solo el 2.5% es menor que la media - 2 desviaciones estándar (mu-2 * sigma / sqrt (n)).


#Entonces, la probabilidad de que la muestra media X 'sea mayor que mu + 2sigma / sqrt (n) O menor que mu-2sigma / sqrt (n) es del 5%. De manera equivalente, la probabilidad de estar entre estos límites es del 95%. Por supuesto, podríamos tener diferentes tamaños de intervalos. Si quisiéramos algo diferente a 95, entonces usaríamos un cuantil diferente a 2.


#La cantidad X 'más o menos 2 sigma / sqrt (n) se llama intervalo de 95% para mu. El 95% dice que si uno obtuviera repetidamente muestras de tamaño n, aproximadamente el 95% de los intervalos obtenidos contendrían mu, la cantidad que estamos tratando de estimar.


#Tenga en cuenta que para un intervalo de confianza del 95% dividimos (100-95) por 2 (ya que tenemos colas izquierda y derecha) y agregamos el resultado a 95 para calcular el cuantil que necesitamos. El cuantil 97.5 es en realidad 1.96, pero por simplicidad a menudo simplemente se redondea a 2. Si quisieras encontrar un intervalo de confianza del 90%, ¿qué cuantil querrías?


#(100-90)/2 + 90

#Use la función R qnorm para encontrar el 95º cuantil para una distribución normal estándar. Recuerde que qnorm toma una probabilidad como entrada. Puede usar valores predeterminados para todos los demás argumentos.

qnorm(0.95)

#Como hemos visto antes, en una distribución binomial en la que p representa la probabilidad o proporción de éxito, la varianza sigma ^ 2 es p (1-p), por lo que el error estándar de la media muestral p 'es sqrt (p ( 1-p) / n) donde n es el tamaño de la muestra. El intervalo de confianza del 95% de p es entonces p '+/- 2 * sqrt (p (1-p) / n). ¿El 2 en esta fórmula representa qué?

#la aproximacion del 97.5% del quantil normal


#Un punto crítico aquí es que no sabemos el verdadero valor de p; eso es lo que estamos tratando de estimar. ¿Cómo podemos calcular un intervalo de confianza si no conocemos p (1-p)? Podríamos ser conservadores e intentar maximizarlo para obtener el mayor intervalo de confianza posible. El cálculo nos dice que p (1-p) se maximiza cuando p = 1/2, por lo que obtenemos el mayor intervalo de confianza del 95% cuando establecemos p = 1/2 en la fórmula p '+/- 2 * sqrt (p ( 1-p) / n).


#Usando 1/2 para el valor de p en la fórmula anterior, ¿qué expresión para el intervalo de confianza del 95% para p?

#p'+/- 1/sqrt(n)

#Aquí hay otro ejemplo de cómo aplicar esta fórmula de las diapositivas. Suponga que se postula para un cargo y su encuestador encuestó a 100 personas. De estos 60 afirmaron que iban a votar por usted. Le gustaría estimar la verdadera proporción de personas que votarán por usted y desea tener un 95% de confianza en su estimación. Necesitamos encontrar los límites que contendrán la verdadera proporción de sus seguidores con un 95% de confianza, por lo que utilizaremos la fórmula p '+/- 1/ sqrt(n) para responder esta pregunta. Primero, ¿qué valor usarías para p ', la estimación muestreada?

#0.60

#¿Qué usarías para 1 / sqrt (n)?

#1/10

#Los límites del intervalo son, entonces, ¿qué?

#5 y 7

#¿Cómo te sientes acerca de la elección?

#Confidente


#Otra técnica para calcular intervalos de confianza para distribuciones binomiales es reemplazar p por p'. Esto se llama el intervalo de confianza de Wald. También podemos usar la función R qnorm para obtener un valor cuantil más preciso (más cercano a 1.96) en lugar de nuestra estimación aproximada de 2.


#Con la fórmula p '+/-qnorm(.975)*sqrt(p'(1-p')/100), use los valores p' y n de arriba y la construcción R p '+ c (-1,1 ) ... para manejar la parte más / menos de la fórmula. Debería ver límites similares a los que acaba de estimar.

# .6 + c(-1,1)*qnorm(.975)*sqrt(.6*.4/100)


#Como alternativa a este intervalo de Wald, también podemos usar la función R binom.test con los parámetros 60 y 100 y dejar que todos los demás sean predeterminados. Esta función "realiza una prueba exacta de una hipótesis nula simple sobre la probabilidad de éxito en un experimento de Bernoulli". (Esto significa que garantiza las coberturas, utiliza muchos cálculos y no se basa en el CLT). Esta función devuelve mucha información, pero todo lo que queremos ahora son los valores del intervalo de confianza que devuelve. Use la construcción R x $ conf.int para encontrarlos ahora.

binom.test(60,100)$conf.int

#Cerca de lo que hemos visto antes, ¿verdad? Ahora veremos que el intervalo de Wald no es muy preciso cuando n es pequeño. Usaremos el ejemplo de las diapositivas.


#Supongamos que lanzamos una moneda varias veces, digamos 20. También supongamos que tenemos una función mywald que toma una probabilidad p y genera 30 juegos de 20 lanzamientos de monedas usando esa probabilidad p. Utiliza la proporción de éxito muestreada, p ', para esos 20 lanzamientos de monedas para calcular los límites superior e inferior del intervalo de Wald del 95%, es decir, calcula los dos números p' +/- qnorm (.975) * sqrt (p '* (1-p') / n) para cada uno de los 30 ensayos. Para la probabilidad verdadera dada p, contamos el número de veces de esas 30 pruebas que la probabilidad verdadera p estaba en el intervalo de confianza de Wald. Llamaremos a esto la cobertura.


#Para asegurarse de que comprende lo que está sucediendo, intente ejecutar mywald ahora con la probabilidad .2. Imprimirá 30 valores de p '(que realmente no necesita ver), seguidos de 30 límites inferiores, 30 límites superiores y, por último, el porcentaje de veces que la entrada .2 estuvo entre los dos límites. Vea si está de acuerdo con el porcentaje que obtiene. Por lo general, es suficiente contar el número de veces (de las 30) que .2 es menor que el límite superior.


mywald(.2)


#Ahora que comprende el principio subyacente, suponga que en lugar de 30 ensayos, usamos 1000 ensayos.

#Supongamos también que hicimos este experimento para una serie de probabilidades, digamos de .1 a .9 tomando pasos de tamaño .05. Más específicamente, llamaremos a nuestra función usando 17 probabilidades diferentes, a saber .1, .15, .2, .25, ... .9.

#Luego podemos trazar los porcentajes de cobertura para cada una de las probabilidades.


#Aquí está la trama de nuestros resultados. Cada uno de los 17 vértices muestra el porcentaje de cobertura para una probabilidad verdadera particular p pasada a la función. Los resultados variarán, pero generalmente la única probabilidad de que golpee cerca o por encima de la línea del 95% es p = .5. Esto muestra que cuando n, el número de vueltas, es pequeño (20), el CLT no se cumple para muchos valores de p, por lo que el intervalo de Wald no funciona muy bien.


#Probemos el mismo experimento y aumentemos n, el número de lanzamientos de monedas en cada una de nuestras 1000 pruebas, de 20 a 100 para ver si la trama mejora.

#Una vez más, los resultados pueden variar, pero todas las probabilidades están mucho más cerca de la línea del 95%, por lo que el CLT funciona mejor con un valor mayor de n.


#Una solución rápida al problema de tener una n pequeña es usar el intervalo Agresti/Coull. Esto simplemente significa que agregamos 2 éxitos y 2 fracasos a los recuentos al calcular la proporción p '.


#Específicamente, si X es el número de éxitos de las 20 monedas lanzadas, entonces, en lugar de establecer p '= X / 20, deje que p' = (X + 2) / 24. Usamos 24 como el número de pruebas ya que hemos agregado 2 éxitos y 2 fracasos a los recuentos. Tenga en cuenta que todavía usamos 20 en el cálculo de los límites superior e inferior.

#Aquí hay una gráfica que usa este intervalo Agresti / Coull, con 1000 intentos de 20 lanzamientos de monedas cada uno. Se ve mucho mejor que el Wald original con 20 monedas y el Wald mejorado con 100 monedas. Sin embargo, esta técnica puede hacer que el intervalo de confianza sea demasiado amplio.

#¿Por qué funciona esto? Sumar 2 éxitos y 2 fracasos acerca a p 'a .5 que, como vimos, es el valor que maximiza el intervalo de confianza.


#Para mostrar esto simplemente, escribimos una función ACCompar, que toma una entrada entera n. Para cada k de 1 a n, calcula dos fracciones, k / ny (k + 2) / (n + 4). Luego imprime el vector booleano de si la nueva fracción (k + 2) / (n + 4) es menor que la antigua k / n. También imprime el número total de k para las cuales la condición es VERDADERA.

#Para todos los k menores que n / 2, verá FALSO que indica que la nueva fracción es mayor o igual a k / n. Para todos los k mayores que n / 2, verá VERDADERO que indica que la nueva fracción es menor que la anterior.

#Si k = n / 2, las fracciones antiguas y nuevas son iguales.

#Intente ejecutar ACCompar ahora con una entrada de 20.

ACCompar(20)


#Pasemos a las distribuciones de Poisson y los intervalos de confianza. Recuerde que las distribuciones de Poisson se aplican a los recuentos o tasas. Para este último, escribimos X ~ Poisson (lambda * t) donde lambda es el recuento esperado por unidad de tiempo yt es el tiempo total de monitoreo.

#Aquí hay otro ejemplo de las diapositivas. Supongamos que una bomba nuclear falla 5 veces de 94.32 días y queremos un intervalo de confianza del 95% para la tasa de falla por día. El número de fallas X es Poisson distribuido con parámetro (lambda * t). No observamos la tasa de falla, pero la estimamos como x / t.

#Llame a nuestra estimación lambda_hat, entonces lambda_hat = x / t. Según la teoría, la varianza de nuestra tasa de falla estimada es lambda / t. Nuevamente, no observamos lambda, por lo que usamos nuestra estimación. De este modo, aproximamos la varianza de lambda_hat como lambda_hat / t.

#En este ejemplo, ¿qué usarías como la media estimada x / t?

#5/94.32

#Establezca la variable lamb ahora con este valor.

lamb <- 5/94.32

#Entonces lamb es nuestra media estimada y lamb/t es nuestra varianza estimada. La fórmula que hemos usado para calcular un intervalo de confianza del 95% es est mean+c(-1,1)*qnorm(.975)*sqrt (est var). Use esta fórmula ahora haciendo las sustituciones apropiadas.

lamb + c(-1,1)*qnorm(.975)*sqrt(lamb/94.32)

#Como verificación, podemos usar la función poisson.test de R con los argumentos 5 y 94.32 para verificar este resultado.

#Esta es una prueba exacta, por lo que garantiza la cobertura. Al igual que con la prueba binomial exacta, solo necesitamos mirar la porción conf del resultado usando x$conf. Hacer esto ahora.

poisson.test(5,94.32)$conf


#Bastante cerca, ¿verdad? Ahora, para verificar la cobertura de nuestra estimación, ejecutaremos el mismo experimento de simulación que realizamos anteriormente con distribuciones binomiales. Variaremos nuestros valores de lambda de .005 a .1 con pasos de .01 (por lo que tenemos 10 de ellos), y para cada uno generaremos 1000 muestras de Poisson con lambda * t media. Calcularemos medias de muestra y las usaremos para calcular intervalos de confianza del 95%. Luego contaremos con qué frecuencia de las 1000 simulaciones la media verdadera (nuestra lambda) estaba contenida en el intervalo calculado.

#Aquí hay una gráfica de los resultados. Vemos que la cobertura mejora a medida que lambda se hace más grande, y está bastante apagada para valores pequeños de lambda.

#Ahora es interesante ver cómo mejora la cobertura cuando aumentamos la unidad de tiempo. En la gráfica anterior usamos t = 100 (redondeando el 94.32 hacia arriba). Aquí hay una gráfica de la misma configuración de experimento t = 1000.

#Vemos que la cobertura es mucho mejor para casi todos los valores de lambda, excepto los más pequeños.

#¿Qué nos dice que los promedios de las muestras de iid convergen a la población significa queestán estimando?

#La ley de numeros grandes


#Lo que nos dice que los promedios son aproximadamente normales para muestras grandes.

#CLT

#El Teorema del límite central (CLT) nos dice que los promedios tienen qué tipo de distribuciones?

#Normal

#El Teorema del límite central (CLT) nos dice que los promedios tienen distribuciones normales centradas en qué.

#El promedio de la poblacion

#El Teorema del límite central (CLT) nos dice que los promedios tienen distribuciones normales con desviaciones estándar iguales a qué.

#Error Estandard

#Verdadero o falso: el teorema del límite central (CLT) nos dice que los promedios siempre tienen distribuciones normales, sin importar cuán grande sea el tamaño de la muestra

#Falso mientras mas pequeños sean las distribuciones dejan de ser normales.

#Para calcular un intervalo de confianza para una media, toma la media de la muestra y suma y resta los cuantiles normales relevantes por el qué?

#Error estandard

#Para un intervalo de confianza del 95% aproximadamente, ¿cuántos errores estándar sumaría y restaría de la media muestral?

#2

#Si quisieras una mayor cobertura, ¿qué harías con tu intervalo de confianza?

#Aumentarla

#Si tuviera menos variabilidad en sus datos, ¿su intervalo de confianza aumentaría o disminuiría?

#Disminuiria

#Si tuviera un tamaño de muestra mayor, ¿su intervalo de confianza se haría más grande o más pequeño?

#Pequeño

#¿Qué es una solución rápida para cálculos binomiales de tamaño de muestra pequeño?

#Agregue dos exitos y dos fallas











