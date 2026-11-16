-- Activity III - Airline Booking Database
-- Contributor: Josia - Passengers table (parent table)
USE airline_db;

-- Parent table: must exist before bookings, whose FK references passenger_id
CREATE TABLE IF NOT EXISTS passengers (
    passenger_id     INT PRIMARY KEY,
    name             VARCHAR(50) NOT NULL,
    current_location VARCHAR(50) NOT NULL,
    destination      VARCHAR(50) NOT NULL,
    travel_date      DATE NOT NULL
);

DESCRIBE passengers;
