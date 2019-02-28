----TABLAS
DROP TABLE Rate;
CREATE TABLE Rate(
  room_type VARCHAR(6) NOT NULL,
  occupancy NUMBER(11) NOT NULL,
  amount DECIMAL(10,2)
  );

ALTER TABLE Rate 
ADD CONSTRAINT ROOMTYP FOREIGN KEY (room_type) REFERENCES Room_type(id);
ALTER TABLE Rate 
ADD CONSTRAINT OCCUP PRIMARY KEY(occupancy,room_type) ;
--
--
--DROP TABLE Room_type;
--CREATE TABLE Room_type(
--    id VARCHAR(6) NOT NULL,
--    description VARCHAR(100)
--);
--ALTER TABLE Room_type 
--ADD CONSTRAINT ROMTYPID PRIMARY KEY(id) ;
--

--DROP TABLE Room;
--CREATE TABLE Room(
--    id NUMBER(11) NOT NULL,
--    room_type VARCHAR(6),
--    max_occupancy NUMBER(11)
--);
--ALTER TABLE Room ADD CONSTRAINT ROOMID PRIMARY KEY(id) ;
--ALTER TABLE Room ADD CONSTRAINT FK_ROOM_TYPE FOREIGN KEY (room_type) REFERENCES Room_type(id);
--

DROP TABLE Guest;
CREATE TABLE Guest(
    id NUMBER(11) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(50) NOT NULL
);
ALTER TABLE Guest ADD CONSTRAINT GUESTID PRIMARY KEY(id) ;
--

--DROP TABLE Booking;
--CREATE TABLE Booking (
--    booking_id NUMBER(11) NOT NULL,
--    booking_date DATE NOT NULL,
--    room_no NUMBER(11) NOT NULL,
--    guest_id  NUMBER(11) NOT NULL,
--    occupants  NUMBER(11) NOT NULL,
--    room_type_requested VARCHAR(6) NOT NULL,
--    nights NUMBER(11) NOT NULL,
--    arrival_time VARCHAR(5) NOT NULL
--);
--ALTER TABLE Booking ADD CONSTRAINT BOOKID PRIMARY KEY(booking_id);
--ALTER TABLE Booking ADD CONSTRAINT FK_ROOM_NO FOREIGN KEY(room_no) REFERENCES Room(id);
--ALTER TABLE Booking ADD CONSTRAINT FK_GST_ID FOREIGN KEY(guest_id) REFERENCES Guest(id);
--ALTER TABLE Booking ADD CONSTRAINT FK_OCCUPNTS FOREIGN KEY(occupants) REFERENCES Rate(occupancy);
--ALTER TABLE Booking ADD CONSTRAINT FK_ROOM_TYRQSTD FOREIGN KEY(room_type_requested) REFERENCES Room_type(id);
--
--

-- DROP TABLE Extra;
--CREATE TABLE Extra(
--    extra_id NUMBER(11) NOT NULL,
--    booking_id NUMBER(11) NOT NULL,
--    description VARCHAR(50) NOT NULL,
--    amount DECIMAL(10,2) NOT NULL
--
--);
--
--
----poblar

insert into rate values ('double',1,56.00);
insert into rate values ('double',2,72.00);
insert into rate values ('family',1,56.00);
insert into rate values ('family',2,72.00);
insert into rate values ('family',3,84.00);
insert into rate values ('single',1,48.00);
insert into rate values ('twin',1,50.00);
insert into Rate values ('twin',2,72.00);


insert into room_type values ('double','Fabulously appointed double room.');
insert into room_type values ('family','Superior appartment for up to 3 people.');
insert into room_type values ('single','Luxury accomodation suitable for one person.');
insert into room_type values ('twin','Superb room with two beds.');


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


insert into booking values (1,'2016-11-09',1,1127,1,'double',2,'16:00');
insert into booking values (2,'2016-11-15',2,1344,1,'single',1,'13:00');
insert into booking values (3,'2016-11-07',3,1295,1,'double',2,'21:00');
insert into booking values (4,'2016-11-08',4,1185,2,'double',3,'14:00');
insert into booking values (5,'2016-11-11',5,1601,1,'double',3,'13:00');
insert into booking values (6,'2016-11-12',6,1500,2,'family',3,'17:00');
insert into booking values (7,'2016-11-08',7,1475,2,'double',1,'15:00');
insert into booking values (8,'2016-11-09',8,1372,2,'double',4,'12:00');
insert into booking values (9,'2016-11-09',9,1138,1,'double',4,'20:00');
insert into booking values (10,'2016-11-09',10,1313,2,'double',5,'21:00');