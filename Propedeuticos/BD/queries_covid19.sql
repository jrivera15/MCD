/*Número total de registros 14,691,920*/
SELECT count(*) 
FROM mcd.tbl_covid19mexico; 

/*Crear tabla para todos los registros donde la entidad de residencia sea "Sonora".alter
Esto dado que la tabla que contiene a todos los registros es demasiado grande para modificarla
(agregar llaves primaras, foráneas, etc) y para procesarla.*/
/*295,506*/
CREATE TABLE mcd.tbl_covid19sonora
SELECT *
FROM mcd.tbl_covid19mexico
WHERE entidad_res=26;

/*Crear vista de todos los registros donde la entidad de residencia sea el estado de Sonora*/
/*Se excluye columna FECHA_ACTUALIZACION*/
CREATE VIEW mcd.vw_covid19sonora as
SELECT 
	ID_REGISTRO,
	ORIGEN,
	SECTOR,
	ENTIDAD_UM,
	SEXO,
	ENTIDAD_NAC,
	ENTIDAD_RES,
	MUNICIPIO_RES,
	TIPO_PACIENTE,
	FECHA_INGRESO,
	FECHA_SINTOMAS,
	FECHA_DEF,
	INTUBADO,
	NEUMONIA,
	EDAD,
	NACIONALIDAD,
	EMBARAZO,
	HABLA_LENGUA_INDIG,
	INDIGENA,
	DIABETES,
	EPOC,
	ASMA,
	INMUSUPR,
	HIPERTENSION,
	OTRA_COM,
	CARDIOVASCULAR,
	OBESIDAD,
	RENAL_CRONICA,
	TABAQUISMO,
	OTRO_CASO,
	TOMA_MUESTRA_LAB,
	RESULTADO_LAB,
	TOMA_MUESTRA_ANTIGENO,
	RESULTADO_ANTIGENO,
	CLASIFICACION_FINAL,
	MIGRANTE,
	PAIS_NACIONALIDAD,
	PAIS_ORIGEN,
	UCI	
FROM mcd.tbl_covid19sonora;

/*295,506*/
SELECT count(*) 
FROM vw_covid19sonora;

/*Defunción en jóvenes de 19 a 25 años de edad por municipio*/
SELECT t2.municipio, count(*) as def_jovenes
FROM vw_covid19sonora t1
LEFT JOIN  cat_municipios t2
ON t1.municipio_res = t2.CLAVE_MUNICIPIO
AND t2.CLAVE_ENTIDAD = 26
WHERE t1.edad BETWEEN 19 AND 25
	AND t1.fecha_def != "9999-99-99" 
GROUP BY t1.municipio_res
ORDER BY def_jovenes;
    
/*Defunción en adultos mayores por municipio*/
SELECT t2.municipio, count(*) as def_mayores
FROM vw_covid19sonora t1
LEFT JOIN  cat_municipios t2
ON t1.municipio_res = t2.CLAVE_MUNICIPIO
AND t2.CLAVE_ENTIDAD = 26
WHERE t1.edad >= 60
	AND t1.fecha_def != "9999-99-99" 
GROUP BY t1.municipio_res
ORDER BY def_mayores;

/**/
SELECT count(*) as def_intubado
FROM vw_covid19sonora t1
LEFT JOIN  cat_sino t2
ON t1.intubado = t2.CLAVE
WHERE edad >= 60
	AND t1.fecha_def != "9999-99-99" 
	AND t2.CLAVE = 1 /*intubado=SI*/

;

/*Adultos mayores que fueron intubados y fallecieron*/
SELECT count(*) as def_mayores
FROM vw_covid19sonora t1
WHERE t1.edad >= 60
	AND t1.fecha_def != "9999-99-99" 
    AND t1.intubado = 1 /*intubado=SI*/
ORDER BY def_mayores;

/*Adultos mayores que no fueron intubados y fallecieron*/
SELECT count(*) as def_mayores
FROM vw_covid19sonora t1
WHERE t1.edad >= 60
	AND t1.fecha_def != "9999-99-99" 
    AND t1.intubado = 2 /*intubado=NO*/
ORDER BY def_mayores;

/*Adultos mayores que fallecieron y tenían diagnóstico positivo para Hipertensión, Diabetes y Enfermedades cardiovasculares*/
SELECT
	CASE
		WHEN t1.hipertension = 1 THEN "Si"
        ELSE "No"
	END as Hipertensión,
    CASE
		WHEN t1.diabetes = 1 THEN "Si"  
        ELSE "No"
	END as Diabetes,
    CASE
		WHEN t1.cardiovascular = 1 THEN "Si"   
        ELSE "No"
	END as Enf_Cardiovascular,
	CASE
		WHEN t1.fecha_def != "9999-99-99"  = 1 THEN "Si" 
        ELSE "No"
	END as Falleció
FROM vw_covid19sonora t1
WHERE t1.edad >= 60
	AND t1.fecha_def != "9999-99-99"    
    AND t1.hipertension = 1
    AND t1.diabetes = 1
    AND t1.cardiovascular = 1
;

/*Número de adultos mayores que fallecieron y 
tenían diagnóstico positivo para Hipertensión,
Diabetes y Enfermedades cardiovasculares*/
SELECT
	count(*) as Defunciones_3Enfermedades
FROM vw_covid19sonora t1
WHERE t1.edad >= 60
	AND t1.fecha_def != "9999-99-99"    
    AND t1.hipertension = 1
    AND t1.diabetes = 1
    AND t1.cardiovascular = 1
;