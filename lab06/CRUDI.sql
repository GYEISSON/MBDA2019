CREATE OR REPLACE PACKAGE BODY PC_OPINIONES IS 
  
  PROCEDURE AD_OPINION (xtipo IN VARCHAR, xjustificacion IN VARCHAR, xdetalle IN VARCHAR, xperfilc IN VARCHAR, xcontenidoid IN VARCHAR) IS
    BEGIN
      INSERT INTO OPINION(tipo ,justificacion ,detalle ,perfilc ,contenidoid) VALUES (xtipo ,xjustificacion ,xdetalle ,xperfilc ,xcontenidoid);
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No se puede insertar opinion.');
    END;

  PROCEDURE MOD_OPINION (XNUMERO IN NUMBER, XDETALLE IN XMLTYPE) IS
  BEGIN
    UPDATE OPINION SET DETALLE = XDETALLE WHERE NUMERO=XNUMERO; 
    COMMIT;
    EXCEPTION
    WHEN OTHERS THEN 
      ROLLBACK;
      RAISE_APPLICATION_ERROR(-20019,'No se puede actualizar la opinion');
  END;
  PROCEDURE EL_OPINION (xnumero IN NUMBER) IS 
  BEGIN
    DELETE  FROM OPINION WHERE  numero  = xnumero;
    COMMIT; 
    EXCEPTION
        WHEN OTHERS THEN 
            ROLLBACK;  
        RAISE_APPLICATION_ERROR(-20000,'Error al eliminar opinion.');
   END;
END PC_OPINIONES;
/



CREATE OR REPLACE PACKAGE BODY PC_CONTENIDOS IS 

  PROCEDURE AD_CONTENIDO (xnombre IN VARCHAR, xurl IN VARCHAR, xtipo IN VARCHAR, xperfil IN VARCHAR, xduracion IN NUMBER, xidioma IN VARCHAR) IS
    BEGIN
      INSERT INTO TEMPORAL (nombre ,url ,tipo ,perfil ,duracion,idioma) VALUES (xnombre ,xurl ,xtipo  ,xperfil,xduracion,xidioma);
      COMMIT;
      EXCEPTION   
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No se puede insertar contenido.');
    END;
    
    PROCEDURE MOD_ETIQUETA_CONTENIDO(xcontenido IN VARCHAR,xnombre IN VARCHAR) IS
    BEGIN
      UPDATE ETIQUETA SET NOMBRE = XNOMBRE WHERE temporal = XCONTENIDO;
      COMMIT;
      EXCEPTION
      WHEN OTHERS THEN 
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20016,'NO SE PUDO ACTUALIZAR EL CONTENIDO');  
    END;

    PROCEDURE DEL_CONTENIDO(xnombre IN VARCHAR) IS
    BEGIN
      DELETE FROM TEMPORAL WHERE NOMBRE =  XNOMBRE;
      COMMIT;
      EXCEPTION
      WHEN OTHERS THEN 
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-2017,'NO SE PUDO ELIMINAR EL CONTENIDO');
    END;   
END PC_CONTENIDOS;
/