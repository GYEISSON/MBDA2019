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