#07 Valores Esperados PDFs

#Para una variable aleatoria continua, debe pensar en tal vez cortar la densidad en, por ejemplo, un trozo de madera, y luego tratar de averiguar dónde equilibraría ese trozo de madera, si tuviera que poner el dedo En el fondo. 

#Esta es exactamente la continuación, el centro de masa de un cuerpo continuo.

#Puede pensarlo en nuestra función de masa de probabilidad a medida que las barras se hacen más y más pequeñas, cada vez más pequeñas. 

#A continuación veremos un ejemplo. 

#Considere una densidad que sea uno entre cero y uno. 

g <- ggplot(data.frame(x = c(-0.25, 0, 0, 1, 1, 1.25),
                       y = c(0, 0, 1, 1, 0, 0)),
            aes(x = x, y = y))
g <- g + geom_line(size = 2, colour = "black")
g <- g + labs(title = "Uniform density")
g  

#Y tengo esta pregunta aquí. 

#¿Es una densidad válida? 

#La respuesta es sí. 

#Esta es una densidad bien conocida llamada densidad uniforme. 

#¿Y luego cuál es su valor esperado? 

#Bueno, su valor esperado va a ser. 

#Si tuviera que decir, cortar esta densidad de un pedazo de madera, 

#¿dónde pondría mi dedo para equilibrarlo? 

#Y, por supuesto, eso, la respuesta sería 0.5 aquí. 

#Por supuesto, que es exactamente el valor esperado de la densidad uniforme. Me gustaría dirigirme más hacia los verdaderos temas de inferencia. Así que cubramos algunos hechos sobre los valores esperados. 

#Entonces, primero recuerde que los valores esperados son propiedades de la distribución. Son el centro de masa de una distribución. Y también observe que el promedio de variables aleatorias es, en sí mismo, una variable aleatoria. 

#Si lanzo seis dados y tomo su promedio, esa es en sí misma una variable aleatoria. 

#Podía probarlo repetidamente tirando repetidamente los seis dados y tomando repetidamente el promedio. Debido a que es una variable aleatoria, también tiene una distribución y esa distribución tiene un valor esperado. El centro de esta distribución,


#El centro de masa de esta distribución es el mismo que el de la distribución original. Y voy a pasar por algunos ejemplos de simulación, porque este es un tema muy importante para el tema de inferencia. 

#Pero la conclusión de esto es que el valor esperado de la media muestral es exactamente la media poblacional que está tratando de estimar. En otras palabras, la distribución de la media de la muestra, la distribución de la población de la media de la muestra se centra en el mismo lugar que la población original de la que se extraen los datos. 

#Cuando esto sucede una estimación, cuando un estimador tiene esta propiedad, decimos que el estimador es imparcial. Pero, intentemos algunos ejemplos de simulación para ver si podemos manejar esto. 

#Así que consideremos un ejemplo. 


library(ggplot2)
nosim <- 10000; n <- 10
dat <- data.frame(
  x = c(rnorm(nosim), apply(matrix(rnorm(nosim * n), nosim), 1, mean)),
  what = factor(rep(c("Obs", "Mean"), c(nosim, nosim))) 
)
ggplot(dat, aes(x = x, fill = what)) + geom_density(size = 2, alpha = .2); 


#La densidad azul que tengo aquí es el resultado de miles de simulaciones de una normal estándar. Debido a que hay tantas simulaciones, esta es una muy buena aproximación a la verdad, y lo que esto simplemente me dice es que si recolecto montones y montones y montones de datos de una población, en este caso la distribución normal estándar. Si recopilo muchos datos, puedo aproximarme a la distribución de la que proviene. 

#Ahora, y por supuesto, el centro de masa de esta distribución, el lugar que lo equilibraría, es cero. Y eso es exactamente lo que parece, y si tuviera que simular infinitos datos, sería exactamente cero. 

#Ahora, imaginemos eso, en lugar de tomando un montón de normales individuales. Tenía que simular diez normales normales, tomar su promedio y repetir ese proceso una y otra vez. Y tenía que trazar el histograma o la estimación de densidad para ese conjunto de simulaciones de promedios de diez normales. 

#Esa sería una distribución diferente, porque ya no es la distribución de las normales estándar. Es la distribución de promedios de diez normales estándar. Y esa es la distribución de color salmón. 

#Vemos que tiene algunas propiedades interesantes. Una es que se ha vuelto mucho más concentrado sobre cero, hablaremos de eso más adelante. En este momento, todo lo que queremos decir es que está exactamente centrado en el .0. Y este es todo el punto de la diapositiva anterior que estaba tratando de hacer. 

#Que la distribución de promedios de una población se centrará en el mismo lugar que la distribución de la población original.


#Entonces, la distribución de promedios de diez normales estándar se centrará en cero. No tenemos que hacer ningún cálculo o simulación, aunque son útiles para comprender conceptualmente. Veamos algunos ejemplos más. 


dat <- data.frame(
  x = c(sample(1 : 6, nosim, replace = TRUE),
        apply(matrix(sample(1 : 6, nosim * 2, replace = TRUE), 
                     nosim), 1, mean),
        apply(matrix(sample(1 : 6, nosim * 3, replace = TRUE), 
                     nosim), 1, mean),
        apply(matrix(sample(1 : 6, nosim * 4, replace = TRUE), 
                     nosim), 1, mean)
  ),
  size = factor(rep(1 : 4, rep(nosim, 4))))
g <- ggplot(dat, aes(x = x, fill = size)) + geom_histogram(alpha = .20, binwidth=.25, colour = "black") 
g + facet_grid(. ~ size)


#Imagínese si tuviera que tirar un dado varios miles de veces, de hecho, eso es lo que hice aquí, en el primer panel. Si tuviera que trazar un histograma de los resultados, aproximadamente una sexta parte de las tiradas ocurriría para cada uno de los números del uno al seis, y si fuera a rodar más y más y más, estas barras se equilibrarían. 

#Este centro de masa para esta distribución, bueno, es 3.5. Bueno, no exactamente, porque no he simulado infinitas tiradas de dados, pero si lo hiciera, se equilibraría en 3.5. Ahora imagina si tuviera que tomar el dado, tirarlo dos veces, tomar el promedio de los números y luego hacerlo una y otra vez. Entonces no tendría una distribución de tiradas de dado, tendría una distribución de promedios de dos tiradas de dado. 

#Y eso es lo que vemos aquí en el segundo panel. Observe que parece más gaussiano, más sobre eso más adelante. Tenga en cuenta que está más concentrado. Más sobre eso más tarde. Pero también note lo más importante, está centrado en la misma ubicación. La media poblacional de los promedios de dos tiradas es exactamente igual a la media poblacional de las tiradas. Ahora paso a hacer tres y luego cuatro. Un ejemplo mas. 


dat <- data.frame(
  x = c(sample(0 : 1, nosim, replace = TRUE),
        apply(matrix(sample(0 : 1, nosim * 10, replace = TRUE), 
                     nosim), 1, mean),
        apply(matrix(sample(0 : 1, nosim * 20, replace = TRUE), 
                     nosim), 1, mean),
        apply(matrix(sample(0 : 1, nosim * 30, replace = TRUE), 
                     nosim), 1, mean)
  ),
  size = factor(rep(c(1, 10, 20, 30), rep(nosim, 4))))
g <- ggplot(dat, aes(x = x, fill = size)) + geom_histogram(alpha = .20, binwidth = 1 / 12, colour = "black"); 
g + facet_grid(. ~ size)



#Si lanzara una moneda muchas veces, obtendría cero aproximadamente el 50% del tiempo, colaría aproximadamente el 50% del tiempo y saldría aproximadamente el 50% del tiempo o una, y sabemos que estas barras rebotarían aproximadamente a .5.s / bo .5 ahora si solo lo volteo un par de veces, mi proporción de muestra puede estar bastante lejos de .5. 

#Pero si lo volteo lo suficiente, sé que la variabilidad de la simulación no tendrá sentido. Y eso dará casi exactamente .5. Ahora, ¿qué pasaría si en vez de eso volcara la moneda diez veces, tomara el promedio y luego repitiera ese proceso una y otra vez? Entonces, lo que me daría mi simulación es una idea sobre la distribución de promedios de diez lanzamientos de monedas. 


#Y aquí lo hago para la distribución de promedios de diez lanzamientos de monedas, promedios de 20 lanzamientos de monedas y promedios de 30 lanzamientos de monedas. Y lo que veremos en cada caso es que, como el promedio se compone de más monedas, su distribución se concentra más en la media. Sin embargo, su distribución siempre está centrada en el mismo lugar, 0.5. 

#Repasemos lo que sabemos hasta ahora de esta clase. Los valores esperados son propiedades de las distribuciones. 


#La media de la población es el centro de masa de esa población y, a medida que se mueve, la distribución se movería La media muestral es el centro de masa de los datos observados. La media de la muestra es una estimación de la media de la población. 

#Y la media muestral es imparcial. Y lo que esto significa es el hecho popular, la media poblacional de la distribución de las medias muestrales es exactamente la media poblacional que está tratando de estimar. Y es bueno que sepamos esto, porque en realidad podemos estimar la distribución de la población bastante bien si recopilamos muchos datos. 

#Pero solo obtenemos una media de muestra. Entonces, no obtenemos información sobre las distribuciones de medias de muestra de los datos en sí.

#Solo obtenemos una muestra media. Por lo tanto, el hecho de que conozcamos estas propiedades sobre las medias de muestra es bastante útil. Y luego, el punto final es que mientras más datos ingresen a la media de la muestra, más concentrada será su función de masa de densidad alrededor de la media de la población. Y también vimos que cuanto más gaussiano era, más se veía. 

#Incluso en estos casos extraños, como lanzar una moneda y tirar un dado. Y entonces hablaremos más sobre eso en las conferencias posteriores.
