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
