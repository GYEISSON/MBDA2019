--Se trata de probar que el ID no puede tener mas de 3 digitos, y la fecha debe ser ingresada como 
-- tipo fecha y no varchar
insert into opinion values (1000, '2020-01-21', 'me gusta', 'Morbi a ipsum.', 'interdum', 'jmccart9@mozilla.com', 'support');
--RESTRICCION DE ATRIBUTO

--Se trata de probar que el contenido de bloqueado debe tener un solo digito
insert into perfil values ('mdaventry1@php.net', 'Katha Corteney', 100);
--RESTRICCION DE ATRIBUTO

--Se trata de probar que el contenido de nombre debe tener como maximo 20 caracteres
insert into adjetivo values (1000, 'Switchableeeeeeeeeeeeeeeeeeeeeeeee');
--RESTRICCION DE ATRIBUTO

--Se trata de probar que la fecha no puede ser NULL
insert into consulta values (NULL, 'wkidston0@reddit.com', 'ipsum');
--RESTRICCION DE ATRBUTO 

--Se trata de probar que la fecha debe ser ingresada como tipo fecha y no varchar
insert into temporal values ('incremental','2006-01-21', 'https://macromedia.com/fermentum/justo/nec/condimentum.xml', 'audio','wkidston0@reddit.com', 3.55, 'chino');
--RESTRICCION DE ATRIBUTO




--Se trata de probar que el contenido de bloqueado debe ser 1 o 0 pero permite ingresar 4
insert into perfil values ('mdaventry1@php.net', 'Katha Corteney', 4);
--RESTRICCION DE ATRIBUTO AUN NO DEFINIDO

--Se trata de probar que en el contenido de email solo puede existir contenido que tenga un @ y un "."
-- pero permite ingresar lo que sea
insert into perfil values ('mdaven@try1@php.net', 'Katha Corteney', 1);
--RESTRICCION DE ATRIBUTO

--Se trata de probar que el contenido de tipo solo debe permitir ingresar cierto tipo de oracion
--pero permite ingresar cualquiera
insert into opinion values (1, TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'me ASFSDAFASD', 'Ut tellus.', 'vivamus', 'wkidston0@reddit.com', 'Devolved');
--RESTRICCION DE ATRIBUTO

--Se trata de probar que en el contenido de email solo puede existir contenido que tenga un @ y un "."
-- pero permite ingresar lo que sea
insert into perfil values ('wkidston0redditcom', 'Chet Louisot', 1);
--RESTRICCION DE ATRIBUTO

--Se trata de probar que en el contenido de nivel solo puede tener la estructura NIVEL: ##
--Pero permite ingresar cualquier cosa
insert into Trata  values ('ASDF', 76, 'Customizable', 'HURC');
--RESTRICCION DE ATRIBUTO


--D.CONSTRUCCION PROTEGIENDO 


--se trata de probar ingresar un perfil no registrado en la tabla perfiles y un contenido no registrado en la tabla temporal
--no se permite ya que perfil y contenido son llaves foraneas de la tabla perfil y temporal
insert into Consulta values ( TO_DATE('2006-01-21', 'YYYY-MM-DD'),'yeison7f@gmail.com','presente');
--RESTRICCION DE  FORANEAS

--Se trata de ingresar un perfil y luego intentar ingresar un perfil con mismo correo
--no se permite ya que el correo en la tabla perfil es una llave primaria
insert into perfil values ('yeison7f@gmail.com','yeisson',0);
insert into perfil values ('yeison7f@gmail.com','andres',1);
-- RESTRICCION DE PRIMARIA

-- Se trata de ingresar una opinion con una justificacion luego intentar ingresar otra opinion con la misma justificacion
-- no se permite ya que la justificacion debe ser unica 
insert into temporal values ('incremental',TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'https:///nec.c/condimentum.xml', 'A','yeison7f@gmail.com', 3, 'I');  
insert into Opinion values (123,TO_DATE('2006-01-21', 'YYYY-MM-DD'),'E','no aplica','momentos positivos','yeison7f@gmail.com','incremental');
insert into Opinion values (124,TO_DATE('2006-01-21', 'YYYY-MM-DD'),'C','no aplica','momentos negativos','yeison7f@gmail.com','incremental');
--RESYTRICCOIN DE UNICA 

--se trata de ingresaren en  la tabla asignatura un valor de sigla con un caracter especial
--no se permitira ya que la sigla tiene una restriccion de atributo 
insert into Asignatura values ('E#N','naturaleza');
--RESTRICCION DE ATRIBUTO

-- se trata de insertar en la tabla asignatura un valor de nombre nulo
-- no se debe permitir porque al momento de crear las tablas se especifico que el valor no puede ser nulo
insert into Asignatura values ('123',NULL);
-- RESTRICCION DE ATRIBUTO