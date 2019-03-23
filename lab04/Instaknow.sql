-- tablas POR CRUD'S
-- PERFILES 

CREATE TABLE Perfil(
    correo VARCHAR2(30) NOT NULL,
    nombre VARCHAR2(20) NOT NULL,
    bloqueado NUMBER(1) NOT NULL
);

CREATE TABLE Opinion(
    numero NUMBER(5) NOT NULL,
    fecha DATE NOT NULL,
    tipo VARCHAR2(1) NOT NULL,
    justificacion VARCHAR2(20),
    detalle VARCHAR2(20),
    perfilc VARCHAR2(50) NOT NULL,
    contenidoid VARCHAR2(20) NOT NULL
);

CREATE TABLE Adjetivo(
    opinion NUMBER(5) NOT NULL,
    nombre VARCHAR(20) NOT NULL
);

CREATE TABLE Tema(
    nombre VARCHAR(50) NOT NULL,
    perfil VARCHAR(50) NOT NULL
);

CREATE TABLE Palabra(
    tema VARCHAR(50) NOT NULL,
    nombre VARCHAR2(10) NOT NULL
);

CREATE TABLE EsPrerrequisito(
    nombreTemaA VARCHAR(50) NOT NULL,
    nombreTemaB VARCHAR(50) NOT NULL
);

CREATE TABLE EsSubtema(
    nombreTemaA VARCHAR(50) NOT NULL,
    nombreTemaB VARCHAR(50) NOT NULL
);

CREATE TABLE Temporal(
    nombre VARCHAR2(20) NOT NULL,
    fecha DATE NOT NULL,
    url VARCHAR2(50) NOT NULL,
    tipo VARCHAR2(1) NOT NULL,
    perfil VARCHAR(30) NOT NULL,
    duracion NUMBER(3) NOT NULL,
    idioma VARCHAR(1) NOT NULL
);

CREATE TABLE Etiqueta(
    temporal VARCHAR2(20) NOT NULL,
    nombre VARCHAR(10) NOT NULL
);

CREATE TABLE ContenidoTema(
     contenido VARCHAR2(20) NOT NULL,
     tema VARCHAR2(50) NOT NULL
);

CREATE TABLE Consulta(
    fecha DATE NOT NULL,
    perfil VARCHAR2(50) NOT NULL, 
    contenido VARCHAR(20) NOT NULL
);

CREATE TABLE Asignatura(
    sigla VARCHAR2(3) NOT NULL,
    nombre VARCHAR2(15) NOT NULL
);

CREATE TABLE Trata(
    nivel VARCHAR(1) NOT NULL,
    porcentaje NUMBER(3) NOT NULL,
    tema VARCHAR2(50) NOT NULL,
    asignatura VARCHAR(6) NOT NULL
);

CREATE TABLE Filtro(
     nombre VARCHAR2(10) NOT NULL,
     descripcion VARCHAR2(50) NOT NULL  
);

CREATE TABLE ContenidoFiltro(
    contenido VARCHAR2(20) NOT NULL,
    filtro VARCHAR(10) NOT NULL
);





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
ALTER TABLE Consulta ADD CONSTRAINT PK_PERFIL_CONTENIDO PRIMARY KEY(perfil,contenido);
ALTER TABLE Trata ADD CONSTRAINT PK_TEMA_ASIGNATURA PRIMARY KEY (tema,asignatura);
ALTER TABLE ADJETIVO ADD CONSTRAINT PK_ADJETIVO_OPINION_NOMBRE PRIMARY KEY (OPINION,NOMBRE);
ALTER TABLE PALABRA ADD CONSTRAINT PK_PALABRA_TEMA_NOMBRE PRIMARY KEY (TEMA,NOMBRE);
ALTER TABLE ESPRERREQUISITO ADD CONSTRAINT PK_ADJETIVO_NTEMAA_NTEMAB PRIMARY KEY (NOMBRETEMAA,NOMBRETEMAB);
ALTER TABLE ESSUBTEMA ADD CONSTRAINT PK_ADJETIVO_STEMAA_STEMAB PRIMARY KEY (NOMBRETEMAA,NOMBRETEMAB);
ALTER TABLE ETIQUETA ADD CONSTRAINT PK_ETIQUETA_TEMP_NOMB  PRIMARY KEY (TEMPORAL,NOMBRE);



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

--TRIGGERS REGISTRAR OPINION
/*
El n\FAmero y la fecha se asigna autom\E1ticamente
No se pueden dar opiniones sobre los contenidos bloqueados.
*/

CREATE OR REPLACE TRIGGER AUTO_OPINION_BLOQUEADO
    BEFORE INSERT ON OPINION
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
    FECHA DATE;
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM OPINION;
    FECHA:= TO_DATE(SYSDATE, 'YYYY-MM-DD');
    :new.NUMERO:=NUM;
    :new.FECHA:=FECHA;
    num :=0;
    SELECT BLOQUEADO INTO NUM FROM TEMPORAL JOIN PERFIL ON (PERFIL.CORREO = TEMPORAL.PERFIL) WHERE TEMPORAL.NOMBRE = :NEW.CONTENIDOID;
    IF (NUM) = 1 THEN RAISE_APPLICATION_ERROR(-20005, 'PERFIL BLOQUEADO');
    END IF;  
END;
/


--Los perfiles que dan la opini\F3n deben haber visto el contenido en los ocho d\EDas anteriores.

CREATE OR REPLACE TRIGGER FECHA_OPINION 

    BEFORE INSERT ON OPINION
    FOR EACH ROW
DECLARE
    PERFIL_PUBLICO_CONTENIDO VARCHAR2(30); 
    PERFIL_OPINA VARCHAR2(30);
    FECHA_DE_CONSULTA DATE;
BEGIN
    PERFIL_OPINA := :NEW.PERFILC;
    SELECT FECHA INTO FECHA_DE_CONSULTA FROM Consulta WHERE PERFIL = PERFIL_OPINA;
    SELECT PERFIL INTO PERFIL_PUBLICO_CONTENIDO FROM TEMPORAL WHERE nombre =  :new.contenidoid;

    IF( (SYSDATE-8) > FECHA_DE_CONSULTA ) THEN 
        raise_application_error(-20015,'El perfil no ha visto el contenido en los 8 dias anteriores.' );
    END IF;

    IF( PERFIL_PUBLICO_CONTENIDO = PERFIL_OPINA ) THEN 
        RAISE_APPLICATION_ERROR(-20098,'El perfil que publico el contenido no puede dar opinion acerca del contenido.');
    END IF;

END FECHA_OPINION_PERFIL;
/
--prueba de trigger anterior

INSERT INTO PERFIL VALUES ('wkidston0@reddit.com', 'Chet Louisot', 0);  
INSERT INTO PERFIL VALUES ('mdaventry1@php.net', 'Katha Corteney', 0);
INSERT INTO TEMPORAL VALUES ('incremental',TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'https://macromedia.com.xml', 'A','wkidston0@reddit.com', 3, 'I');
insert into consulta values(TO_DATE('2019-03-15', 'YYYY-MM-DD'),'mdaventry1@php.net','incremental');
INSERT INTO OPINION(tipo,justificacion,detalle,perfilc,contenidoid) VALUES('E', 'Ut tellus.', 'momentos de error', 'mdaventry1@php.net', 'incremental');



/*
Se deben adicionar automáticamente los siguientes adjetivos
dependiendo del tipo de  opinión: encantador para me encanta,
interesante para me gusta,
confuso para me confunde e
inapropiado para me enoja.

*/
CREATE OR REPLACE TRIGGER AUTO_ADJETIVO
    AFTER INSERT ON OPINION
    FOR EACH ROW
DECLARE 
BEGIN
    INSERT INTO ADJETIVO VALUES(:NEW.NUMERO,
    CASE :NEW.TIPO 
        WHEN 'E' THEN 'Encantador'
        WHEN 'G' THEN 'Interesante'
        WHEN 'E'  THEN 'Confuso'
        ELSE 'inapropiado'
    END);
END AUTO_ADJETIVO;
/

--Los contenidos no pueden valorarse más de una vez por el mismo perfil.
ALTER TABLE OPINION ADD CONSTRAINT UK_OPINION_PERFIL_CONTENIDO UNIQUE (perfilc,contenidoid);

--Los adjetivos no se pueden repetir.
ALTER TABLE ADJETIVO ADD CONSTRAINT UK_ADJETIVO_NOMBRE UNIQUE (NOMBRE);

/*
Modificacion
El unico dato a modificar es el detalle, si no se ingreso al momento de adicion.
*/
CREATE OR REPLACE TRIGGER UPDATE_DETALLE_OPINION
    BEFORE UPDATE ON OPINION
    FOR EACH ROW
DECLARE 
    OLD_DETALLE VARCHAR2(20);
BEGIN

    OLD_DETALLE := :OLD.detalle;
    IF (OLD_DETALLE IS NOT NULL) THEN
        RAISE_APPLICATION_ERROR(-20095,'El detalle no se puede actualizar');
    END IF;
    IF ((:NEW.NUMERO<>:OLD.NUMERO) OR (:NEW.FECHA<>:OLD.FECHA) OR
        (:NEW.TIPO<>:OLD.TIPO) OR (:NEW.justificacion<>:OLD.justificacion) OR
        (:NEW.PERFILC<>:OLD.PERFILC) OR (:NEW.CONTENIDOID<>:OLD.CONTENIDOID) ) THEN
        RAISE_APPLICATION_ERROR(-20093,'Solo es posible modificar el detalle cuando es nulo.'); 
    END IF;
END UPDATE_DETALLE_OPINION;
/

/*
Eliminacion
Solo es posible eliminar la opinion si es la ultima registrada.
*/
CREATE OR REPLACE TRIGGER DELETE_OPINION
    BEFORE DELETE ON OPINION
    FOR EACH ROW 
DECLARE 
    NUMERO_REGISTRO NUMBER;
    TOTAL_REGISTRO NUMBER;
BEGIN 
    TOTAL_REGISTRO :=0;
    NUMERO_REGISTRO :=  :OLD.NUMERO;
    SELECT COUNT(*) INTO TOTAL_REGISTRO FROM OPINION;
    IF(NUMERO_REGISTRO <> TOTAL_REGISTRO) THEN
        RAISE_APPLICATION_ERROR(-20089,'Solo es posible eliminar la ultima opinion');
    END IF; 
END DELETE_OPINION;
/


    
    
-- Triggers Mantener contenido

--Se deben adicionar unicamente los TIPOS propuestos, la url deben contar con  por lo menos 1 '.', la fecha del contenido puede tener hasta dos dias de diferencia con la actual

CREATE OR REPLACE TRIGGER FECHA_NOMBRE_TIPO_TEMPORAL
    BEFORE INSERT ON TEMPORAL
    FOR EACH ROW
DECLARE 
    FECHA DATE;
BEGIN
    FECHA:= TO_DATE(SYSDATE, 'YYYY-MM-DD');
    IF ((FECHA-2) > :NEW.FECHA) THEN RAISE_APPLICATION_ERROR(-20006, 'Fecha muy vieja');
    END IF;
    IF  (NOT(:NEW.TIPO IN ('F', 'V', 'A'))) THEN RAISE_APPLICATION_ERROR(-20004, 'ERROR DE TIPO');
    END IF;
    IF (NOT(:NEW.NOMBRE LIKE '%[^a-zA-Z]%')) THEN  RAISE_APPLICATION_ERROR(-20009, 'FORMATO NOMBRE INCORRECTO');
    END IF;
    
END;
/



--Mantener tema

CREATE OR REPLACE TRIGGER AUTO_PALABRA_TEMA
    AFTER INSERT ON TEMA
    FOR EACH ROW
DECLARE 
BEGIN
    INSERT INTO PALABRA VALUES(:NEW.NOMBRE,:NEW.PALABRA);
END AUTO_ADJETIVO;
/




--poblar sin triggers-----------------------------------------------------------------------------------------------------------

INSERT INTO PERFIL VALUES ('wkidston0@reddit.com', 'Chet Louisot', 1);
INSERT INTO PERFIL VALUES ('mdaventry1@php.net', 'Katha Corteney', 0);
INSERT INTO PERFIL VALUES ('cortas2@mtv.com', 'Marje Langdale', 0);
INSERT INTO PERFIL VALUES ('ayashunin3@mediafire.com','Ariella Earwaker', 0);
INSERT INTO PERFIL VALUES ('ajarmain4@yolasite.com', 'Flori Munning', 0);
INSERT INTO PERFIL VALUES ('mabreheart5@techcrunch.com', 'Merline McDonell', 0);
INSERT INTO PERFIL VALUES ('sdagon6@youtu.be', 'Christine Rand', 0);
INSERT INTO PERFIL VALUES ('lgoater7@ucoz.com', 'Daffie Hardstaff', 1);
INSERT INTO PERFIL VALUES ('zbatteson8@patch.com', 'Stern Bixley', 0);
INSERT INTO PERFIL VALUES ('jmccart9@mozilla.com', 'Heinrick Corringham', 1);


INSERT INTO TEMA VALUES ('customizable', 'wkidston0@reddit.com');
INSERT INTO TEMA VALUES ('solution', 'mdaventry1@php.net');
INSERT INTO TEMA VALUES ('multimedia', 'cortas2@mtv.com');
INSERT INTO TEMA VALUES ('directional', 'ayashunin3@mediafire.com');
INSERT INTO TEMA VALUES ('Robust', 'ajarmain4@yolasite.com');
INSERT INTO TEMA VALUES ('hybrid', 'mabreheart5@techcrunch.com');
INSERT INTO TEMA VALUES ('motivating', 'sdagon6@youtu.be');
INSERT INTO TEMA VALUES ('Devolved', 'lgoater7@ucoz.com');
INSERT INTO TEMA VALUES ('Full', 'zbatteson8@patch.com');
INSERT INTO TEMA VALUES ('software', 'jmccart9@mozilla.com');


INSERT INTO PALABRA VALUES ('customizable', 'inmagna');
INSERT INTO PALABRA VALUES ('solution', 'namules');
INSERT INTO PALABRA VALUES ('multimedia', 'amettuis');
INSERT INTO PALABRA VALUES ('directional', 'fusce');
INSERT INTO PALABRA VALUES ('Robust', 'a');
INSERT INTO PALABRA VALUES ('hybrid', 'dapibus');
INSERT INTO PALABRA VALUES ('motivating', 'nequeduis');
INSERT INTO PALABRA VALUES ('Devolved', 'habitas');
INSERT INTO PALABRA VALUES ('Full', 'erat');
INSERT INTO PALABRA VALUES ('software', 'suscipit');



INSERT INTO ESPRERREQUISITO VALUES ('solution', 'customizable');
INSERT INTO ESPRERREQUISITO VALUES ('customizable', 'solution');
INSERT INTO ESPRERREQUISITO VALUES ('directional', 'multimedia');
INSERT INTO ESPRERREQUISITO VALUES ('multimedia', 'directional');
INSERT INTO ESPRERREQUISITO VALUES ('hybrid', 'Robust');
INSERT INTO ESPRERREQUISITO VALUES ('Devolved', 'motivating');
INSERT INTO ESPRERREQUISITO VALUES ('motivating', 'Devolved');
INSERT INTO ESPRERREQUISITO VALUES ('software', 'Full');
INSERT INTO ESPRERREQUISITO VALUES ('Full', 'software');


INSERT INTO ESSUBTEMA VALUES ('solution', 'customizable');
INSERT INTO ESSUBTEMA VALUES ('customizable', 'solution');
INSERT INTO ESSUBTEMA VALUES ('directional', 'multimedia');
INSERT INTO ESSUBTEMA VALUES ('multimedia', 'directional');
INSERT INTO ESSUBTEMA VALUES ('hybrid', 'Robust');
INSERT INTO ESSUBTEMA VALUES ('Devolved', 'motivating');
INSERT INTO ESSUBTEMA VALUES ('motivating', 'Devolved');
INSERT INTO ESSUBTEMA VALUES ('software', 'Full');
INSERT INTO ESSUBTEMA VALUES ('Full', 'software');


INSERT INTO TEMPORAL VALUES ('incremental',TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'https://macromedia.com.xml', 'A','wkidston0@reddit.com', 3, 'I');
INSERT INTO TEMPORAL VALUES ('Secured', TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'https://cornell.edu/vestibulum.quam', 'V','mdaventry1@php.net', 46, 'F');
INSERT INTO TEMPORAL VALUES ('static', TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'http://bloglines.com.s', 'F','cortas2@mtv.com', 48, 'I');
INSERT INTO TEMPORAL VALUES ('collaboration', TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'https://intel.com.', 'V','ayashunin3@mediafire.com', '1.72', 'F');
INSERT INTO TEMPORAL VALUES ('Intuitive',TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'https://webs.com.auctor/gravida/', 'V','ajarmain4@yolasite.com', '2.45', 'E');
INSERT INTO TEMPORAL VALUES ('model', TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'https://yolasite.com/tellus/semper.xml', 'A','mabreheart5@techcrunch.com', '0.69', 'I');
INSERT INTO TEMPORAL VALUES ('alliance', TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'https://cnn.com/at.turpis/donec/posuere/', 'V','sdagon6@youtu.be', '0.68', 'I');
INSERT INTO TEMPORAL VALUES ('intangible', TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'https://1und1.de.', 'V','lgoater7@ucoz.com', '2.27', 'I');
INSERT INTO TEMPORAL VALUES ('real-time', TO_DATE('2002-01-21', 'YYYY-MM-DD'), 'https://tinyurl.com.i', 'A','zbatteson8@patch.com', '8.34', 'E');
INSERT INTO TEMPORAL VALUES ('application', TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'https://stanford.edu.morbi/', 'A','jmccart9@mozilla.com', '5.52', 'F');
INSERT INTO TEMPORAL VALUES ('NEWIA', TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'https://stan.edu.morbi/', 'A','jmccart9@mozilla.com', '5.52', 'F');
INSERT INTO TEMPORAL VALUES ('DSFGHJK', TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'https://stan.eduS.morbi/', 'A','jmccart9@mozilla.com', '5.52', 'F');

INSERT INTO ETIQUETA VALUES ('incremental', 'VersatileS');
INSERT INTO ETIQUETA VALUES ('Secured', 'motivating');
INSERT INTO ETIQUETA VALUES ('static', 'maximized');
INSERT INTO ETIQUETA VALUES ('collaboration', 'Multilayer');
INSERT INTO ETIQUETA VALUES ('Intuitive', 'workforce');
INSERT INTO ETIQUETA VALUES ('model', 'Custom');
INSERT INTO ETIQUETA VALUES ('alliance', 'national');
INSERT INTO ETIQUETA VALUES ('intangible', 'concept');
INSERT INTO ETIQUETA VALUES ('real-time', 'logistical');
INSERT INTO ETIQUETA VALUES ('application', 'human');

INSERT INTO CONTENIDOTEMA VALUES('incremental','customizable');
INSERT INTO CONTENIDOTEMA VALUES('Secured','Robust');
INSERT INTO CONTENIDOTEMA VALUES('static','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('collaboration','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('Intuitive','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('model','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('alliance','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('intangible','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('real-time','hybrid');
INSERT INTO CONTENIDOTEMA VALUES('application','hybrid');


INSERT INTO OPINION VALUES (1, TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'E', 'Ut tellus.', 'momentos de error', 'wkidston0@reddit.com', 'incremental');
INSERT INTO OPINION VALUES (2, TO_DATE('2019-03-17', 'YYYY-MM-DD'), 'G', 'Etiam justo.', 'momentos de error', 'mdaventry1@php.net', 'static');
INSERT INTO OPINION VALUES (3, TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'C', 'Nulla nisl.', 'momentos de error', 'cortas2@mtv.com', 'Secured');
INSERT INTO OPINION VALUES (4, TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'C', 'Sed ante.', 'momentos negativos', 'ayashunin3@mediafire.com', 'collaboration');
INSERT INTO OPINION VALUES (5, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Mauris enim.', 'momentos positivos', 'ajarmain4@yolasite.com', 'Intuitive');
INSERT INTO OPINION VALUES (6, TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'C', 'Morbi  justo.', 'momentos de error', 'mabreheart5@techcrunch.com', 'model');
INSERT INTO OPINION VALUES (7, TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'G', 'In platea.', 'momentos negativos', 'sdagon6@youtu.be', 'alliance');
INSERT INTO OPINION VALUES (8, TO_DATE('2002-01-21', 'YYYY-MM-DD'), 'E', 'In hac platea .', 'momentos de error', 'lgoater7@ucoz.com', 'intangible');
INSERT INTO OPINION VALUES (9, TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'G', 'Nulla neque.', 'momentos de error', 'zbatteson8@patch.com', 'real-time');
INSERT INTO OPINION VALUES (10, TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'G', 'Morbi a ipsum.', 'momentos positivos', 'jmccart9@mozilla.com', 'application');


INSERT INTO ADJETIVO VALUES (1, 'Switch');
INSERT INTO ADJETIVO VALUES (2, 'Monitored');
INSERT INTO ADJETIVO VALUES (3, 'Selfenable');
INSERT INTO ADJETIVO VALUES (4, 'zero');
INSERT INTO ADJETIVO VALUES (5, 'benchmak');
INSERT INTO ADJETIVO VALUES (6, 'projection');
INSERT INTO ADJETIVO VALUES (7, 'leading');
INSERT INTO ADJETIVO VALUES (8, 'initiative');
INSERT INTO ADJETIVO VALUES (9, 'freshthink');
INSERT INTO ADJETIVO VALUES (10, 'bifurcate');



INSERT INTO CONSULTA VALUES (TO_DATE('2006-01-21', 'YYYY-MM-DD'), 'wkidston0@reddit.com', 'incremental');
INSERT INTO CONSULTA VALUES (TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'mdaventry1@php.net', 'Secured');
INSERT INTO CONSULTA VALUES (TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'cortas2@mtv.com', 'static');
INSERT INTO CONSULTA VALUES (TO_DATE('2015-01-21', 'YYYY-MM-DD'), 'ayashunin3@mediafire.com', 'collaboration');
INSERT INTO CONSULTA VALUES (TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'ajarmain4@yolasite.com', 'Intuitive');
INSERT INTO CONSULTA VALUES (TO_DATE('2010-01-21', 'YYYY-MM-DD'), 'mabreheart5@techcrunch.com', 'model');
INSERT INTO CONSULTA VALUES (TO_DATE('2003-01-21', 'YYYY-MM-DD'), 'sdagon6@youtu.be', 'alliance');
INSERT INTO CONSULTA VALUES (TO_DATE('2001-01-21', 'YYYY-MM-DD'), 'lgoater7@ucoz.com', 'intangible');
INSERT INTO CONSULTA VALUES (TO_DATE('2011-01-21', 'YYYY-MM-DD'), 'zbatteson8@patch.com', 'real-time');
INSERT INTO CONSULTA VALUES (TO_DATE('2020-01-21', 'YYYY-MM-DD'), 'jmccart9@mozilla.com', 'application');




INSERT INTO ASIGNATURA VALUES ('HUR', 'superstructure');
INSERT INTO ASIGNATURA VALUES ('EAE', 'responsive');
INSERT INTO ASIGNATURA VALUES ('TEC', 'responsive');
INSERT INTO ASIGNATURA VALUES ('LDO', 'Public-key');
INSERT INTO ASIGNATURA VALUES ('PTX', 'migration');
INSERT INTO ASIGNATURA VALUES ('NHL', 'Extended');
INSERT INTO ASIGNATURA VALUES ('FTG', 'Grass-roots');
INSERT INTO ASIGNATURA VALUES ('ECC', 'Assimilated');
INSERT INTO ASIGNATURA VALUES ('ACG', 'even-keeled');
INSERT INTO ASIGNATURA VALUES ('ITG', 'portal');



INSERT INTO TRATA  VALUES ('A', 76, 'customizable', 'HUR');
INSERT INTO TRATA  VALUES ('P', 8, 'solution', 'EAE');
INSERT INTO TRATA  VALUES ('A', 91, 'multimedia', 'TEC');
INSERT INTO TRATA  VALUES ('A', 65, 'directional', 'LDO');
INSERT INTO TRATA  VALUES ('A', 91, 'Robust', 'PTX');
INSERT INTO TRATA  VALUES ('P', 98, 'hybrid', 'NHL');
INSERT INTO TRATA  VALUES ('A', 11, 'motivating', 'FTG');
INSERT INTO TRATA  VALUES ('E', 2, 'Devolved', 'ECC');
INSERT INTO TRATA  VALUES ('E', 34, 'Full', 'ACG');
INSERT INTO TRATA  VALUES ('P', 71, 'software', 'ITG');


INSERT INTO FILTRO VALUES ('id', 'posuere metus vitae ipsum');
INSERT INTO FILTRO VALUES ('vestibulum', 'ultrices enim lorem ipsum');
INSERT INTO FILTRO VALUES ('lacus', 'placerat praesent blandit nam');
INSERT INTO FILTRO VALUES ('sit', 'ultricies eu nibh quisque id');
INSERT INTO FILTRO VALUES ('nec', 'semper rutrum nulla nunc purus');
INSERT INTO FILTRO VALUES ('in', 'nibh in quis justo');
INSERT INTO FILTRO VALUES ('consequat', 'in leo maecenas pulvinar');
INSERT INTO FILTRO VALUES ('tempus', 'nullam varius nulla facilisi cras');
INSERT INTO FILTRO VALUES ('turpis', 'in felis donec semper');
INSERT INTO FILTRO VALUES ('suspense', 'rutrum neque aenean');



INSERT INTO CONTENIDOFILTRO VALUES ('incremental', 'id');
INSERT INTO CONTENIDOFILTRO VALUES ('Secured', 'vestibulum');
INSERT INTO CONTENIDOFILTRO VALUES ('static', 'lacus');
INSERT INTO CONTENIDOFILTRO VALUES ('Intuitive', 'sit');
INSERT INTO CONTENIDOFILTRO VALUES ('model', 'nec');
INSERT INTO CONTENIDOFILTRO VALUES ('alliance', 'in');
INSERT INTO CONTENIDOFILTRO VALUES ('intangible', 'consequat');
INSERT INTO CONTENIDOFILTRO VALUES ('real-time', 'tempus');
INSERT INTO CONTENIDOFILTRO VALUES ('application', 'turpis');
INSERT INTO CONTENIDOFILTRO VALUES ('collaboration', 'suspense');



--eliminar atributos 
ALTER TABLE Opinion DROP CONSTRAINT CK_OPINION_TCONSECUTIVO;
ALTER TABLE Perfil DROP CONSTRAINT CK_PERFIL_TCorreo;
ALTER TABLE Opinion DROP CONSTRAINT CK_OPINION_TDETALLE;
ALTER TABLE Temporal DROP CONSTRAINT CK_TEMPORAL_TDURACION;
ALTER TABLE Temporal DROP CONSTRAINT CK_TEMPORAL_TIDIOMA;
ALTER TABLE Trata DROP CONSTRAINT CK_TRATA_TNIVEL;
ALTER TABLE Opinion DROP CONSTRAINT CK_OPINION_TOPINION;
ALTER TABLE Etiqueta DROP CONSTRAINT CK_ETIQUETA_TPALABRA;
ALTER TABLE Palabra DROP CONSTRAINT CK_PALABRA_TPALABRA;
ALTER TABLE Adjetivo DROP CONSTRAINT CK_ADJETIVO_TPALABRA;
ALTER TABLE Trata DROP CONSTRAINT CK_TRATA_TPORCENTAJE;
ALTER TABLE Asignatura DROP CONSTRAINT CK_ASIGNATURA_TSIGLA;
ALTER TABLE Temporal DROP CONSTRAINT CK_TEMPORAL_TTIPO;
ALTER TABLE Temporal DROP CONSTRAINT CK_TEMPORAL_TURL;

--eliminar restriciones declarativas--------------------------------------------------------------------------------------------
--eliminar unicas
ALTER TABLE Temporal DROP CONSTRAINT UK_TEMPORAL;
ALTER TABLE Opinion DROP CONSTRAINT UK_OPINION;

--eliminar foraneas 
ALTER TABLE Consulta DROP CONSTRAINT FK_CONSULTA_PERFIL;
ALTER TABLE Consulta DROP CONSTRAINT FK_CONSULTA_TEMPORAL;

ALTER TABLE Opinion  DROP CONSTRAINT FK_OPINION_PERFIL;
ALTER TABLE Opinion DROP CONSTRAINT FK_OPINION_TEMPORAL;

ALTER TABLE Adjetivo DROP CONSTRAINT FK_ADJETIVO_OPINION;

ALTER TABLE Temporal DROP CONSTRAINT FK_TEMPORAL_PERFIL;

ALTER TABLE Etiqueta DROP CONSTRAINT FK_ETIQUETA_TEMPORAL;

ALTER TABLE Tema DROP CONSTRAINT FK_TEMA_PERFIL;

ALTER TABLE Palabra DROP CONSTRAINT FK_PALABRA_TEMA;

ALTER TABLE EsPrerrequisito DROP CONSTRAINT FK_ESPRERREQUISITOA_TEMA;
ALTER TABLE EsPrerrequisito DROP CONSTRAINT FK_ESPRERREQUISITOB_TEMA;

ALTER TABLE EsSubtema DROP CONSTRAINT  FK_ESSUBTEMAA_TEMA;
ALTER TABLE EsSubtema DROP CONSTRAINT  FK_ESSUBTEMAB_TEMA;

ALTER TABLE Trata DROP CONSTRAINT FK_TRATA_TEMA;
ALTER TABLE Trata DROP CONSTRAINT FK_TRATA_ASIGNATURA;

ALTER TABLE ContenidoFiltro DROP CONSTRAINT FK_CONTENIDOFILTRO_TEMPORAL;
ALTER TABLE ContenidoFiltro  DROP CONSTRAINT FK_CONTENIDOFILTRO_FILTRO;

ALTER TABLE ContenidoTema DROP CONSTRAINT FK_CONTENIDOTEMA_CONTENIDO;
ALTER TABLE ContenidoTema DROP CONSTRAINT FK_CONTENIDOTEMA_TEMA;


--eliminar primarias
ALTER TABLE Perfil DROP CONSTRAINT PK_PERFIL;
ALTER TABLE Temporal DROP CONSTRAINT PK_TEMPORAL;
ALTER TABLE Opinion DROP CONSTRAINT PK_OPINION;
ALTER TABLE Tema DROP CONSTRAINT PK_TEMA;
ALTER TABLE Asignatura  DROP CONSTRAINT PK_ASIGNATURA;
ALTER TABLE Filtro DROP CONSTRAINT PK_FILTRO;
ALTER TABLE ContenidoTema DROP CONSTRAINT PK_CONTENIDO_TEMA; 
ALTER TABLE Consulta DROP CONSTRAINT PK_PERFIL_CONTENIDO;

--eliminar tablas


DROP  TABLE Adjetivo;
DROP  TABLE Consulta;
DROP  TABLE Temporal;
DROP  TABLE Etiqueta;
DROP  TABLE Tema;
DROP  TABLE Palabra;
DROP  TABLE EsPrerrequisito;
DROP  TABLE EsSubtema;
DROP  TABLE Asignatura;
DROP  TABLE Trata;
DROP  TABLE Filtro;
DROP  TABLE ContenidoFiltro;
DROP TABLE ContenidoTema;
DROP  TABLE Opinion;    
DROP  TABLE Perfil;    
    
    
    
    
