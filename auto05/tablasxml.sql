CREATE TABLE ROOM
	(ID NUMBER(3) NOT NULL,
	ROOM_TYPE VARCHAR(6) NOT NULL,
	MAX_OCCUPANCY NUMBER(10) NOT NULL,
	DETALLES XMLTYPE NOT NULL);
	
ALTER TABLE ROOM ADD CONSTRAINT PK_ROOM
PRIMARY KEY (ID);

--POBLAR

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
    
    <Showers >
    </Showers>

    <Views>
        <interior></interior>
        <jardin></jardin>
        <montana></montana>
        <piscina></piscina>
        <mar></mar>
    </Views>

    <Decorations>
        <Decoration 
            nombre = "HOLA" 
            clase = "1"
            autor="AAA">
        </Decoration>
    </Decorations>
    
    <Colors></Colors>
    
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

INSERT INTO ROOM VALUES (102,'DOUBLE',2,
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
    
    <Showers >
    </Showers>

    <Views>
        <interior></interior>
        <jardin></jardin>
        <montana></montana>
        <piscina></piscina>
        <mar></mar>
    </Views>

    <Decorations>
        <Decoration 
            nombre = "HOLA2" 
            clase = "2"
            autor="BBB">
        </Decoration>
    </Decorations>
    
    <Colors></Colors>
    
    <Canals 
        satelite ="NO" 
        cable ="SI">
    </Canals>
    <Comments>
        <Comment 
            fecha = "02/07/2009" 
            estrellas ="1">justificacion</Comment>
    </Comments>
</Room>');

INSERT INTO ROOM VALUES (103,'FAMILY',3,
'<?xml version="1.0"?>
 <Room>
    <Bed 
        dobles="3"
        sencillas="0"
        camarotes="0">      
    </Bed>
    <Floor 
        Baldosas = "SI" 
        Tapete = "NO" 
        Madera="NO"> 
    </Floor>
    
    <Showers >
    </Showers>

    <Views>
        <interior></interior>
        <jardin></jardin>
        <montana></montana>
        <piscina></piscina>
        <mar></mar>
    </Views>

    <Decorations>
        <Decoration 
            nombre = "ABCD" 
            clase = "4"
            autor="CCCC">
        </Decoration>
    </Decorations>
    
    <Colors></Colors>
    
    <Canals 
        satelite ="SI" 
        cable ="NO">
    </Canals>
    <Comments>
        <Comment 
            fecha = "11/08/2019" 
            estrellas ="5">justificacion</Comment>
    </Comments>
</Room>');