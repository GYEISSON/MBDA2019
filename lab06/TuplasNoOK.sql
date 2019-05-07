--Se trata de probar que el ID no puede tener mas de 3 digitos, y la fecha debe ser ingresada como 
-- tipo fecha y no varchar
insert into opinion values (1000, '2020-01-21', 'me gusta', 'Morbi a ipsum.', 'interdum', 'jmccart9@mozilla.com', 'support');
--Acciones 

--Los contenidos no pueden valorarse mas de una vez por el mismo perfil.
ALTER TABLE OPINION ADD CONSTRAINT UK_OPINION_PERFIL_CONTENIDO UNIQUE (perfilc,contenidoid);
--Los adjetivos no se pueden repetir.
ALTER TABLE ADJETIVO ADD CONSTRAINT UK_ADJETIVO_NOMBRE UNIQUE (NOMBRE);