#Distribuciones

#Hola, mi nombre es Brian Caffo y bienvenido a la conferencia sobre algunas distribuciones comunes en la clase de Curso de inferencia estadística, como parte de nuestra especialización en ciencias de datos. 

#La especialización se imparte conjuntamente con mis coinstructores Jeff Leek y Roger Peng, todos estamos en la Universidad Johns Hopkins en el Departamento de Bioestadística de la Escuela de Salud Pública de Bloomberg. 

#Comencemos con quizás la distribución más simple, la distribución de Bernoulli. 

#La distribución de Bernoulli lleva el nombre de Jacob Bernoulli, un famoso matemático, que en realidad proviene de una familia de matemáticos famosos, y si está interesado, puede leer sobre los Bernoulli, tienen muchas páginas de Wikipedia, por ejemplo. 

#Entonces, la distribución de Bernoulli di, surge de un lanzamiento de moneda, digamos, con un cero para una cola y uno para una cara, y usted tiene una moneda potencialmente sesgada con probabilidades, p para una cabeza y 1 menos p para una cola Por lo general, escribimos la función de masa de probabilidad de Bernoulli como p para x, 1 menos p, y 1 menos x. 

#La media de una variable aleatoria de Bernoulli es p, y la varianza es p por 1 menos p, hemos visto estos hechos antes. Y si, si x es una variable aleatoria de Bernoulli, típicamente llamamos a x igual a 1 como un éxito, incluso si el resultado es exitoso en algún sentido de la palabra y x igual a 0 como un fracaso. 

#P(X=x) = p^x(1-p)^1-x

#Ahora que hemos discutido la distribución de Bernoulli, hablemos de la distribución binomial. El bino, una variable aleatoria binomial se obtiene como la suma de un grupo de variables aleatorias iid Bernoulli. 

#Aparentemente, una variable aleatoria binomial, es el número total de caras, en los lanzamientos de una moneda potencialmente sesgada. 

#Matemáticamente, dejemos que x1 a xn sea Bernoulli p, entonces x, la suma de ellos, es una variable aleatoria binomial. 

#La función de masa binomial se parece mucho a la función de masa de Bernoulli, aunque con n elija x al frente. 

#Recuerde que la notación n elegir x representa n factorial sobre x factorial n menos x factorial, y n elegir 0 y n elegir n son ambos 1. 

#Esto resuelve un problema notarial común particular de contar el número de formas de seleccionar x elementos de n sin reemplazo sin tener en cuenta el pedido de los artículos. Veamos un ejemplo rápido de un cálculo binomial. 


#Supongamos que tiene una amiga que tiene ocho hijos, siete de los cuales son niñas y ninguno es gemelo. 

#Si cada género tiene una probabilidad independiente del 50% para cada nacimiento, ¿cuál es la probabilidad de obtener siete o más niñas de ocho nacimientos? 

#Bueno, conectemos directamente a la fórmula binomial. Esa es la probabilidad de siete, que es 8 elige 7, .5 a 7, 1 menos .5 a 1 más 8 elige 8, .5 a 8, 1 menos .5 a 0 que resulta ser un valor , una probabilidad del 4%. 

choose(8, 7) * .5 ^ 8 + choose(8, 8) * .5 ^ 8 
pbinom(6, size = 8, prob = .5, lower.tail = FALSE)

#Aquí, te doy el código r para realizar este cálculo. Además, al igual que con la mayoría de las distribuciones comunes, hay una función r y pbinom le brinda estas probabilidades.

