#Ejemplo de la varianza de los datos 

#Entonces, veamos un ejemplo de datos. 

#Aquí voy a usar los datos del padre e hijo del uso de nuestro conjunto de datos, y voy a tomar la altura del hijo, y n será el número de observaciones como siempre. 

library(UsingR); data(father.son); 
x <- father.son$sheight
n<-length(x)


#Si tuviera que trazar un histograma de la altura del hijo, obtengo esta distribución aquí y superpongo el histograma con una estimación de densidad continua. 

g <- ggplot(data = father.son, aes(x = sheight)) 
g <- g + geom_histogram(aes(y = ..density..), fill = "lightblue", binwidth=1, colour = "black")
g <- g + geom_density(size = 2, colour = "black")
g

#Tiene un aspecto bastante gaussiano. Ahora esta estimación de densidad es una estimación de la densidad de población. 

#No tenemos la densidad de población porque no recopilamos una cantidad infinita de datos.

#Variabilidad de este histograma, que es lo que calcula la varianza de la muestra. Está estimando la variabilidad de la altura del hijo a partir de la población de la que se extrajo. 

#Supongamos que se trata de una muestra aleatoria. 

#Veamos un par de números que podemos calcular aquí. Así que aquí tomé la varianza de x, la varianza de x dividida por n, la desviación estándar de x, la desviación estándar de x dividida por la raíz cuadrada n. 

#Redondeé todos los números a dos decimales. 

round(c(var(x), var(x) / n, sd(x), sd(x) / sqrt(n)),2)

#Entonces 7.92 y 2.81, la varianza de xy la desviación estándar de x, simplemente están hablando de la variabilidad en las alturas de hijo de este conjunto de datos, que son estimaciones de la variabilidad. 

#La variabilidad de la población de los hijos es alta si está dispuesto a asumir que estos hijos son una muestra aleatoria de una población significativa. Me gusta 2,81 en este caso más de 7,92 porque 7,92 se expresa en pulgadas al cuadrado y 2,81 se expresa en pulgadas, por lo que me gusta trabajar en las unidades en lugar de las unidades al cuadrado. 0.01 y 0.09 ya no hablan de la variabilidad en las alturas de los niños. 

#Se trata de la variabilidad en los promedios de las alturas de diez niños. Entonces 0.09 es probablemente el más significativo, y es el error estándar. 

#O, en otras palabras, la desviación estándar en la distribución de promedios de n alturas de niños. 
#Y una vez más, en este caso es una estimación de eso, pero es la mejor estimación que tenemos de los datos que tenemos. Así que resumamos lo que sabemos porque cubrimos muchos temas algo complicados en esta conferencia. 

#Y yo diría, fundamentalmente, lo que diferencia la comprensión de las estadísticas de la no comprensión de las estadísticas es la comprensión de la variabilidad. Entonces, si tuviera que decir, ¿cuál es la conferencia más importante, podría ser esta? 


#Así que resumamos lo que sabemos. 

#La varianza de la muestra es una estimación de la varianza de la población. 

#La distribución de la varianza muestral se centra en lo que está estimando. Ésto es una cosa buena. Esto significa que es imparcial. Y se concentra más en lo que está estimando a medida que recopila más datos. 

#De nuevo, esto es algo bueno. Esto significa que si nos tomamos la molestia de recopilar más datos, obtenemos una mejor estimación, que la distribución de la varianza de la muestra está más concentrada en lo que está estimando. 

#También sabemos mucho sobre la distribución de las medias muestrales. Sabemos dónde se centró desde la última lectura, pero también sabemos en esta conferencia que la varianza de la media de la muestra es la varianza de la población dividida por n y la raíz cuadrada de la misma, sigma dividida por la raíz cuadrada n, es el llamado error estándar. 

#Estas cantidades representan cómo se extraen los promedios variables de esta población. Y resulta que podemos decir mucho sobre la distribución de promedios de muestras aleatorias, aunque solo podamos ver uno en un conjunto de datos dado. 

#Y esto da mucho trabajo, mucho con lo que trabajar y constituye una gran base de las formas en que podemos realizar.


