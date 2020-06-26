#Probabilidades Condicionales

#Hola, y bienvenido a la conferencia de probabilidad condicional como parte de la clase de inferencia estadística en la especialización de diseño de datos de Coursera. 

#Así que el condicionamiento se ilustra maravillosamente en este cómic de XKCD aquí. 

#En este caso, dos personas están paradas en un campo cerca de un árbol en medio de una tormenta eléctrica, y una de ellas dice que deberíamos entrar. El otro dice, bueno, la posibilidad de ser alcanzado por un rayo es solo de uno en siete millones, así que estamos bien. 

#Y el lema es que la tasa de mortalidad entre las personas que conocen la estadística es uno de cada seis. 

#Y lo que destaca el cómic es que esta persona no ha condicionado lo que sabe, ¿verdad? 

#En este caso, si tuviera que condicionar la tasa de mortalidad por rayos en personas que se encuentran en los campos en tormentas eléctricas cerca de un árbol, sería mucho mayor que uno de cada siete millones. 

#Veamos otro ejemplo, un ejemplo simple y conceptual. Por lo tanto, se supone que la probabilidad de obtener uno cuando se lanza un dado estándar es de un sexto. 

#Supongamos que te dieron la información adicional de que la tirada del dado era un número impar, por lo tanto, uno, tres o cinco. Entonces, alguien lanzó el dado de una manera que no podía ver, y le dijeron que ocurrió uno, tres o cinco. 

#Condicional a esta nueva información, no diría la probabilidad de uno es un sexto más. Ahora diría que es un tercio, igualmente probable entre el uno, los tres o los cinco. Y eso es lo que te dan las probabilidades condicionales. 

#Y, por supuesto, tienen una definición. Así que dejemos que B sea el evento, sea un evento, de modo que la probabilidad de B sea mayor que cero. Y esto es importante porque no tiene sentido condicionar un evento que no puede suceder. 

#Entonces, la probabilidad condicional de un evento A dado que B ha ocurrido se escribe así. La probabilidad de A, pequeña línea horizontal, B. Entonces, esta probabilidad de lectura de A dado el evento de que B ha ocurrido es igual a la probabilidad de la intersección dividida por la probabilidad de B. 

#Y aún no hemos hablado de independencia, pero en el caso de que A y B no estén relacionados o se denominen estadísticamente independientes, que definiremos más adelante, que la probabilidad de A dada B, resulta ser solo la probabilidad de A. 

#Por lo tanto, la nueva información que B ha dado ha dado no tiene información sobre la probabilidad de que la ley rija el evento A. Entonces, verifiquemos que la probabilidad condicional nos da la respuesta de que sabemos que es cierto en el caso del lanzamiento de dados. 

#Entonces, en nuestro caso B fue el evento uno, tres, cinco. A fue el evento uno. 

#Queremos que la probabilidad del evento A, condicional al hecho de que ocurrieron uno, tres o cinco. En otras palabras, podemos decir la probabilidad de obtener un uno, dado que sabemos que el resultado es un número impar. 

#Esa es la probabilidad de A dado B, que es la probabilidad de que A se cruce con B sobre la probabilidad de B. 

#En este caso, A se encuentra completamente dentro de B, por lo que la probabilidad de que A se cruce con B es solo la probabilidad de A. 

#De modo que resulta ser un sexto, y luego la probabilidad de B en el denominador resulta ser tres sextos, correcto. 

#Un sexto para cada una de las tres posibilidades mutuamente excluyentes, que resulta ser un tercio, que es lo que sabíamos que tenía que ser la respuesta.