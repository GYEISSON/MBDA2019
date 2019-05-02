ALTER TABLE BOOKING DROP CONSTRAINT booking_ibfk_4;

ALTER TABLE Booking 
ADD CONSTRAINT booking_ibfk_4 FOREIGN KEY (room_type_requested, occupants) REFERENCES rate (room_type, occupancy);