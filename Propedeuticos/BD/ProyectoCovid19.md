# Proyecto de Base de Datos: Covid-19

## Sobre la base de datos
La base de datos es de acceso libre y gratuita y se encuentra a través del portal de Datos del Gobierno de México. Se puede descargar en formato CSV en la siguiente liga:
https://datos.gob.mx/busca/dataset/informacion-referente-a-casos-covid-19-en-mexico

Esta base de datos se encuentra actualizada al mes de Mayo de 2023 y cuenta con 14,691,920 millones de registros.

Los registros pertenecen a pacientes anónimos donde podemos ver si contaban con diagnóstico de enfermedades cardiovasculares, hipertensión, asma, etc. También se registra
el diagnóstico para Covid-19, si llegaron a ser intubados o si desafortunadamente fallecieron.

Todos estos indicadores sirven ar hacer un ánalisis amplio y extenso sobre esta enfermedad, lo cual permite encontrar relaciones entre las variables, implementar algoritmos
de clasificación, predicción, etc. 

## Instalación de BD en MySQL 8.0

Se utilizó un equipo de cómputo con un procesador i7 y 32GB en memoria RAM.

Inicialmente se intentó utilizar la herramienta "TABLE DATA IMPORT WIZARD" que provee MySQL Workbench, pero el proceso fue muy lento. En aproximadamente 2 días sólo importó
aproximadamente el 5% del total de registros (800,000 aprox). Esta acción fue cancelada.

Se exploró la siguiente opción con resultados exitosos:
1. Se importó el archivo CSV a través de otro manejador de bases de datos llamado "DB Browser for SQLite", el cual creó la tabla "COVID19MEXICO" en segundos.
2. Una vez creada la tabla, se exportó como archivo .sql, el cual contiene todo el script SQL para crear la tabla e importar los datos.
3. En MySQL Workbench, se utilizó la herramienta "DATA IMPORT", sin embargo se presentaron algunos problemas:
  a. Error: "" 
  Se solucionó eliminando el primer y último registro del script SQL, el cual contenía las lineas "BEGIN TRANSACTION;" y "COMMIT;" respectivamente.
  b. Error: 
  Se solucionó eliminando las dobles comillas que tenían el nombre de la tabla y las columnas para cada tabla
  c. Error:
  Se solucionó
4. Finalmente, se logró crear la tabla "covid19mexico" en el schema "mcd" previamente creado.


## Creción de tablas de catálogo
## Diagrama UML
## Queries
  

