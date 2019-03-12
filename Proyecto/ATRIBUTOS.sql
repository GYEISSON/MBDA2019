ALTER TABLE VEHICULO ADD CONSTRAINT CK_VEHICULO_TCOLOR
CHECK (color in ('ROJO','VERDE','AZUL','NEGRO','BLANCO','AMARILLO','GRIS'));

ALTER TABLE VEHICULO ADD CONSTRAINT CK_VEHICULO_TTIPO 
CHECK (tipo in ('auto','camioneta','camion','moto'));

ALTER TABLE VALORACION ADD CONSTRAINT CK_VALORACION_TESTADO
CHECK (estado in ('B','R','M'));

ALTER TABLE CONDUCTOR ADD CONSTRAINT CK_CONDUCTOR_TCorreo
CHECK ( email like ('%@%') and email not like ('@%') 
        and email not like ('%@') and email not like ('%@%@%'));
        
ALTER TABLE ADMINISTRADOR ADD CONSTRAINT CK_ADMINISTRADOR_TCorreo
CHECK ( email like ('%@%') and email not like ('@%') 
        and email not like ('%@') and email not like ('%@%@%'));

ALTER TABLE VENDEDOR ADD CONSTRAINT CK_VENDEDOR_TCorreo
CHECK ( email like ('%@%') and email not like ('@%') 
        and email not like ('%@') and email not like ('%@%@%'));

ALTER TABLE VALORACION ADD CONSTRAINT CK_VALORACION_TESTADO
CHECK (nivel in ('US', 'CO', 'VE', 'PN', 'BR', 'MX'));