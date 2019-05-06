/*
El numero y la fecha se asigna automaticamente
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


--Los perfiles que dan la opinion deben haber visto el contenido en los ocho dias anteriores.

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


/*
Se deben adicionar automaticamente los siguientes adjetivos
dependiendo del tipo de  opinion: encantador para me encanta,
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

--La fecha de los logros se debe asignar automÃ¡ticamente.

CREATE OR REPLACE TRIGGER FECHA_TEMPORAL
    BEFORE INSERT ON TEMPORAL
    FOR EACH ROW
DECLARE 
    FECHA DATE;
BEGIN
    FECHA:= TO_DATE(SYSDATE, 'YYYY-MM-DD');
    :NEW.FECHA:=FECHA;  
END;
/
--Si no se indica el tipo se asume que es una foto
CREATE OR REPLACE TRIGGER TIPO_TEMPORAL
    BEFORE INSERT ON TEMPORAL
    FOR EACH ROW
DECLARE 
BEGIN
    IF (:NEW.TIPO = NULL) THEN
        :NEW.TIPO:= 'F';
    END IF;
END;
/

--La informacion de contenido temporal solo se permite en videos y audios
 
ALTER TABLE Temporal ADD CONSTRAINT CK_TEMPORAL_TTIPO2 
CHECK( tipo in ('V','A'));


--Las etiquetas deben estar en las palabras de los temas asociados al contenido
CREATE OR REPLACE TRIGGER ETIQUETA_TEMPORAL
    BEFORE INSERT ON TEMPORAL
    FOR EACH ROW
DECLARE
  TEMP VARCHAR2(10);
BEGIN 
  SELECT NOMBRE INTO TEMP FROM ETIQUETA WHERE NOMBRE = :NEW.; 
  --do things when record exists
EXCEPTION
  WHEN no_data_found THEN
  --do things when record doesn't exist
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