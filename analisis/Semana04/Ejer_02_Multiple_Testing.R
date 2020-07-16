#Ejer_02_Multiple_Testing

library(swirl)
swirl()


#En esta lección, discutiremos las pruebas múltiples. Puedes preguntar, "¿Qué es eso?"

#Dado que los datos son valiosos y nos gustaría aprovecharlos al máximo, podríamos usarlos para probar varias hipótesis. Si tenemos un nivel alfa de .05 y probamos 20 hipótesis, entonces, en promedio, esperamos un error, solo por casualidad.

#Otro problema potencial es que después de ejecutar varias pruebas, solo se puede informar el valor p más bajo O todos los valores p por debajo de un umbral pueden considerarse significativos. Sin lugar a dudas, algunos de estos serían falsos.

#Afortunadamente, tenemos formas inteligentes de minimizar los errores en esta situación. Eso es lo que abordaremos.

#Definiremos medidas de error específicas y luego formas estadísticas de corregirlas o limitarlas.

#Las pruebas múltiples son particularmente relevantes ahora en esta era de GRANDES datos. Los estadísticos tienen la tarea de hacer preguntas como "¿Qué variables importan entre los miles medidos?" y "¿Cómo relacionas información no relacionada?"


#Dado que varias direcciones de prueba compensan los errores, revisemos lo que sabemos sobre ellos. Un error tipo I es

#1: rechazar una hipótesis verdadera ##
#2: no rechazar una hipótesis falsa
#3: rechazar una hipótesis falsa
#4: no rechazar una hipótesis verdadera

#En una corte estadounidense, un ejemplo de error tipo I es

#1: condenar a una persona inocente        ###
#2: dejar a los acusados por un tecnicismo
#3: absolver a una persona culpable

#Un error tipo II es

#1: rechazar una hipótesis falsa
#2: no rechazar una hipótesis falsa      #SI
#3: rechazar una hipótesis verdadera     #NO
#4: no rechazar una hipótesis verdadera  #NO


#En una corte estadounidense, un ejemplo de error tipo II es

#1: condenar a una persona inocente
#2: dejar a los acusados por un tecnicismo
#3: absolver a una persona culpable   ##

#Bueno. Sigamos revisando. La hipótesis nula

#1: representa el status_quo y se supone verdadero
#2: es una gran cosa que los estadísticos les gusta chismear
#3: nos dice los orígenes del número 0
#4: nunca es cierto


#El valor p es "la probabilidad bajo la hipótesis nula de obtener evidencia como o más extrema que su estadística de prueba (obtenida de sus datos observados) en la dirección de la hipótesis alternativa". Por supuesto, los valores p están relacionados con los niveles de significancia o alfa, que se establecen antes de que se realice la prueba (a menudo a 0.05).

#Si se encuentra que un valor p es menor que alfa (digamos 0.05), entonces el resultado de la prueba se considera estadísticamente significativo, es decir, sorprendente e inusual, y la hipótesis nula (el status quo) es?
  
#1: aceptado
#2: rechazado ##
#3: renombró la hipótesis nula aleph
#4: revisado


#Ahora considere este gráfico copiado de http://en.wikipedia.org/wiki/Familywise_error_rate. 

#Supongamos que hemos probado hipótesis nulas "m", m_0 de las cuales son realmente verdaderas, y m-m_0 son realmente falsas. 

#De las pruebas m, R ha sido declarado significativo, es decir, los valores p asociados fueron menores que alfa, y m-R fueron resultados no significativos o aburridos.

#Mirando el gráfico, ¿qué variables se conocen?
  
#1: A, B, C
#2: m and R          #
#3: m_0 ym
#4: S, T, U, V

#Al probar las hipótesis nulas verdaderas m_0, los resultados de V se declararon significativos, es decir, estas pruebas favorecieron la hipótesis alternativa.

#¿Qué tipo de error representa esto?
  
#1: uno serio
#2: tipo III
#3: tipo I        #
#4: Tipo II

#Otro nombre para un error de Tipo I es Falso positivo, ya que reclama falsamente un resultado significativo (positivo).


#De las hipótesis nulas falsas m-m_0, T fueron declaradas no significativas. Esto significa que estas hipótesis nulas T fueron aceptadas (no pudieron ser rechazadas). ¿Qué tipo de error representa esto?
  
#1: tipo II
#2: uno serio
#3: Tipo III
#4: tipo I

