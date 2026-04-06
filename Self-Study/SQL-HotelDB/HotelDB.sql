-- Active: 1773045543381@@127.0.0.1@9030@HotelDB
CREATE TABLE guests (
    guest_id SERIAL PRIMARY KEY,
    full_name varchar(100),
    email varchar(100),
    phone_number varchar(20),
    nationality varchar(50)
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    full_name varchar(100),
    role varchar(20),
    salary NUMERIC(10, 2)
);

CREATE TABLE room_types (
    type_id SERIAL PRIMARY KEY,
    type_name varchar(50),
    description text,
    price_per_night NUMERIC(10, 2)
);

CREATE TABLE rooms (
    room_id SERIAL PRIMARY KEY,
    type_id int REFERENCES room_types(type_id),
    room_number CHAR(3),
    floor int
);

CREATE TYPE reservation_status AS ENUM ('pending', 'confirmed', 'checked_in', 'checked_out', 'cancelled');
CREATE TYPE payment_method AS ENUM ('Cash', 'Credit Card', 'Debit Card', 'Transfer Bank', 'QRIS');

CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,
    guest_id int REFERENCES guests(guest_id),
    room_id int REFERENCES rooms(room_id),
    employee_id int REFERENCES employees(employee_id),
    status reservation_status DEFAULT 'pending',
    check_in_date date,
    check_out_date date,
    payment_method payment_method
);


DROP TABLE IF EXISTS payment_method_fees;
DROP TABLE IF EXISTS reservations;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS room_types;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS guests;