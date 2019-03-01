--Easy consultas 
--1
SELECT booking_date,nights
FROM booking
where guest_id = 1183

--2

SELECT arrival_time,first_name,last_name
FROM booking,guest
WHERE booking.guest_id = guest.id and
booking_date = '2016-11-05'
order by arrival_time

-- 3
SELECT booking_id,room_type_requested,occupants,amount
FROM booking,rate
WHERE booking.room_type_requested = rate.room_type and
booking.occupants = rate.occupancy and
booking_id in (5152,5165,51545295)

--4

SELECT first_name,last_name,address
FROM booking,guest
WHERE booking.guest_id = guest.id and booking.booking_date = 
'2016-12-03' and booking.room_no = 101

--5

SELECT guest_id , count(nights),sum(nights) 
FROM booking
WHERE guest_id in (1185,1270)
GROUP BY guest_id

/*
Medium Consultas
--6
*/

SELECT sum(booking.nights*rate.amount)
FROM booking,rate,guest
WHERE booking.guest_id = guest.id and 
    booking.occupants = rate.occupancy and
    booking.room_type_requested = rate.room_type and 
    first_name = 'Ruth' and last_name = 'Cadbury'


