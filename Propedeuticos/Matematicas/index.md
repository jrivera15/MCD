<head>
<script type="text/x-mathjax-config">
    MathJax.Hub.Config({
      tex2jax: {
        skipTags: ['script', 'noscript', 'style', 'textarea', 'pre'],
        inlineMath: [['$','$']]
      }
    });
  </script>
  <script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>
</head>

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

## Ventajas
Debido a su constitución y a sus fundamentos, las redes neuronales artificiales presentan un gran número de características semejantes a las del cerebro.  Esto hace que ofrezcan numerosas ventajas y que este tipo de tecnología se esté aplicando en múltiples áreas. Entre las ventajas se incluyen: 

- Aprendizaje Adaptativo. Capacidad de aprender a realizar tareas basadas en un entrenamiento o  en una experiencia inicial.   
- Auto-organización. Una red neuronal puede crear su propia organización o representación de la información que recibe mediante una etapa de aprendizaje.   
- Tolerancia a fallos. La destrucción parcial de una red conduce a una degradación de su estructura; sin embargo, algunas capacidades de la red se pueden retener, incluso sufriendo un gran daño.   
- Operación en tiempo real. Los cómputos neuronales pueden ser realizados en paralelo; para esto se diseñan y fabrican máquinas con hardware especial para obtener esta capacidad.   
- Fácil inserción dentro de la tecnología existente. Se pueden obtener chips especializados para redes neuronales que mejoran su capacidad en ciertas tareas. Ello facilitará la integración modular en los sistemas existentes. 

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

## Estructura de la red neuronal
A continuación, se puede ver en la figura el esquema de una red neuronal:

![Imagen de una red neuronal](https://advancedtech.files.wordpress.com/2008/08/para-post1.jpg)


Podemos decir que una red neuronal se compone de los siguientes elementos:
- Una **capa de entrada**
- Una o más **capas ocultas**
- Una **capa de salida**
- Un conjunto de **pesos y sesgos** entre cada capa (***W*** y ***b***)
- Una **función de activación** por cada capa oculta (***σ***)

Los datos ingresan por medio de la “capa de entrada”,
pasan a través de la “capa oculta” y salen por la “capa de salida”. Cabe mencionar que
la capa oculta puede estar constituida por varias capas y no sólo 3 como en la imagen.

### Capa de entrada: Función de entrada (input function)
La neurona trata a muchos valores de entrada como si fueran uno solo; esto
recibe el nombre de entrada global. Por lo tanto, ahora nos enfrentamos al problema de
cómo se pueden combinar estas simples entradas (ini1, ini2, ...) dentro de la entrada
global, gini. Esto se logra a través de la función de entrada, la cual se calcula a partir del
vector entrada. La función de entrada puede describirse como sigue:

*inputi = (ini1• wi1) \* (ini2• wi2) \* ... (inin• win)* 

donde: * representa al operador apropiado (por ejemplo: máximo, sumatoria,
productoria, etc.), n al número de entradas a la neurona Ni y wi al peso. 

Los valores de entrada se multiplican por los pesos anteriormente ingresados a la
neurona. Por consiguiente, los pesos que generalmente no están restringidos cambian la
medida de influencia que tienen los valores de entrada. Es decir, que permiten que un
gran valor de entrada tenga solamente una pequeña influencia, si estos son lo
suficientemente pequeños.

![Imagen de una neurona simple](https://github.com/jrivera15/MCD/assets/5826577/bd2e66a8-11db-46aa-9734-dbbc0cd61b1e)
La nomenclatura utilizada en la Figura es la siguiente: ini1 = entrada número 1 a la neurona Ni; wi1  = peso correspondiente a ini1; ini2 = entrada número 2 a la neurona Ni; wi2 = peso correspondiente a ini2; y outi = salida de la neurona Ni. El conjunto de todas las n entradas ini = (ini1, ini2, ..., inin) es comúnmente llamado “vector entrada”. 

Algunas de las funciones de entrada más comúnmente utilizadas y conocidas
son:
1) Sumatoria de las entradas pesadas: es la suma de todos los valores de
entrada a la neurona, multiplicados por sus correspondientes pesos.
2) Productoria de las entradas pesadas: es el producto de todos los valores de
entrada a la neurona, multiplicados por sus correspondientes pesos.
3) Máximo de las entradas pesadas: solamente toma en consideración el valor
de entrada más fuerte, previamente multiplicado por su peso correspondiente.

### Función de activación (activation function)
Una neurona biológica puede estar activa (excitada) o inactiva (no excitada); es decir, que tiene un “estado de activación”. Las neuronas artificiales también tienen diferentes estados de activación; algunas de ellas solamente dos, al igual que las biológicas, pero otras pueden tomar cualquier valor dentro de un conjunto determinado.  

La función activación calcula el estado de actividad de una neurona; transformando la entrada global (menos el umbral, Θi) en un valor (estado) de activación, cuyo rango normalmente va de (0 a 1) o de (–1 a 1). Esto es así, porque una neurona puede estar totalmente inactiva (0 o –1) o activa (1).  

La función activación, es una función de la entrada global (gini) menos el umbral (Θi). Las funciones de activación más comúnmente utilizadas se detallan a continuación: 

1. Función lineal. 
![Imagen funcion lineal](https://github.com/jrivera15/MCD/assets/5826577/12beb56b-d383-403b-963a-619405bbc788)
Los valores de salida obtenidos por
medio de esta función de activación serán:
a·(gini - Θi), cuando el argumento de (gini - Θi)
esté comprendido dentro del rango (-1/a, 1/a).
Por encima o por debajo de esta zona se fija la salida en 1 o –1, respectivamente.
Cuando a = 1 (siendo que la misma afecta la pendiente de la gráfica), la salida es igual a
la entrada.
 
2. Función sigmoidea
![Imagen funcion sigmoidea](https://github.com/jrivera15/MCD/assets/5826577/0a6c23ab-2ac4-49fc-8b09-edd6e41f2a12)
Los valores de salida que proporciona esta función están comprendidos dentro de un rango que va de 0 a 1. Al modificar el valor de g se ve afectada la pendiente de la función de activación. 

3. Función tangente hiperbólica
![Imagen funcion hiperbolica](https://github.com/jrivera15/MCD/assets/5826577/bbdd97e8-663f-4fbf-8561-5d775f7e4e88)
Los valores de salida de la función
tangente hiperbólica están comprendidos dentro de
un rango que va de -1 a 1. Al modificar el valor de g
se ve afectada la pendiente de la función de
activación.

### Capa de salida: Función de salida (output function)
El último componente que una neurona necesita es la función de salida. El valor
resultante de esta función es la salida de la neurona i (outi); por ende, la función de
salida determina que valor se transfiere a las neuronas vinculadas. Si la función de
activación está por debajo de un umbral determinado, ninguna salida se pasa a la
neurona subsiguiente. Normalmente, no cualquier valor es permitido como una entrada
para una neurona, por lo tanto, los valores de salida están comprendidos en el rango
[0, 1] o [-1, 1]. También pueden ser binarios {0, 1} o {-1, 1}.

Dos de las funciones de salida más comunes son:
- Ninguna: este es el tipo de función más sencillo, tal que la salida es la misma
que la entrada. Es también llamada función identidad.
- Binaria:
      1 si act >= umbral
      0 de lo contrario



## Entrenamiento de la red neuronal
Los pesos y sesgos son las variables que afectan nuestra salida, y por lo tanto determinan la fuerza de las predicciones. Al proceso de ajustar los pesos y sesgos de los datos de entrada se le conoce como *"entrenamiento de la red neuronal"*. El objetivo del entrenamiento de la red neuronal es encontrar un conjunto de pesos y sesgos que minimizen la función de costo.

**Elección del conjunto inicial de pesos**
Antes de comenzar el proceso de entrenamiento se debe determinar un estado
inicial, lo que significa: escoger un conjunto inicial de pesos para las diversas
conexiones entre las neuronas de la red neuronal. Esto puede realizarse por varios
criterios; por ejemplo uno de ellos es otorgar un peso aleatorio a cada conexión,
encontrándose los mismos dentro de un cierto intervalo. Generalmente un intervalo del
tipo [-n, n], donde n es un número natural positivo.
Cabe mencionar que durante el transcurso del entrenamiento los pesos no se
encuentran restringidos a dicho intervalo.


El proceso de entrenamiento consiste en una iteración de los siguientes pasos:
- Calcular la predicción de la salida, conocido como ***feedforward*** (hacia adelante)
- Ajustar los pesos y sesgos, conocido como ***backpropagation*** (hacia atrás)

![Imagen de grafo sequencial](https://github.com/jrivera15/MCD/assets/5826577/83a11475-55b3-4063-a4b5-159cb5b3f6a5)

**Feedforward**
Como se puede observar en la figura, feedforward es un cimple cálculo y para una red neuronal sencilla de 2 capas, la salida podría verse como la siguiente ecuación:

![Imagen de ecuación de salida](https://github.com/jrivera15/MCD/assets/5826577/a9a8689f-21d1-4978-a08a-7a072a7b432d)

**Función de costo**
Una vez que tenemos nuestra salida, necesitamos evaluar qué tan "buenas" han sido nuestras predicciones, y para eso utilizamos una ***función de pérdida (o de costo)***. Una de las más comunes es la 
**Sum of Square Error (SSE)** (suma residual de cuadrados), la cual es simplemente la suma de las diferencias entre cada valor predicho y el valor real, elevadas al cuadraro:

![Imagen ecuación SSE](https://github.com/jrivera15/MCD/assets/5826577/52276e37-c3a7-4b49-a12f-c1861aae68c2)

**Backpropagation**
Una vez que se ha calculado el error, necesitamos una manera de propagar el error hacia atrás y actualizar los pesos y sesgos. Para ello necesitamos saber la derivada de la función de costo con respecto
a los pesos y sesgos, para poder así incrementar o reducir estos pesos y sesgos como lo muestra el siguiente diagrama. A esto se le conoce como el **Gradient descent algorithm** (Descenso de gradiente):

![Diagrama algoritmo descenso de gradiente ](https://github.com/jrivera15/MCD/assets/5826577/32d3871e-2d27-4b65-9859-dd72609863c6)

**Detención del proceso de aprendizaje**
Para determinar cuándo se detendrá el proceso de aprendizaje, es necesario
establecer una condición de detención.
Normalmente el entrenamiento se detiene cuando el cálculo del error cuadrado
sobre todos los ejemplos de entrenamiento ha alcanzado un mínimo o cuando para cada
uno de los ejemplos dados, el error observado está por debajo de un determinado
umbral. 
Otra condición de detención del aprendizaje puede ser cuando un cierto número
de ciclos y/o pasos de entrenamiento hayan sido completamente corridos.

Luego de alcanzarse la condición de detención, los pesos no se volverán a
cambiar. Entonces podemos decir que la transformación de los datos de entrada a los de
salida está resuelta. 

**Validación de la red neuronal**
Después del proceso de entrenamiento los pesos de las conexiones en la red
neuronal quedan fijos. Como paso siguiente se debe comprobar si la red neuronal puede
resolver nuevos problemas, del tipo general, para los que ha sido entrenada. Por lo tanto,
con el propósito de validar la red neuronal se requiere de otro conjunto de datos,
denominado conjunto de validación o testeo.
Cada ejemplo del conjunto de evaluación contiene los valores de las variables de
entrada, con su correspondiente solución tomada; pero ahora esta solución no se le es
otorgada a la red neuronal. Luego se compara la solución calculada para cada ejemplo
de validación con la solución conocida.
Ahora el problema es que hay que decidir cuando la salida de la red neuronal ha de considerarse
como correcta.



## Problema a implementar: Predicción de Covid-19

En la actualidad, todo lo relacionado a la reciente enfermedad causada por el virus SARS-CoV-2 se ha convertido en un tema de gran atención a nivel mundial y ha pasado a formar una de las áreas más estudiadas tanto por médicos, químicos, ingenieros, científicos, entre muchas otras.

El SARS-Cov-2 es un virus que forma parte de la familia de virus “Coronavirus”, que reciben su nombre por su forma en “corona”. Es el más reciente de los coronavirus, identificado en el 2019 y causa la enfermedad llamada COVID-19, responsable de la actual pandemia.

Gracias a la tecnología con la que contamos en nuestro país, el Gobierno de México se ha dado 
a la tarea de recopilar información de distintos órdenes de gobierno para poner a disposición de quien desee hacer uso de ellos.

Un ejemplo es el dataset nombrado "COVID19MEXICO", el cuál se encuentra de manera libre y gratuita a través del portal datos.gob.mx. Este dataset consta de XXXX registros de pacientes (de manera anónima), donde podemos analizar variables como la edad, el historial 
del fumador, si cuenta con un diagnóstico de diabetes, obesidad, hipertensión, etc. Entre muchas otras variables de interés también 
podemos encontrar una variable que nos indica si el diagnóstico final para covid19 fue positivo o negativo, si el paciente fue intubado y si por desgracia hubo defunción.

De esta manera, podríamos entrenar una red neuronal para que con el historial clínico de un nuevo paciente podamos predecir si existe alta probabilidad de que sea ingresado a una unidad de atención médica, o si tendría que ser intubado, o un resultado menos aofrtunado sería si podría llegar a una defunción, claro siempre teniendo en cuenta que existe un cierto margen de error. Por supuesto que esta aplicación podría utilizarse de manera informativa y preventiva, pero nunca sustituiría a una evaluación realizada por un experto en la salud acompañada del resultado de pruebas de laboratorio.

### Desarrollo matemático

Primeramente, tendríamos que hacer una selección de las variables que consideramos importantes para el modelo.Por ejemplo, cada una de estas variables independientes 
formarían nuestro vector de entrada de la siguiente manera:

| x | Nombre de la variable |             
| ----------- | ----------- |
| x1 | Sexo |
| x2 | Edad |
| x3 | Neumonía |
| x4 | Diabetes |
| x5 | Asma |
| x6 | Inmunosupresión |
| x7 | Hipertensión |
| x8 | Cardiovsacular |
| x9 | Obesidad |
| x10 | Tabaquismo |
| x11 | Renal_Crónica |
| x12 | EPOC |





- Se tienen los vectores de entrada
- Se calcula un vector de pesos y sesgos aleatorios para cada entrada
- Se calcula la sumatoria de la multiplicación de las entradas por sus pesos
- Se les aplica la función de activación, por ejemplo la sigmoide para mapear a valores de 0 a 1
- feedforward para calcular la salida
- Se calcula el error de lo predicho con lo real
- Se aplica backpropagation por ejemplo para la recalculación de pesos
- Se calcula de nuevo el error y se repite feedforward y backpropagation hasta cumplir cierta codición que dependa del error, numero de itereaciones, etc.

X = 
[[0, 29, 0, 0, 0, 0, 0, 0, 1, 0, 0],
[1, 65, 0, 1, 0, 1, 0, 1, 1, 0, 0],
[0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0],
...,
[1, 87, 1, 0, 1, 0, 0, 0, 0, 0, 0]]

Y =
[0,
 1,
 0,
 ...,
 1
 ]
 
 sum(x1*w1
 
 


## Referencias

- Damián Jorge Matich. Cátedra: Redes Neuronales: Conceptos Básicos y Aplicaciones. 
https://www.frro.utn.edu.ar/repositorio/catedras/quimica/5_anio/orientadora1/monograias/matich-redesneuronales.pdf

- How to build your own Neural Network from scratch in Python. James Loy.
https://towardsdatascience.com/how-to-build-your-own-neural-network-from-scratch-in-python-68998a08e4f6

- Gobierno de México
https://coronavirus.gob.mx/covid-19/
