CREATE OR REPLACE PACKAGE BODY PC_OPINIONES IS 

  PROCEDURE AD_OPINION (xtipo IN VARCHAR, xjustificacion IN VARCHAR, xdetalle IN VARCHAR, xperfilc IN VARCHAR, xcontenidoid IN VARCHAR) IS
    BEGIN
      INSERT INTO OPINION (tipo ,justificacion ,detalle ,perfilc ,contenidoid) VALUES (xtipo ,xjustificacion ,xdetalle ,xperfilc ,xcontenidoid);
      COMMIT;
      EXCEPTION 
      WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20010, 'No se puede insertar investigacion.');
    END;
    PROCEDURE EL_INVESTIGACION (xaccidente  IN NUMBER) IS 
    BEGIN 
      DELETE FROM  INVESTIGACION  WHERE  accidente  = xaccidente;
	COMMIT; 
	EXCEPTION
      WHEN OTHERS THEN 
       ROLLBACK;
       RAISE_APPLICATION_ERROR(-20000,'Error al eliminar investigacion.');
   END;
    
    
END PC_OPINIONES;
