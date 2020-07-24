#Trabajo 

#El proyecto consta de dos partes:
  
#Un ejercicio de simulación.

#Análisis de datos inferenciales básicos.

#Creará un informe para responder las preguntas. Dada la naturaleza de la serie, idealmente usará knitr para crear los informes y convertirlos a pdf. (Publicaré una introducción muy simple a knitr). 
#Sin embargo, siéntase libre de usar cualquier software que desee para crear su pdf.

#Cada informe en pdf no debe tener más de 3 páginas con 3 páginas de material de apéndice de apoyo si es necesario (código, figuras, etc.).

#Criterios de revisión

    #¿Mostraste dónde se centra la distribución y la comparaste con el centro teórico de la distribución?
  
    #¿Mostraste cuán variable es y lo comparaste con la varianza teórica de la distribución?
  
    #¿Realizó un análisis exploratorio de datos de al menos una plot o tabla resaltando las características básicas de los datos?
  
    #¿El alumno realizó algunos intervalos de confianza y / o pruebas relevantes?
  
    #¿Se interpretaron correctamente los resultados de las pruebas y / o intervalos en el contexto del problema?
  
    #¿Describió el alumno los supuestos necesarios para sus conclusiones?
  
               

                #Parte 1: Instrucciones de ejercicio de simulación

#En este proyecto investigará la distribución exponencial en R y la comparará con el Teorema del límite central. La distribución exponencial se puede simular en R con rexp(n,lambda) donde lambda es el parámetro de rate. El Promedio de la distribución exponencial es 1/lambda y la desviación estándar también es 1/lambda. 

#Establezca lambda = 0.2 para todas las simulaciones. 

#Investigará la distribución de promedios de 40 exponenciales. Tenga en cuenta que tendrá que hacer mil simulaciones.

#Ilustrar mediante simulación y texto explicativo asociado las propiedades de la distribución de la media de 40 exponenciales. 

#Debieras.

  #1.Muestra la media muestral y compárala con la media teórica de la distribución.

  #2.Muestre cuán variable es la muestra (a través de la varianza) y compárela con la varianza teórica de la distribución.

  #3.Muestre que la distribución es aproximadamente normal.

#En el punto 3, enfóquese en la diferencia entre la distribución de una gran colección de exponenciales aleatorios y la distribución de una gran colección de promedios de 40 exponenciales.

#Como ejemplo motivador, compare la distribución de 1000 uniformes aleatorios.

hist(runif(1000))

#y la distribución de 1000 promedios de 40 uniformes al azar

mns = NULL
for (i in 1 : 1000) mns = c(mns, mean(runif(40)))
hist(mns)


#¡Esta distribución parece mucho más gaussiana que la distribución uniforme original!
  
#Este ejercicio le pide que use su conocimiento de la teoría dada en clase para relacionar las dos distribuciones.

#¿Confuso? Intente volver a ver el video de la conferencia 07 para comenzar sobre cómo completar este proyecto.

#Ejemplo de Estructura de informe de proyecto 

#Por supuesto, hay varias formas en que uno podría estructurar un informe para abordar los requisitos anteriores. Sin embargo, cuanto más claramente plantee y responda a cada pregunta, más fácil será para los revisores identificar y evaluar claramente su trabajo.

#Un conjunto de encabezados de muestra que podría usarse para guiar la creación de su informe podría ser:
  
#Título (dar un título apropiado) y Nombre del autor.

#Descripción general: En unas pocas (2-3) oraciones explique de qué se informará.

#Simulaciones: incluya explicaciones en inglés de las simulaciones que ejecutó, con el código R adjunto. Sus explicaciones deben dejar en claro lo que logra el código R.

#Muestra media versus media teórica: Incluya figuras con títulos. En las figuras, resalte los medios que está comparando. Incluya texto que explique las figuras y lo que se muestra en ellas, y proporcione los números apropiados.

#Muestra de varianza versus varianza teórica: Incluya figuras (salida de R) con títulos. Destaque las variaciones que está comparando. Incluya texto que explique su comprensión de las diferencias de las variaciones.

#Distribución: a través de figuras y texto, explique cómo se puede decir que la distribución es aproximadamente normal.

        #Parte 2: Instrucciones básicas de análisis de datos inferenciales.

#Ahora, en la segunda parte del proyecto, vamos a analizar los datos de Crecimiento de dientes en el paquete de conjuntos de datos de R. (ToothGrowth data)

#Cargue los datos de Crecimiento de dientes y realice algunos análisis de datos exploratorios básicos.

#Proporcione un resumen básico de los datos.

#Use intervalos de confianza y / o pruebas de hipótesis para comparar el crecimiento de los dientes por supp y dosis. (Solo use las técnicas de la clase, incluso si hay otros enfoques que valga la pena considerar)

#Indique sus conclusiones y los supuestos necesarios para sus conclusiones.
        



