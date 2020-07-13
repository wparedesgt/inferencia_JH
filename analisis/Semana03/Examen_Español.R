#Examen Español

#Pregunta 1

#En una población de interés, una muestra de 9 hombres arrojó un volumen cerebral promedio de 1.100 cc y una desviación estándar de 30 cc.

#¿Cuál es el intervalo de confianza de T de Student del 95% para el volumen cerebral promedio en esta nueva población?

1100 + c(-1,1)*qt(.975,8)*30/sqrt(9)

#[1077,1123] #Respuesta
  
#[1031, 1169] [1092, 1108] [1077,1123] [1080, 1120]

#Pregunta 2

#Se administra una píldora de dieta a 9 sujetos durante seis semanas. La diferencia promedio en peso (seguimiento - línea de base) es de -2 libras. 

#¿Cuál debería ser la desviación estándar de la diferencia de peso para que el punto final superior del intervalo de confianza T del 95% toque 0?
  
-2 + c(-1,1)*qt(.975,8)*2.6/sqrt(9) #Respuesta 2.6
-2 + c(-1,1)*qt(.975,8)*1.5/sqrt(9)
-2 + c(-1,1)*qt(.975,8)*0.30/sqrt(9)
-2 + c(-1,1)*qt(.975,8)*2.10/sqrt(9)

#Respuesta 2.60

#2,60 1,50 0,30 2.10


#Pregunta 3

#En un esfuerzo por mejorar el rendimiento en la carrera, 5 corredores recibieron un suplemento de proteínas o un placebo. Luego, después de un período de lavado adecuado, se les dio el tratamiento opuesto. 

#Sus millas recorridas se registraron tanto con el tratamiento como con placebo, produciendo 10 mediciones con 2 por sujeto. Los investigadores tienen la intención de utilizar una prueba T y un intervalo para investigar el tratamiento. 

#¿Deberían usar una prueba e intervalo grupal o independiente en grupo T?
  
#Podrías usar cualquiera


#Grupos independientes, ya que todos los sujetos fueron vistos bajo ambos sistemas


#Un intervalo emparejado #Respuesta


#Es necesario usar ambos


#Pregunta 4


#En un estudio sobre los tiempos de espera en la sala de emergencias, los investigadores consideran un sistema de clasificación nuevo y estándar. 

#Para probar los sistemas, los administradores seleccionaron 20 noches y asignaron aleatoriamente el nuevo sistema de clasificación que se utilizará en 10 noches y el sistema estándar en las 10 noches restantes. 

#Calcularon la mediana del tiempo de espera nocturno (MWT) para ver a un médico. El MWT promedio para el nuevo sistema fue de 3 horas con una variación de 0.60, mientras que el MWT promedio para el sistema anterior fue de 5 horas con una variación de 0.68. Considere la estimación del intervalo de confianza del 95% para las diferencias de la MWT media asociada con el nuevo sistema. Asume una varianza constante. Cual es el intervalo? Reste en este orden (Sistema nuevo - Sistema antiguo).





#[1,25, 2,75] [-2,75, -1,25] [-2,70, -1,29] [1.29, 2.70]

#[1.29, 2.70] NO

#[1,25, 2,75] NO

#[-2,75, -1,25]

#Pregunta 5

#Suponga que crea un intervalo de confianza T del 95%. Luego crea un intervalo del 90% utilizando los mismos datos. ¿Qué se puede decir sobre el intervalo del 90% con respecto al intervalo del 95%?
  
#Es imposible de decir.
#El intervalo será más amplio. #NO
#El intervalo será más estrecho. #RESPUESTA
#El intervalo será del mismo ancho, pero desplazado. #NO

#Pregunta 6

#Para probar aún más el sistema de triaje hospitalario, los administradores seleccionaron 200 noches y asignaron aleatoriamente un nuevo sistema de triaje para ser usado en 100 noches y un sistema estándar en las 100 noches restantes. Calcularon la mediana del tiempo de espera nocturno (MWT) para ver a un médico.

#El MWT promedio para el nuevo sistema fue de 4 horas con una desviación estándar de 0.5 horas, mientras que el MWT promedio para el sistema anterior fue de 6 horas con una desviación estándar de 2 horas. Considere la hipótesis de una disminución en la MWT media asociada con el nuevo tratamiento.

#¿Qué sugiere el intervalo de confianza del grupo independiente del 95% con variaciones desiguales con respecto a esta hipótesis? (Debido a que hay tantas observaciones por grupo, solo use el cuantil Z en lugar de la T.)

#el intervalo está completamente por encima de cero. El nuevo sistema no parece ser efectivo.

#el intervalo contiene 0. El nuevo sistema parece ser efectivo.#NO

#el intervalo está completamente por encima de cero. El nuevo sistema parece ser efectivo.#NO

#el intervalo contiene 0. No hay evidencia que sugiera que el nuevo sistema sea efectivo. #NO



#7.Pregunta 

#Suponga que 18 sujetos obesos fueron asignados al azar, 9 cada uno, a una nueva píldora de dieta y un placebo. 

#Los índices de masa corporal (IMC) de los sujetos se midieron al inicio y nuevamente después de haber recibido el tratamiento o placebo durante cuatro semanas. 

#La diferencia promedio desde el seguimiento hasta el inicio (seguimiento - inicio) fue de -3 kg/m2 para el grupo tratado y 1 kg/m2 para el grupo placebo. 

#Las desviaciones estándar correspondientes de las diferencias fueron 1.5 kg / m2 para el grupo de tratamiento y 1.8 kg / m2 para el grupo placebo. 

#¿El cambio en el IMC durante el período de cuatro semanas parece diferir entre los grupos tratados y placebo? 

#Suponiendo la normalidad de los datos subyacentes y una varianza poblacional común, calcule el intervalo de confianza relevante * 90% * t. Resta en el orden de (Tratado - Placebo) con el número más pequeño (más negativo) primero.

n1 <- n2 <- 9
x1 <- -3 ##treated
x2 <- 1 ##placebo
s1 <- 1.5 ##treated
s2 <- 1.8 ##placebo
s <- sqrt(((n1 - 1) * s1^2 + (n2 - 1) * s2^2)/(n1 + n2 - 2))
(x1 - x2) + c(-1, 1) * qt(0.95, n1 + n2 - 2) * s * sqrt(1/n1 + 1/n2)

#[-5531,-2469] NO
#[2.636, 5.364] NO
#[-5.364, -2.636] Respuesta

#[2.636, 5.364] [-5.364, -2.636] [-5.531, -2.469] [2.469, 5.531] 