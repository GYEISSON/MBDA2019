--Booking 

ALTER TABLE Booking 
ADD CONSTRAINT FK_ROOM_NO FOREIGN KEY(room_no) REFERENCES Room(id);

ALTER TABLE Booking 
ADD CONSTRAINT FK_GST_ID FOREIGN KEY(guest_id) REFERENCES Guest(id);

ALTER TABLE Booking 
ADD CONSTRAINT booking_ibfk_4 FOREIGN KEY (room_type_requested, occupants) REFERENCES rate (room_type, occupancy);

ALTER TABLE Booking 
ADD CONSTRAINT FK_ROOM_TYRQSTD FOREIGN KEY(room_type_requested) REFERENCES Room_type(id);


-- Rate

ALTER TABLE Rate 
ADD CONSTRAINT ROOMTYP FOREIGN KEY (room_type) REFERENCES Room_type(id);


-- Room
ALTER TABLE Room 
ADD CONSTRAINT FK_ROOM_TYPE FOREIGN KEY (room_type) REFERENCES Room_type(id);


-- Extra
ALTER TABLE Extra ADD CONSTRAINT FK_EXTRA FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);



