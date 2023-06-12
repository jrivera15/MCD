# Proyecto de Base de Datos: Covid-19
Este documento se presenta como proyecto final del propedéutico de Bases de Datos para la maestría en Ciencia de Datos.

Para este proyecto se escogió la base de datos de COVID19 en México, por ser un tema de gran interés no sólo a nivel nacional sino mundial, donde actualmente se utiliza este tipo de información para hacer análisis estadísticos amplios y detallados sobre esta enfermedad. Todo esto permite a su vez, conocer más sobre la enfermedad, identificar patrones, hacer clasificación de casos, incluso hacer predicciones de contagio, defunción, entre muchas más.

En las secciones del documento se presenta lo siguiente:
- Descarga de los archivos para la base de datos
- Creación de la base de datos en MySQL Workbench
- Diagrama UML
- Queries
- Anexo


## Sobre la base de datos

La base de datos es de acceso libre y gratuita y se encuentra a través del portal de Datos del Gobierno de México. Se puede descargar en formato CSV en la siguiente liga:
https://datos.gob.mx/busca/dataset/informacion-referente-a-casos-covid-19-en-mexico

El archivo de descarga es una carpeta comprimida **"datos_abiertos_covid19.zip"** la cual contiene la base de datos en formato CSV: **"COVID19MEXICO.csv"**.

Esta base de datos tiene información desde el 01-Enero-2022 y se encuentra actualizada al 29-Mayo-2023, cuenta con **14,691,920 millones** de registros.

Es importante descargar también el diccionario de datos, el cual es una carpeta comprimida **"diccionario_datos_covid19.zip"**, la cual contiene los siguientes archivos:
- **"201128 Catalogos.xls":** En este archivo se encuentran como pestañas todas las tablas catálogo que utiliza la base de datos para formar la tabla "covid19mexico". 
- **"201128 Descriptores_.xls"**: En este archivo se encuentran todas las columnas que conforman de la tabla "covid19mexico" junto con su descripción y formato.
- **"Actualizaciones en la presentación de información referente a casos de COVID.pdf"**: Este archivo contiene información relacionada a cambios que se hayan realizado sobre la base de datos.

Los registros de la base de datos pertenecen a pacientes anónimos donde podemos ver si contaban con diagnóstico de enfermedades cardiovasculares, hipertensión, asma, etc. También se registra el diagnóstico para Covid-19, si llegaron a ser intubados o si desafortunadamente fallecieron.



## Creación de BD en MySQL 8.0

Se utilizó un equipo de cómputo con sistema operativo Windows 11, procesador i7 y 32GB en memoria RAM.

Los siguientes pasos fueron ejecutados para :
1. Se importó el archivo **"COVID19MEXICO.csv"** a través de otro manejador de bases de datos llamado **"DB Browser for SQLite"**, el cual creó la tabla "COVID19MEXICO" en segundos.
2. Una vez creada la tabla, se exportó como archivo **"COVID19MEXICO.sql"**, el cual contiene todo el script SQL para crear la tabla e insertar los datos.
3. En MySQL Workbench, se creó un nuevo schema para la base de datos: **"mcd"**.
4. A través de la consola, se ejecutó el comando **"SOURCE covid19mexico.sql;"** con el cual se logró crear la tabla **"covid19mexico"** en el schema **"mcd"** previamente creado. Este proceso tuvo una duración de aproximadamente 12 horas. 

*NOTA: Favor de revisar la sección "Anexo" de este documento para más detalles sobre los pasos que se ejecutaron, los problemas que surgieron y sus respectivas soluciones.*

<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/285af16a-5e5c-4f1f-bd0c-c5b21a3bc048"  width="50%" height="50%"></p>
<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/95b50717-0332-48ab-95c4-5fc82fad346d"  width="25%" height="25%"></p>


### Creción de tablas de catálogo
El archivo **"201128 Catalogos.xls"** contiene todas las tablas catálogo en cada una de sus pestañas. Para importarlas en MySQL Workbench, primeramente se guardó cada una de las pestañas como un archivo individual en formato CSV:

<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/e1be5452-cdf9-4f40-9456-11d1a393e911"  width="25%" height="25%"></p>



Una vez realizado esto, se importó cada uno de los catálogos en MySQLWorkbench a través de la herramienta "Table Data Import Wizard":

<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/2ed8b010-dc0b-4655-95ad-8b18cbd623cd"  width="15%" height="15%"></p>

Es importante revisar si las columnas tienen el tipo de dato correcto, y si tienen definida sus llaves primarias, foráneas, etc. para establecer correctamente las relaciones entre las entidades de nuestra base de datos. En caso de no ser así, podemos modificar las tablas a través de la opción "Alter Table":

<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/97b43c59-d728-4ee5-ace5-744a384e754d"  width="50%" height="50%"></p>

### Creación de tabla "covid19sonora"

Dada la gran cantidad de registros que contiene la base de datos original (más de 14 millones de registros), se creó una tabla "covid19sonora" con todos aquellos registros donde su estado de residencia es Sonora. Esto con la finalidad de tener un dataset más pequeño que se pudiera trabajar mejor con el poder de cómputo que se tiene y que aún así se obtuvieram datos de interés.



## Diagrama UML

Utilizando la herramienta "Reverse Engineer" de MySQL Workbench, se realizó un proceso de ingeniería inversa para obtener el modelo UML de la tabla **"covid19sonora"**. Para ver el diagrama con más detalle
se encuentra el archivo **"uml_covid19sonora.png"** dentro de este mismo repositorio.

<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/78a5c77d-494b-4f53-92f6-60e180f35840"  width="50%" height="50%"></p>



## Hallazgos

En este mismo repositorio se puede encontrar el archivo **"queries_covid19.sql"** donde se pueden ver completas todas las queries realiazadas a la base de datos.

Al hacer algunas consultas se encontraron los siguientes hallazgos:

- El número de defunciones en adultos mayores en Sonora ha sido notoriamente más grande que en jóvenes de entre 19 a 25 años. 
- Se observa también que elmayor número de defunciones pertenecen a las grandes ciudades del estado, lo cual es lo esperado ya que es donde reside la mayoría de la población.
<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/7ed9aecb-7988-4c15-8434-20d0dea299d2"   width="50%" height="50%"></p>

- Había (hay) una creencia popular de que todos aquellos pacientes que eran intubados tenían alta probabilidad de fallecer. Sin embargo, si vemos estos datos se puede observar que de todos los adultos mayores que fallecieron en Sonora, que fueron 1898, sólo 246 fueron intubados:
<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/5580dd65-0008-446d-b38d-537d68fa069b"   width="50%" height="50%"></p>

- 116 adultos mayores que fallecieron tenían un diagnóstico positivo para Hipertensión, Diabetes y Enfermedades cardiovasculares. Con esto podemos estimar que el 6% de las defunciones en adultos mayores contaban con esta tercia de enfermedades.
<p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/abe53c35-8257-4ef2-973c-4d4c746fea1d"   width="25%" height="25%"></p>







## Anexo

Durante la creación de la tabla "covid19mexico" se presentaron algunos problemas los cuales se enlistan a continuación junto con la solución correspondiente.

Inicialmente se intentó utilizar la herramienta "TABLE DATA IMPORT WIZARD" que provee MySQL Workbench, pero el proceso fue muy lento. En 2 días sólo importó
aproximadamente el 5% del total de registros (800,000 aprox). Esta acción fue cancelada.

Se exploró la siguiente opción con resultados exitosos:
1. Se importó el archivo CSV a través de otro manejador de bases de datos llamado "DB Browser for SQLite", el cual creó la tabla "COVID19MEXICO" en segundos.
2. Una vez creada la tabla, se exportó como archivo .sql, el cual contiene todo el script SQL para crear la tabla e importar los datos.
3. En MySQL Workbench, se utilizó la herramienta "DATA IMPORT", sin embargo se presentaron algunos problemas:  
  
  a. **Error 1064** 
  <p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/e8555302-e2d0-459b-9d45-df821785a16d"  width="50%" height="50%"></p>
  
  Se solucionó eliminando el primer y último registro del script SQL, el cual contenía las lineas "BEGIN TRANSACTION;" y "COMMIT;" respectivamente.
  También las dobles comillas que tenían el nombre de la tabla y las columnas para cada tabla presenraban problema, así que se removieron.
  
  <p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/dd512d55-c354-40bf-b69a-f533850e01fc"  width="50%" height="50%"></p>  
  
  b. Error: Al insertar los registros, la columna "PAIS_ORIGEN" que era inicialmente de tipo "INT" presentaba valores de tipo "TEXT" (por ejemplo: "Estados Unidos de           América") lo cual causaba conflicto.
  Se solucionó exportando de nuevo el archivo .sql desde "DB Browser for SQLite", indicando que la variable "PAIS_ORIGEN" era de tipo "TEXT".

  <p align="center"><img src="https://github.com/jrivera15/MCD/assets/5826577/182caf74-754c-4aa6-a3c1-50b6a8762588"  width="50%" height="50%"></p>  

4. Una vez que se solucionaron los problemas se inició el proceso de creación de la tabla y la inserción de los registros. Este proceso tuvo que ser detenido ya que
   también mostró ser muy lento y no se podía medir el avance.

5. Finalmente, a través de la consola se ejecutó el comando "SOURCE covid19mexico.sql;" con el cual se logró crear la tabla "covid19mexico" en el schema "mcd" previamente creado. Este proceso tuvo una duración de aproximadamente 12 horas. A diferencia de MySQL Workbench, a través de la consola sí se podía consultar el número de registros que 
se iban insertando.
