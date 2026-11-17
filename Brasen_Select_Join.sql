-- Activity III - Airline Booking Database
-- Contributor: Brasen - SELECT (Read) & INNER JOIN

USE airline_db;

-- READ: passengers in Business or First Class. Subquery, so nobody is listed twice.
SELECT *
FROM passengers
WHERE passenger_id IN (
    SELECT passenger_id FROM bookings
    WHERE class_tier IN ('Business', 'First')
);

-- JOIN: full ticket receipt. INNER, because a receipt needs a real booking.
SELECT
    p.name             AS passenger_name,
    p.destination      AS destination,
    b.class_tier       AS class_tier,
    b.seat_number,
    b.seat_preference,
    b.lounge_pass_code,
    b.suite_number,
    b.chauffeur_service
FROM passengers p
INNER JOIN bookings b
    ON p.passenger_id = b.passenger_id;
