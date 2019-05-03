CREATE OR REPLACE PACKAGE BODY  Mantener_Habitacion IS 
        PROCEDURE ADD_ROOM( xn_room_type IN VARCHAR, xn_max_occupancy IN NUMBER, xn_detalle IN XMLTYPE) IS 
        BEGIN 
            INSERT INTO ROOM(room_type,max_occupancy,detalle) VALUES(xn_room_type,xn_max_oxxupancy,xn_detalle);
            COMMIT;
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20101,'Error al insertar una habitacion.');
        END;
        
        PROCEDURE DEL_ROOM(xn_id IN NUMBER) IS
        BEGIN
            DELETE FROM ROOM WHERE (id = xn_id);
            COMMIT;
            EXCEPTION
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20102,'Error al eliminar una habitacion.');
        END;
        
        PROCEDURE UP_ROOM(xn_id IN NUMBER, xn_room_type IN VARCHAR, xn_max_occupancy IN NUMBER, xn_detalle IN XMLTYPE) IS 
        BEGIN 
            UPDATE ROOM SET room_type = xn_room_type,max_occupancy = xn_max_occupancy,detalle = xn_detalle    WHERE (id = xn_id);
            COMMIT;
            EXCEPTION 
            WHEN OTHERS THEN 
                ROLLBACK;
                RAISE_APPLICATION_ERROR(-20103,'Error al actualizar una habitacion.');
        END;
        
        --consulta numero 1 del autoestudio 5
        FUNCTION CO_ONEBEDROOM RETURN XMLTYPE IS CO_XML XMLTYPE;
        BEGIN 
            CO_XML := dbms_xmlgen.getxmltype(
            'SELECT *
                FROM ROOM
                WHERE EXTRACT(DETALLE,"/Room/Bed[@dobles = "1"]") IS NOT NULL');
            RETURN CO_XML;
        END;
        --consulta numero 2 del autoestudio 5
        FUNCTION CO_INEXPENSIVEROOM RETURN XMLTYPE IS CO_XML XMLTYPE;
        BEGIN 
            CO_XML := dbms_xmlgen.getxmltype(
            'SELECT *
            FROM ROOM
            WHERE EXTRACT(DETALLE,"/Room/Views/Sea[@mar = "SI"]") IS NOT NULL AND
                EXTRACT(DETALLE,"/Room/Views/Mountain[@montana = "SI"]") IS NOT NULL');
            RETURN CO_XML;
        END;
        --consulta numero 3 del autoestudio 5
        FUNCTION CO_TVROOM RETURN XMLTYPE IS CO_XML XMLTYPE;
        BEGIN 
            CO_XML := dbms_xmlgen.getxmltype(
            'SELECT ROOM_TYPE 
             FROM ROOM
             WHERE EXTRACT(DETALLE,"/Room/Canals[@satelite = "SI"]") IS NOT NULL;');
            RETURN CO_XML;
        END;
        --consulta numero 4 del autoestudio 5
        FUNCTION CO_NAMESPAINTERSROOM RETURN XMLTYPE IS CO_XML XMLTYPE;
        BEGIN 
            CO_XML := dbms_xmlgen.getxmltype(
            'SELECT *
            FROM ROOM
            WHERE EXTRACT(DETALLE,"/Room/Views/Sea[@mar = "SI"]") IS NOT NULL AND
                EXTRACT(DETALLE,"/Room/Views/Mountain[@montana = "SI"]") IS NOT NULL');
            RETURN CO_XML;
        END;
        --consulta numero 6 del autoestudio 5
        FUNCTION CO_STARSROOM RETURN XMLTYPE IS CO_XML XMLTYPE;
        BEGIN 
            CO_XML := dbms_xmlgen.getxmltype(
            'SELECT CAST(EXTRACT(DETALLE,"//Comments/Comment/@estrellas") AS VARCHAR2(90))
                FROM ROOM');
            RETURN CO_XML;
        END;
END Mantener_Habitacion;


CREATE OR REPLACE PACKAGE BODY Registrar_Reservas IS 
    PROCEDURE ADD_BOOKING(xn_room_no IN NUMBER, xn_guest_id IN NUMBER, xn_occupants IN NUMBER,
                        nx_room_type_requested IN VARCHAR,xn_nights IN NUMBER, xn_arrival_time IN DATE) IS 
    BEGIN
        INSERT INTO BOOKING(room_no,guest_id,occupants,room_type_requested,nights,arrival_time) 
        VALUES(xn_room_no,xn_guest_id,xn_occupants,xn_room_type_requested,xn_nights,xn_arrival_time);
        COMMIT;
        EXCEPTION 
        WHEN OTHERS THEN 
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20104,'Error al insertar una reservacion.');
    END;
END Registrar_Habitacion;



















