# Proyecto de Probabilidad y Estadística: Análisis de Analfabetismo en municipios de México

Este documento se presenta como proyecto final del propedéutico de Probabilidad y Estadística para la maestría en Ciencia de Datos.



## 1. Selección del problema

Se realiza un análisis comparativo de la relación que existe entre los grados de marginalización y el analfabetismo a nivel municipio con respecto al total de la población.

## 2. Descripción del problema

El Consejo Nacional de Población (CONAPO) del gobierno mexicano, realiza cada 5 años un análisis sobre un estudio multidimensional de la pobreza y establece un índice de marginación.

El índice de marginación es una medida-resumen que permite diferenciar los estados
y municipios del país según el impacto global de las carencias que padece la población como
resultado de la falta de acceso a la educación, la residencia en viviendas inadecuadas, la
percepción de ingresos monetarios insuficientes y las relacionadas con la residencia en
localidades pequeñas.

La construcción del índice de marginación toma como base la información censal
generada en el país por el Instituto Nacional de Estadística y Geografía (INEGI), precisamente,
en los temas de educación, vivienda, distribución territorial e ingresos de la población.

Para ello se toman en cuenta los siguientes indicadores:
1. **Porcentaje de población analfabeta de 15 años o más**
2. Porcentaje de población de 15 años o más sin educación básica
3. Porcentaje de ocupantes en viviendas particulares habitadas sin drenaje ni excusado
4. Porcentaje de ocupantes en viviendas particulares habitadas sin energía eléctrica
5. Porcentaje de ocupantes en viviendas particulares habitadas sin agua entubada
6. Porcentaje de ocupantes en viviendas particulares habitadas con piso de tierra
7. Porcentaje de viviendas particulares con hacinamiento
8. Porcentaje de población que vive en localidades menores a 5 000 habitantes
9. Porcentaje de población ocupada con ingresos de hasta 2 salarios mínimos


## 3.	Objetivos

Se pretende encontrar si existe una relación entre el analfabetismo y la marginalización con respecto al tamaño de la población en cada municipio.


## 4.	Recopilación y limpieza de datos

Se utilizó la base de datos del índice de marginación por municipio "IMM_2020" que provee la CONAPO y que se puede consultar en: https://www.gob.mx/conapo/documentos/indices-de-marginacion-2020-284372

El indicador que tomaremos en cuenta es el de **"Porcentaje de población analfabeta de 15 años o más"**, y se denota como **ANALF** en el dataset.


## 5.	Estadística descriptiva

Se realiza el análisis descriptivo de todas las variables, sin embargo este trabajo se enfoca en la variable **ANALF**. También se tomará en cuenta a la variable **"POB_TOT"** que hace referencia a la población total por municipio. 


![image](https://github.com/jrivera15/MCD/assets/5826577/b31b6551-25d3-42d9-8f81-3b4fd63bbb6e)

Se realizó la siguiente gráfica donde pueden observarse las variables de población versus porcentaje de analfabetismo:
![grafica2 (1)](https://github.com/jrivera15/MCD/assets/5826577/7929bf93-7f3b-4a2a-8a54-76c60334af40)


## 6.	Análisis estadístico inferencial

Con este análisis y esta información se podría implementar el uso de redes neuronales para la predicción del índice del grado de marginalidad dependiendo del número de población. Y claramente, si se hace un análisis del resto de las variables se podría obtener un resultado más preciso. 

## 7. Resultados y conclusiones

En la gráfica podemos observar que existe una fuerte relación entre el tamaño de la población y el porcentaje de analfabetismo. 

En aquellos municipios donde su población es muy grande, como  las principales ciudades del país donde la mayoría de su población habita en viviendas que cuentan con servicios de drenaje, agua potable, energía eléctrica etc., se observa que el porcentaje de analfabetismo es muy bajo. 

En comparación podemos ver el otro extremo, donde aquellos municipios donde su población es muy pequeña, como zonas rurales o semiurbanas, el porcentaje de anlfabetismo crece.


## 8. Referencias

Índice de marginación por entidad federativa y municipio 2020
https://www.gob.mx/cms/uploads/attachment/file/685354/Nota_te_cnica_IMEyM_2020.pdf









