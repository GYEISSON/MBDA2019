--llaves primarias 
ALTER TABLE Perfil ADD CONSTRAINT PK_PERFIL  PRIMARY KEY (correo);
ALTER TABLE Temporal ADD CONSTRAINT PK_TEMPORAL PRIMARY KEY (nombre);
ALTER TABLE Opinion ADD CONSTRAINT PK_OPINION PRIMARY KEY (numero);
ALTER TABLE Tema ADD CONSTRAINT PK_TEMA PRIMARY KEY (nombre);
ALTER TABLE Asignatura  ADD CONSTRAINT PK_ASIGNATURA PRIMARY KEY (sigla);
ALTER TABLE Filtro ADD CONSTRAINT PK_FILTRO PRIMARY KEY (nombre);

--llaves foraneas 

ALTER TABLE Consulta ADD CONSTRAINT FK_CONSULTA_PERFIL FOREIGN KEY (perfil) 
REFERENCES Perfil(correo);
ALTER TABLE Consulta ADD CONSTRAINT FK_CONSULTA_TEMPORAL FOREIGN KEY (contenido)
REFERENCES Temporal(nombre);


ALTER TABLE Opinion  ADD CONSTRAINT FK_OPINION_PERFIL FOREIGN KEY (perfilc)
REFERENCES Perfil(correo);
ALTER TABLE Opinion  ADD CONSTRAINT FK_OPINION_TEMPORAL FOREIGN KEY (contenidoid)
REFERENCES Temporal(nombre);

ALTER TABLE Adjetivo ADD CONSTRAINT FK_ADJETIVO_OPINION FOREIGN KEY (opinion)
REFERENCES Opinion(numero);

ALTER TABLE Temporal ADD CONSTRAINT FK_TEMPORAL_PERFIL FOREIGN KEY (perfil)
REFERENCES Perfil(correo);

ALTER TABLE Etiqueta ADD CONSTRAINT FK_ETIQUETA_TEMPORAL FOREIGN KEY (temporal)
REFERENCES Temporal(nombre);

ALTER TABLE Tema ADD CONSTRAINT FK_TEMA_PERFIL FOREIGN KEY (perfil)
REFERENCES Perfil(correo);

ALTER TABLE Palabra ADD CONSTRAINT FK_PALABRA_TEMA FOREIGN KEY (tema)
REFERENCES Tema(nombre);

ALTER TABLE EsPrerrequisito ADD CONSTRAINT FK_ESPRERREQUISITOA_TEMA FOREIGN KEY (nombreTemaA)
REFERENCES Tema(nombre);
ALTER TABLE EsPrerrequisito ADD CONSTRAINT FK_ESPRERREQUISITOB_TEMA FOREIGN KEY (nombreTemaB)
REFERENCES Tema(nombre);

ALTER TABLE EsSubtema ADD CONSTRAINT  FK_ESSUBTEMAA_TEMA FOREIGN KEY (nombreTemaA)
REFERENCES Tema(nombre);
ALTER TABLE EsSubtema ADD CONSTRAINT  FK_ESSUBTEMAB_TEMA FOREIGN KEY (nombreTemaB)
REFERENCES Tema(nombre);

ALTER TABLE Trata ADD CONSTRAINT FK_TRATA_TEMA FOREIGN KEY (tema) 
REFERENCES Tema(nombre);
ALTER TABLE Trata ADD CONSTRAINT FK_TRATA_ASIGNATURA FOREIGN KEY (asignatura)
REFERENCES Asignatura(sigla);

ALTER TABLE ContenidoFiltro ADD CONSTRAINT FK_CONTENIDOFILTRO_TEMPORAL FOREIGN KEY (contenido)
REFERENCES Temporal(nombre);
ALTER TABLE ContenidoFiltro  ADD CONSTRAINT FK_CONTENIDOFILTRO_FILTRO FOREIGN KEY (filtro)
REFERENCES Filtro(nombre);

-- llaves unicas 
ALTER TABLE Temporal ADD CONSTRAINT UK_TEMPORAL UNIQUE  (url);
ALTER TABLE Opinion ADD CONSTRAINT UK_OPINION UNIQUE (justificacion);

