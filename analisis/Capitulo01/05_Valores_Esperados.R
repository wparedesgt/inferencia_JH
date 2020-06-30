#05_Valores Esperados

#Hola.
#Mi nombre es Brian Caffo, y esta es la conferencia de Valores esperados como parte del curso de inferencia estadística en Coursera, que es parte de nuestra especialización en ciencias de datos.

#Esta clase se imparte con mis co-instructores, Jeff Leek y Roger Peng, en relación con la Escuela de Salud Pública Johns Hopkins Bloomberg. 

#Esta clase es sobre inferencia estadística. El proceso de sacar conclusiones sobre poblaciones basadas en datos ruidosos que vamos a asumir fue sacado de él. 

#La forma en que haremos esto es que Vamos a suponer que las poblaciones y la aleatoriedad gobiernan, gobernando nuestra muestra está dada por las densidades y las funciones de masa. 

#Entonces no tenemos que hablar sobre toda la función. 

#Vamos a hablar sobre las características de estas densidades y funciones de masa, que son características de las variables aleatorias que se extraen de ellas. Las caracterizaciones más útiles son los llamados valores esperados, aunque también hemos cubierto algunas otras caracterizaciones. 

#Por ejemplo, muestra cuantiles. 

#Los valores esperados, es la media, es el valor esperado más útil. Es el centro de una distribución. Por lo tanto, puede pensar que la media cambia, la distribución simplemente se mueve hacia la izquierda o hacia la derecha a medida que la media de la distribución se mueve hacia la izquierda o la derecha.

#La variación es otra característica de una distribución, y habla de cuán extendida está. 

#Y al igual que antes en la forma en que los quintiles de muestra estimaron los cuantiles de la población. Los valores esperados de la muestra estimarán los valores esperados de la población. Entonces, la media de la muestra será una estimación de la media de nuestra población. 

#Y nuestra varianza muestral será una estimación de nuestra varianza poblacional, y nuestra desviación estándar muestral será una estimación de nuestra desviación estándar poblacional. 

#El valor esperado, o media de una variable aleatoria, es el centro de su distribución. Para una variable aleatoria discreta x con una función de masa de probabilidad p de x, es simplemente la suma de los posibles valores que x puede tomar, multiplicado por la probabilidad de que los tome. 

#El valor esperado toma su idea de la idea del centro físico de masa, si las probabilidades eran pesos, eran barras donde sus pesos estaban gobernados por el problema, el valor de la probabilidad y la x era la ubicación a lo largo de un eje que ellos estaban en el valor esperado sería simplemente el centro de masa.

#Veremos algunos ejemplos de eso en un segundo. Esta idea del centro de masa es realmente útil para definir la media muestral.

#Recuerde, estamos hablando en esta conferencia, la media de la población, que se estima por la media de la muestra. Pero es interesante notar que la media muestral es el centro de masa. Si tratamos cada punto de datos como igualmente probable. En otras palabras, donde la probabilidad es uno sobre N, y cada punto de datos xi tiene esa probabilidad. 

#Si tuviéramos que intentarlo, entonces encontrar el centro de masa para los datos que es exactamente la barra X. Así que usamos intuitivamente esta idea de centro de masa incluso cuando usamos una media muestral. 

#Entonces, tengo un código aquí para mostrar un ejemplo de cómo tomar la media de la muestra de datos y cómo representa el centro de masa con solo dibujar un histograma. 

library(UsingR) 
library(ggplot2)
library(reshape2)

data(galton)

longGalton <- melt(galton, measure.vars = c("child", "parent"))
g <- ggplot(longGalton, aes(x = value)) + geom_histogram(aes(y = ..density..,  fill = variable), binwidth=1, colour = "black") + geom_density(size = 2)
g <- g + facet_grid(. ~ variable)
g

#Así que aquí tengo estos datos de Galton. Y nuevamente, el código se puede encontrar en el archivo de marcado asociado con las diapositivas que puede obtener de GitHub. 

#Entonces, aquí, en este caso, tenemos las alturas de los padres y las alturas de los niños en un conjunto de datos emparejado. Y aquí, tengo un histograma para la altura del niño y aquí tengo el histograma para la altura de los padres. 

#Y he superpuesto una estimación de densidad continua. Así que me gustaría pasar por un ejemplo en el que realmente mostramos cómo mover nuestro dedo equilibrará ese histograma y, afortunadamente, en nuestro estudio, hay una pequeña y clara función llamada "manipulate" que nos ayudará a hacer esto. 

#Entonces, voy a cargar "manipulate", y luego, el código que voy a mostrar aquí. 

library(manipulate)
myHist <- function(mu){
  g <- ggplot(galton, aes(x = child))
  g <- g + geom_histogram(fill = "salmon", 
                          binwidth=1, aes(y = ..density..), colour = "black")
  g <- g + geom_density(size = 2)
  g <- g + geom_vline(xintercept = mu, size = 2)
  mse <- round(mean((galton$child - mu)^2), 3)  
  g <- g + labs(title = paste('mu = ', mu, ' MSE = ', mse))
  g
}
manipulate(myHist(mu), mu = slider(62, 74, step = 0.5))

#Pero creo que si continúa con la clase de productos de datos, que es parte de la especialización aquí, en realidad veremos los detalles de cómo utiliza la función de manipulación. 


#Pero aquí solo voy a hacerlo, para mostrarte cómo funciona. Y luego vamos a ver la trama. Bien, aquí está la trama de las alturas del niño. 

#Es el histograma, y he superpuesto un histograma continuo encima. Y aquí, digamos que esta línea negra vertical es nuestra estimación actual de la media. Entonces aquí, está diciendo que la media es 62, y nos da el error cuadrático medio. 

#Esa es una especie de medida de desequilibrio, cuán tambaleante o tambaleante es este histograma. Ahora observe que mientras muevo la media, lo que puedo hacer ahora con manipular, movámosla más hacia el centro de la distribución.


#Note que la media ha subido. 

#Vamos a moverlo aquí mismo. 

#Observe que la media subió a 67.5, pero el error cuadrático medio cayó bastante. 

#Lo equilibra, ayudó a equilibrar el histograma. Ese era, casi el punto donde lo haría, lo equilibraría perfectamente. Y como pueden ver aquí, baja un poco más. 

#Pero luego, en algún momento, comienza a volver a subir. Entonces, si lo muevo hasta aquí. 


#Correcto. Este error cuadrático medio, esta medida de desequilibrio, se vuelve bastante grande. 

#De nuevo, esto solo ilustra el punto de que la media empírica será el punto que se equilibre. 

#La distribución empírica y vamos a usar esto para hablar sobre la media de la población, que será el punto que equilibra la distribución de la población.
