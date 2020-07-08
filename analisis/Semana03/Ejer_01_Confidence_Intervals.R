#Ejercicio No. 01 Intervalos de Confidencia T

library(swirl)

#En esta lección, discutiremos algunos métodos estadísticos para tratar con pequeños conjuntos de datos, específicamente la distribución t de Student o Gosset y los intervalos de confianza t.


#En la lección Asintótica, discutimos los intervalos de confianza utilizando el Teorema del límite central (CLT) y las distribuciones normales. Estos necesitaban grandes tamaños de muestra, y la fórmula para calcular el intervalo de confianza era Est +/- qnorm * std error (Est), donde Est era algún valor estimado (como una media muestral) con un error estándar.

#Aquí qnorm representa qué?

#Un quantil especifico de la distribucion normal.

#En la lección Asintótica también mencionamos la estadística Z Z = (X'-mu) / (sigma / sqrt (n)) que sigue una distribución normal estándar.

#Esta estadística Z normalizada es especialmente agradable porque sabemos su media y varianza. ¿Qué son, respectivamente?

#0 y 1


#Entonces, la media y la varianza de la normalización normalizada son fijas y conocidas. Ahora definiremos la estadística t que se parece mucho a la Z. Se define como t = (X'-mu) / (s / sqrt (n)). Al igual que el estadístico Z, la t se centra alrededor de 0. La única diferencia entre los dos es que la desviación estándar de la población, sigma, en Z se reemplaza por la desviación estándar de la muestra en la t. Entonces, la distribución del estadístico t es independiente de la media y la varianza de la población. En cambio, depende del tamaño de la muestra n.


#Como resultado, para las distribuciones t, la fórmula para calcular un intervalo de confianza es similar a lo que hicimos en la última lección. Sin embargo, en lugar de un cuantil para una distribución normal, usamos un cuantil para una distribución t. Entonces, la fórmula es Est +/- t-quantile * std error (Est). La otra distinción, que mencionamos antes, es que usaremos la desviación estándar de la muestra cuando calculemos el error estándar de Est.


#En la fórmula para el t estadístico t=(X'-mu)/(s/sqrt(n)), ¿qué expresión representa la desviación estándar de la muestra?

#s

#Estos intervalos de confianza son muy útiles, y si puede elegir entre estos y los normales, elija estos. Veremos que a medida que los conjuntos de datos se hacen más grandes, los intervalos t se ven normales. Cubriremos las versiones de uno y dos grupos que dependen de los datos que tenga.

#La distribución t, inventada por William Gosset en 1908, tiene colas más gruesas de lo normal. Además, en lugar de tener dos parámetros, la media y la varianza, como lo hace normalmente, la distribución t tiene solo uno: el número de grados de libertad (df)(degrees of freedom).

#A medida que aumenta df, la distribución t se parece más a una normal estándar, por lo que se centra alrededor de 0.

#Además, la t supone que los datos subyacentes son iid gaussianos, por lo que la estadística (X'-mu) /(s/sqrt(n)) tiene n-1 grados de libertad.

#Comprobación rápida. En la fórmula t = (X '- mu) / (s / sqrt (n)), si reemplazamos s por sigma, la estadística t sería 

#¿qué asintóticamente ?.

#Una normal standard


#Para ver lo que queremos decir, hemos tomado código de las diapositivas, la función myplot, que toma el entero df como su entrada y traza la distribución t con grados de libertad df. También traza una distribución normal estándar para que pueda ver cómo se relacionan entre sí.

#Pruebe myplot con una entrada de 2


#Puede ver que la joroba de la distribución t (en azul) no es tan alta como la normal. En consecuencia, las dos colas de la distribución t absorben la masa extra, por lo que son más gruesas que las normales. Tenga en cuenta que con 2 grados de libertad, solo tiene 3 puntos de datos. ¡Decir ah! Hable acerca de tamaños de muestra pequeños. Ahora prueba myplot con una entrada de 20.


#Las dos distribuciones están casi una encima de la otra utilizando este mayor grado de libertad.


#Otra forma de ver estas distribuciones es trazar sus cuantiles. De las diapositivas, hemos proporcionado una segunda función para usted, myplot2, que hace esto. Traza una línea de referencia azul claro que representa los cuantiles normales y una línea negra para los cuantiles t. Ambos trazan los cuantiles comenzando en el percentil 50 que es 0 (ya que las distribuciones son simétricas alrededor de 0) y van al 99.

#Pruebe myplot2 con argunmento de 2


#La distancia entre las dos líneas gruesas representa la diferencia de tamaños entre los cuantiles y, por lo tanto, los dos conjuntos de intervalos. Tenga en cuenta las delgadas líneas horizontales y verticales. Estos representan los cuantiles .975 para las distribuciones t y normales respectivamente. De todos modos, probablemente reconociste la colocación de la vertical en 1.96 de la lección de Asymptotics.


#Verifique la ubicación de la horizontal ahora usando la función R qt con los argumentos .975 para el cuantil y 2 para los grados de libertad (df).

qt(.975, 2)

#¿Ver? Coincide con la línea horizontal de la trama. Ahora ejecute myplot2 con un argumento de 20.

myplot2(20)


#Los cuantiles están mucho más cerca junto con los mayores grados de libertad. Sin embargo, en el percentil 97.5, el cuantil t es aún mayor que el normal. Reglas del estudiante!


#Esto significa que el intervalo t es siempre más amplio que el normal. Esto se debe a que la estimación de la desviación estándar introduce más incertidumbre, por lo que resulta un intervalo más amplio.


#Entonces, el intervalo t se define como X'+/-t_(n-1)*s/sqrt(n) donde t_ (n-1) es el cuantil relevante. El intervalo t supone que los datos son normales, aunque es robusto a este supuesto y funciona bien siempre que la distribución de los datos sea más o menos simétrica y tenga forma de montículo.

#Nuestras tramas nos mostraron que, para grandes grados de libertad, ¿los cuantiles se acercan a qué?

#Quantiles normales estandard

#Aunque es bastante bueno, el intervalo t no siempre es aplicable. Para distribuciones sesgadas, se viola el espíritu de los supuestos del intervalo t (centrado alrededor de 0). Hay formas de solucionar este problema (como tomar registros o usar un resumen diferente como la mediana).


#Para datos altamente discretos, como binarios, hay intervalos distintos de t disponibles.


#Sin embargo, las observaciones emparejadas a menudo se analizan utilizando el intervalo t tomando diferencias entre las observaciones. Le mostraremos a qué nos referimos ahora.


#Esperamos que no estés cansado porque vamos a ver algunos datos de sueño. Estos fueron los datos analizados originalmente en el artículo de Biometrika de Gosset, que muestra el aumento de horas para 10 pacientes con dos fármacos soporíferos.

#Hemos cargado los datos por ti. R lo trata como dos grupos en lugar de emparejados. Para ver a qué nos referimos, escribe sllep ahora. Esto le mostrará cómo se almacenan los datos.

#Vemos 20 entradas, las primeras 10 muestran los resultados (extra) del primer medicamento (grupo 1) en cada uno de los pacientes (ID), y las últimas 10 entradas muestran los resultados del segundo medicamento (grupo 2) en cada paciente ( CARNÉ DE IDENTIDAD).

#Aquí hemos trazado los datos de forma pareada, conectando los dos resultados de cada paciente con una línea, los resultados del grupo 1 a la izquierda y el grupo 2 a la derecha. ¿Ves esa línea púrpura con la pendiente empinada? Esa es la ID 9, con 0 resultados para el grupo 1 y 4.6 para el grupo 2.

#Si solo observamos los 20 puntos de datos, estaríamos comparando las variaciones del grupo 1 con las variaciones del grupo 2.

#Ambos grupos tienen rangos bastante grandes. Sin embargo, cuando observamos los datos emparejados para cada paciente, vemos que las variaciones en los resultados suelen ser mucho menores y dependen del tema en particular.


#Para aclarar, hemos definido algunas variables para usted, a saber, g1 y g2. Estos son dos vectores de 10 largos, que contienen respectivamente los resultados de los 10 pacientes para cada uno de los dos medicamentos. Mire el rango de g1 usando el comando range de R.

range(g1)


#Entonces, los valores de g1 van de -1.6 a 3.7. Ahora mira el rango de g2. Vemos que los rangos de ambos grupos son relativamente grandes.

range(g2)

#Ahora veamos la diferencia por pares. Podemos aprovechar la sustracción de vectores por componentes de R y crear el vector de diferencia restando g1 de g2. Haga esto ahora y ponga el resultado en la variable difference.

difference <- g2-g1

#Ahora use la función R mean para encontrar el promedio de la diferencia.

mean(difference)

#¿Ves cuánto más pequeña se compara la diferencia de medias en estos datos emparejados con las variaciones de grupo?

#Ahora use la función R sd para encontrar la desviación estándar de la diferencia y poner el resultado en la variable s.

s <-sd(difference)

#Ahora recuerde la fórmula para encontrar el intervalo de confianza t,X'+/-t(n-1)*s/sqrt(n). Realice las sustituciones apropiadas para encontrar los intervalos de confianza del 95% para la diferencia promedio que acaba de calcular.

#Hemos almacenado esa diferencia promedio en la variable mn para que la use aquí. Recuerde usar la construcción Rc(-1,1) para la porción +/- de la fórmula y la función R qt con .975 y n-1 grados de libertad para la porción cuantil. Nuestro tamaño de datos es 10.


mn + c(-1,1)*qt(.975, 9)*s/sqrt(10)


#Esto dice que con una probabilidad de .95, la diferencia promedio de efectos (entre las dos drogas) para un paciente individual es entre .7 y 2.46 horas adicionales de sueño.

#También podríamos haber utilizado la función R t.test con la diferencia de argumento para obtener este resultado.

#(Puede usar los valores predeterminados para todos los demás argumentos). Al igual que con las otras funciones de prueba R, esto devuelve mucha información. Como todo lo que nos interesa en este momento es el intervalo de confianza, podemos elegir esto con la construcción x$conf.int. Pruebe esto ahora.

t.test(difference)$conf.int

#Aquí hay un código de las diapositivas que muestra cuatro formas diferentes de usar t.test (incluidas las dos que acabamos de pasar) para encontrar el intervalo de confianza de estos datos. El código también muestra cómo mostrar bien los intervalos en una matriz de 4 x 2.

#Ahora presentamos métodos, utilizando intervalos de confianza t, para comparar grupos independientes.


#Supongamos que queremos comparar la presión arterial media entre dos grupos en un ensayo aleatorizado.

#Compararemos a los que recibieron el tratamiento con los que recibieron un placebo. A diferencia del estudio del sueño, no podemos usar la prueba t pareada porque los grupos son independientes y pueden tener diferentes tamaños de muestra.

#Entonces, nuestro objetivo es encontrar un intervalo de confianza del 95% de la diferencia entre dos medias poblacionales.

#Representemos esta diferencia como mu_y-mu_x. Cómo hacemos esto? Recuerde nuestra fórmula X'+/-t_ (n-1)*s/sqrt(n).

#Primero necesitamos una media muestral, pero tenemos dos, X 'e Y', una de cada grupo. Tiene sentido que también tengamos que tomar su diferencia (Y'-X'), ya que estamos buscando un intervalo de confianza que contenga la diferencia mu_y-mu_x. Ahora necesitamos especificar un t cuantil.

#Supongamos que los grupos tienen diferentes tamaños n_x y n_y.

#Para un grupo usamos el cuantil t_(.975,n-1).¿Qué crees que usaremos para el cuantil de este problema?

#t_(.975,n_x+n_y-2)

#El único término restante es el error estándar que para el grupo individual es s/sqrt(n). 

#Tratemos primero con el numerador. Nuestro intervalo asumirá (por ahora) una varianza común s^2 entre los dos grupos.

#En realidad, agruparemos la información de varianza de los dos grupos utilizando una suma ponderada. (Nos ocuparemos de la situación más complicada más adelante).


#Llamamos al estimador de varianza, usamos la varianza agrupada. La fórmula para ello requiere dos estimadores de varianza (en forma de desviación estándar), S_x y S_y, uno para cada grupo. 

#Multiplicamos cada uno por sus respectivos grados de libertad y dividimos la suma por el número total de grados de libertad.

#Esto pondera las variaciones respectivas; los que provienen de muestras más grandes obtienen más peso.

#¿Cuál de los siguientes representa el numerador de esta expresión?

#Necesitamos variaciones, por lo que la elección sin los términos S al cuadrado es incorrecta. Recuerde que los grados de libertad son uno menos que el tamaño de la muestra para cada grupo, de modo que se elimina otra opción y solo queda una opción.


#(n_x-1)(S_x)^2+(n_y-1)(S_y)^2


#¿Cuál de los siguientes representa el número total de grados de libertad?

#(n_x-1)+(n_y-1)

#Ahora recuerde que estamos calculando el término de error estándar que para el caso de un solo grupo fue s / sqrt (n).

#Hemos terminado el numerador, agrupando las variaciones de muestra. ¿Cómo manejamos la porción 1/sqrt(n)? 

#Simplemente podemos agregar 1/n_x y 1/n_y, y sacar la raíz cuadrada de la suma. Luego, MULTIPLICAMOS esto por la varianza de la muestra para completar la estimación del error estándar.

#Ahora conectaremos algunos números de las diapositivas basados en un ejemplo del libro Fundamentals of Biostatistics de Rosner, un libro de referencia muy bueno, aunque pesado. Queremos comparar la presión arterial de dos grupos independientes.



#El primero es un grupo de 8 usuarias de anticonceptivos orales y el segundo es un grupo de 21 controles. Las dos medias son X'_{oc}= 132.86 y X'_{c}= 127.44, y las dos desviaciones estándar de la muestra son s_{oc}=15.34 y s_{c}=18.23. 

#Primero calculemos el numerador de la varianza de la muestra agrupada ponderando la suma de los dos por sus respectivos tamaños de muestra. Recuerde la fórmula (n_x-1)(S_x)^2+(n_y-1)(S_y)^2 y complete los valores para crear una variable sp.

sp <- 7*15.34^2 + 20*18.23^2

#¿Cuántos grados de libertad hay ahora? Pon tu respuesta en la variable ns.

ns <- 8+21-2

#Ahora divida sp por ns, tome la raíz cuadrada y vuelva a colocar el resultado en sp.

sp <- sqrt(sp/ns)

#Ahora para encontrar el intervalo de confianza del 95%. Recuerde nuestra fórmula básica X '+/-t_ (n-1)*s/sqrt(n) y todos los cambios que necesitamos realizar para trabajar con dos muestras independientes. Completaremos la diferencia de las medias de muestra para X 'y nuestras variables ns para los grados de libertad al encontrar el t cuantil.

#Para el error estándar, multiplicamos sp por la raíz cuadrada de la suma 1/n_ {oc}+1/n_{c}. 

#Los valores para este problema son X'_{oc}=132.86 y X'_{c}=127.44,n_{oc}=8 y n_{c}=21. 

#Asegúrese de usar la construcción R c(-1,1) para la porción +/- y la función R qt con el percentil correcto y los grados de libertad.

132.86-127.44 + c(-1,1)*qt(.975,ns)*sp*sqrt(1/8+1/21)

#Observe que 0 está contenido en este intervalo del 95%. Eso significa que no puede descartar que las medias de los dos grupos sean iguales ya que hay una diferencia de 0 en el intervalo.

#¿Me estoy cansando? Volvamos a ver el problema del sueño y, en lugar de mirar los datos en parejas de más de 10 sujetos, lo veremos como dos conjuntos independientes, cada uno de tamaño 10. Recuerde que los datos se almacenan en los dos vectores g1 y g2; También hemos almacenado la diferencia entre sus medias en la variable md.


#Calculemos la varianza agrupada de la muestra y almacénela en la variable sp. Recuerde que este es el sqrt (sumas ponderadas de variaciones de muestra / grados de libertad). El peso de cada uno es el tamaño de la muestra-1.

#Use la función R var para calcular las variaciones de g1 y g2. Los grados de libertad son 10 + 10-2 = 18.

sp <- sqrt((9*var(g1)+ 9* var(g2))/18)

#Ahora el último término de la fórmula, el error estándar de la diferencia de medias, es simplemente sp multiplicado por la raíz cuadrada de la suma 1/10 + 1/10.

#Encuentre el intervalo de confianza de 95% t de la diferencia media de los dos grupos g1 y g2. Sustituye md y sp en la fórmula que usaste anteriormente.

md + c(-1,1)*qt(.975,18)*sp*sqrt(1/5)


#Podemos verificar este cálculo manual contra la función R t.test. Como restamos g1 de g2, asegúrese de colocar g2 como su primer argumento y g1 como su segundo. También asegúrese de que el argumento emparejado sea FALSE y var.equal sea TRUE. Solo necesitamos el intervalo de confianza, así que use la construcción x $ conf. Hacer esto ahora.


t.test(g2,g1, paired = FALSE, var.equal = TRUE)$conf

#Bastante genial que coincida, ¿verdad? Tenga en cuenta que 0 vuelve a estar en este intervalo del 95%, por lo que no puede rechazar la afirmación de que los dos grupos son iguales.

#(Recuerde que esto es lo contrario de lo que vimos con datos emparejados).

#Ejecutemos t.test nuevamente, esta vez con paired = TRUE y veamos qué tan diferente es el resultado. No especifique var.equal y observe solo el intervalo de confianza.


t.test(g2,g1,paired = TRUE)$conf


#Tal como vimos cuando ejecutamos t.test en nuestro vector, ¡diferencia! ¿Ves cómo el intervalo excluye 0? Esto significa que los grupos cuando están emparejados tienen promedios muy diferentes.

#Ahora hablemos sobre el cálculo de intervalos de confianza para dos grupos que tienen variaciones desiguales. No los agruparemos como lo hicimos antes.


#En este caso, la fórmula para el intervalo es similar a lo que vimos antes, Y'-X '+/-t_df*SE, donde como antes Y'-X' representa la diferencia de las medias de muestra. Sin embargo, el error estándar SE y el cuantil t_df se calculan de manera diferente a los métodos anteriores.

#Aquí SE es la raíz cuadrada de la suma de los errores estándar al cuadrado de las dos medias,(s_1) ^2/n_1+(s_2)^2/n_2.

#Cuando los datos subyacentes de X e Y son normales y las variaciones son diferentes, la estadística normalizada con la que comenzamos esta lección, (X'-mu)/(s/sqrt(n)), no sigue una distribución t. Sin embargo, se puede aproximar mediante una distribución t si establecemos los grados de libertad adecuadamente.

#Aquí está la fórmula. Es posible que deba estirar la ventana de trazado para que se muestre con mayor claridad.

#Pongamos los números del estudio de presión arterial para ver cómo funciona. Recordemos que tenemos dos grupos, el primero con tamaño 8 y X'_{oc}=132.86 y s_{oc}=15.34 y el segundo con tamaño 21 y X'_{c}=127.44 y s_{c}=18.23.

#Calculemos primero los grados de libertad. Comience con el numerador.

#Es el cuadrado de la suma de dos términos. Cada término tiene la forma s^2/n. Haga esto ahora y ponga el resultado en num. Nuestros números fueron 15.34 con talla 8 y 18.23 con talla 21.


num <- (15.34^2/8+18.23^2/21)^2


#Ahora el denominador. Esta es la suma de dos términos. Cada término tiene la forma s^4/n^2/(n-1).

#Estos se ven un poco diferentes al formulario que se muestra pero son equivalentes. Ponga el resultado en la variable den.


#Nuestros números fueron 15.34 con talla 8 y 18.23 con talla 21.

den <- 15.34^4/8^2/7 + 18.23^4/21^2/20

#Ahora divida num por den y ponga el resultado en mydf.

mydf <- num/den


#Ahora con la función R qt (.975, mydf) calcule el intervalo de 95% t.

#Recordemos la fórmula. X '_ {oc} -X' _ {c} +/- t_df * SE. Recuerde que SE es la raíz cuadrada de la suma de los errores estándar al cuadrado de las dos medias, (s_1) ^ 2 / n_1 + (s_2) ^ 2 / n_2. Nuevamente nuestros números son los siguientes. X '_ {oc} = 132.86 s_ {oc} = 15.34 y n_ {oc} = 8. X '_ {c} = 127.44 s_ {c} = 18.23 y n_ {c} = 21.

132.86-127.44 + c(-1,1)*qt(.975, mydf)*sqrt(15.34^2/8 + 18.23^2/21)


#No te preocupes por estos cálculos desagradables. R hace las cosas mucho más fáciles. Si llama a t.test con var.equal establecido en FALSE, entonces R calcula los grados de libertad para usted. No tienes que memorizar la fórmula.

