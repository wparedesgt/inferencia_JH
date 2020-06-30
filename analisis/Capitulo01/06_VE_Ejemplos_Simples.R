#06 Valores_Esperados_Ejemplos_Simples

#Ahora, hablemos de un ejemplo de obtención del valor esperado de la población.

#Supongamos que se lanza una moneda y X se declara 0 o 1 correspondiente a una cabeza o una cola. 

#¿Cuál es el valor esperado de X? 

#De nuevo, el valor esperado es propiedad de la población. Si conectamos a nuestra fórmula el valor esperado de X, es la probabilidad 0.5 veces el valor 0 más la probabilidad 0.5 veces el valor 1, entonces todos los valores que la moneda puede tomar 0, 1 veces la probabilidad de que pueda tomarlos, se suman . 


#Esto termina en 0.5. Observe que el valor esperado es un valor que la moneda ni siquiera puede tomar. Sin embargo, si pensáramos en esto geométricamente, la respuesta es bastante obvia. Si tenemos dos barras, tienen la misma altura, una en 0 y otra en 1. Y queríamos equilibrarlas. Está claro dónde exactamente pondríamos nuestro dedo si quisiéramos.

ggplot(data.frame(x = factor(0 : 1), y = c(.5, .5)), aes(x = x, y = y)) + geom_bar(stat = "identity", colour = 'black', fill = "lightblue")


#Estaría justo aquí en 0.5. 

#Suponga que una variable aleatoria X es tal que P, la probabilidad de que tome el valor 1 como p, y la probabilidad de que tome el valor 0 es 1 menos p. 

#Esta es una moneda sesgada, donde la probabilidad de la cabeza no es necesariamente 0.5. 

#La probabilidad de la cabeza es ahora p. 

#¿Cuál es su valor esperado? 

#Nos conectaremos directamente y luego la fórmula 0 veces 1 menos p más 1 veces p, que resulta ser p. 

#Por lo tanto, el valor esperado de un lanzamiento de moneda, incluso una moneda potencialmente sesgada, es exactamente la verdadera proporción a largo plazo de las caras que obtendría en infinitos lanzamientos de la moneda. 

#¿Qué tal un dado? 

#Supongamos que se tira un dado, y X es el número que está boca arriba, 

#¿cuál es el valor esperado de X? 

#Entonces, aquí tomamos los valores 1, 2, 3, 4, 5, 6 y los multiplicamos por la probabilidad de que la variable aleatoria los tome. 

#Un sexto, un sexto, y así sucesivamente. 

#Obtienes 3.5. 

#De nuevo, un número que el dado en realidad no puede obtener. 

#De nuevo, el argumento geométrico lo hace obvio. 

ggplot(data.frame(x = factor(1 : 6), y = rep(1/6, 6)), aes(x = x, y = y)) + geom_bar(stat = "identity", colour = 'black', fill = "lightblue")

#Tenemos seis barras, todas de un sexto de altura, y si tuviéramos que equilibrarlas, está claro que las equilibraríamos en 3.5.

