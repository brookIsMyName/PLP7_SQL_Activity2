
USE airline_db;

INSERT INTO passengers
	(passenger_id, name, current_location, destination, travel_date)
VALUES
	(3, 'Josia', 'Kigali', 'Nairobi', '2026-12-12'),
	(4, 'Gabriel', 'Kigali', 'London', '2026-12-18'),
	(5, 'Brasen', 'Kigali', 'Paris', '2026-12-20'),
	(6, 'Valentin', 'Kigali', 'Doha', '2026-12-22');

INSERT INTO bookings
	(booking_id, passenger_id, class_tier, seat_preference, lounge_pass_code, seat_number, suite_number, chauffeur_service)

VALUES
	(4, 3, 'Business', 'Aisle', 'LOUNGE-03', '10A', NULL, 0),
	(5, 4, 'Economy', 'Window', NULL, '18B', NULL, 0),
	(6, 5, 'Business', 'Window', 'LOUNGE-04', '09C', NULL, 0),
	(7, 6, 'First', 'Aisle', 'LOUNGE-05', '02A', 'Suite-03', 1);

SELECT * FROM passengers;

SELECT * FROM bookings;
