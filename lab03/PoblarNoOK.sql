--Se trata de probar que el ID no puede tener mas de 3 digitos, y la fecha debe ser ingresada como 
-- tipo fecha y no varchar
insert into opinion values (1000, '2020-01-21', 'me gusta', 'Morbi a ipsum.', 'interdum', 'jmccart9@mozilla.com', 'support');

--Se trata de probar que el contenido de bloqueado debe tener un solo digito
insert into perfil values ('mdaventry1@php.net', 'Katha Corteney', 100);

--Se trata de probar que el contenido de nombre debe tener como maximo 20 caracteres
insert into adjetivo values (1000, 'Switchableeeeeeeeeeeeeeeeeeeeeeeee');

--Se trata de probar que la fecha no puede ser NULL
insert into consulta values (NULL, 'wkidston0@reddit.com', 'ipsum');

--Se trata de probar que la fecha debe ser ingresada como tipo fecha y no varchar
insert into temporal values ('incremental','2006-01-21', 'https://macromedia.com/fermentum/justo/nec/condimentum.xml', 'audio','wkidston0@reddit.com', 3.55, 'chino');





--Se trata de probar que el contenido de bloqueado debe ser 1 o 0 pero permite ingresar 4
insert into perfil values ('mdaventry1@php.net', 'Katha Corteney', 4);


--Se trata de probar que en el contenido de email solo puede existir contenido que tenga un @ y un "."
-- pero permite ingresar lo que sea
insert into perfil values ('mdaventry1@php.net', 'Katha Corteney', 1);


--Se trata de probar que el contenido de tipo solo debe permitir ingresar cierto tipo de oracion
--pero permite ingresar cualquiera
insert into opinion values (1, TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'me ASFSDAFASD', 'Ut tellus.', 'vivamus', 'wkidston0@reddit.com', 'Devolved');


--Se trata de probar que en el contenido de email solo puede existir contenido que tenga un @ y un "."
-- pero permite ingresar lo que sea
insert into perfil values ('wkidston0redditcom', 'Chet Louisot', 1);


--Se trata de probar que en el contenido de nivel solo puede tener la estructura NIVEL: ##
--Pero permite ingresar cualquier cosa
insert into Trata  values ('ASDF', 76, 'Customizable', 'HURC');
