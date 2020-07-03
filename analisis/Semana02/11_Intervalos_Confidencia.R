#Intervalos de Confidencia

library(tidyverse)

#Así que desarrollemos un uso más práctico del teorema del límite central. Recuerde que la muestra reunida es aproximadamente normal distribuida con una media poblacional igual a mu y una desviación estándar igual al error estándar de la media sigma sobre la raíz cuadrada 10. 

#En esta distribución, mu plus 2 errores estándar está bastante lejos en la cola. Con solo un 2.5% de probabilidad de que una normal sea mayor que dos desviaciones estándar en la cola. Del mismo modo, el error estándar mu menos 2 está bastante lejos en la cola izquierda, con solo un 2.5% de probabilidad de que una normal sea menor que dos desviaciones estándar en la cola izquierda.


#Entonces, la probabilidad de que x bar sea mayor que mu más 2 errores estándar o menor que mu menos 2 errores estándar es del 5%. 

#Donde equivalente, la probabilidad de que mu esté entre estos límites es del 95%. 

#Podemos revertir el papel de x bar mu sin cambiar las desigualdades de probabilidad y obtener que la cantidad x bar más o menos 2 errores estándar contenga mu con una probabilidad del 95%. 

#Recuerde aquí, que estamos tratando el intervalo como aleatorio x bar más o menos 2 errores estándar, mientras que mu es fijo. 

#Entonces hablamos sobre la probabilidad de que el intervalo contenga mu. La interpretación real de esto es que si obtuviéramos repetidamente muestras de tamaño n de esta población. Construya un intervalo de confianza en cada caso. 

#Alrededor del 95% de los intervalos que obtuvimos contendrían mu, el parámetro que estamos tratando de estimar. Me gustaría señalar que obtengo el 2 al redondear el 97.5º cuantil, que está más cerca de 1,96. 

#Si desea un intervalo del 90%, lo que necesita es un 5% en cualquier cola. 

#Entonces reemplazarías el 2 con 1.645. 

#Veamos un ejemplo simple. 

library(UsingR)
data(father.son)
x <- father.son$sheight
(mean(x) + c(-1, 1) * qnorm(.975) * sd(x) / sqrt(length(x))) / 12


#Considere los datos de father.son del paquete using r. Para encontrar que x es la altura del hijo, simplemente voy a tomar la media de x plus o menos el 0.975º cuantil normal por el error estándar de la media. Desviación estándar de x dividida por la raíz cuadrada de n, que es la longitud del vector x. Dividí por 12 para que mi intervalo de confianza sea en pies en lugar de pulgadas. Y obtengo el intervalo de confianza 5.710 a 5.738. 

#Si estuviéramos dispuestos a suponer que los hijos de estos datos fueron un sorteo ideal de una población de interés. 

#El intervalo de confianza para la altura promedio de los hijos sería de 5,71 a 5,74. Consideremos los lanzamientos de monedas en el desarrollo del intervalo de confianza para la probabilidad de éxito de la moneda. 

#En este caso, cada observación xi, es un 0 o 1 con un éxito común probablemente p. Y recuerde que la variación del lanzamiento de la moneda fue p por 1 menos p, donde nuevamente, p es la verdadera probabilidad de éxito de la moneda. 

#Recuerde, entonces, el error estándar de la media es cuadrado p por 1 menos p sobre n. Entonces, el intervalo toma la forma, p hat más o menos el cuantil normal multiplicado por la raíz cuadrada p por 1 menos p sobre n. 

#No sabemos p, es lo que queremos estimar. Y entonces no tenemos el error estándar, pero lo reemplazaríamos por p hat. Y este es un intervalo de confianza que se llama intervalos de confianza de Wald, llamado así por el gran estadístico Wald. 

#Resulta que p por 1 menos p es tan grande como puede ser cuando p es igual a la mitad, de modo que la raíz cuadrada p por 1 menos p es la mitad. 

#Y cuando lo multiplicamos por 2 en el intervalo del 95%, estos se cancelan y obtenemos que para intervalos del 95%, p más más o menos 1 sobre la raíz cuadrada n es una estimación muy rápida del intervalo de confianza para p. 

#Imagine que se postula para un cargo político y su asesor de campaña le dijo que en una muestra aleatoria de 100 votantes probables, 56 tenían la intención de votar por usted. Puedes relajarte.

#¿Tienes esta carrera en la bolsa? 

#¿Son 0,56 de 100 muestras suficientes como para concluir que probablemente obtendrá más del 50% de los votos? 

#Pero no tienes acceso a una computadora o calculadora. Entonces, lo que haces es hacer 1 sobre la raíz cuadrada 100, lo que produce 0.1. Por lo tanto, el cálculo de la parte posterior del sobre proporciona un intervalo aproximado del 95% de 0,46 a 0,66. 


round(1 / sqrt(10 ^ (1 : 6)), 3)

#El intervalo de confianza dice que no podemos descartar posibilidades por debajo de 0.5 con un 95% de confianza. Entonces, no es suficiente para que te relajes, y será mejor que hagas más campañas. 

#Por lo tanto, algunas pautas generales generales es que necesita 100 para un decimal en un experimento binomial, 10,000 para dos y un millón para tres. 

#Aquí solo doy 1 sobre la raíz cuadrada de un grupo de potencias de 10 solo para ilustrar eso. Aquí solo paso por el cálculo donde conecto 0.56 directamente en la fórmula del área estándar. 

#Por lo tanto, tenemos 0.56 más o menos el cuartil normal estándar correspondiente por la raíz cuadrada 0.56 por 0.44 sobre 100. Esto produce el intervalo 0.46 a 0.66 al igual que antes. 

.56 + c(-1, 1) * qnorm(.975) * sqrt(.56 * .44 / 100)

#Además, la función binom.test con 56 éxitos de 100 ensayos para obtener el componente del intervalo de confianza produce un intervalo muy similar, de 0,46 a 0,66. La función binom.test es exactamente 
#la sensación de que proporciona una cobertura del 95% o superior, independientemente del tamaño N. 

binom.test(56, 100)$conf.int

#Estos llamados procedimientos exactos son un buen complemento para los procedimientos de muestras grandes.

#Tienden a involucrar cálculos que no pueden hacerse a mano y pueden ser conservadores. 

#Tengo intervalos más amplios, pero no obstante, no se basan en el Teorema del límite central.

#Consideremos una simulación. Aquí voy a hacer una simulación donde lanzo una moneda con una probabilidad de éxito dada una y otra vez. Y calcular el porcentaje de veces que mi intervalo amurallado cubre la probabilidad real de la moneda que usamos para generar los datos. 

#Entonces, voy a decir que en cada una de mis simulaciones voy a hacer 20 lanzamientos de monedas.

n <- 20; pvals <- seq(.1, .9, by = .05); nosim <- 1000
coverage <- sapply(pvals, function(p){
  phats <- rbinom(nosim, prob = p, size = n) / n
  ll <- phats - qnorm(.975) * sqrt(phats * (1 - phats) / n)
  ul <- phats + qnorm(.975) * sqrt(phats * (1 - phats) / n)
  mean(ll < p & ul > p)
})


#Los valores verdaderos de la probabilidad de éxito de la moneda que me gustaría ver varían entre 0.1 y 0.9, donde los paso por el valor 0.05. Voy a hacer 1,000 simulaciones. Y luego voy a recorrer las verdaderas probabilidades de éxito. Y para cada probabilidad de éxito real, voy a generar 1,000 juegos de 10 lanzamientos de monedas donde tomo la proporción de muestra en cada caso. Luego voy a calcular el límite inferior del intervalo de confianza en cada uno de esos casos. Y el límite superior del intervalo de confianza en cada uno de esos casos. Y voy a calcular la proporción de veces que pueden cubrir el verdadero valor de p que usé para simular los datos. 

#Todo esto estará en esta variable que estoy llamando cobertura. Ahora, lo que me gustaría hacer es trazar la cobertura como la función de la verdadera probabilidad de éxito que usé para simular los datos. 

ggplot(data.frame(pvals, coverage), aes(x = pvals, y = coverage)) + geom_line(size = 2) + geom_hline(yintercept = 0.95) + ylim(.75, 1.0)



#Aquí muestro la gráfica de la cobertura por los valores verdaderos de p utilizados para la simulación. 

#Entonces, por ejemplo, con el valor 0.5 volteé la moneda diez veces, tomé la proporción de la muestra, encontré el intervalo de confianza y luego le di uno si cubría el valor 0.5 o no. Lo hice 1,000 veces y, en este caso, más del 95% del tiempo cubrió esa probabilidad. 

#Básicamente, dice que si el valor verdadero de p era 0.5 y hago un intervalo de confianza, la cobertura es realmente mejor que el 95% un poco. 

#Hay algún error de Monte Carlo, ¿verdad? En eso no hice un número infinito de simulaciones. Solo hice 1,000, pero 1,000 es bastante bueno, 

#¿verdad? 

#Como vimos en un par de diapositivas, nos da un poco más de precisión que un decimal. 

#Ahora, aquí, está bastante claro que no estoy llegando a un nivel de confianza del 95% para el caso en que la p está por aquí alrededor del 12% más o menos. 

#Ahora, ¿por qué es este el caso? 

#¿Por qué es que un procedimiento de intervalo de confianza del 95% nos da claramente una cobertura inferior al 95%? 

#Y es simplemente porque el teorema del límite central, no es tan preciso como lo necesitamos para este valor específico de N para monedas con esta probabilidad verdadera específica. 

#Entonces, le daré una solución rápida para abordar este problema para valores más pequeños de n. 

#La solución rápida, es simplemente tomar su número de éxitos x y sumar 2, y su número de fracasos y también sumar 2. Para que su p ahora sea x más 2 sobre n más 4. 

#Entonces, sume dos éxitos y fracasos. Luego, simplemente pasa por el procedimiento del intervalo de confianza como de costumbre. Pero con esta nueva proporción de muestra que se ha reducido un poco a 0.5. 

#Esto se llama el intervalo Agresti / Coull. 

#Y en un minuto le mostraremos cómo funciona un poco mejor. Antes de mostrar los resultados para agregar dos éxitos y agregar dos fracasos, simplemente quiero mostrar que el rendimiento es mejor cuando n es mayor. 

#Aquí, he hecho exactamente la misma simulación que convirtió n en 100 en lugar de 20. 

n <- 100 
pvals <- seq(.1, .9, by = .05) 
nosim <- 1000
coverage2 <- sapply(pvals, function(p){
  phats <- rbinom(nosim, prob = p, size = n) / n
  ll <- phats - qnorm(.975) * sqrt(phats * (1 - phats) / n)
  ul <- phats + qnorm(.975) * sqrt(phats * (1 - phats) / n)
  mean(ll < p & ul > p)
})


#Y aquí ves la probabilidad de cobertura en función de los diferentes valores de p, solo que ahora la única diferencia es que dentro de cada intervalo de conferencia que simulé , Uso una mayor cantidad de lanzamientos de monedas. 

#Entonces, en cada caso, tome por ejemplo este punto aquí. Para ese valor verdadero específico de p, simulé 100 lanzamientos de monedas. Tomó la proporción de la muestra, creó el intervalo de confianza y vio si contenía este verdadero valor de p. 

ggplot(data.frame(pvals, coverage), aes(x = pvals, y = coverage2)) + geom_line(size = 2) + geom_hline(yintercept = 0.95)+ ylim(.75, 1.0)

#En más del 95% de las instancias ese fue el caso. Ves aquí la línea del 95% aquí y ves que, la probabilidad de cobertura es bastante cercana, nunca cae por debajo de 90 como lo hizo en el caso 20. 

#Ahora, volvamos a mirar el caso 20 nuevamente. Entonces pongo n igual a 20. 

n <- 20; pvals <- seq(.1, .9, by = .05); nosim <- 1000
coverage <- sapply(pvals, function(p){
  phats <- (rbinom(nosim, prob = p, size = n) + 2) / (n + 4)
  ll <- phats - qnorm(.975) * sqrt(phats * (1 - phats) / n)
  ul <- phats + qnorm(.975) * sqrt(phats * (1 - phats) / n)
  mean(ll < p & ul > p)
})

#¿De acuerdo? Pero ahora, cuando calculo mi intervalo de confianza aquí, observe que estoy agregando dos éxitos y dos fracasos. Así que veamos el rendimiento de eso. 


ggplot(data.frame(pvals, coverage), aes(x = pvals, y = coverage)) + geom_line(size = 2) + geom_hline(yintercept = 0.95)+ ylim(.75, 1.0)

#Y puede ver que agregar dos éxitos y agregar dos intervalos de fallas tiende a cubrir la verdadera probabilidad de éxito con un porcentaje de tiempo superior al 95%. Esto es un poco mejor que la cobertura extremadamente pobre del intervalo de Wald para ciertos valores de la probabilidad real. 

#Sin embargo, ser demasiado conservador, en otras palabras, tener una tasa de cobertura demasiado alta tampoco es necesariamente algo bueno, ya que implica que el intervalo probablemente sea demasiado amplio. 

#No obstante, he pensado un poco sobre este problema específico y podría dar una recomendación muy categórica de que el intervalo de agregar 2 éxitos y 2 fallas generalmente debe usarse en lugar del intervalo de Wald.

#Vamos a crear un intervalo de Poisson utilizando la estimación más o menos el error estándar de cuantil normal de una fórmula de estimación. 

#Esto se basa en el teorema del límite central, aunque quizás sea un poco menos claro cómo se aplica el teorema del límite central en este caso. Hablaré de eso un poco en un minuto. 

#Hablemos de una bomba nuclear que falló 5 veces en 94.32 días, dado el intervalo de confianza del 95% para la tasa de falla por día. Así que voy a suponer que mi número de fallas es Poisson con una tasa de falla lambda y t es el número de días. 

#Mi estimación de la tasa de fallas es el número de fallas dividido por el tiempo total de monitoreo. La varianza de esta estimación resulta ser lambda sobre t. De modo que ese sombrero lambda sobre t es nuestra estimación de varianza empírica. 

#Aquí solo paso por los cálculos en r. 

#Defino mi número de eventos aquí como x siendo 5, el tiempo de monitoreo es 94.32. Mi estimación de la tasa como x sobre t, y mi intervalo de confianza estimado como la tasa estimada más o menos el cuantil normal estándar relevante multiplicado por el error estándar, y luego lo redondeo para que solo obtenga una precisión de tres decimales. Así que aquí mi estimación del intervalo de confianza del 95% para la tasa. 


#Además de hacer un intervalo de muestra grande, podemos hacer un intervalo de Poisson exacto, y R tiene una función para hacerlo. Es poisson.test. Le damos el número de eventos. 

x <- 5; t <- 94.32
lambda <- x / t
round(lambda + c(-1, 1) * qnorm(.975) * sqrt(lambda / t), 3)
poisson.test(x, T = 94.32)$conf


#Y el tiempo de monitoreo, y luego puede tomar el compartimiento del intervalo de conferencia, parte de él, y allí le da el intervalo exacto de Poisson. 

#Lo que quiero decir con exacto aquí, nuevamente, es que garantiza la cobertura, pero eso podría ser conservador. 

#Puede darle un intervalo más amplio de lo necesario, pero garantizará una cobertura del 95%. Solo porque estamos muy interesados en ver cómo funcionan los intervalos de confianza en muestreos repetidos, ya que eso define nuestra idea de qué es un intervalo de confianza. 

#Repitamos el proceso que hicimos para la moneda, para la tasa de cobertura de Poisson. 

#Así que escojamos un conjunto de valores lambda, más o menos cercanos a los de nuestro ejemplo. Hagamos 1,000 simulaciones. Establezcamos nuestro tiempo de monitoreo como 100 en lugar de 94 solo para simplificarlo. Y luego, voy a definir la cobertura de la misma manera. Voy a simular un montón de Poissons con esta tasa particular, y luego lo dividiré por el tiempo de monitoreo para obtener un vector de sombreros lambda en más de 1,000 simulaciones. Luego voy a crear mi intervalo de confianza del 95% construyendo el límite inferior donde reste el cuantil normal estándar multiplicado por el error estándar, y luego un montón de límites superiores donde agrego el cuantil normal estándar multiplicado por el error estándar. Y luego tomaré el porcentaje de veces que mi intervalo contiene la verdadera lambda utilizada para la simulación. Y lo haré sobre una serie de valores lambda y luego, en la siguiente diapositiva, les mostraré la gráfica de los valores lambda según la cobertura estimada de monte carlo. 

lambdavals <- seq(0.005, 0.10, by = .01); nosim <- 1000
t <- 100
coverage <- sapply(lambdavals, function(lambda){
  lhats <- rpois(nosim, lambda = lambda * t) / t
  ll <- lhats - qnorm(.975) * sqrt(lhats / t)
  ul <- lhats + qnorm(.975) * sqrt(lhats / t)
  mean(ll < lambda & ul > lambda)
})


#Así que aquí está la gráfica de nuestros valores lambda por la cobertura. 

ggplot(data.frame(lambdavals, coverage), aes(x = lambdavals, y = coverage)) + geom_line(size = 2) + geom_hline(yintercept = 0.95)+ylim(0, 1.0)


#Por lo tanto, cada punto en este gráfico es una instancia en la que simulamos y generamos repetidamente intervalos de confianza de Poisson y tomamos el porcentaje de tiempo que esos intervalos contenían el verdadero valor lambda utilizado para la simulación. 

#Podemos ver que a medida que los valores lambda aumentan, la cobertura se acerca al 95%. Por supuesto, hay algo de monte carlo air porque no hicimos un número infinito de simulaciones, solo 1,000. 

#También vemos que a medida que el valor verdadero de lambda disminuye, la cobertura se vuelve muy pobre y yo no. 

#Probablemente no puedas ver este número terriblemente bien aquí. Entonces, me acercaré. Esa cobertura es del 50% allí mismo. 

#Por lo tanto, su supuesto intervalo del 95% solo le brinda una cobertura real del 50%. Por lo tanto, nuestra breve simulación aquí sugiere que para valores muy pequeños de lambda, de los cuales tenemos una buena idea, podríamos tener relativamente pocos eventos para un gran tiempo de monitoreo. Para valores relativamente pequeños de lambda no deberíamos usar este intervalo asintótico. Como no está claro de inmediato cómo funciona el teorema del límite central en el caso de Poisson, solo quería poner una simulación para mostrar que lo que va al infinito para hacer que el caso de Poisson tenga muy buenas aproximaciones usando el teorema del límite central. 

#Y básicamente, a medida que el tiempo de monitoreo llega al infinito, la cobertura convergerá al 95%. Entonces, en esta simulación, cambié t de 100 a 1,000 para que estemos monitoreando no por un total de 94.32 días, sino un tiempo de monitoreo total de los 1,000 días. 

lambdavals <- seq(0.005, 0.10, by = .01)
nosim <- 1000
t <- 1000
coverage <- sapply(lambdavals, function(lambda){
  lhats <- rpois(nosim, lambda = lambda * t) / t
  ll <- lhats - qnorm(.975) * sqrt(lhats / t)
  ul <- lhats + qnorm(.975) * sqrt(lhats / t)
  mean(ll < lambda & ul > lambda)
})
ggplot(data.frame(lambdavals, coverage), aes(x = lambdavals, y = coverage)) + geom_line(size = 2) + geom_hline(yintercept = 0.95) + ylim(0, 1.0)


#Y aquí vemos que la cobertura, si miramos la línea de referencia aquí al 95%, la cobertura es mucho, mucho, mucho mejor para la mayoría de los valores de lambda. Hay poca cobertura aquí abajo, cerca de los valores más pequeños de lambda, pero sabemos que este intervalo tiene problemas con valores pequeños de lambda. Pero recuerde en este caso, tenemos el intervalo exacto de Poisson como una opción.


#Así que felicidades por haber superado esta conferencia maratónica. 

#Debido a que había mucho contenido, me gustaría resumirlo muy brevemente. 

#En primer lugar, cubrimos la ley de los grandes números. Y eso simplemente indica que los promedios de las variables aleatorias de IID convergen con las cosas que están estimando. 

#También agregaría que también muestra que las tasas de Poisson convergen con las tasas que están estimando, aunque tal vez sea un poco menos claro cómo funciona, pero a medida que el tiempo de monitoreo llega al infinito, por ejemplo. 

#El teorema del límite central también es un teorema que involucra promedios y establece que los promedios son aproximadamente normales. 

#Con distribuciones centradas en la media de la población, que conocíamos independientemente del teorema del límite central, y con desviaciones estándar iguales al error estándar de la media, que ya sabíamos sin el teorema del límite central. 

#Sin embargo, el teorema del límite central también nos dice que son aproximadamente normales. Sin embargo, el teorema del límite central no garantiza que n sea lo suficientemente grande como para que esta aproximación sea precisa y hemos visto algunas instancias con intervalos de confianza donde es muy precisa e instancias donde es menos precisa. 

#Hablando de intervalos de confianza tomando la media y sumando y restando lo normal relevante cuantil veces el error estándar produce un intervalo de confianza para la media. Y este proceso de estimación más o menos algún tipo de cuantil veces el error estándar es nuestra forma  predeterminada de crear intervalos de confianza. Ya sea en este contexto o en nuestra clase de regresión. O incluso cuando hablamos de modelos isolineales generales y temas más complejos.

#Tendemos a usar estos llamados intervalos amurallados. En el caso específico en el que queremos un intervalo de confianza del 95%, puede tomar 2 como el cuantil o si desea ser un poco más preciso, use 1.96. 

#Ahora los intervalos de confianza se amplían a medida que aumenta la cobertura si te quedas con una sola técnica. Ahora, ¿por qué sería este el caso? Así que imagínese si alguien le pusiera un arma en la cabeza y diga, a menos que este intervalo de conferencia contenga los parámetros verdaderos que estima que voy a apretar el gatillo, lo cual es una circunstancia ridícula, pero hágame caso. 

#¿Qué harías? Bueno, ciertamente no quieres que aprieten el gatillo. ¿Correcto?

#Entonces, lo que harías es que los intervalos de la conferencia serían lo más amplios posible. 

#Porque desea estar muy seguro de que el intervalo contiene el parámetro. Eso es lo mismo que hacen las matemáticas. Cuanto más seguro desee, más seguro estará de que el intervalo contendrá el parámetro, más amplio será el procedimiento. 

#Si no le importa en absoluto, si desea un intervalo de confianza del 2% y solo, entonces tendrá un intervalo muy cercano a la media misma. 

#Ahora, los casos de Poisson y binomial son casos discretos, y vimos que el teorema del límite central a veces no puede aproximar bien sus distribuciones. Y en esos casos hay procedimientos exactos. 

#Pero también vimos una solución simple para el caso binomial si está creando intervalos de confianza. 

#Donde si agrega dos éxitos y agrega dos fracasos, obtiene un intervalo de confianza mucho mejor sin pensar demasiado o tener que recurrir a algo que requiere una computadora. 

#Por lo tanto, aún puede hacer ese cálculo a mano si se encuentra o, o en su cabeza, si no se encuentra cerca de una computadora.


