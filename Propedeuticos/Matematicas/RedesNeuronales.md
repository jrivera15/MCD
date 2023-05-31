# REDES NEURONALES

## Introducción
El hombre se ha caracterizado siempre por su búsqueda constante de nuevas vías
para mejorar sus condiciones de vida. Estos esfuerzos le han servido para reducir el
trabajo en aquellas operaciones en las que la fuerza juega un papel primordial. 

Las redes neuronales son más que otra forma de emular ciertas características
propias de los humanos, como la capacidad de memorizar y de asociar hechos. Si se
examinan con atención aquellos problemas que no pueden expresarse a través de un
algoritmo, se observará que todos ellos tienen una característica en común: la
experiencia. El hombre es capaz de resolver estas situaciones acudiendo a la experiencia
acumulada. Así, parece claro que una forma de aproximarse al problema consista en la
construcción de sistemas que sean capaces de reproducir esta característica humana.

Las redes neuronales no son más que un modelo artificial y simplificado del cerebro humano, que es el ejemplo más perfecto del que disponemos para un sistema que es capaz de adquirir conocimiento a través de la experiencia. Una red neuronal es “un nuevo sistema para el tratamiento de la información, cuya unidad básica de procesamiento está inspirada en la célula fundamental del sistema nervioso humano: la neurona”.


## Historia
Los primeros teóricos que concibieron los fundamentos de la computación neuronal fueron Warren McCulloch, un neurofisiólogo, y Walter Pitts, un matemático, quienes, en 1943, lanzaron una teoría acerca de la forma de trabajar de las neuronas (Un Cálculo Lógico de la Inminente Idea de la Actividad Nerviosa - Boletín de Matemática Biofísica 5: 115-133). Ellos modelaron una red neuronal simple mediante circuitos eléctricos. 

En 1949 Donald Hebb fue el primero en explicar los procesos del aprendizaje (que es el elemento básico de la inteligencia humana) desde un punto de vista psicológico, desarrollando una regla de como el aprendizaje ocurría. Aun hoy, este es el fundamento de la mayoría de las funciones de aprendizaje que pueden hallarse en una red neuronal. Su idea fue que el aprendizaje ocurría cuando ciertos cambios en una neurona eran activados.

En 1957 Frank Rosenblatt comenzó el desarrollo del Perceptron. Esta es la red neuronal más antigua; utilizándose hoy en día para aplicación como identificador de patrones. Este modelo era capaz de generalizar, es decir, después de haber aprendido una serie de patrones podía reconocer otros similares, aunque no se le hubiesen presentado en el entrenamiento. Sin embargo, tenía una serie de limitaciones.

En 1969 casi se produjo la “muerte abrupta” de las Redes Neuronales, ya que Marvin Minsky y Seymour Papert probaron (matemáticamente)  que el Perceptron no era capaz de resolver problemas relativamente fáciles, tales como el aprendizaje de una función no-lineal. Esto demostró que el Perceptron era muy débil, dado que las funciones no-lineales son extensamente empleadas en computación y en los problemas del mundo real.

En 1974 Paul Werbos desarrolló la idea básica del algoritmo de aprendizaje de propagación hacia atrás (backpropagation).

En 1985 John Hopfield provocó el renacimiento de las redes neuronales con su libro: “Computación neuronal de decisiones en problemas de optimización.”   

En 1986 David Rumelhart/G. Hinton redescubrieron el algoritmo de aprendizaje de propagación hacia atrás (backpropagation).   

A partir de 1986, el  panorama  fue  alentador  con  respecto  a  las  investigaciones  y  el  desarrollo  de  las  redes  neuronales.

## Definición
Existen numerosas formas de definir a las redes neuronales; desde las
definiciones cortas y genéricas hasta las que intentan explicar más detalladamente qué
son las redes neuronales. Por ejemplo:
1) Una nueva forma de computación, inspirada en modelos biológicos.
2) Un modelo matemático compuesto por un gran número de elementos
procesales organizados en niveles.
3) ...un sistema de computación compuesto por un gran número de elementos
simples, elementos de procesos muy interconectados, los cuales procesan información
por medio de su estado dinámico como respuesta a entradas externas.
4) Redes neuronales artificiales son redes interconectadas masivamente en
paralelo de elementos simples (usualmente adaptativos) y con organización jerárquica,
las cuales intentan interactuar con los objetos del mundo real del mismo modo que lo
hace el sistema nervioso biológico. 

## Elementos básicos
A continuación, se puede ver en la Fig. 1 el esquema de una red neuronal:

![Imagen de una red neuronal](https://advancedtech.files.wordpress.com/2008/08/para-post1.jpg)

Los datos ingresan por medio de la “capa de entrada”,
pasan a través de la “capa oculta” y salen por la “capa de salida”. Cabe mencionar que
la capa oculta puede estar constituida por varias capas y no sólo 3 como en la imagen.

### Función de entrada (input function)
La neurona trata a muchos valores de entrada como si fueran uno solo; esto
recibe el nombre de entrada global. Por lo tanto, ahora nos enfrentamos al problema de
cómo se pueden combinar estas simples entradas (ini1, ini2, ...) dentro de la entrada
global, gini. Esto se logra a través de la función de entrada, la cual se calcula a partir del
vector entrada. La función de entrada puede describirse como sigue:
inputi = (ini1• wi1)* (ini2• wi2)*... (inin• win)
donde: * representa al operador apropiado (por ejemplo: máximo, sumatoria,
productoria, etc.), n al número de entradas a la neurona Ni y wi al peso. 
