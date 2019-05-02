CREATE OR REPLACE TRIGGER Ad_ROOM
    BEFORE INSERT ON ROOM
    FOR EACH ROW
DECLARE 
    a NUMBER; b NUMBER; d number; i number;
    cursor c is select occupancy from rate;

BEGIN 
--add
    a:= :new.id / 100 ;
    b := MOD(:new.id,100); 
    d:=0;
    if (a<1 or a> 5 ) or ( b <0 or b > 99)   then
        RAISE_APPLICATION_ERROR(-20008,'el (piso o consecutivo) es incorrecto');
    end if;
    open c;
    loop fetch c into i;
        if :new.max_occupancy = i then d := d+1;
        end if;
    end loop;
    close c;
    if d =0 then RAISE_APPLICATION_ERROR(-20019,'la maxima capacidad es incorrecta'); end if;    
END;
/
/*
 REGEXP_LIKE(Placa,'^[1-5]{1,1}[0-99]{2,2}+$')

REGEXP_LIKE(Placa,'^[A-Z]{3,3}[0-9]{3,3}+$')
*/

CREATE OR REPLACE TRIGGER UPDATE_ROOM
    BEFORE UPDATE ON ROOM
    FOR EACH ROW 
DECLARE
BEGIN
    if (:NEW.MAX_OCCUPANCY < :OLD.MAX_OCCUPANCY or :new.id != :old.id or :new.room_type != :old.room_type) then 
        RAISE_APPLICATION_ERROR(-2006,'la maxima capacidad debe ser mayor a la anterior y solo se puede modificar la maxima capacidad');
    end if;
END;
/