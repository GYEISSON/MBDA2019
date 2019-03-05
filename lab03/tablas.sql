-- tablas 

CREATE TABLE Perfil(
    correo VARCHAR2(50) NOT NULL,
    nombre VARCHAR2(20) NOT NULL,
    bloqueado NUMBER(1) NOT NULL
);

CREATE TABLE Opinion(
    numero NUMBER(16) NOT NULL,
    fecha DATE NOT NULL,
    tipo VARCHAR2(32) NOT NULL,
    justificacion VARCHAR2(20),
    detalle VARCHAR2(20),
    perfilc VARCHAR2(50),
    contenidoid VARCHAR2(20)
);

CREATE TABLE Adjetivo(
    opinion NUMBER(16) NOT NULL,
    nombre VARCHAR2(70) NOT NULL
);

CREATE TABLE Consulta(
    fecha DATE NOT NULL,
    perfil VARCHAR2(50) NOT NULL, 
    contenido VARCHAR2(70) NOT NULL
);


CREATE TABLE Temporal(
    nombre VARCHAR2(20) NOT NULL,
    fecha DATE NOT NULL,
    url VARCHAR2(300) NOT NULL,
    tipo VARCHAR2(20) NOT NULL,
    perfil VARCHAR(50) NOT NULL,
    duracion NUMBER(10) NOT NULL,
    idioma VARCHAR(20) NOT NULL
);

CREATE TABLE Etiqueta(
    temporal VARCHAR2(20) NOT NULL,
    nombre VARCHAR2(20) NOT NULL
);

CREATE TABLE Tema(
    nombre VARCHAR(50) NOT NULL,
    perfil VARCHAR(50) NOT NULL
);


CREATE TABLE Palabra(
    tema VARCHAR(50) NOT NULL,
    nombre VARCHAR2(20) NOT NULL
);

CREATE TABLE EsPrerrequisito(
    nombreTemaA VARCHAR(50) NOT NULL,
    nombreTemaB VARCHAR(50) NOT NULL
);

CREATE TABLE EsSubtema(
    nombreTemaA VARCHAR(50) NOT NULL,
    nombreTemaB VARCHAR(50) NOT NULL
);

CREATE TABLE Asignatura(
    sigla VARCHAR(5) NOT NULL,
    nombre VARCHAR(15) NOT NULL
);

CREATE TABLE Trata(
    nivel VARCHAR(20) NOT NULL,
    porcentaje NUMBER(5) NOT NULL,
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
