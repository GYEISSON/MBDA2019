insert into room_type values ('double','Fabulously appointed double room.');
insert into room_type values ('family','Superior appartment for up to 3 people.');
insert into room_type values ('single','Luxury accomodation suitable for one person.');
insert into room_type values ('twin','Superb room with two beds.');


insert into rate values ('double',1,56.00);
insert into rate values ('double',2,72.00);
insert into rate values ('family',1,56.00);
insert into rate values ('family',2,72.00);
insert into rate values ('family',3,84.00);
insert into rate values ('single',1,48.00);
insert into rate values ('twin',1,50.00);
insert into rate values ('twin',2,72.00);


insert into room values (1,'double',2);
insert into room values (2,'double',2);
insert into room values (3,'single',1);
insert into room values (4,'double',2);
insert into room values (5,'double',2);
insert into room values (6,'double',2);
insert into room values (7,'family',3);
insert into room values (8,'double',2);
insert into room values (9,'double',2);
insert into room values (10,'double',2);
insert into room values (11,'double',2);



insert into guest values (1,'Tom','Watson','West Bromwich East');
insert into guest values (2,'Hilary','Benn','Leeds Central');
insert into guest values (3,'Dawn','Butler','Brent Central');
insert into guest values (4,'Mary','Creagh','Wakefield');
insert into guest values (5,'Jon','Cruddas','Dagenham and Rainham');
insert into guest values (6,'Wayne','David','Caerphilly');
insert into guest values (7,'Jack','Dromey','Birmingham, Erdington');
insert into guest values (8,'Maria','Eagle','Garston and Halewood');
insert into guest values (9,'Frank','Field','Birkenhead');
insert into guest values (10,'Helen','Jones','Warrington North');


insert into extra values (101,1,'Breakfast x 7',4.26);
insert into extra values (202,2,'Breakfast x 2',4.04);
insert into extra values (303,3,'Phone Calls £4.69',90.00);
insert into extra values (404,4,'Breakfast x 12',90.00);
insert into extra values (505,5,'Phone Calls £3.19',72.00);
insert into extra values (606,6,'Breakfast x 1',26.00);
insert into extra values (707,7,'Phone Calls £0.70',3.93);
insert into extra values (808,8,'Breakfast x 8',36.00);
insert into extra values (909,9,'Breakfast x 10',46.00);
insert into extra values (1010,10,'Phone Calls £3.56',3.932);



CREATE TABLE Rate(
  room_type VARCHAR(6) NOT NULL,
  occupancy NUMBER(11) NOT NULL,
  amount DECIMAL(10,2)
  );
  
  CREATE TABLE Room_type(
    id VARCHAR(6) NOT NULL,
    description VARCHAR(100)
);
CREATE TABLE Room(
    id NUMBER(11) NOT NULL,
    room_type VARCHAR(6),
    max_occupancy NUMBER(11)
);
CREATE TABLE Guest(
    id NUMBER(11) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL
);

CREATE TABLE Booking (
    booking_id NUMBER(11) NOT NULL,
    booking_date VARCHAR(20) NOT NULL,
    room_no NUMBER(11) NOT NULL,
    guest_id  NUMBER(11) NOT NULL,
    occupants  NUMBER(11) NOT NULL,
    room_type_requested VARCHAR(6) NOT NULL,
    nights NUMBER(11) NOT NULL,
    arrival_time VARCHAR(5) NOT NULL
);

CREATE TABLE Extra(
    extra_id NUMBER(11) NOT NULL,
    booking_id NUMBER(11) NOT NULL,
    description VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL

);


--PK


ALTER TABLE Rate 
ADD CONSTRAINT OCCUP PRIMARY KEY(occupancy,room_type) ;

ALTER TABLE Room_type 
ADD CONSTRAINT PK_room_type PRIMARY KEY(id) ;

ALTER TABLE Room 
ADD CONSTRAINT PK_room PRIMARY KEY(id) ;

ALTER TABLE Guest ADD CONSTRAINT PK_guest PRIMARY KEY(id) ;

ALTER TABLE Booking ADD CONSTRAINT PK_booking PRIMARY KEY(booking_id);

ALTER TABLE Extra ADD CONSTRAINT PK_extra PRIMARY KEY(extra_id);



--FK


ALTER TABLE Booking 
ADD CONSTRAINT FK_ROOM_NO FOREIGN KEY(room_no) REFERENCES Room(id);

ALTER TABLE Booking 
ADD CONSTRAINT FK_GST_ID FOREIGN KEY(guest_id) REFERENCES Guest(id);

ALTER TABLE Booking 
ADD CONSTRAINT booking_ibfk_4 FOREIGN KEY (room_type_requested, occupants) REFERENCES rate (room_type, occupancy);

ALTER TABLE Booking 
ADD CONSTRAINT FK_ROOM_TYRQSTD FOREIGN KEY(room_type_requested) REFERENCES Room_type(id);

ALTER TABLE Rate 
ADD CONSTRAINT ROOMTYP FOREIGN KEY (room_type) REFERENCES Room_type(id);

ALTER TABLE Room 
ADD CONSTRAINT FK_ROOM_TYPE FOREIGN KEY (room_type) REFERENCES Room_type(id);

ALTER TABLE Extra ADD CONSTRAINT FK_EXTRA FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);


-- Adicionando restricciones declarativas

ALTER TABLE GUEST ADD CONSTRAINT CK_GUEST_FNAME CHECK (not(REGEXP_LIKE(FIRST_NAME,'^[0-9]{1,1000}+$')));

ALTER TABLE GUEST ADD CONSTRAINT CK_GUEST_LNAME CHECK (not(REGEXP_LIKE(LAST_NAME,'^[0-9]{1,1000}+$')));

ALTER TABLE BOOKING ADD CONSTRAINT CK_BOOKING_ROOM_TYPE_REQUESTED CHECK ((REGEXP_LIKE(OCCUPANTS,'^[0-9]{1,1000}+$')) AND 
(ROOM_TYPE_REQUESTED LIKE 'single' OR ROOM_TYPE_REQUESTED LIKE 'twin' OR ROOM_TYPE_REQUESTED LIKE 'family' OR 
ROOM_TYPE_REQUESTED LIKE 'double'));

ALTER TABLE BOOKING DROP CONSTRAINT CK_BOOKING_ROOM_TYPE_REQUESTED;


--AtributosOK
INSERT INTO guest values (1,'Tom','Watson','West Bromwich East');
INSERT INTO guest values (2,'Hilary','Benn','Leeds Central');


--AtributosNoOK

INSERT into guest values (1,'1','Watson','West Bromwich East');
INSERT into guest values (2,'Hilary','3','Leeds Central');

--TuplasOK

INSERT into booking values (1,'2016-11-09',1,1,1,'double',2,'16:00');
INSERT into booking values (2,'2016-11-15',2,2,1,'single',1,'13:00');

--TuplasNoOK
--!!!--
DELETE FROM BOOKING WHERE BOOKING_ID=1 OR BOOKING_ID=2;
INSERT into booking values (1,'2016-11-09',1,1,1,'dsaf',2,'16:00');
INSERT into booking values (2,'2016-11-15',2,2,1,'sadf',1,'13:00');


--Adicionando acciones de referencia


--Acciones
ALTER TABLE BOOKING DROP CONSTRAINT booking_ibfk_4;

ALTER TABLE Booking 
ADD CONSTRAINT booking_ibfk_4 FOREIGN KEY (room_type_requested, occupants) REFERENCES rate (room_type, occupancy);

insert into booking values (8,'2016-11-09',8,8,2,'double',4,'12:00');

insert into booking values (9,'2016-11-09',9,9,1,'double',4,'20:00');

insert into booking values (6,'2016-11-12',6,6,2,'family',3,'17:00');

insert into booking values (7,'2016-11-08',7,7,2,'double',1,'15:00');


--Adicionando disparadores



CREATE OR REPLACE TRIGGER Ad_ROOM



