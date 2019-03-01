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