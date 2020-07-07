#Examen en Español

#Pregunta No. 1

#¿Cuál es la varianza de la distribución del promedio de un dibujo IID de nn observaciones de una población con media \ muμ y varianza \ sigma ^ 2σ.


#2o/sqrt(n) #NO

#o2/n #SI

#Pregunta No. 2


#Suponga que las presiones sanguíneas diastólicas (PAD) para los hombres de 35 a 44 años normalmente se distribuyen con una media de 80 (mm Hg) y una desviación estándar de 10. Acerca de cuál es la probabilidad de que una persona aleatoria de 35 a 44 años tenga un PAD menor de 70?


#32% No
#22% NO
#8%  NO



#32% 16% 8% 22%



#Pregunta No. 3

#El volumen cerebral para las mujeres adultas se distribuye normalmente con una media de aproximadamente 1.100 cc para las mujeres con una desviación estándar de 75 cc. ¿Qué volumen cerebral representa el percentil 95?

qnorm(.95,mean = 1100, sd = 75)

#1223.364 SI

#approximately 1175 approximately 977 approximately 1247 approximately 1223 


#Pregunta No. 4

#Consulte la pregunta anterior. El volumen cerebral para mujeres adultas es de aproximadamente 1.100 cc para mujeres con una desviación estándar de 75 cc. Considere la media muestral de 100 mujeres adultas aleatorias de esta población. ¿Cuál es el percentil 95 de la distribución de esa muestra?


qnorm(0.95, mean = 1100, sd = 75/sqrt(100))

#1188 No
#1112 SI



#approximately 1112 cc approximately 1115 cc approximately 1088 cc approximately 1110 cc

#Pregunta No. 5

#Lanzas una moneda justa 5 veces, ¿cuál es la probabilidad de obtener 4 o 5 caras?

pbinom(4, size = 5, prob = .50)

#3%No
#6%NO

#12% NO



#12% 3% 19% 6%


#Pregunta No.6


#El índice de alteración respiratoria (IDR), una medida de la alteración del sueño, para una población específica tiene una media de 15 (eventos de sueño por hora) y una desviación estándar de 10. Normalmente no se distribuyen. ¿Da su mejor estimación de la probabilidad de que una muestra de IDR media de 100 personas sea entre 14 y 16 eventos por hora?


#68% SI

#95% 68% 34% 47.5%


#Pregunta No. 7

#Considere una densidad uniforme estándar. La media de esta densidad es de .5 y la varianza es de 1/12. Si tomas muestras de 1,000 observaciones de esta distribución y tomas la media de la muestra, ¿qué valor esperarías que esté cerca?

#0.5 SI


#0.5 0.25 0.10 0.75




#Pregunta No. 8


#Se supone que el número de personas que se presentan en una parada de autobús es Poisson con una media de 5 personas por hora. Miras la parada de autobús durante 3 horas. ¿Sobre cuál es la probabilidad de ver 10 o menos personas?

ppois(10, lambda = 5*3, lower.tail = TRUE, log.p = FALSE)

#0.12 SI


#0.08 0.06 0.12 0.03
