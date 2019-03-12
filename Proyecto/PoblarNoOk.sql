-- Poblar no OK
--Restricciones de atributos
-- no se permite ingresar un valor de longitud mayor al especificado en el atributo al momento de crear la tabla 
insert into vehiculo values ('3C3CFFBR2DT947323', TO_DATE('2018-12-15', 'YYYY-MM-DD'),'Regal','Teal','Male','Ford',2);
--restriccion de primaria(unica)
insert into vehiculo values ('3C3CFFBR2DT9473', TO_DATE('2018-12-15', 'YYYY-MM-DD'),'Regal','NEGRO','auto','Ford',2);
insert into vehiculo values ('3C3CFFBR2DT9473', TO_DATE('2018-12-15', 'YYYY-MM-DD'),'Regal','NEGRO','auto','Ford',2);
--Restriccion de foranea con la tabla conductor
insert into vehiculo values ('ZFBCFADH7FZ9837',TO_DATE('2018-07-30', 'YYYY-MM-DD'),'Relay','BLANCO','auto','Saturn',25);
--Restriccion de atributo, TCOLOR
insert into vehiculo values ('3VW1K7AJ0BM4974',TO_DATE('2018-10-01', 'YYYY-MM-DD'),'Caravan','Teal','auto','Dodge',3); 
--restriccion de atributo, TTIpo
insert into vehiculo values ('JM3TB2BA4F05430',TO_DATE('2018-07-17', 'YYYY-MM-DD'),'E-Series','VERDE','Male','Ford',4); 
--restriccion de atributo por formato de fecha
insert into vehiculo values ('1G4GJ5G35CF2081',TO_DATE('2018-06-190', 'YYYY-MM-DD'),'Celica','ROJO','camioneta','Toyota',5); 
--restriccion de atributos, primarias y cantidad
insert into UBICACION (LONGITUD, LATITUD, CIUDAD, PAIS, DIRECCION) values (-9.1792392, 38.79232323246533, 'Odivelas', 'me', '5 Red Cloud Place');
--restriccion de atributos
insert into UBICACION (LONGITUD, LATITUD, CIUDAD, PAIS, DIRECCION) values (47.989791, 42.890735, 'Novokayakent', 'emiratos arabes unidos', '5 La Follette Street');
