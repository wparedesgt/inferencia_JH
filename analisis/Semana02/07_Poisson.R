#Poisson

#Si hubo una competencia por la distribución más útil, se acabó. La distribución normal lo ganó en un deslizamiento de tierra. 

#Sin embargo, podríamos tener una discusión bastante activa sobre lo que merece el segundo lugar. 

#La distribución de Poisson ciertamente estaría en la carrera. En cualquier caso, la distribución de Poisson se usa para modelar recuentos. 

#La función de máscara de Poisson es lambda a la x, e a la lambda negativa, todo sobre x factorial donde x se define en los enteros no negativos. 

#Cero, uno, dos y así sucesivamente. 

#La media de una variable aleatoria de Poisson es lambda, este parámetro aquí. 

#Y la varianza de esta distribución también es lambda. Eso es algo interesante a tener en cuenta cuando modelas cosas es si son un poisson. 

#La media y la varianza tienen que ser iguales. 

#¿Cuál de ustedes ha repetido datos de Poisson? 

#Esta es una suposición comprobable. Me gustaría obtener algunos casos en los que usamos la distribución de Poisson. 

#Cada vez que desee modelar datos de conteo, la distribución de Poisson es candidata. 

#Especialmente si esos recuentos son ilimitados. También hay otro conjunto de datos que es muy común en el campo de la bioestadística. Los llamados datos de tiempo de evento o supervivencia. 

#Entonces, por ejemplo, en los ensayos de cáncer, es posible que esté probando una nueva terapia. 
#Modelaría el tiempo hasta que las personas vuelvan a aparecer algunos síntomas. Algunas personas pueden no tener esa recurrencia. Y algunas personas pueden, en el momento del estudio. Necesitas técnicas estadísticas especiales para lidiar con eso, eso, ese problema de la llamada censura. Y esas técnicas tienen una conexión profunda con la distribución de Poisson. 

#Cada vez que tomas una muestra de personas y las clasificas de acuerdo con algunas características, solo observa los recuentos de personas de varios colores de cabello. Eso se llama una tabla de contingencia. Puede crear un gráfico, una tabla de contingencia clasificada cruzada, por ejemplo, si contara el color de cabello por raza, y cada celda sería la combinación específica de color de cabello de raza. 

#El recuento de las personas de la muestra que tenían esa combinación específica. La distribución de Poisson es la distribución predeterminada de la devaluación para modelar datos de tablas de contingencia. 

#Y resulta que nuevamente tiene una conexión profunda con algunos de los otros modelos que podría pensar usar, como nominales múltiples, binomios y una instancia final donde se usa el poisson, y esto se hace tan comúnmente que ni siquiera se dice como personas, las personas lo están haciendo. 

#Es en casos donde tiene un binomio, pero n es muy grande y p es muy pequeño. Esto, por ejemplo, ocurre muy comúnmente en el campo de la epidemiología. Mi amigo Roger estudia la contaminación del aire. Y observa, a medida que las tasas de contaminación del aire aumentan y disminuyen, el número de nuevos casos de enfermedades respiratorias. 

#En grandes áreas, como las ciudades, por ejemplo. Bueno, la n es muy grande, la población de la ciudad, pero la cantidad de eventos que está viendo a menudo es bastante pequeña. Y así los modela como si fueran poisson. 

#Y esto se hace tan comúnmente en el campo de la epidemiología que las personas ni siquiera dicen cuándo lo están haciendo. Simplemente lo hacen, y todos saben de lo que están hablando. La distribución de Poisson a menudo se usa para modelar tasas. Entonces, por ejemplo, dejemos que x sea Poisson lambda t. 

#Es importante tener en cuenta que aquí lambda tiene unidades. Es el número promedio de eventos por unidad de tiempo, donde t se expresa en esa, esa unidad de tiempo particular. Entonces lambda es el conteo esperado por unidad de tiempo, y t es el tiempo de monitoreo total. 

#Por lo tanto, este es un uso muy común de la distribución de Poisson para las tasas de modelado. 

#Entonces, imagine si el número de personas que se presentan en una parada de autobús es Poisson con una media de 2.5 personas por hora. Observamos la parada del autobús durante cuatro horas.

#¿Cuál es la probabilidad de que aparezcan tres o cuatro, tres o menos personas todo el tiempo? 

#Así que eso es solo la probabilidad de Poi, Poisson de tres, tres, dos, uno y cero. Y la tasa que queremos en este momento no es 2.5. 

#Porque son 2.5 eventos anteriores. Pero lo vimos durante cuatro horas. Entonces queremos poner una tasa de 2.5 por cuatro. 

ppois(3, lambda = 2.5 * 4)

#Y aquí tenemos la probabilidad aquí del 1%. 

#Hablemos de la aproximación de Poisson al binomio. Particularmente cuando n es grande y p es pequeño. 

#El Poisson puede ser una aproximación bastante precisa del binomio. Para atar la notación, dejemos que x sea binomial n, p. Y define lambda como n veces p. 

#Pero aquí estamos considerando circunstancias en las que n es muy grande y p es muy pequeño. 

#Entonces, la propuesta es que la distribución de probabilidad que rige los actos que es binomial se puede aproximar bien por las probabilidades de Poisson con esta notación específica lambda como n veces p. Como nuestro último ejemplo de esto, para discutir la distribución de Poisson.

pbinom(2, size = 500, prob = .01)
ppois(2, lambda=500 * .01)

#Veamos una aproximación de Poisson del binomio. Así que imagine si lanzáramos una moneda con probabilidad de éxito 0.01 500 veces.