CREATE TABLE ROOM(
    ID NUMBER(3) NOT NULL,
	ROOM_TYPE VARCHAR(6) NOT NULL,
	MAX_OCCUPANCY NUMBER(10) NOT NULL,
	DETALLE XMLTYPE NOT NULL
);
	
ALTER TABLE ROOM ADD CONSTRAINT PK_ROOM
PRIMARY KEY (ID);
---------------------------------------------------------------------------------------------------------
/* POBLAR */

INSERT INTO ROOM VALUES (101,'SINGLE',1,
'<?xml version="1.0"?>
 <Room>
    <Bed 
        dobles="1"
        sencillas="0"
        camarotes="0">      
    </Bed>
    <Floor 
        Baldosas = "NO" 
        Tapete = "SI" 
        Madera="NO"> 
    </Floor>
    <Showers ducha="SI" 
            duchaLluvia = "NO" 
            bañera= "SI" 
            hidromasaje="NO">
    </Showers>
    <Views>
        <interior>Business-focused</interior>
        <Garden jardin = "SI" ></Garden>
        <Mountain montana = "SI"></Mountain>
        <Pool piscina = "NO"></Pool>
        <Sea mar = "NO"></Sea>
    </Views>

    <Decorations>

        <Decoration nombre = "nuevo amanecer" 
                    clase = "1" 
                    autor="SANTIAGO">
                Resplandeciente y calido diseño 
        </Decoration>
    </Decorations>
    
        <detalle estampado = "bordes redondos" 
                colorCortinas="rojo" 
                colchas="clasicas">
            rojo
        </detalle>
    
    <Canals 
        satelite ="SI" 
        cable ="NO">
    </Canals>
    <Comments>
        <Comment 
            fecha = "09/04/2012" 
            estrellas ="2">justificacion</Comment>
    </Comments>
</Room>');
---------------------------------------------------------------------------------------------------------
INSERT INTO ROOM VALUES (102,'DOUBLE',2,
'<?xml version="1.0"?>
 <Room>
    <Bed 
        dobles="0"
        sencillas="1"
        camarotes="0">      
    </Bed>
    <Floor 
        Baldosas = "SI" 
        Tapete = "NO" 
        Madera="NO"> 
    </Floor>
    <Showers ducha="SI" 
            duchaLluvia = "NO" 
            bañera= "NO" 
            hidromasaje="NO">
    </Showers>
    <Views>
        <interior>Business-focused</interior>
        <Garden jardin = "NO" ></Garden>
        <Mountain montana = "NO"></Mountain>
        <Pool piscina = "SI"></Pool>
        <Sea mar = "NO"></Sea>
    </Views>

    <Decorations>

        <Decoration nombre = "amanecer" 
                    clase = "3" 
                    autor="YEISSON">
        Extended
        </Decoration>
    </Decorations>
    
    <detalle estampado = "bordado" 
                colorCortinas="negro" 
                colchas="modernas">
                negro
        </detalle>
    
    <Canals 
        satelite ="SI" 
        cable ="NO">
    </Canals>
    <Comments>
        <Comment 
            fecha = "04/11/2012" 
            estrellas ="2">
            justificacion
        </Comment>
    </Comments>
</Room>');
---------------------------------------------------------------------------------------------------------
INSERT INTO ROOM VALUES (103,'FAMILY',3,
'<?xml version="1.0"?>
 <Room>
    <Bed 
        dobles="2"
        sencillas="0"
        camarotes="0">      
    </Bed>
    <Floor 
        Baldosas = "NO" 
        Tapete = "NO" 
        Madera="SI"> 
    </Floor>
    <Showers ducha="NO" 
            duchaLluvia = "SI" 
            bañera= "SI" 
            hidromasaje="NO">
    </Showers>
    <Views>
        <interior>Business-focused</interior>
        <Garden jardin = "NO" ></Garden>
        <Mountain montana = "SI"></Mountain>
        <Pool piscina = "NO"></Pool>
        <Sea mar = "SI"></Sea>
    </Views>

    <Decorations>

        <Decoration nombre = "encryption" 
                    clase = "2" 
                    autor="JUAN">
         Alfa Foxtrot Charlie X-ray  
        </Decoration>
    </Decorations>
    
    <detalle estampado = " Juliett Tango" 
            colorCortinas="azul" 
            colchas="Sierra">azul</detalle>
    
    <Canals 
        satelite ="NO" 
        cable ="SI">
    </Canals>
    <Comments>
        <Comment 
            fecha = "12/22/2017" 
            estrellas ="3">justificacion</Comment>
    </Comments>
</Room>');

---------------------------------------------------------------------------------------------------------
/* Consultas */

SELECT *
    FROM ROOM
    WHERE EXTRACT(DETALLE,'/Room/Bed[@dobles = "1"]') IS NOT NULL;

SELECT *
    FROM ROOM
    WHERE EXTRACT(DETALLE,'/Room/Views/Sea[@mar = "SI"]') IS NOT NULL AND
        EXTRACT(DETALLE,'/Room/Views/Mountain[@montana = "SI"]') IS NOT NULL;
        
SELECT ROOM_TYPE 
    FROM ROOM
    WHERE EXTRACT(DETALLE,'/Room/Canals[@satelite = "SI"]') IS NOT NULL;


SELECT CAST(EXTRACT(DETALLE,'/Room/Decorations/Decoration/@autor') AS VARCHAR2(90))
    FROM ROOM;

SELECT *
    FROM ROOM
    WHERE EXTRACT(DETALLE,'/Room/Views/Sea[@mar = "SI"]') IS NOT NULL AND
        EXTRACT(DETALLE,'/Room/Views/Mountain[@montana = "SI"]') IS NOT NULL;


SELECT CAST(EXTRACT(DETALLE,'//Comments/Comment/@estrellas') AS VARCHAR2(90))
    FROM ROOM;







