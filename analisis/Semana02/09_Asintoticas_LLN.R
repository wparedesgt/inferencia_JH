# Asintóticas y LLN

#Entonces, asintóticos es el término para el comportamiento de las estadísticas como el tamaño de la muestra u otra cantidad relevante de límites al infinito o, en algunos casos, como algo más se limita a cero. 

#Vamos a tratar solo con el caso de que el tamaño de la muestra sea la cantidad que se limita al infinito. 

#Asymptopia es mi nombre para la tierra de los asintóticos donde todo funciona bien y debería funcionar bien porque hay una cantidad infinita de datos en la tierra de Asymptopia. 

#Por lo tanto, los asintóticos son increíblemente útiles para inferencias y aproximaciones estadísticas simples. Los asintóticos son como una pequeña navaja suiza que puedes sacar para investigar las propiedades estadísticas de muchas estadísticas, sin tener que hacer mucha computación. 

#Entonces, los asintóticos también forman la base para la interpretación de la frecuencia de las probabilidades. 

#Por ejemplo, todo el mundo sabe intuitivamente que si lanzas una moneda y tomas la proporción de caras, eso debería limitarse a 0.5 para una moneda justa. Esa propiedad es la llamada ley de los grandes números que exploraremos aquí en un minuto. 

#Afortunadamente, en lugar de sumergirse en las matemáticas de los límites de las variables aleatorias, hay un conjunto de herramientas poderosas en las que podemos confiar. Estos resultados nos permiten hablar sobre la gran distribución muestral de las medias muestrales de comportamiento de una colección de observaciones iid. 

#El primero de ellos, ya lo sabemos intuitivamente, la llamada Ley de los Grandes Números. Dice que el promedio limita a lo que está estimando, significa la población. Entonces, por ejemplo, el promedio podría ser el resultado de n lanzamientos de monedas, la proporción muestral de caras. Cuando lanzamos una moneda justa una y otra vez, eventualmente converge a la verdadera probabilidad de una cara. 

#Muestremos la ley de los grandes números en acción. Voy a establecer mi número de simulaciones en 1000. Luego generaré mil normales al azar y tomaré su suma acumulativa. Luego, dividir las sumas acumuladas por 1 sobre n da los medios acumulativos. 

n <- 10000 
means <- cumsum(rnorm(n))/(1:n)
library(ggplot2)
g <- ggplot(data.frame(x = 1 : n, y = means), aes(x = x, y = y)) 
g <- g + geom_hline(yintercept = 0) + geom_line(size = 2) 
g <- g + labs(x = "Number of obs", y = "Cumulative mean")
g

#En otras palabras, la media de la primera observación por sí misma, luego la media de la primera y la segunda observación, luego la media de la primera, segunda y tercera observación, y así sucesivamente. Lo que ves cuando trazas las medias acumuladas por el índice es temprano, hay mucha variabilidad en la media, pero luego a medida que pasa el tiempo, no tanto como pasa el número de simulación. 

#Nos acercamos más y más al verdadero valor de la población que es cero. 

#Hagámoslo de nuevo, solo que esta vez le pediremos a r que arroje una moneda en lugar de generar normales normales. 

#Entonces, la función de sample(), cuando doy los argumentos 0 y 1, muestras de los elementos 0 y 1 con igual probabilidad. Aquí quiero n de ellos, 1,000. Y reemplazar es igual a VERDADERO, solo significa que quiero muestrear con reemplazo. Entonces, este comando es exactamente lanzar una moneda 1,000 veces donde 0 es una cola y 1 es una cabeza.


means <- cumsum(sample(0 : 1, n , replace = TRUE)) / (1  : n)
g <- ggplot(data.frame(x = 1 : n, y = means), aes(x = x, y = y)) 
g <- g + geom_hline(yintercept = 0.5) + geom_line(size = 2) 
g <- g + labs(x = "Number of obs", y = "Cumulative mean")
g


#Estoy tomando de nuevo, la suma acumulativa, y luego dividiéndola por 1 a n para obtener los medios acumulativos. Cuando trazo los medios acumulativos, lo que veo de nuevo es la variabilidad en la proporción de la muestra desde el principio. Pero a medida que el número de lanzamientos de monedas que entran en la proporción de la muestra va al infinito, converge al valor verdadero, que es 0.5, que está justo allí. 

#Tengamos una breve discusión. Definimos un estimador como consistente si converge con lo que desea estimar. 

#Entonces, por ejemplo, la proporción muestral de los lanzamientos de monedas iid es consistente para la verdadera probabilidad de éxito de una moneda. Cuando lanzas una moneda una y otra vez, la proporción de muestra de caras converge con la probabilidad de obtener una cara en esa moneda. 

#La ley de los grandes números dice que la media muestral de las muestras iid es consistente para la media poblacional. Esta es una muy buena propiedad, porque básicamente dice que si nos tomamos la molestia de recolectar una cantidad infinita de datos, obtenemos exactamente la respuesta correcta. 

#Pero no solo es cierto que las medias muestrales son consistentes, la varianza muestral y la desviación estándar muestral de las variables aleatorias iid también son consistentes.