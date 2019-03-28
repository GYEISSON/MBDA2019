--ATRIBUTOS---------------------------------------------------------------------------------------------------------------------


ALTER TABLE VEHICULO ADD CONSTRAINT CK_VEHICULO_TCOLOR
CHECK ( UPPER(color) in ('ROJO','VERDE','AZUL','NEGRO','BLANCO','AMARILLO','GRIS'));
ALTER TABLE VEHICULO ADD CONSTRAINT CK_VEHICULO_TTIPO 
CHECK (tipo in ('auto','camioneta','camion','moto'));


ALTER TABLE VALORACION ADD CONSTRAINT CK_VALORACION_TESTADO
CHECK (estado in ('B','R','M'));
ALTER TABLE VALORACION ADD CONSTRAINT CK_VALORACION_TPRECIO
CHECK(PRECIO >=1000000.00 AND PRECIO<=100000000.00 );

ALTER TABLE RECLAMO ADD CONSTRAINT CK_RECLAMO_TDETALLE
CHECK( LENGTH(DETALLE)>50 );
ALTER TABLE RECLAMO ADD CONSTRAINT CK_RECLAMO_TPRECIO
CHECK(VALOR >=1000000.00 AND VALOR<=100000000.00 );

ALTER TABLE CONDUCTOR ADD CONSTRAINT CK_CONDUCTOR_TCorreo
CHECK ( email like ('%@%') and email not like ('@%') 
        and email not like ('%@') and email not like ('%@%@%'));
ALTER TABLE CONDUCTOR ADD CONSTRAINT CK_CONDUCTOR_TDIRECCION
CHECK(DIRECCION LIKE '%#%');
        
ALTER TABLE ADMINISTRADOR ADD CONSTRAINT CK_ADMINISTRADOR_TCorreo
CHECK ( email like ('%@%') and email not like ('@%') 
        and email not like ('%@') and email not like ('%@%@%'));

ALTER TABLE VENDEDOR ADD CONSTRAINT CK_VENDEDOR_TCorreo
CHECK ( email like ('%@%') and email not like ('@%') 
        and email not like ('%@') and email not like ('%@%@%'));

ALTER TABLE UBICACION ADD CONSTRAINT CK_UBICACION_TPAIS
CHECK (pais in ('US', 'CO', 'VE', 'PN', 'BR', 'MX'));
ALTER TABLE UBICACION ADD CONSTRAINT CK_UBICACION_TDIRECCION
CHECK(DIRECCION LIKE '%#%');


--PRIMARIAS --------------------------------------------------------------------------------------------------------------------

ALTER TABLE VALORACION ADD CONSTRAINT PK_VALORACION  PRIMARY KEY (ID);

ALTER TABLE VEHICULO ADD CONSTRAINT PK_VEHICULO  PRIMARY KEY (VIN);

ALTER TABLE MARCA ADD CONSTRAINT PK_MARCA  PRIMARY KEY (NOMBRE);

ALTER TABLE UBICACION ADD CONSTRAINT PK_UBICACION  PRIMARY KEY (ID);

ALTER TABLE RECLAMO ADD CONSTRAINT PK_RECLAMO  PRIMARY KEY (ID);

ALTER TABLE CONDUCTOR ADD CONSTRAINT PK_CONDUCTOR  PRIMARY KEY (ID);

ALTER TABLE POLIZA ADD CONSTRAINT PK_POLIZA  PRIMARY KEY (ID);

ALTER TABLE REGISTRO ADD CONSTRAINT PK_REGISTRO  PRIMARY KEY (RNUMERO);

ALTER TABLE PUNTOATENCION ADD CONSTRAINT PK_PUNTOATENCION  PRIMARY KEY (ID);

ALTER TABLE PROYECTO ADD CONSTRAINT PK_PROYECTO  PRIMARY KEY (ID);

ALTER TABLE ADMINISTRADOR ADD CONSTRAINT PK_ADMINISTRADOR  PRIMARY KEY (ID);

ALTER TABLE VENDEDOR ADD CONSTRAINT PK_VENDEDOR  PRIMARY KEY (ID);

ALTER TABLE COBERTURA ADD CONSTRAINT PK_COVERTURA  PRIMARY KEY (ID);

--UNICAS------------------------------------------------------------------------------------------------------------------------

ALTER TABLE CONDUCTOR ADD CONSTRAINT UK_CONDUCTOR UNIQUE (EMAIL);

ALTER TABLE ADMINISTRADOR ADD CONSTRAINT UK_ADMINISTRADOR UNIQUE(EMAIL);

ALTER TABLE VENDEDOR ADD CONSTRAINT UK_VENDEDORES UNIQUE(EMAIL);

--FORANEAS ---------------------------------------------------------------------------------------------------------------------

ALTER TABLE VALORACION ADD CONSTRAINT FK_CONSULTA_VALORACION FOREIGN KEY (VEHICULO) 
REFERENCES VEHICULO(VIN);

ALTER TABLE VEHICULO ADD CONSTRAINT FK_CONSULTA_VEHICULOM FOREIGN KEY (MARCA) 
REFERENCES MARCA(NOMBRE);
ALTER TABLE VEHICULO ADD CONSTRAINT FK_CONSULTA_VEHICULOC FOREIGN KEY (CONDUCTOR) 
REFERENCES CONDUCTOR(ID);

ALTER TABLE RECLAMO ADD CONSTRAINT FK_CONSULTA_RECLAMO FOREIGN KEY (UBICACION) 
REFERENCES UBICACION(ID);
ALTER TABLE RECLAMO ADD CONSTRAINT FK_CONSULTA_RECLAMOV FOREIGN KEY (VEHICULO) 
REFERENCES VEHICULO(VIN);
ALTER TABLE RECLAMO ADD CONSTRAINT FK_CONSULTA_RECLAMOR FOREIGN KEY (REGISTRO) 
REFERENCES REGISTRO(RNUMERO);
ALTER TABLE RECLAMO ADD CONSTRAINT FK_CONSULTA_RECLAMOC FOREIGN KEY (CONDUCTOR) 
REFERENCES CONDUCTOR(ID);
ALTER TABLE RECLAMO ADD CONSTRAINT FK_CONSULTA_RECLAMOP FOREIGN KEY (POLIZA) 
REFERENCES POLIZA(ID);
ALTER TABLE RECLAMO ADD CONSTRAINT FK_CONSULTA_RECLAMOE FOREIGN KEY (VENDEDOR) 
REFERENCES VENDEDOR(ID);

ALTER TABLE CONDUCTOR ADD CONSTRAINT FK_REGISTRO_CONDUCTOR FOREIGN KEY (REGISTRO)
REFERENCES REGISTRO(RNUMERO);

ALTER TABLE POLIZA ADD CONSTRAINT FK_REGISTRO_POLIZAN FOREIGN KEY (REGISTRO)
REFERENCES REGISTRO(RNUMERO);
ALTER TABLE POLIZA ADD CONSTRAINT FK_COBERTUR_POLIZAC FOREIGN KEY (COBERTURA)
REFERENCES COBERTURA(ID);

ALTER TABLE PUNTOATENCION ADD CONSTRAINT FK_UBICACION_PATENCION FOREIGN KEY (UBICACION)
REFERENCES UBICACION(ID); 

ALTER TABLE PROYECTO ADD CONSTRAINT FK_POLIZA_PROYECTO FOREIGN KEY (POLIZA)
REFERENCES POLIZA(ID);


