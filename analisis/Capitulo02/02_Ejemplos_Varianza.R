#Ejemplos de Simulacion de Varianza

library(ggplot2)
nosim <- 10000; 
dat <- data.frame(
  x = c(apply(matrix(rnorm(nosim * 10), nosim), 1, var),
        apply(matrix(rnorm(nosim * 20), nosim), 1, var),
        apply(matrix(rnorm(nosim * 30), nosim), 1, var)),
  n = factor(rep(c("10", "20", "30"), c(nosim, nosim, nosim))) 
)
ggplot(dat, aes(x = x, fill = n)) + geom_density(size = 2, alpha = .2) + geom_vline(xintercept = 1, size = 2) 


#Imagínese si tuviera que hacer lo siguiente. Simule diez normales estándar y tome su varianza muestra y hágalo una y otra vez. 

#Luego obtengo una distribución de variaciones de muestra. 

#Y eso, esa es exactamente la densidad de color salmón aquí es si tuviera que repetir ese proceso miles y miles de veces. 

#De lo que estaba hablando, de lo que Rissotto estaba hablando en la diapositiva anterior es simplemente que esta distribución, si tuviera que probar suficientes, su centro de masa será exactamente uno. 

#La varianza de la población original de la que estaba tomando muestras. El estándar normal, que tiene la varianza uno. 

#Lo mismo también será cierto para las varianzas muestrales de 20 observaciones de esta distribución. Así que tomé muestras de sta, 20 normales estándar, tomé su varianza muestral y luego repetí ese proceso una y otra vez para tener una idea sobre la distribución de las varianzas muestrales de 20 normales estándar. Y luego obtengo esta distribución más de color aqua, esa es la segunda, y también está centrada en una. Lo mismo cuando lo hago por 30. Pero observe lo que sucede, la varianza, la varianza de la población en la distribución de la varianza de la muestra se concentra más a medida que tengo más datos. En otras palabras, decir que más datos producirán una estimación mejor y más concentrada en torno a lo que la varianza muestra está tratando de estimar. En este caso, todos intentan estimar una causa porque son muestras de una población con varianza uno. Recuerde que anteriormente en la conferencia encontramos que la variación de una tirada de dado era 2.92. Así que imagina si tirara diez dados. Y tome la varianza muestral de los números que estaban en los lados hacia arriba. Entonces, si tomo esos diez dados y repito ese proceso una y otra y otra vez, entonces tendría una muy buena idea sobre la distribución de la población de la varianza de diez tiradas de dado. Tendría que hacerlo mucho, pero afortunadamente en la computadora puedo hacerlo miles de veces, que es lo que hice aquí. Y observe que la distribución de la varianza de diez tiradas está exactamente centrada alrededor de 2.92, la varianza de la población de una sola tirada. Y a medida que avanzo a 20 y 30 todavía está centrado en el mismo lugar. Pero se vuelve más concentrado sobre lo que está tratando de estimar. Lo que esto básicamente dice es que la varianza es una buena estimación de la varianza de la población. Que a medida que recopilamos más datos, la distribución de la varianza de la muestra se concentra más en lo que está tratando de estimar y que se centra en el lugar correcto. En otras palabras, eso es imparcial. Esta falta de imparcialidad es la razón por la cual dividimos entre n menos 1 en lugar de n. Eso lo hace imparcial.