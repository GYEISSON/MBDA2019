--A
SELECT * FROM mbdaa01.CONTENIDOS;

/*
B
SE PERMITE INSERTAR EL CONTENIDO
*/
INSERT INTO MBDAA01.CONTENIDOS VALUES('yeison7f@gmail.com','yeisson','n','computer science','www.goojle.com','V',12,'E','software');
INSERT INTO MBDAA01.CONTENIDOS VALUES('yeison7f@gmail.com','YEISSON','N','computer science','www.goojle.com','F',12,'E','software');
INSERT INTO mbdaa01.CONTENIDOS VALUES('santiagoo@gmail.com','santiago','n','computer science','www.goojle.com','V',12,'E','software');
INSERT INTO mbdaa01.CONTENIDOS VALUES('santiagoo@gmail.com','santiago','N','computer science','www.goojle.com','F',12,'E','software');

/*
--C
no se permite actualizar o eliminar debido a la falta de permisos
*/
UPDATE  mbdaa01.CONTENIDOS SET NOMBRE ='fabian' WHERE correo = 'yeison7f@gmail.com';
DELETE FROM mbdaa01.CONTENIDOS WHERE correo = 'yeison7f@gmail.com';
--D EL ADMINISTRADOR DEBE GENERAR LOS SIGUIENTES PERMISOS 
GRANT UPDATE, DELETE ON MBDAA01.CONTENIDOS TO bd2127790, bd2139687;
--E


INSERT INTO PERFIL SELECT T1.CORREO,T1.NOMBRE,T1.BLOQUEADO FROM  MBDAA01.CONTENIDOS T1;
INSERT INTO  TEMA SELECT T1.TEMA,T1.CORREO FROM  MBDAA01.CONTENIDOS T1;
INSERT INTO TEMPORAL(NOMBRE,URL,TIPO,PERFIL,DURACION,IDIOMA)  SELECT T1.TITULO,T1.URL,T1.TIPO,T1.CORREO,T1.DURACION,T1.IDIOMA FROM  MBDAA01.CONTENIDOS T1 WHERE DURACION IS NOT NULL;














-------------------------------------------------------------------------------------


-- tablas POR CRUD'S
-- PERFILES 







--atributos 


--llaves primarias 

ALTER TABLE Perfil ADD CONSTRAINT PK_PERFIL  PRIMARY KEY (correo);
ALTER TABLE Temporal ADD CONSTRAINT PK_TEMPORAL PRIMARY KEY (nombre);
ALTER TABLE Opinion ADD CONSTRAINT PK_OPINION PRIMARY KEY (numero);
ALTER TABLE Tema ADD CONSTRAINT PK_TEMA PRIMARY KEY (nombre);
ALTER TABLE Asignatura  ADD CONSTRAINT PK_ASIGNATURA PRIMARY KEY (sigla);
ALTER TABLE Filtro ADD CONSTRAINT PK_FILTRO PRIMARY KEY (nombre);
ALTER TABLE ContenidoTema ADD CONSTRAINT PK_CONTENIDO_TEMA PRIMARY KEY(contenido,tema);
ALTER TABLE Consulta ADD CONSTRAINT PK_PERFIL_CONTENIDO PRIMARY KEY(perfil,contenido);
ALTER TABLE Trata ADD CONSTRAINT PK_TEMA_ASIGNATURA PRIMARY KEY (tema,asignatura);
ALTER TABLE ADJETIVO ADD CONSTRAINT PK_ADJETIVO_OPINION_NOMBRE PRIMARY KEY (OPINION,NOMBRE);
ALTER TABLE PALABRA ADD CONSTRAINT PK_PALABRA_TEMA_NOMBRE PRIMARY KEY (TEMA,NOMBRE);
ALTER TABLE ESPRERREQUISITO ADD CONSTRAINT PK_ADJETIVO_NTEMAA_NTEMAB PRIMARY KEY (NOMBRETEMAA,NOMBRETEMAB);
ALTER TABLE ESSUBTEMA ADD CONSTRAINT PK_ADJETIVO_STEMAA_STEMAB PRIMARY KEY (NOMBRETEMAA,NOMBRETEMAB);
ALTER TABLE ETIQUETA ADD CONSTRAINT PK_ETIQUETA_TEMP_NOMB  PRIMARY KEY (TEMPORAL,NOMBRE);



-- llaves unicas 



--llaves foraneas 




--REGISTRAR OPINION 

/*
-Tuplas: no hay adiciones en restricciones declarativas de tuplas,
pero se cuenta con las predefinidas en el diseño conceptual(TOpinion,TDetalle,TPalabra)
*/
-- TuplasOK

--TuplasNoOk


--AccionesOk



--AccionesNoOk


--DISPARADORES



--DisparadoresOk


--DisparadoresNoOk













--eliminar atributos 


--eliminar restriciones declarativas--------------------------------------------------------------------------------------------
--eliminar unicas
ALTER TABLE Temporal DROP CONSTRAINT UK_TEMPORAL;
ALTER TABLE Opinion DROP CONSTRAINT UK_OPINION;

--eliminar foraneas 
ALTER TABLE Consulta DROP CONSTRAINT FK_CONSULTA_PERFIL;
ALTER TABLE Consulta DROP CONSTRAINT FK_CONSULTA_TEMPORAL;

ALTER TABLE Opinion  DROP CONSTRAINT FK_OPINION_PERFIL;
ALTER TABLE Opinion DROP CONSTRAINT FK_OPINION_TEMPORAL;

ALTER TABLE Adjetivo DROP CONSTRAINT FK_ADJETIVO_OPINION;

ALTER TABLE Temporal DROP CONSTRAINT FK_TEMPORAL_PERFIL;

ALTER TABLE Etiqueta DROP CONSTRAINT FK_ETIQUETA_TEMPORAL;

ALTER TABLE Tema DROP CONSTRAINT FK_TEMA_PERFIL;

ALTER TABLE Palabra DROP CONSTRAINT FK_PALABRA_TEMA;

ALTER TABLE EsPrerrequisito DROP CONSTRAINT FK_ESPRERREQUISITOA_TEMA;
ALTER TABLE EsPrerrequisito DROP CONSTRAINT FK_ESPRERREQUISITOB_TEMA;

ALTER TABLE EsSubtema DROP CONSTRAINT  FK_ESSUBTEMAA_TEMA;
ALTER TABLE EsSubtema DROP CONSTRAINT  FK_ESSUBTEMAB_TEMA;

ALTER TABLE Trata DROP CONSTRAINT FK_TRATA_TEMA;
ALTER TABLE Trata DROP CONSTRAINT FK_TRATA_ASIGNATURA;

ALTER TABLE ContenidoFiltro DROP CONSTRAINT FK_CONTENIDOFILTRO_TEMPORAL;
ALTER TABLE ContenidoFiltro  DROP CONSTRAINT FK_CONTENIDOFILTRO_FILTRO;

ALTER TABLE ContenidoTema DROP CONSTRAINT FK_CONTENIDOTEMA_CONTENIDO;
ALTER TABLE ContenidoTema DROP CONSTRAINT FK_CONTENIDOTEMA_TEMA;


--eliminar primarias
ALTER TABLE Perfil DROP CONSTRAINT PK_PERFIL;
ALTER TABLE Temporal DROP CONSTRAINT PK_TEMPORAL;
ALTER TABLE Opinion DROP CONSTRAINT PK_OPINION;
ALTER TABLE Tema DROP CONSTRAINT PK_TEMA;
ALTER TABLE Asignatura  DROP CONSTRAINT PK_ASIGNATURA;
ALTER TABLE Filtro DROP CONSTRAINT PK_FILTRO;
ALTER TABLE ContenidoTema DROP CONSTRAINT PK_CONTENIDO_TEMA; 
ALTER TABLE Consulta DROP CONSTRAINT PK_PERFIL_CONTENIDO;

--eliminar tablas


DROP  TABLE Adjetivo;
DROP  TABLE Consulta;
DROP  TABLE Etiqueta;
DROP  TABLE Palabra;
DROP  TABLE EsPrerrequisito;
DROP  TABLE EsSubtema;
DROP  TABLE Trata;
DROP  TABLE ContenidoFiltro;
DROP TABLE ContenidoTema;
DROP  TABLE Opinion;    
DROP  TABLE Temporal;
DROP  TABLE Tema;
DROP  TABLE Asignatura;
DROP  TABLE Filtro;
DROP  TABLE Perfil;    
    
--Consultas 


select contenidoTema.tema as Tema, temporal.url as URL,count(opiniones.numero) as Opiniones
from contenidoTema,Temporal,Opinion
where contenidoTema.contenido = temporal.nombre and temporal.nombre = opinion.contenido
and detalle = 'momentos de error'
Group by opiniones.numero;
    
    




----------------------------------------------------------------------------------------------------------------------------------------------------------------------------







