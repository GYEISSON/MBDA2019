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
--D
GRANT UPDATE, DELETE ON MBDAA01.CONTENIDOS TO bd2127790, bd2139687;
--