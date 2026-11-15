USE airline_db;


SELECT booking_id, passenger_id, seat_preference
FROM bookings WHERE booking_id = 4;

UPDATE bookings
SET seat_preference = 'Window'
WHERE booking_id = 4;

SELECT booking_id, passenger_id, seat_preference
FROM bookings WHERE booking_id = 4;

SELECT booking_id, passenger_id, class_tier
FROM bookings WHERE booking_id = 3;

DELETE FROM bookings
WHERE booking_id = 3;

SELECT COUNT(*) AS remaining_bookings_with_id_3
FROM bookings WHERE booking_id = 3;

SELECT passenger_id, name, destination
FROM passengers WHERE passenger_id = 2;
