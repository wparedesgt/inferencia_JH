#Regla Bayes

#Quizás uno de los usos más famosos de la probabilidad condicional es la llamada regla de Bayes. Esta regla lleva el nombre de un ministro presbiteriano llamado Thomas Bayes, que publicó su trabajo a título póstumo.

#La regla de Bayes nos permite revertir el papel del conjunto de condicionamiento y el conjunto del que queremos la probabilidad. 

#Así que imagine en el caso de que queramos la probabilidad de b dada a. Cuando tenemos, o podemos calcular fácilmente la probabilidad de un determinado b. 

#Bueno, la regla de Bayes dice que puedes hacer eso. Puede evaluar b dado a a un dado b. 

#Pero necesitas otra información. 

#Necesita la probabilidad de que b quede marginado sobre a. 

#Y esto es bastante útil en el sentido de prueba de diagnóstico. Y veremos algunos ejemplos aquí en un minuto. 

#Entonces, hablemos de la probabilidad condicional en el contexto de la prueba de diagnóstico. Uno de los ejemplos más importantes de probabilidad condicional y la regla de Bayes. 

#Dejemos que más y menos sean los eventos de, el evento de que la prueba sea positiva o negativa. Pensemos en una prueba para una enfermedad. Entonces, además de que la prueba dice que la persona tiene la enfermedad, y menos eso, dice que no. 

#Y luego complementemos D y D en el caso de que la persona tenga o no la enfermedad, respectivamente. Entonces, la sensibilidad es la probabilidad de que la prueba sea positiva dado que el sujeto realmente tiene la enfermedad. Esto sería un marcador de una buena prueba. 

#Querrías que lo sensible, la sensibilidad sea alta. La especificidad es la probabilidad de que la prueba sea negativa dado que el sujeto no tiene la enfermedad. 

#Probabilidad menos el complemento D dado. Una vez más, desea que la especificidad sea alta para que una prueba sea buena. Y observe en el desarrollo de la prueba de diagnóstico, estas cosas son al menos conceptualmente obtenibles. 

#Hay, por supuesto, muchas dificultades para encontrar buenas estimaciones de sensibilidad y especificidad. Pero, por ejemplo, en un análisis de sangre para el VIH, puede tomar a personas que conoce que tienen la enfermedad y aplicar la prueba de diagnóstico a esa sangre. También podría llevar a personas que sabía que no tenían la enfermedad. 

#Y podría aplicar la prueba de diagnóstico a la muestra de sangre, muestras de sangre de esos sujetos. Si tiene una prueba positiva, el número que más le preocupa es la probabilidad de tener una enfermedad dada esa prueba positiva, el llamado valor predictivo positivo. 

#Si tiene una prueba negativa, le interesa la probabilidad de no tener la enfermedad, dada esa prueba negativa. El llamado valor predictivo negativo. 

#Podríamos decir que en ausencia de una prueba, podríamos decir que la probabilida de tener la enfermedad es la llamada prevalencia de la enfermedad. Veamos un ejemplo. 

#Un estudio que compara la eficacia de los informes de pruebas de VIH en un experimento que concluyó que las pruebas de anticuerpos tienen una sensibilidad de 99.7 y una especificidad de 98.5. 

#Entonces estos son números inventados. 

#Así que no piense en esto como verdades fundamentales sobre la prueba de anticuerpos para el VIH. 

#Suponga que un sujeto de una población con una prevalencia de VIH del 0.1% recibe un resultado positivo. 

#¿Cuál es el valor predictivo positivo asociado? 

#Matemáticamente, queremos la probabilidad de enfermedad, dado un resultado positivo de la prueba, dada la sensibilidad y la especificidad y la prevalencia, P de D, 0.001. 

#Así que conectemos directamente a la regla de Bayes. 

#Queremos probabilidad de enfermedad dado un resultado positivo de la prueba. Esa es la probabilidad del resultado positivo de la prueba, dada la enfermedad, multiplicada por la probabilidad de la enfermedad, dividida por este denominador aquí. 

#Y nuevamente, no está claro de inmediato de dónde provienen los números del problema. Pero tengamos en cuenta que la probabilidad de un resultado positivo de la prueba, dado que la persona no tiene la enfermedad, es 1 menos la probabilidad de un resultado negativo de la prueba dado que la persona no tiene la enfermedad o eso es 1 menos la especificidad. 


#Y la probabilidad del complemento de la enfermedad es 1 menos la probabilidad de la enfermedad. Ahora lo hemos reescrito solo en términos de cosas que sabemos. 

#Y solo podemos conectar los números y obtener un 6% como nuestra probabilidad. 

#Entonces, en esta población, un resultado positivo de la prueba solo, sugiere un 6% de probabilidad de que el sujeto tenga la enfermedad.


#En otras palabras, el valor predictivo positivo es del 6% para esta prueba. 

#El bajo valor predictivo positivo en este caso se debe en gran medida a la baja prevalencia de la enfermedad. 

#Sin embargo, imagine en el proceso de asesorar a esta persona sobre el resultado positivo de su prueba, el consejero se enteró de que el sujeto era un consumidor de drogas intravenosas que habitualmente tenía relaciones sexuales con una pareja infectada con VIH. 

#Asumirían que la prevalencia relevante para esta persona era mucho mayor y, por lo tanto, el valor predictivo positivo es mucho mayor. 


#Ahora quiero distinguir entre el componente que depende de esta prevalencia y el componente que es lo que describiría como la evidencia objetiva del resultado positivo de la prueba, y eso es lo que son las razones de diagnóstico probable, y eso es lo que cubriremos a continuación. 

#Aquí solo doy la fórmula para el valor predictivo positivo nuevamente, ya que está conectado a la regla de Bayes. 

#Y recuerde, esta fórmula solo depende de la sensibilidad, 1 menos la especificidad en la prevalencia de la enfermedad. Podemos hacer exactamente lo mismo para 1 menos esta probabilidad. Uno menos el valor predicho positivo, que es la probabilidad de que la enfermedad no tenga un resultado positivo de la prueba, y obtiene esta fórmula a la derecha. Observe que el denominador es idéntico en cualquiera de las dos probabilidades. 

#Y el numerador cambia. 

#Entonces, si dividiéramos estas dos ecuaciones, obtendríamos lo siguiente. La probabilidad de enfermedad dada un resultado positivo de la prueba dividido por la probabilidad de no tener la enfermedad dado un resultado positivo de la prueba. 

#Siempre que tome una probabilidad y la divida entre 1 menos esa probabilidad, obtendrá las llamadas probabilidades. 

#Entonces, aquí en el lado izquierdo, tenemos las probabilidades de enfermedad dado un resultado positivo de la prueba, y en el lado derecho, tenemos las probabilidades de enfermedad en ausencia del resultado de la prueba. Aquí este factor en el medio es la razón de probabilidad de diagnóstico de un resultado positivo de la prueba. 

#Entonces, la ecuación es que las probabilidades de enfermedad previas a la prueba multiplicadas por la razón de probabilidad de diagnóstico, es igual a las probabilidades de enfermedad posteriores a la prueba. En otras palabras, la razón de probabilidad de diagnóstico de un resultado positivo de la prueba es el factor por el cual multiplica sus probabilidades en presencia de una prueba positiva para obtener sus probabilidades posteriores a la prueba. 

#Así que veamos nuestro ejemplo. Supongamos que el sujeto tiene una prueba de VIH positiva. Si calculamos usando nuestra sensibilidad y especificidad de antes, la razón de probabilidad de diagnóstico resulta ser 0.997, dividida por 1 menos 0.985, que resulta ser 66. 

#En otras palabras, no importa cuáles sean sus probabilidades previas a la prueba, usted multiplica por 66 para obtener sus probabilidades posteriores a la prueba. 

#O, en otras palabras, la hipótesis de enfermedad es 66 veces más respaldada por los datos que la hipótesis de no enfermedad. 

#Ahora, si las probabilidades de la prueba previa son muy pequeñas, aún multiplicar por 66 dará como resultado un número aún pequeño, aunque 66 veces mayor.

#Repasemos muy rápidamente una incidencia cuando un sujeto tiene un resultado de prueba negativo al usar el DLR menos. 

#Entonces, en este caso, el DLR menos de la sensibilidad y especificidad dada anteriormente es 0.003. 

#Entonces, por lo tanto, su post-prueba las probabilidades de enfermedad a la luz de un resultado negativo de la prueba ahora son 0.3% que de las probabilidades previas a la prueba de la enfermedad te. O, en otras palabras, la hipótesis de la enfermedad se respalda 0.003 veces más que la hipótesis de la ausencia de enfermedad dado el resultado negativo de la prueba.
