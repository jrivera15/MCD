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

Los datos ingresan por medio de la “capa de entrada”,
pasan a través de la “capa oculta” y salen por la “capa de salida”. Cabe mencionar que
la capa oculta puede estar constituida por varias capas y no sólo 3 como en la imagen.

### Función de entrada (input function)
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

### Función de salida (output function)
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

## Aprendizaje, Validación y Codificación
Una red neuronal debe aprender a calcular la salida correcta para
cada constelación (arreglo o vector) de entrada en el conjunto de ejemplos. Este proceso
de aprendizaje se denomina: proceso de entrenamiento o acondicionamiento. El
conjunto de datos (o conjunto de ejemplos) sobre el cual este proceso se basa es, por
ende, llamado: conjunto de datos de entrenamiento.

Si la topología de la red y las diferentes funciones de cada neurona (entrada,
activación y salida) no pueden cambiar durante el aprendizaje, mientras que los pesos
sobre cada una de las conexiones si pueden hacerlo; el aprendizaje de una red neuronal
significa: adaptación de los pesos.

En otras palabras el aprendizaje es el proceso por el cual una red neuronal
modifica sus pesos en respuesta a una información de entrada.

Un aspecto importante respecto al aprendizaje de las redes neuronales es el
conocer cómo se modifican los valores de los pesos, es decir, cuáles son los criterios
que se siguen para cambiar el valor asignado a las conexiones cuando se pretende que
la red aprenda una nueva información.
Hay dos métodos de aprendizaje importantes que pueden distinguirse:
1. Aprendizaje supervisado.
2. Aprendizaje no supervisado.

Una generalización de la fórmula o regla para decir los cambios en los pesos es
la siguiente:
      Peso Nuevo = Peso Viejo + Cambio de Peso
Matemáticamente esto es:
      wij(t+1) = wij(t) + Δwij(t)
donde t hace referencia a la etapa de aprendizaje, wij(t+1) al peso nuevo y wij(t) al peso
viejo.

### Aprendizaje supervisado

1. Aprendizaje por corrección de error.
Consiste en ajustar los pesos de las conexiones de la red en función de la
diferencia entre los valores deseados y los obtenidos a la salida de la red, es decir, en
función del error cometido en la salida.

La regla de aprendizaje de propagación hacia
atrás o de backpropagation, también conocido como regla LMS multicapa, es la primer regla de
aprendizaje que permitió realizar cambios sobre los pesos en las conexiones de la capa
oculta.

2. Aprendizaje por refuerzo.
3. Aprendizaje estocástico.



### Aprendizaje no supervisado

### Validación de la red neuronal
Después del proceso de entrenamiento los pesos de las conexiones en la red
neuronal quedan fijos. Como paso siguiente se debe comprobar si la red neuronal puede
resolver nuevos problemas, del tipo general, para los que ha sido entrenada. Por lo tanto,
con el propósito de validar la red neuronal se requiere de otro conjunto de datos,
denominado conjunto de validación o testeo.
Cada ejemplo del conjunto de evaluación contiene los valores de las variables de
entrada, con su correspondiente solución tomada; pero ahora esta solución no se le es
otorgada a la red neuronal. Luego se compara la solución calculada para cada ejemplo
de validación con la solución conocida.
El nuevo ejemplo utilizado para la validación se identifica como Eu y su
correspondiente salida correcta como Au (u indica incógnita, en inglés). Ahora el
problema es que hay que decidir cuando la salida de la red neuronal ha de considerarse
como correcta.


## Problema a implementar

La migraña es un tipo de dolor de cabeza que puede ocurrir con síntomas como náuseas, vómitos o sensibilidad a la luz y al sonido. En la mayoría de las personas, se siente un dolor pulsátil únicamente en un lado de la cabeza. 

Existen dos tipos principales de migrañas:

- Migraña con aura (migraña clásica)
- Migraña sin aura (migraña común)

El aura es un grupo de síntomas del sistema nervioso (neurológicos). Estos síntomas se consideran un signo de advertencia de que una migraña está por venir.

Para este caso, se seleccionó de Kaggle un dataset que contiene datos sobre los pacientes y sus síntomas, con los cuales se hizo un diagnóstico para definir el tipo de migraña que presentaban. Con esta implementación podremos entrenar una red neuronal de clasificación que nos permita, mediante el procesamiento de los datos de una persona, poder definir qué clase de migraña está padeciendo.


## Referencias

Damián Jorge Matich. Cátedra: Redes Neuronales: Conceptos Básicos y Aplicaciones. 
https://www.frro.utn.edu.ar/repositorio/catedras/quimica/5_anio/orientadora1/monograias/matich-redesneuronales.pdf

Dataset en Kaggle
https://www.kaggle.com/datasets/weinoose/migraine-classification

MedlinePlus
https://medlineplus.gov/spanish/ency/article/000709.htm


