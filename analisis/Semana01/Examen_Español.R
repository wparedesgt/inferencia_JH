#Examen Español

#Pregunta No. 1

#Considere las epidemias de influenza para las familias heterosexuales de dos padres.

#Suponga que la probabilidad es del 17% de que al menos uno de los padres haya contraído la enfermedad. 

#La probabilidad de que el padre haya contraído influenza es del 12%, 

#Mientras que la probabilidad de que tanto la madre como el padre hayan contraído la enfermedad es del 6%. 

#¿Cuál es la probabilidad de que la madre haya contraído influenza?
  
# (Sugerencias mire la lección 2 alrededor de las 5:30 y el problema 4 del capítulo 4).

#Respestas:
  
#11%


#A=Mother, B = Father, P(A\cup B) = 17\%P(A∪B)=17%, P(B) = 12\%P(B)=12%, P(A\cap B) = 6\%P(A∩B)=6%. Since we know P(A\cup B) = P(A) + P(B) - P(A\cap B)P(A∪B)=P(A)+P(B)−P(A∩B) we get

#17\% = P(A) + 12\% - 6\%17%=P(A)+12%−6%.

#Pregunta No. 2

#Una variable aleatoria, XX es uniforme, un cuadro de 0 a 1 de altura 1.

#(Para que su densidad sea f(x)= 1f(x) = 1 para 0\leqx\leq 10≤x≤1.) 

#¿Cuál es su percentil 75?
  
#(Sugerencias, mire la lección 2 alrededor de las 21:30 y el Capítulo 5 Problema 5. Además, busque la función de ayuda para el comando qunif en R.)

#Respuestas 0.75

qunif(0.75)


#Pregunta No. 3

#Estás jugando un juego con un amigo donde lanzas una moneda y si sale cara le das XX dólares y si sale cruz te da dólares AA. La probabilidad de que la moneda sea cara es pp (algún número entre 00 y 11.)

#Lo que tiene que ser cierto sobre XX e YY para que sus ganancias totales esperadas sean 00. El juego se llamaría "justo".

#(Sugerencias, mire la Lección 4 de 0 a 6:50 y el Capítulo 5, Problema 6. Además, para leer más sobre juegos justos y juegos de azar, comience con el problema del Libro holandés).

#Respuestas 

#p/1-p = y/x


#Pregunta No. 4


#Una densidad que se parece a una densidad normal (pero puede o no ser exactamente normal) es exactamente simétrica con respecto a cero. (Simétrico significa que si lo gira alrededor de cero, se ve igual.) ¿Cuál es su mediana?
  
# (Sugerencias, mire los cuantiles de la Lección 2 alrededor de las 21:30 y el Problema 7 del Capítulo 2)


#Respuestas

#La mediana debe ser 0.



#Pregunta No. 5

#Considere el siguiente PMF que se muestra a continuación en R


x <- 1:4
p <- x/sum(x)
temp <- rbind(x, p)
rownames(temp) <- c("X", "Prob")
temp

apply(temp, 2, mean)

sum(x*p)

#¿Cuál es la media?
  
#(Sugerencia, vea la Lección 4 sobre las expectativas de los PMF).

#3

#Pregunta No. 6

#Un sitio web (www.medicine.ox.ac.uk/bandolier/band64/b64-7.html) para pruebas de embarazo en el hogar cita lo siguiente: "Cuando los sujetos que usaron la prueba eran mujeres que recolectaron y analizaron sus propias muestras, el La sensibilidad general fue del 75%. La especificidad también fue baja, en el rango de 52% a 75% ". Asuma el valor más bajo para la especificidad. Supongamos que un sujeto tiene una prueba positiva y que el 30% de las mujeres que toman pruebas de embarazo están realmente embarazadas. ¿Qué número es más cercano a la probabilidad de embarazo dada la prueba positiva?
  
#(Sugerencias, mire la Lección 3 alrededor de los 7 minutos para ver un ejemplo similar. Además, hay muchos problemas y descripciones de las reglas de Bayes, por ejemplo, aquí hay uno para las pruebas de VIH. Tenga en cuenta que las discusiones sobre la regla de Bayes pueden ser bastante embriagadoras. Entonces, si es nuevo para usted, siga los tratamientos básicos del problema. Consulte también la pregunta 5 del Capítulo 3)


#Respuestas 40% #Comprobado abajo

sensibilidad <- 0.75
especificialidad <- 0.52
prevalencia <- 0.30


(0.75*0.30)/((0.75*0.30)+(1-0.52)*(1-0.30))

#40%