CREATE TABLE ROOM(
    ID NUMBER(3) NOT NULL,
	ROOM_TYPE VARCHAR(6) NOT NULL,
	MAX_OCCUPANCY NUMBER(10) NOT NULL,
	DETALLES XMLTYPE NOT NULL
);
	
ALTER TABLE ROOM ADD CONSTRAINT PK_ROOM
PRIMARY KEY (ID);

--POBLAR

INSERT INTO ROOM VALUES (101,'SINGLE',1,
'<?xml version="1.0"?>
 <Room>
    <Bed dobles="1"
         sencillas="0" 
         camarotes="0">      
    </Bed>
    <Floor Baldosas = "NO" 
           Tapete = "SI" 
           Madera="NO"> 
    </Floor>
    <Showers ducha="SI" duchaLluvia = "NO" bañera= "SI" hidromasaje="NO">
    </Showers>
    <Views>
        <interior>Inmejorable lugar para descansar</interior>
        <jardin></jardin>
        <montana></montana>
        <piscina></piscina>
        <mar></mar>
    </Views>

    <Decorations>
        <Decoration nombre = "nuevo amanecer" clase = "1" autor="santiago">
        Resplandeciente y calido diseño 
        </Decoration>
    </Decorations>
    
    <detalle estampado = "bordes redondos" colorCortinas="rojo" colchas="clasicas">rojo</detalle>
    
    <Canals satelite ="SI" cable ="NO">
    </Canals>
    <Comments>
        <Comment fecha = "09/04/2012" estrellas ="0" >justificacion</Comment>
    </Comments>
</Room>');



