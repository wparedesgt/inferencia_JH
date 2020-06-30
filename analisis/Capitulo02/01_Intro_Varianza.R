#Introduccion Varianza

#Hola, mi nombre es Brian Caffo, y esta es una conferencia sobre variabilidad como parte de la clase de Curso de Inferencia Estadística, que es parte de la especialización de Ciencia de Datos del Departamento de Bioestadística de la Escuela de Salud Pública Bloomberg de la Johns Hopkins Bloomberg. 

#Entonces, en la última conferencia, hablamos sobre la media de la población, que habla sobre dónde se centra la distribución. 

#Entonces, si tuviera que pensar en una curva de campana, esa función de densidad de probabilidad se moverá hacia la izquierda o hacia la derecha a medida que cambie la media. Otra propiedad útil es qué tan gorda o delgada, o qué tan extendida o concentrada está la densidad alrededor de la media y esa es la varianza. 

#Entonces, si X es una variable aleatoria que tiene una media mu, la varianza es exactamente el cuadrado de distancia esperado que la variable aleatoria es de la media y le doy la fórmula aquí. 

#Hay un buen atajo que es el valor esperado de X al cuadrado menos el valor esperado de X cantidad al cuadrado. Entonces densidades con mayor varianza están más dispersos que las densidades con variaciones más bajas y la raíz cuadrada de la la varianza se llama desviación estándar. 

#Entonces la varianza se expresa en la unidad al cuadrado, mientras que la desviación estándar se expresa en las mismas unidades que X, lo cual es bastante útil 

#En esta clase, no gastaremos mucho de tiempo calculando los valores esperados, ya sea medias o variaciones de las poblaciones a mano, pero Quiero pasar por uno de esos cálculos. Recordemos de la última conferencia, el valor esperado de X es 3.5 cuando X es el resultado del lanzamiento de un dado. El valor esperado de X al cuadrado, realmente no le he dado una fórmula de cómo hacerlo, pero realmente piense en ello como el valor esperado de la variable aleatoria que obtienes tirando un dado, luego cuadrando el resultado. Y puedes hacerlo simplemente tomando el número, por ejemplo 1 al cuadrado, 2 al cuadrado, 3 al cuadrado, 4 al cuadrado, 5 al cuadrado y multiplicando por sus asociados probabilidades y obtienes 15.17. 

#Entonces, si tuviera que restar 15.17 menos 3.5 al cuadrado, obtengo 2.92, que es la varianza de esto,  de una tirada de dado. 

#Como eso fue muy divertido, Hagamos otro ejemplo. 



#Así que imagina el lanzamiento de una moneda con la probabilidad de cabezas de p. Ya cubrimos que lo esperado el valor de un lanzamiento de moneda es p de la última clase y luego pensemos sobre el valor esperado de X al cuadrado. 

#Cuando este caso, 0 al cuadrado es 0 y 1 al cuadrado es 1, entonces el valor esperado de X al cuadrado es exactamente el valor esperado de X, que es p. Ahora si tuviéramos que conectarnos a nuestra fórmula, entonces obtenemos p menos p al cuadrado, que resulta ser p por 1 menos p. 



#En otras palabras, la varianza poblacional asociada con la distribución dada al lanzar una moneda, una moneda sesgada es exactamente p por 1 menos p. Esta es una fórmula muy famosa y te recomiendo que solo compromételo a la memoria. 

library(ggplot2)
xvals <- seq(-10, 10, by = .01)
dat <- data.frame(
  y = c(
    dnorm(xvals, mean = 0, sd = 1),
    dnorm(xvals, mean = 0, sd = 2),
    dnorm(xvals, mean = 0, sd = 3),
    dnorm(xvals, mean = 0, sd = 4)
  ),
  x = rep(xvals, 4),
  factor = factor(rep(1 : 4, rep(length(xvals), 4)))
)
ggplot(dat, aes(x = x, y = y, color = factor)) + geom_line(size = 2)    


#Aquí te estoy dando un poco ejemplos de densidades, densidades de población como La variación cambia. La densidad de color salmón es una normal estándar que tiene varianza 1. A medida que subo, ves la varianza aumenta, reduce la densidad y empuja más la masa en las colas. 

#Entonces es más probable que una persona diga:
 

#Está más allá de 5, si por ejemplo son de lo normal distribución con una varianza de 4, que si fueran de una normal distribución con una varianza de 3. Entonces, al igual que la media de la población y la media de la muestra fue directamente análoga, la varianza de la población y la varianza de la muestra son directamente análogas. 

#Así, por ejemplo, la media de la población era el centro de masa de la población. La media muestral fue el centro de masa de los datos observados. La varianza de la población es el cuadrado de distancia esperado de una variable aleatoria de la población alrededor de la media poblacional. La varianza muestral es el cuadrado promedio de la distancia del da, observaciones observadas menos la media muestral. 

#Entonces dividimos entre n menos 1 aquí en el denominador en lugar de n, y hablaré de por qué en un minuto. Pero también quiero hablar conceptualmente, para mí, de un punto difícil, que es hablar sobre la varianza de la varianza de la muestra. 

#Permítanme recordarles que la varianza de la muestra es exactamente una función de los datos. 

#Por lo tanto, también es una variable aleatoria, por lo que también tiene una distribución de población. Esa distribución tiene un valor esperado y ese valor esperado es la varianza de la población que la varianza de la muestra está tratando de estimar. 

#Y a medida que recolecte más y más datos, la distribución de la varianza de la muestra obtendrá más concentración, concentrada alrededor de la varianza de la población que está tratando de estimar. Y luego también quiero recordarles que la raíz cuadrada de la varianza muestral es la muestra.

