#Ejercicio_05

library(swirl)

#Espectativas

#Expectativas. (Las diapositivas para este y otros cursos de Ciencia de datos se pueden encontrar en github https://github.com/DataScienceSpecialization/courses/. Si desea utilizarlos, debe descargarlos como un archivo zip y verlos localmente. Esta lección corresponde a 06_Statistical_Inference/04_Expectations.)

#En esta lección, como es de esperar, discutiremos los valores esperados. ¿Valores esperados de qué, exactamente?

#El valor esperado de una variable aleatoria X, E(X), es una medida de su tendencia central. Para una variable aleatoria discreta X con PMF p(x), E(X) se define como una suma, sobre todos los valores posibles x, de la cantidad x*p(x). E(X) representa el centro de masa de una colección de ubicaciones y pesos, {x,p(x)}.

#Otro término para el valor esperado es la media. Recuerde la definición de media aritmética (o promedio) de su escuela secundaria como la suma de un grupo de números dividido por el número de números que suman.

#Esto es consistente con la definición formal de E(X) si todos los números tienen la misma ponderación.

#Considere la variable aleatoria X que representa el lanzamiento de un dado justo. Por "justo" queremos decir que todos los lados tienen la misma probabilidad de aparecer. ¿Cuál es el valor esperado de X?

#3.5

#Hemos definido una función para usted, expect_dice, que toma un PMF como entrada. Para nuestros propósitos, el PMF es un conjunto de fracciones de 6 de largo. La i-ésima entrada en la matriz representa la probabilidad de ser el resultado de una tirada de dados. Mire la función expect_dice ahora.


#También hemos definido PMF para tres dados, dice_fair, dice_high y dice_low. Los dos últimos están cargados, es decir, no son justos. Mira dice_high ahora.

#Usando la función expect_dice con dice_high como argumento, calcule el valor esperado de una tirada de dice_high.

#expect_dice(dice_high)
#[1] 4.333333

#Vea cómo el valor esperado de dice_high es más alto que el de los dados justos. Ahora calcule el valor esperado de una tirada de dice_low.

#expect_dice(dice_low)
#[1] 2.666667


#Puedes ver el efecto de cargar los dados en las expectativas de las tiradas. Para dados de alta carga, el valor esperado de una tirada (en promedio) es 4.33 y para dados de baja carga, 2.67. 

#Los hemos guardado en dos variables, edh y edl. Los necesitaremos más tarde.

#Una de las buenas propiedades de la operación de valor esperado es que es lineal. 

#Esto significa que, si c es una constante, entonces E(cX)=c*E(X). 

#Además, si X e Y son dos variables aleatorias, entonces E(X+Y)= E(X)+E(Y). 

#Se deduce que E(aX+bY)= aE(X)+bE(Y).

#Supongamos que está tirando nuestros dos dados cargados, dice_high y dice_low. Puede usar esta propiedad de linealidad de la expectativa para calcular el valor esperado de su promedio. Deje que X_hi y X_lo representen los resultados respectivos de la tirada de dados. El valor esperado del promedio es E((X_hi+|X_lo)/2) o .5 * (E(X_hi)+E(X_lo)).

#Calcule esto ahora. Recuerde que almacenamos los valores esperados en edh y edl.


.5*(edh+edl)


#Para una variable aleatoria continua X, el valor esperado se define de manera análoga como lo fue para el caso discreto. Sin embargo, en lugar de sumar valores discretos, la expectativa se integra sobre una función continua.


#De ello se deduce que para las variables aleatorias continuas, E(X) es el área bajo la función t *f(t), donde f(t) es el PDF (función de densidad de probabilidad) de X. 

#Esta definición toma prestada de la definición de centro de masa de un cuerpo continuo.


#Aquí hay una figura de las diapositivas. Muestra la constante (1) PDF a la izquierda y la gráfica de t*f(t) a la derecha.

#Sabiendo que el valor esperado es el área debajo del triángulo, t*f(t), ¿cuál es el valor esperado de la variable aleatoria con este PDF?

#0.5


#Para propósitos de ilustración, aquí hay otra figura usando un PDF de nuestra lección de probabilidad previa. Muestra el PDF triangular f(t) a la izquierda y el parabólico t*f(t) a la derecha. El área debajo de la parábola entre 0 y 2 representa el valor esperado de la variable aleatoria con este PDF.

#Para encontrar el valor esperado de esta variable aleatoria, necesita integrar la función t*f(t). 

#Aquí f(t) = t/2, la línea diagonal. (Puede recordar esto de la última lección de probabilidad).

#La función sobre la que está integrando es, por lo tanto, t^2/2. 

#Hemos definido una función myfunc para ti que representa esto. Puede usar la función R 'integrate' con los parámetros myfunc, 0 (el límite inferior) y 2 (el límite superior) para encontrar el valor esperado. Hacer esto ahora.

integrate(myfunc,0,2)


#Como todos los ejemplos han mostrado, los valores esperados de las distribuciones son útiles para caracterizarlos. La media caracteriza la tendencia central de la distribución. Sin embargo, a menudo las poblaciones son demasiado grandes para medir, por lo que tenemos que muestrearlas y luego tenemos que usar medias de muestra. Eso está bien porque los valores esperados de la muestra estiman las versiones de población. Mostraremos esto primero con un juguete muy simple y luego con algunas ecuaciones simples.

#Hemos definido una pequeña población de 5 números para ti, spop. Míralo ahora.


#La función R mean nos dará la media de spop. Hacer esto ahora.

mean(spop)

#Supongamos que spop fuera mucho más grande y no pudiéramos medir su media directamente y en su lugar tuviéramos que muestrearlo con muestras de tamaño 2. Hay 10 muestras de este tipo, ¿verdad? Hemos almacenado esto para usted en una matriz de 10 x 2, allsam. Míralo ahora.

allsam

#Cada una de estas 10 muestras tendrá una media, ¿verdad? Podemos usar la función R apply para calcular la media de cada fila de la matriz allsam. Simplemente llamamos apply| con los argumentos allsam, 1 y mean. El segundo argumento, 1, le dice a 'aplicar' que aplique el tercer argumento 'media' a las filas de la matriz. Pruebe esto ahora.

apply(allsam, 1, mean)

#Puedes ver en el vector resultante que las medias de muestra varían mucho, de 2.5 a 11.5, ¿verdad?
  
#No inesperadamente, la media de la muestra depende de la muestra. Sin embargo...

#Si tomamos el valor esperado de estas muestras significa que veremos algo sorprendente. Hemos almacenado los medios de muestra en la matriz de frotis para usted. Utilice la función R mean en la matriz smeans ahora.

mean(smeans)

#¿Parecer familiar? 

#El resultado es el mismo que la media de la población original spop. Esto no se debe a que el ejemplo fue preparado especialmente. Funcionaría en cualquier población. El valor esperado o la media de la media de la muestra es la media de la población. Lo que esto significa es que la media de la muestra es un estimador imparcial de la media de la población.


#Formalmente, un estimador e de algún parámetro v es imparcial si su valor esperado es igual a v, es decir, E(e)=v. 

#Podemos mostrar que el valor esperado de una media muestral es igual a la media poblacional con algo de álgebra simple.


#Sea X_1, X_2, ... X_n una colección de n muestras de una población con mu medio. 

#La media de estos es (X_1 + X_2 + ... + X_n)/n.

#¿Cuál es el valor esperado de la media? 
  
#Recuerde que E(aX)=aE(X), entonces E((X_1 + .. + X_n)/n) =


#1/n*(E(X_1)+E(X_2)+ ...+E(X_n))=(1/n)*n*mu = mu. 

#Cada E(X_i) es igual a mu ya que X_i se extrae de la población con mu medio.


#so sí que era teoría. También podemos mostrar esto empíricamente con más simulaciones.


#Aquí hay otra figura de las diapositivas. Muestra cómo una media de la muestra y la media de los promedios aumentan juntas. Las dos distribuciones sombreadas provienen de los mismos datos. 

#La porción azul representa la función de densidad de datos normales estándar generados aleatoriamente, 100000 muestras. La porción rosada representa la función de densidad de 10000 promedios, cada uno de 10 normales al azar. (Los datos originales se almacenaron en una matriz de 10000 x 10 y se tomó el promedio de cada fila para generar los datos de color rosa).


#Aquí hay otra figura de las diapositivas. Tirar un solo dado 10000 veces produce la primera cifra.


#Cada uno de los 6 resultados posibles aparece con aproximadamente la misma frecuencia. La segunda figura es el histograma de resultados del promedio de lanzar dos dados. Del mismo modo, la tercera figura es el histograma de promedios de lanzar tres dados, y el cuarto cuatro dados. 

#Como mostramos anteriormente, el centro o la media de la distribución original es 3.5 y es exactamente donde se centran todos los paneles.


#Recapitulemos. Los valores esperados son propiedades de las distribuciones. El promedio, o la media, de las variables aleatorias es en sí misma una variable aleatoria y su distribución asociada tiene un valor esperado. El centro de esta distribución es el mismo que el de la distribución original.

#¿Los valores esperados son propiedades de qué?

#Distribuciones

#¿Una media poblacional es un centro de masa de qué?

#Poblacion

#¿Una media muestral es un centro de masa de qué?

#Datos Observados

#¿Verdadero o falso? Una media poblacional estima una media muestral.

#Falso

#¿Verdadero o falso? Una media muestral es imparcial.

#Verdadero

#¿Verdadero o falso? Cuantos más datos ingresen a la media de la muestra, más concentrada estará su función de densidad / masa alrededor de la media de la población.


