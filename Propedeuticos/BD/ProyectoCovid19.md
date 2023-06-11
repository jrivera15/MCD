# Proyecto de Base de Datos: Covid-19

## Sobre la base de datos
La base de datos es de acceso libre y gratuita y se encuentra a través del portal de Datos del Gobierno de México. Se puede descargar en formato CSV en la siguiente liga:
https://datos.gob.mx/busca/dataset/informacion-referente-a-casos-covid-19-en-mexico

Esta base de datos se encuentra actualizada al mes de Mayo de 2023 y cuenta con **14,691,920 millones** de registros.

Los registros pertenecen a pacientes anónimos donde podemos ver si contaban con diagnóstico de enfermedades cardiovasculares, hipertensión, asma, etc. También se registra
el diagnóstico para Covid-19, si llegaron a ser intubados o si desafortunadamente fallecieron.

Todos estos indicadores sirven ar hacer un ánalisis amplio y extenso sobre esta enfermedad, lo cual permite encontrar relaciones entre las variables, implementar algoritmos
de clasificación, predicción, etc. 

## Instalación de BD en MySQL 8.0

Se utilizó un equipo de cómputo con sistema operativo Windows 11, procesador i7 y 32GB en memoria RAM.

A través de la consola, se ejecutó el comando **"SOURCE covid19mexico.sql;"** con el cual se logró crear la tabla **"covid19mexico"** en el schema **"mcd"** previamente creado. Este proceso tuvo una duración de aproximadamente 12 horas. 

<p align="center">
    <img src="https://github.com/jrivera15/MCD/assets/5826577/285af16a-5e5c-4f1f-bd0c-c5b21a3bc048"  width="50%" height="50%">
  </p>
 <p align="center">
    <img src="https://github.com/jrivera15/MCD/assets/5826577/95b50717-0332-48ab-95c4-5fc82fad346d"  width="25%" height="25%">
  </p>





## Creción de tablas de catálogo
## Diagrama UML
## Queries
## Anexo

Durante la creación de la tabla "covid19mexico" se presentaron algunos problemas los cuales se enlistan a continuación junto con la solución correspondiente.

Inicialmente se intentó utilizar la herramienta "TABLE DATA IMPORT WIZARD" que provee MySQL Workbench, pero el proceso fue muy lento. En aproximadamente 2 días sólo importó
aproximadamente el 5% del total de registros (800,000 aprox). Esta acción fue cancelada.

Se exploró la siguiente opción con resultados exitosos:
1. Se importó el archivo CSV a través de otro manejador de bases de datos llamado "DB Browser for SQLite", el cual creó la tabla "COVID19MEXICO" en segundos.
2. Una vez creada la tabla, se exportó como archivo .sql, el cual contiene todo el script SQL para crear la tabla e importar los datos.
3. En MySQL Workbench, se utilizó la herramienta "DATA IMPORT", sin embargo se presentaron algunos problemas:  
  
  a. **Error 1064** 
  <p align="center">
    <img src="https://github.com/jrivera15/MCD/assets/5826577/e8555302-e2d0-459b-9d45-df821785a16d"  width="50%" height="50%">
  </p>
  Se solucionó eliminando el primer y último registro del script SQL, el cual contenía las lineas "BEGIN TRANSACTION;" y "COMMIT;" respectivamente.
  También las dobles comillas que tenían el nombre de la tabla y las columnas para cada tabla presenraban problema, así que se removieron.
  
  <p align="center">
    <img src="https://github.com/jrivera15/MCD/assets/5826577/dd512d55-c354-40bf-b69a-f533850e01fc"  width="50%" height="50%">
  </p>  
  
  b. Error: Al insertar los registros, la columna "PAIS_ORIGEN" que era inicialmente de tipo "INT" presentaba valores de tipo "TEXT" (por ejemplo: "Estados Unidos de América") lo cual causaba conflicto.
  Se solucionó exportando de nuevo el archivo .sql desde "DB Browser for SQLite", indicando que la variable "PAIS_ORIGEN" era de tipo "TEXT".

  <p align="center">
    <img src="https://github.com/jrivera15/MCD/assets/5826577/182caf74-754c-4aa6-a3c1-50b6a8762588"  width="50%" height="50%">
  </p>  

4. Una vez que se solucionaron los problemas se inició el proceso de creación de la tabla y la inserción de los registros. Este proceso tuvo que ser detenido ya que
   también mostró ser muy lento y no se podía medir el avance.

5. Finalmente, a través de la consola se ejecutó el comando "SOURCE covid19mexico.sql;" con el cual se logró crear la tabla "covid19mexico" en el schema "mcd" previamente creado. Este proceso tuvo una duración de aproximadamente 12 horas. A diferencia de MySQL Workbench, a través de la consola sí se podía consultar el número de registros que 
se iban insertando.