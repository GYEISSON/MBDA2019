CREATE OR REPLACE TRIGGER AUTO_VALORACION
    BEFORE INSERT ON VALORACION
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM VALORACION;
    :NEW.ID := NUM;
END;
/

CREATE OR REPLACE TRIGGER AUTO_UBICACION
    BEFORE INSERT ON UBICACION
    FOR EACH ROW
DECLARE 
    NUM NUMBER;    
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM UBICACION;
    :NEW.ID := NUM;
END;
/

CREATE OR REPLACE TRIGGER AUTO_RECLAMO
    BEFORE INSERT ON RECLAMO
    FOR EACH ROW
DECLARE 
    NUM NUMBER;   
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM RECLAMO;
    :NEW.ID := NUM;
END;
/

CREATE OR REPLACE TRIGGER AUTO_CONDUCTOR
    BEFORE INSERT ON CONDUCTOR
    FOR EACH ROW
DECLARE 
    NUM NUMBER;  
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM CONDUCTOR;
    :NEW.ID := NUM;
END;
/

CREATE OR REPLACE TRIGGER UP_CONDUCTOR
    BEFORE UPDATE ON CONDUCTOR
    FOR EACH ROW
DECLARE
BEGIN
    IF(:NEW.ID <> :OLD.ID) THEN 
        RAISE_APPLICATION_ERROR(-20019,'No es posible modificar el codigo de un conductor.');
    END IF;
END UP_CONDUCTOR;
/

CREATE OR REPLACE TRIGGER DEL_CONDUCTOR
    BEFORE DELETE ON CONDUCTOR
    FOR EACH ROW
DECLARE
BEGIN
    RAISE_APPLICATION_ERROR(-20020,'NO ES POSIBLE ELIMINAR A UN CONDUCTOR');
END DEL_CONDUCTOR;
/

CREATE OR REPLACE TRIGGER AUTO_POLIZA
    BEFORE INSERT ON POLIZA
    FOR EACH ROW
DECLARE 
    NUM NUMBER;  
    VENDEDOR_DE_POLIZA NUMBER(5);
    VENDEDOR_DEL_PROYECTO NUMBER(5);
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM POLIZA;
    :NEW.ID := NUM;
    VENDEDOR_DE_POLIZA := :NEW.VENDEDOR; 
    
    SELECT VENDEDOR INTO VENDEDOR_DEL_PROYECTO
    FROM PROYECTO WHERE PROYECTO.ID = :NEW.PROYECTO;
    
    IF(VENDEDOR_DEL_PROYECTO <> VENDEDOR_DE_POLIZA) THEN
        RAISE_APPLICATION_ERROR(-20021,'EL VENDEDOR NO PERTENECE A ESTE PROYECTO');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER AUTO_REGISTRO
    BEFORE INSERT ON REGISTRO
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM REGISTRO;
    :NEW.RNUMERO := NUM;
END;
/

CREATE OR REPLACE TRIGGER AUTO_PUNTOATENCION
    BEFORE INSERT ON PUNTOATENCION
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM PUNTOATENCION;
    :NEW.ID := NUM;
END;
/

CREATE OR REPLACE TRIGGER AUTO_ADMINISTRADOR
    BEFORE INSERT ON ADMINISTRADOR
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM ADMINISTRADOR;
    :NEW.ID := NUM;
END;
/

CREATE OR REPLACE TRIGGER AUTO_VENDEDOR
    BEFORE INSERT ON VENDEDOR
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM VENDEDOR;
    :NEW.ID := NUM;
END;
/

CREATE OR REPLACE TRIGGER AUTO_COBERTURA
    BEFORE INSERT ON COBERTURA
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
    AUX_DEDUCIBLE NUMBER(10,2);
BEGIN
    NUM:=1;
    SELECT COUNT(*)+1 INTO NUM FROM COBERTURA;
    :NEW.ID := NUM;
    AUX_DEDUCIBLE := (:NEW.MONTOHURTO+:NEW.MONTODANO+:NEW.RCIVIL)*0.1;
    UPDATE POLIZA SET DEDUCIBLE = AUX_DEDUCIBLE
    WHERE POLIZA.COBERTURA = :NEW.ID;
END;
/

CREATE OR REPLACE TRIGGER UP_COBERTURA
    BEFORE UPDATE ON COBERTURA
    FOR EACH ROW
DECLARE
BEGIN
    IF(:NEW.ID <> :OLD.ID) THEN
        RAISE_APPLICATION_ERROR(-20022,'NO ES POSIBLE MODIFICAR EL ID DE COBERTURA');
    END IF;
END UP_COBERTURA;
/



CREATE OR REPLACE TRIGGER AUTO_PROYECTO
    BEFORE INSERT ON PROYECTO
    FOR EACH ROW
DECLARE 
    NUM NUMBER;
    AUX_FECHA  DATE;
BEGIN
    NUM:=1;
    AUX_FECHA := TO_DATE(SYSDATE,'YYYY-MM-DD');
    SELECT COUNT(*)+1 INTO NUM FROM PROYECTO;
    :NEW.FECHAINICIO := AUX_FECHA;
    :NEW.ID := NUM;
END;
/




CREATE OR REPLACE TRIGGER FECHAFINMAYOR1A_PROYECTO
    BEFORE UPDATE OF ID
    ON PROYECTO
    FOR EACH ROW
DECLARE
    FECHAA DATE;
BEGIN
    SELECT FECHAENTRADA INTO FECHAA FROM VENDEDOR JOIN PROYECTO ON 
        VENDEDOR.ID=PROYECTO.VENDEDOR;
    IF (FECHAA < (SYSDATE-365)) THEN
        RAISE_APPLICATION_ERROR(-20003, 'no se pueden 
        modificar VENDEDOR');
END IF;        
END;
/       
CREATE OR REPLACE TRIGGER FECHAFIN_PROYECTO
    BEFORE UPDATE OF ID
    ON PROYECTO
    FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20003, 'no se pueden 
    modificar ID');
END;
/
CREATE OR REPLACE TRIGGER NOMBRE_PROYECTO
    BEFORE UPDATE OF NOMBRE
    ON PROYECTO
    FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20003, 'no se pueden 
    modificar NOMBRE');
END;
/
CREATE OR REPLACE TRIGGER FECHAINICIO_PROYECTO
    BEFORE UPDATE ON PROYECTO
    FOR EACH ROW
BEGIN
    IF(:NEW.FECHAINICIO <> :OLD.FECHAINICIO) THEN
    RAISE_APPLICATION_ERROR(-20003, 'no se pueden 
    modificar FECHAINICION');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER UP_POLIZA
    BEFORE UPDATE OF POLIZA
    ON PROYECTO
    FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20003, 'no se pueden 
    modificar POLIZA');
END;
/



CREATE OR REPLACE TRIGGER VENDEDOR_PROYECTO
    BEFORE UPDATE OF VENDEDOR
    ON PROYECTO
    FOR EACH ROW
BEGIN
    RAISE_APPLICATION_ERROR(-20003, 'no se pueden 
    modificar VENDEDOR');
END;
/

CREATE OR REPLACE TRIGGER DELETE_PROYECTO
    BEFORE DELETE ON PROYECTO
    FOR EACH ROW 
DECLARE
BEGIN
    IF (:OLD.FECHAFIN IS NOT NULL AND :OLD.FECHAFIN < SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20003, 'No se puede eliminar
        proyecto no finalizado');
    END IF;
END;
/

CREATE OR REPLACE TRIGGER DEL_POLIZA
    BEFORE DELETE ON POLIZA
    FOR EACH ROW
DECLARE 
BEGIN
    RAISE_APPLICATION_ERROR(-20022,'NO ES POSIBLE ELIMINAR NIGUNA POLIZA');
END DEL_POLIZA;
/