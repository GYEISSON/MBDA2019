--TABLAS
CREATE TABLE Rate(
  room_type VARCHAR2(6) NOT NULL,
  occupancy NUMBER(11) NOT NULL,
  amount NUMBER(10,4)
);

CREATE TABLE Room_type(
    id VARCHAR(6) NOT NULL,
    description VARCHAR2(100)
);

CREATE TABLE Room(
    id VARCHAR(6) NOT NULL,
    max_occupancy NUMBER(11)
);

CREATE TABLE Guest(
    id VARCHAR2(6) NOT NULL,
    first_name VARCHAR2(32) NOT NULL,
    last_name VARCHAR2(32) NOT NULL,
    address VARCHAR(32) NOT NULL
);

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

CREATE TABLE Extra(
    extra_id VARCHAR2(6) NOT NULL,
    booking_id vARCHAR(6) NOT NULL,
    desscription VARCHAR(100) NOT NULL,
    amount NUMBER(10,4) NOT NULL

);

select * from 