--atributos 
ALTER TABLE Opinion ADD CONSTRAINT CK_OPINION_TCONSECUTIVO 
CHECK (numero >0 and numero <=99999);

ALTER TABLE Perfil ADD CONSTRAINT CK_PERFIL_TCorreo
CHECK ( correo like ('%@%') and correo not like ('@%') 
        and correo not like ('%@') and correo not like ('%@%@%'));

ALTER TABLE Opinion ADD CONSTRAINT CK_OPINION_TDETALLE
CHECK (detalle in ('momentos positivos','momentos negativos','momentos de error') );

ALTER TABLE Temporal ADD CONSTRAINT CK_TEMPORAL_TDURACION 
CHECK (duracion >0 and duracion <=180);

ALTER TABLE Temporal ADD CONSTRAINT CK_TEMPORAL_TIDIOMA 
CHECK (idioma in ('E','I','F'));

ALTER TABLE Trata ADD CONSTRAINT CK_TRATA_TNIVEL
CHECK (nivel in ('P','A','E'));

ALTER TABLE Opinion ADD CONSTRAINT CK_OPINION_TOPINION
CHECK (tipo in ('E','G','C','N'));



ALTER TABLE Etiqueta ADD CONSTRAINT CK_ETIQUETA_TPALABRA
CHECK ( substr(nombre,1,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,2,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,3,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,4,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,5,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,6,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,7,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,8,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,9,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,10,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
);

ALTER TABLE Palabra ADD CONSTRAINT CK_PALABRA_TPALABRA
CHECK ( substr(nombre,1,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,2,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,3,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,4,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,5,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,6,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,7,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,8,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,9,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,10,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
);

ALTER TABLE Adjetivo ADD CONSTRAINT CK_ADJETIVO_TPALABRA
CHECK ( substr(nombre,1,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,2,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,3,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,4,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,5,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,6,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,7,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,8,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,9,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
        and substr(nombre,10,1) in ('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z')
);

ALTER TABLE Trata ADD CONSTRAINT CK_TRATA_TPORCENTAJE
CHECK (porcentaje >0  and porcentaje <=100);

ALTER TABLE Asignatura ADD CONSTRAINT CK_ASIGNATURA_TSIGLA
CHECK ( length(sigla) =3  and substr(sigla,1,1) in 
('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9')
and substr(sigla,2,1) in 
('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9')
and substr(sigla,3,1) in 
('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9')
);

ALTER TABLE Temporal ADD CONSTRAINT CK_TEMPORAL_TTIPO
CHECK( tipo in ('F','V','A'));

ALTER TABLE Temporal ADD CONSTRAINT CK_TEMPORAL_TURL
CHECK (url like('%.%.%'));

--llaves primarias 

ALTER TABLE Perfil ADD CONSTRAINT PK_PERFIL  PRIMARY KEY (correo);
ALTER TABLE Temporal ADD CONSTRAINT PK_TEMPORAL PRIMARY KEY (nombre);
ALTER TABLE Opinion ADD CONSTRAINT PK_OPINION PRIMARY KEY (numero);
ALTER TABLE Tema ADD CONSTRAINT PK_TEMA PRIMARY KEY (nombre);
ALTER TABLE Asignatura  ADD CONSTRAINT PK_ASIGNATURA PRIMARY KEY (sigla);
ALTER TABLE Filtro ADD CONSTRAINT PK_FILTRO PRIMARY KEY (nombre);
ALTER TABLE ContenidoTema ADD CONSTRAINT PK_CONTENIDO_TEMA PRIMARY KEY(contenido,tema);

-- llaves unicas 

ALTER TABLE Temporal ADD CONSTRAINT UK_TEMPORAL UNIQUE  (url);
ALTER TABLE Opinion ADD CONSTRAINT UK_OPINION UNIQUE (justificacion);

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

ALTER TABLE ContenidoTema ADD CONSTRAINT FK_ContenidoTema_Contenido FOREIGN KEY (contenido)
REFERENCES Temporal(nombre);
ALTER TABLE ContenidoTema ADD CONSTRAINT FK_ContenidoTema_Tema FOREIGN KEY (tema)
REFERENCES Tema(nombre);



