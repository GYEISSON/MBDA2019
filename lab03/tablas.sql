-- tablas POR CRUD'S
-- PERFILES 

CREATE TABLE Perfil(
    correo VARCHAR2(30) NOT NULL,
    nombre VARCHAR2(20) NOT NULL,
    bloqueado NUMBER(1) NOT NULL
);

-- OPINIONES

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
    opinion NUMBER(3) NOT NULL,
    nombre VARCHAR(20) NOT NULL
);

-- CONSULTAS  

CREATE TABLE Consulta(
    fecha DATE NOT NULL,
    perfil VARCHAR2(50) NOT NULL, 
    contenido VARCHAR(20) NOT NULL
);

--CONTENIDOS 

CREATE TABLE Temporal(
    nombre VARCHAR2(20) NOT NULL,
    fecha DATE NOT NULL,
    url VARCHAR2(50) NOT NULL,
    tipo VARCHAR2(1) NOT NULL,
    perfil VARCHAR(50) NOT NULL,
    duracion NUMBER(3) NOT NULL,
    idioma VARCHAR(1) NOT NULL
);
CREATE TABLE Etiqueta(
    temporal VARCHAR2(20) NOT NULL,
    nombre VARCHAR(10) NOT NULL
);

-- TEMAS 

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

--ASIGNATURAS 
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

--FILTROS 

CREATE TABLE Filtro(
     nombre VARCHAR2(10) NOT NULL,
     descripcion VARCHAR2(50) NOT NULL
     
);

CREATE TABLE ContenidoFiltro(
    contenido VARCHAR2(20) NOT NULL,
    filtro VARCHAR(10) NOT NULL
);
