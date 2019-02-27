--TABLAS
CREATE TABLE Rate(
  room_type VARCHAR2(6) NOT NULL,
  occupancy NUMBER(11) NOT NULL,
  amount NUMBER(100)
);

ALTER TABLE Rate 
ADD CONSTRAINT ROOMTYP PRIMARY KEY(room_type) ;

ALTER TABLE Rate 
ADD CONSTRAINT OCCUP PRIMARY KEY(occupancy) ;


CREATE TABLE Room_type(
    id VARCHAR(6) NOT NULL,
    description VARCHAR(1000)
);
ALTER TABLE Room_type 
ADD CONSTRAINT ROMTYPID PRIMARY KEY(id) ;

CREATE TABLE Room(
    id VARCHAR(6) NOT NULL,
    room_type VARCHAR2(6),
    max_occupancy NUMBER(11)
);
ALTER TABLE Room ADD CONSTRAINT ROOMID PRIMARY KEY(id) ;
ALTER TABLE Room ADD CONSTRAINT FK_ROOM_TYPE FOREIGN KEY (room_type) REFERENCES Room_type(id);

CREATE TABLE Guest(
    id VARCHAR2(6) NOT NULL,
    first_name VARCHAR2(32) NOT NULL,
    last_name VARCHAR2(32) NOT NULL,
    address VARCHAR(32) NOT NULL
);
ALTER TABLE Guest ADD CONSTRAINT GUESTID PRIMARY KEY(id) ;

CREATE TABLE Booking (
    booking_id VARCHAR(6) NOT NULL,
    booking_date DATE NOT NULL,
    room_no VARCHAR(6) NOT NULL,
    guest_id  VARCHAR2(6) NOT NULL,
    occupants  NUMBER(11) NOT NULL,
    room_type_requested VARCHAR(6) NOT NULL,
    nights NUMBER(6) NOT NULL,
    arrival_time DATE NOT NULL
);
ALTER TABLE Booking ADD CONSTRAINT BOOKID PRIMARY KEY(booking_id);
ALTER TABLE Booking ADD CONSTRAINT FK_ROOM_NO FOREIGN KEY(room_no) REFERENCES Room(id);
ALTER TABLE Booking ADD CONSTRAINT FK_GST_ID FOREIGN KEY(guest_id) REFERENCES Guest(id);
ALTER TABLE Booking ADD CONSTRAINT FK_OCCUPNTS FOREIGN KEY(occupants) REFERENCES Rate(occupancy);
ALTER TABLE Booking ADD CONSTRAINT FK_ROOM_TYRQSTD FOREIGN KEY(room_type_requested) REFERENCES Room_type(id);


CREATE TABLE Extra(
    extra_id VARCHAR2(6) NOT NULL,
    booking_id vARCHAR(6) NOT NULL,
    description VARCHAR(100) NOT NULL,
    amount NUMBER(10,4) NOT NULL

);


--pob




