-- ============================================================
-- Activity III - Airline Booking Database
-- Contributor: Brasen - SELECT (Read) & INNER JOIN
-- ============================================================

USE airline_db;

-- ------------------------------------------------------------
-- READ (EXTRACT): all passengers booked in Business or First Class.
--
-- Class tier is stored in `bookings`, but the prompt asks for
-- `passengers`, so the subquery collects the qualifying passenger IDs
-- and the outer query returns those passengers.
--
-- A subquery is used rather than a JOIN because a JOIN returns one row
-- per matching booking: a passenger holding two qualifying bookings
-- would be listed twice. IN tests membership, so each passenger
-- appears once.
-- ------------------------------------------------------------
SELECT *
FROM passengers
WHERE passenger_id IN (
    SELECT passenger_id FROM bookings
    WHERE class_tier IN ('Business', 'First')
);

-- ------------------------------------------------------------
-- JOIN (COMBINE): complete ticket receipt for every booking.
--
-- INNER JOIN returns only passengers who actually have a booking,
-- which is what a receipt means. A LEFT JOIN would list passengers
-- with no booking and NULL perks, which is not a ticket.
--
-- Columns are named explicitly rather than SELECT *, which would
-- return passenger_id twice and include fields a receipt does not need.
-- Note that a passenger with two bookings correctly appears twice here:
-- two bookings means two tickets.
-- ------------------------------------------------------------
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
