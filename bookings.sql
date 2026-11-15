CREATE DATABASE IF NOT EXISTS airline_db;
USE airline_db;

CREATE TABLE IF NOT EXISTS passengers (
  passenger_id INT PRIMARY KEY,
  name VARCHAR(50),
  current_location VARCHAR(50),
  destination VARCHAR(50),
  travel_date DATE
);

CREATE TABLE IF NOT EXISTS bookings (
  booking_id INT PRIMARY KEY,
  passenger_id INT,
  class_tier VARCHAR(20),
  seat_preference VARCHAR(20),
  lounge_pass_code VARCHAR(20),
  seat_number VARCHAR(10),
  suite_number VARCHAR(20),
  chauffeur_service TINYINT(1),
  FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);

INSERT IGNORE INTO passengers VALUES
(1, 'Biruk', 'Kigali', 'Dubai', '2026-12-01'),
(2, 'Genereuse', 'Namibia', 'Zanzibar', '2027-02-14');

INSERT IGNORE INTO bookings VALUES
(1, 1, 'First', 'Window', 'LOUNGE-01', '14A', 'Suite 01', 1),
(2, 2, 'First', 'Window', 'LOUNGE-02', '12C', 'Suite-02', 1),
(3, 2, 'Economy', 'Aisle', NULL, '15B', NULL, 0);
