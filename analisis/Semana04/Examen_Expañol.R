#Examen Español

#Pregunta 1

#Una compañía farmacéutica está interesada en probar un posible medicamento para bajar la presión arterial. Su primer examen considera solo a los sujetos que recibieron el medicamento al inicio del estudio y luego dos semanas después. Los datos son los siguientes (SBP en mmHg)

#Asunto Línea de base Semana 2

#1 140 132
#2 138 135
#3 150 151
#4 148 146
#5 135 130


bl <- c(140, 138, 150, 148, 135)
fu <- c(132, 135, 151, 146, 130)
t.test(fu, bl, alternative = "two.sided", paired = TRUE)

#Equivalente

t.test(fu - bl, alternative = "two.sided")


#¿Considera probar la hipótesis de que hubo una reducción media en la presión arterial? Proporcione el valor P para la prueba T de dos lados asociada.


#(Sugerencia, considere que las observaciones están emparejadas).

#0.10 
#0.05     
#0.087    ##RESPUESTA
#0.043


#Pregunta 2

#Una muestra de 9 hombres arrojó un volumen cerebral promedio de 1.100 cc y una desviación estándar de 30 cc. ¿Cuál es el conjunto completo de valores de \ mu_0 μ para rechazar la hypotesis nua en dos lados del 5% de los estudiantes

1100 + c(-1, 1) * qt(0.975, 8) * 30/sqrt(9)

mean(sample(c(1031:1169), 9, replace = FALSE))
mean(sample(c(1077:1123), 9, replace = FALSE))
mean(sample(c(1081:1119), 9, replace = FALSE))
mean(sample(c(1080:1120), 9, replace = FALSE))



power.t.test(9, delta = 1100, sd = 30, type = "one.sample", alternative = "two.sided")


  
#1031 a 1169
#1077 a 1123  ##Respuesta
#1081 a 1119
#1080 a 1120


#Pregunta 3
#Los investigadores realizaron una prueba de sabor a ciegas de Coca-Cola versus Pepsi. Se le preguntó a cada una de las cuatro personas cuál de las dos bebidas cegadas se les dio en orden aleatorio que preferían. Los datos fueron tales que 3 de las 4 personas eligieron Coca-Cola. Suponiendo que esta muestra es representativa, informe un valor P para una prueba de la hipótesis de que se prefiere Coca-Cola a Pepsi usando una prueba exacta unilateral.

pbinom(2, size = 4, prob = 0.5, lower.tail = FALSE)

power.t.test(4, delta = .75, sd = 1, type = "one.sample", alternative = "one.sided")

#0,62
#0.005
#0,31    #Respuesta
#0,10


#Pregunta 4

#Se cree que las tasas de infección en un hospital por encima de 1 infección por cada 100 personas en riesgo son demasiado altas y se utilizan como punto de referencia. Un hospital que anteriormente había estado por encima del punto de referencia recientemente tuvo 10 infecciones en los últimos 1.787 días de personas en riesgo. ¿Sobre cuál es el valor P unilateral para la prueba relevante de si el hospital está * por debajo * del estándar?
  
ppois(10, lambda = 0.01 * 1787)


#0,03  #Respuesta
#0,52
#0,22
#0,11

#Pregunta 5

#Suponga que 18 sujetos obesos fueron asignados al azar, 9 cada uno, a una nueva píldora de dieta y un placebo. Los índices de masa corporal (IMC) de los sujetos se midieron al inicio y nuevamente después de haber recibido el tratamiento o placebo durante cuatro semanas. La diferencia promedio desde el seguimiento hasta el inicio (seguimiento - inicio) fue de -3 kg / m2 para el grupo tratado y 1 kg / m2 para el grupo placebo. Las desviaciones estándar correspondientes de las diferencias fueron 1.5 kg / m2 para el grupo de tratamiento y 1.8 kg / m2 para el grupo placebo. ¿El cambio en el IMC parece diferir entre los grupos tratados y placebo? Asumiendo la normalidad de los datos subyacentes y una varianza poblacional común, proporcione un valor para una prueba t de dos lados.

power.t.test(9, delta = 1, sd = 1.8, type = "one.sample", alternative = "two.sided") #placebo
power.t.test(9, delta = -3, sd = 1.5, type = "one.sample", alternative = "two.sided") #placebo

#Menos de 0.05, pero más grande que 0.01  #NO
#Menos de 0.01                            #Respuesta
#Menos de 0.10 pero más grande que 0.05  #NO
#Mayor que 0.10



#Pregunta 6

#Los volúmenes cerebrales para 9 hombres arrojaron un intervalo de confianza del 90% de 1.077 cc a 1.123 cc. ¿Rechazaría usted en una prueba de hipótesis bilateral del 5% de

#H_0: \ mu = 1,078 H
#0 0
#: μ = 1,078?
  
#  Es imposible saberlo.
#No, no lo rechazarías. ##respuesta
#Sí, lo rechazarías.

#¿De dónde viene Brian estas preguntas?


#Pregunta 7

#Los investigadores desean realizar un estudio de 100 adultos sanos para detectar una pérdida de volumen cerebral promedio de cuatro años de .01 ~ mm ^ 3 .01 mm 3. Suponga que la desviación estándar de la pérdida de volumen de cuatro años en esta población es de 0.04 ~ mm ^ 3 .04 mm 3. 

#¿Cuál sería el poder del estudio para una prueba unilateral 5 \% 5% versus una hipótesis nula de pérdida de volumen?

pnorm(1.645 * 0.004, mean = 0.01, sd = 0.004, lower.tail = FALSE)
power.t.test(100, delta = .01, sd = .04, type = "one.sample", alternative = "one.sided")

  
#0,80  ##Respuesta
#0,50
#0,70
#0,60

#Pregunta 8

#Los investigadores desean realizar un estudio de nn adultos sanos para detectar una pérdida de volumen cerebral promedio de cuatro años de .01 ~ mm. Suponga que la desviación estándar de la pérdida de volumen de cuatro años en esta población es de 0.04 ~ mm ^ 3 .04 mm 3. 

#¿Cuál sería el valor de nn necesario para 90% de potencia de tipo uno tasa de error de 5 \% 5% prueba unilateral versus una hipótesis nula de no pérdida de volumen?

ceiling((4 * (qnorm(0.95) - qnorm(0.1)))^2)
  
power.t.test(180, delta = .01, sd = .04, type = "one.sample", alternative = "one.sided" )

#120
#140  #Respuesta
#160
#180


#Pregunta 9

#A medida que aumenta la tasa de error de tipo uno, \ alpha α, ¿qué le sucede al poder?
  
#Obtendrás un poder más pequeño.
#Obtendrás mayor poder.           #Respuesta
#Es imposible saber dada la información del problema.
#No, de verdad, ¿de dónde viene Brian con estos problemas?