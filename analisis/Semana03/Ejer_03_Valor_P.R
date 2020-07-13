#Ejercicio No.03 Valor P.

library(swirl)

#Cualquier Cosa

#En esta lección, como su nombre indica, discutiremos los valores p que no tienen nada que ver con las pruebas urológicas. En cambio, son la medida más común de significación estadística.

#Sin embargo, debido a que son populares, se usan mucho y, a menudo, se usan mal o se malinterpretan. 

#En esta conferencia nos centraremos en cómo generarlos e interpretarlos correctamente.

#La pregunta que motiva los valores p es esta. 

#Dado que tenemos una hipótesis nula con respecto a nuestros datos (por ejemplo, su media), ¿qué tan inusual o extremo es el valor de la muestra que obtenemos de nuestros datos? 

#¿Es nuestra estadística de prueba consistente con nuestra hipótesis? 

#Entonces, hay implícitamente tres pasos que debemos tomar para responder a este tipo de preguntas.

#¿Cuál crees que es el primer paso?
  
#1: crear una hipótesis nula  #Respuesta
#2: Consulte su bola de cristal
#3: Compare el estadístico de prueba con un cuantil Z o t
#4: Calcular una estadística de prueba a partir de los datos

#Entonces, tenemos que comenzar con una hipótesis nula, que es una suposición razonada sobre alguna distribución de un resumen de datos (una estadística). Recuerde de la última lección que la hipótesis nula H_0 es una línea de base contra la cual mediremos una hipótesis alternativa utilizando los datos observados reales.

#Entonces propones una hipótesis nula. ¿Cuál es el siguiente paso?
  
#1: vuelve a la bola de cristal
#2: Rechazar H_0
#3: Compare el estadístico de prueba con una puntuación Z o t
#4: Calcular una estadística de prueba a partir de los datos dados #Respuesta 


#Ahora tiene una estadística propuesta (a partir de su hipótesis razonada) y una estadística de prueba calculada a partir de los datos recopilados. ¿Cuál es el paso final?
  
#1: Rechazar H_0
#2: Calcular una estadística de prueba a partir de los datos dados
#3: Compare el estadístico de prueba con la distribución hipotética #Respuesta
#4: vuelve a la bola de cristal


#Su comparación le dice cuán "extremo" es el valor de la prueba hacia la hipótesis alternativa. El valor p es la probabilidad bajo la hipótesis nula de obtener evidencia como o más extrema que su estadística de prueba (obtenida de sus datos observados) en la dirección de la hipótesis alternativa.


#Entonces, si el valor p(probabilidad de ver su estadística de prueba) es pequeño, entonces ocurre una de dos cosas. CUALQUIER H_0 es verdadero y usted ha observado un evento raro (en esta estadística de prueba inusual) O H_0 es falso.

#Veamos un ejemplo.


#Suponga que obtiene una estadística t de 2.5 con 15 df probando H_0, (que mu = mu_0) versus una alternativa H_a (que mu> mu_0). Queremos encontrar la probabilidad de obtener una estadística t tan grande como 2.5.


#R puede ayudarnos! Podemos usar la función R pt, la función de distribución de la distribución t.

#Esta función devuelve una de dos probabilidades, ya sea la probabilidad de X> q (si lower.tail es FALSE) O X <= q (si lower.tail es TRUE), donde q es un argumento cuantil. Aquí estableceremos q = 2.5, df = 15, lower.tail = FALSE ya que H_a dice que mu> mu_0. Tenemos que medir la extremidad en la dirección de H_a. Ejecute esto ahora.

pt(2.5, df = 15, lower.tail = FALSE)

#Este resultado nos dice que, si H_0 fuera cierto, veríamos una estadística de prueba tan grande con una probabilidad del 1%, que es más bien una probabilidad pequeña.

#¿Qué debemos hacer?
  
#1: no se puede rechazar H_0
#2: Rechazar H_0                 #Respuesta
#3: consultar la bola de cristal

#Otra forma de pensar sobre un valor p es como un nivel de significancia alcanzado. Esta es una forma elegante de decir que el valor p es el valor más pequeño de alfa en el que rechazará la hipótesis nula.

#Recordemos el ejemplo de nuestra última lección en la que calculamos una estadística de prueba de 2. 

#Nuestra H_0 dijo que mu_0 = 30 y la alternativa H_a que mu> 30. 

#Supongamos que usamos una prueba Z (distribución normal).

#Rechazamos la prueba unilateral cuando alfa se estableció en 0.05.


#¿Por qué rechazamos? Encuentre el cuantil asociado con esta prueba, ese es el lugar para comenzar. Use qnorm en el percentil 95.

qnorm(.95)

#Rechazamos H_0 porque nuestros datos (la estadística de prueba en realidad) favorecieron a H_a. 

#La estadística de prueba 2 (mostrada por la línea azul vertical) cae en la parte sombreada de esta figura porque excede el cuantil. 

#Como sabes, la parte sombreada representa el 5% del área bajo la curva.

#Ahora prueba el percentil 99 para ver si aún rechazaríamos H_0.

qnorm(.99)

#¿Rechazaríamos H_0 si alpha fuera 0.01?
  
#1: sí
#2: no

#Una vez más, una imagen vale más que mil palabras, ¿verdad? La línea vertical en la estadística de prueba 2 no está en la región de rechazo.

#Entonces, nuestros datos (el estadístico de prueba) nos dicen cuál es el nivel de significancia alcanzado. Usamos la función R pnorm para darnos este número. Con los valores predeterminados, específicamente lower.tail = TRUE, esto nos da la probabilidad de que un sorteo aleatorio de la distribución sea menor o igual que el argumento. Pruébelo ahora con el valor estadístico de prueba 2. Utilice los valores predeterminados para todos los demás argumentos.


pnorm(2)


#Justo como pensábamos, en algún lugar entre .95 (donde rechazamos) y .99 (donde fallamos en rechazar).

#Eso es tranquilizador.

#Ahora busquemos el valor p asociado con este ejemplo. 

#Como antes, usaremos pnorm. Pero esta vez estableceremos el argumento lower.tail en FALSE. Esto nos da la probabilidad de que X exceda el estadístico de prueba, es decir, el área debajo de la curva a la derecha del estadístico de prueba. Pruébelo ahora con el valor estadístico de prueba 2.

pnorm(2, lower.tail = FALSE)

#Esto nos dice que el nivel de significancia alcanzado es aproximadamente del 2%.


#Al informar un valor p, en lugar de un nivel alfa y si rechaza o no H_0, los revisores de su trabajo pueden probar la hipótesis en cualquier nivel alfa que elijan. La regla general es que si el valor p es menor que el alfa especificado, rechaza la hipótesis nula y si es mayor, no la rechaza.


#Para una prueba de hipótesis de dos lados, debe duplicar el menor de los dos valores de p unilaterales. 

#Veremos un ejemplo de esto en breve. La mayoría del software asume una prueba de dos lados y duplica automáticamente el valor p.

#Ahora para la prueba de dos lados. Recordemos el ejemplo binomial de la última lección: la familia con 8 hijos, 7 de los cuales son niñas. Desea probar H_0, que p=.5, donde p es la probabilidad de una niña (como un lanzamiento de moneda justo). H_a es que p no es igual a .5. Es mayor o menor que .5.

#Esta es una prueba de dos lados. Primero encontramos la probabilidad de tener al menos i niñas, ya que corro de 0 a 8. Tenemos un vector de estas probabilidades, mybin. Míralo ahora.

mybin

#El segundo último valor nos muestra que la probabilidad de tener al menos 7 niñas (de 8 niños) es .035, suponiendo que los géneros son igualmente probables (p = .5). Puede verificar esto con la función R pbinom, con los argumentos 6, size = 8, prob = .5, y lower.tail = FALSE. (Esto último produce la probabilidad de que X> 6.) Intente esto ahora.

pbinom(6, size = 8, prob = .5, lower.tail = FALSE)

#Vemos una probabilidad de aproximadamente 0,03. ¿Deberíamos rechazar o no rechazar H_0 si alfa = .05?

#Rechazar


#Vemos una probabilidad de aproximadamente 0,03. ¿Deberíamos rechazar o no rechazar H_0 si alfa = .04?
  
#1: no rechazar
#2: rechazar  #Rechazar


#Vemos una probabilidad de aproximadamente 0,03. ¿Deberíamos rechazar o no rechazar H_0 si alfa = .03?
  
#1: rechazar
#2: no rechazar #No rechazar

#Para el otro lado de la prueba, queremos la probabilidad de que X <= 7, nuevamente fuera de una muestra de tamaño 8 con probabilidad .5. Nuevamente, usamos pbinom, esta vez con un argumento de 7 y lower.tail = TRUE. Pruebe esto ahora.

pbinom(7, size = 8, prob = .5, lower.tail = TRUE)

#Por lo tanto, es muy probable (probabilidad .996) que de cada 8 niños tenga como máximo 7 niñas. 

#El valor p de esta prueba de dos lados es 2 * el menor de los dos valores de un lado. En este caso, el valor más bajo es .035, entonces 2 * .035 es el valor p para esta prueba de dos lados.

#Ahora un ejemplo final usando una distribución de Poisson. Recuerde que esto es discreto e involucra conteos o tasas de conteos. El ejemplo de las diapositivas involucra tasas de infecciones en un hospital.

#Suponga que el hospital tiene una tasa de infección de 10 infecciones por cada 100 personas/días en riesgo. 

#Esta es una tasa de 0.1. Suponga que una tasa de infección de 0.05 es el punto de referencia. Este es nuestro nivel alfa, 

#¿lo reconoce? 

#Con este modelo, ¿podría la tasa observada (.1) ser mayor que el punto de referencia 0.05 por casualidad o indica un problema?

#En otras palabras, H_0 dice que lambda = 0.05, así que lambda_0 * 100 = 5, y H_a dice que lambda> 0.05.

#¿Es verdadero H_0 y nuestra tasa observada (.1) es solo una casualidad O debemos rechazar H_0?


#Como antes, R tiene la útil función ppois, que devuelve probabilidades para las distribuciones de Poisson. Queremos la probabilidad de ver al menos 9 infecciones usando un valor lambda de 5 y lower.tail = FALSO.

#Como cuando usamos pbinom, tenemos que usar 9 como argumento, ya que estamos buscando una probabilidad de un valor mayor que el argumento.

#Pruebe esto ahora.

ppois(9, 5, lower.tail = FALSE)

#Vemos una probabilidad de aproximadamente 0,03. ¿Deberíamos rechazar o no rechazar H_0? (Recuerde esas imágenes útiles con áreas sombreadas. Las áreas más pequeñas significan probabilidades más pequeñas y viceversa).

#Rechazar


#Por lo tanto, rechazamos la tasa de infección hipotetizada por H_0 ya que los datos favorecen a H_a, lo que indica que la tasa es mucho más alta.



