ALTER TABLE Booking
ADD CONSTRAINT CK_Booking_room_no CHECK (room_type_requested in ('single','twin','family','double'));

ALTER TABLE room_type
ADD CONSTRAINT CK_room_type_id CHECK (id in ('single','twin','family','double'));



