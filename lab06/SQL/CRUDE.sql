CREATE OR REPLACE PACKAGE PC_OPINIONES IS 
	PROCEDURE AD_OPINION (xtipo IN VARCHAR, xjustificacion IN VARCHAR, xdetalle IN VARCHAR, xperfilc IN VARCHAR, xcontenidoid IN VARCHAR);
    PROCEDURE MOD_OPINION (XNUMERO IN NUMBER, XDETALLE IN XMLTYPE);
    PROCEDURE EL_OPINION (xnumero IN NUMBER);
    FUNCTION CO_VIDEOS_OPINIONES RETURN SYS_REFCURSOR;
            
END PC_OPINIONES;
/

CREATE OR REPLACE PACKAGE PC_CONTENIDOS IS
	PROCEDURE AD_CONTENIDO (xnombre IN VARCHAR, xurl IN VARCHAR, xtipo IN VARCHAR, xperfil IN VARCHAR, xduracion IN NUMBER, xidioma IN VARCHAR);
	PROCEDURE MOD_ETIQUETA_CONTENIDO(xcontenido IN VARCHAR,xnombre IN VARCHAR);
	PROCEDURE DEL_CONTENIDO(xnombre IN VARCHAR);
    FUNCTION CO_POPULARES RETURN SYS_REFCURSOR;
    FUNCTION CO_SINFILTRO RETURN SYS_REFCURSOR;
    FUNCTION CO_CONTENIDO_TEMA(NOMBRE_TEMA VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION CO_TEMA_NOCONTENIDO RETURN SYS_REFCURSOR;
END PC_CONTENIDOS;
/
