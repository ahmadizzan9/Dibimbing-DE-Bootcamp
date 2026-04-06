SELECT * FROM reservations



UPDATE reservations
SET check_out_date = '2026-03-09'
WHERE reservation_id = 159;

SELECT * FROM guests;
SELECT * FROM employees;
SELECT * FROM rooms;
SELECT * FROM room_types;
SELECT * FROM reservations;

CREATE TABLE Payment(
    payment_id SERIAL PRIMARY KEY,
    reservation_id int REFERENCES reservations(reservation_id),
    amount NUMERIC(12, 2),
    payment_method payment_method
)

WITH room_price as(
    SELECT 
        reservation_id, 
        price_per_night, 
        check_out_date - check_in_date AS nights
    FROM reservations re
    JOIN rooms ro on re.room_id = ro.room_id
    JOIN room_types rt on ro.type_id = rt.type_id
)
SELECT * FROM room_price
