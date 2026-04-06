-- ============================================================
--  HOTEL DATABASE — Dummy Data
--  15 guests, 18 staff, 5 room types, 30 rooms
--  164 reservations (Jan 2024 - Mar 2026)
--  164 payments with 5 payment methods
-- ============================================================

-- ============================================================
-- room_type
-- ============================================================
INSERT INTO 
    room_types (type_name, description, price_per_night) 
VALUES
    ('Standard',     'Comfortable room with basic amenities',           500000),
    ('Deluxe',       'Spacious room with city view and mini bar',       850000),
    ('Suite',        'Luxurious suite with separate living area',      1500000),
    ('Family',       'Large room with extra beds for families',        1100000),
    ('Presidential', 'Top-floor suite with panoramic view and butler', 4000000);

-- ============================================================
-- rooms (30 rooms)
-- ============================================================
INSERT INTO
    rooms (type_id, room_number, floor)
VALUES
    -- Floor 1 (mostly Standard)
    (1, '101', 1),
    (1, '102', 1),
    (1, '103', 1),
    (1, '104', 1),
    (1, '105', 1),
    (1, '106', 1),
    (2, '107', 1),
    (2, '108', 1),
    -- Floor 2 (Standard and Deluxe)
    (1, '201', 2),
    (1, '202', 2),
    (2, '203', 2),
    (2, '204', 2),
    (2, '205', 2),
    (2, '206', 2),
    (3, '207', 2),
    (1, '208', 2),
    -- Floor 3 (Deluxe and Suite) — 7 rooms
    (2, '301', 3),
    (2, '302', 3),
    (3, '303', 3),
    (3, '304', 3),
    (2, '305', 3),
    (3, '306', 3),
    (2, '307', 3),
    -- Floor 4 (Suite and Family) — 4 rooms
    (4, '401', 4),
    (4, '402', 4),
    (3, '403', 4),
    (4, '404', 4),
    -- Floor 5 (Family and Presidential)
    (4, '501', 5),
    (5, '502', 5),
    (5, '503', 5);

-- ============================================================
-- staff (18 staff)
-- ============================================================
INSERT INTO
    employees (full_name, role, salary)
VALUES
    ('Agus Prasetyo',    'Front Desk',  5500000),
    ('Lina Wati',        'Front Desk',  5200000),
    ('Hendra Wijaya',    'Front Desk',  5800000),
    ('Farida Hanum',     'Front Desk',  5300000),
    ('Teguh Santoso',    'Front Desk',  6000000),
    ('Ningsih Larasati', 'Front Desk',  5100000),
    ('Bambang Irawan',   'Front Desk',  5700000),
    ('Citra Dewi',       'Front Desk',  5400000),
    ('Rizky Pratama',    'Concierge',   6700000),
    ('Nadia Safitri',    'Concierge',   6900000),
    ('Eko Budiman',      'Concierge',   7300000),
    ('Tari Indrawati',   'Concierge',   7600000),
    ('Hasan Basri',      'Supervisor',  8300000),
    ('Melinda Sari',     'Supervisor',  8900000),
    ('Yusuf Hakim',      'Supervisor',  9400000),
    ('Dian Pertiwi',     'Manager',    12300000),
    ('Rendra Kusuma',    'Manager',    13800000),
    ('Surya Atmaja',     'Manager',    14600000);

-- ============================================================
-- guest (15 guests)
-- ============================================================
INSERT INTO 
    guests (full_name, email, phone_number, nationality) 
VALUES
    ('Budi Santoso',  'budi.santoso@email.com',  '081234567890', 'Indonesian'),
    ('Siti Rahayu',   'siti.rahayu@email.com',   '081234567891', 'Indonesian'),
    ('James Wilson',  'james.wilson@email.com',  '081234567892', 'American'),
    ('Yuki Tanaka',   'yuki.tanaka@email.com',   '081234567893', 'Japanese'),
    ('Maria Santos',  'maria.santos@email.com',  '081234567894', 'Brazilian'),
    ('Ahmad Fauzi',   'ahmad.fauzi@email.com',   '081234567895', 'Indonesian'),
    ('Li Wei',        'li.wei@email.com',        '081234567896', 'Chinese'),
    ('Emma Thompson', 'emma.thompson@email.com', '081234567897', 'British'),
    ('Rina Putri',    'rina.putri@email.com',    '081234567898', 'Indonesian'),
    ('Carlos Mendez', 'carlos.mendez@email.com', '081234567899', 'Mexican'),
    ('Dewi Kusuma',   'dewi.kusuma@email.com',   '081234567900', 'Indonesian'),
    ('Robert Kim',    'robert.kim@email.com',    '081234567901', 'Korean'),
    ('Priya Sharma',  'priya.sharma@email.com',  '081234567902', 'Indian'),
    ('Hassan Ali',    'hassan.ali@email.com',    '081234567903', 'Malaysian'),
    ('Sophie Martin', 'sophie.martin@email.com', '081234567904', 'French');

    -- ============================================================
--  HOTEL RESERVATIONS — 164 rows
--  Includes payment_method column
--  Room IDs calibrated to new rooms layout
--  Presidential = 29, 30 | Family = 24,25,27,28
--  Suite = 15,19,20,22,26 | Deluxe = 7,8,11,12,13,14,17,18,21,23
--  Standard = 1,2,3,4,5,6,9,10,16
-- ============================================================

INSERT INTO 
    reservations (guest_id, room_id, employee_id, status, check_in_date, check_out_date, payment_method) 
VALUES
    -- Q1 2024
    (3,  29, 1, 'checked_out', '2024-01-05', '2024-01-12', 'Credit Card'),
    (1,   1, 2, 'checked_out', '2024-01-06', '2024-01-09', 'Cash'),
    (8,  19, 3, 'checked_out', '2024-01-10', '2024-01-17', 'Credit Card'),
    (6,  11, 4, 'checked_out', '2024-01-12', '2024-01-15', 'QRIS'),
    (4,  24, 5, 'checked_out', '2024-01-15', '2024-01-19', 'Transfer Bank'),
    (2,   2, 6, 'checked_out', '2024-01-18', '2024-01-21', 'Debit Card'),
    (10, 11, 7, 'checked_out', '2024-01-20', '2024-01-24', 'QRIS'),
    (15, 19, 8, 'cancelled',   '2024-01-22', '2024-01-27', 'Credit Card'),
    (5,   3, 1, 'checked_out', '2024-02-03', '2024-02-06', 'Cash'),
    (12, 12, 2, 'checked_out', '2024-02-05', '2024-02-09', 'Credit Card'),
    (7,  20, 3, 'checked_out', '2024-02-10', '2024-02-16', 'QRIS'),
    (14, 25, 4, 'checked_out', '2024-02-14', '2024-02-18', 'Transfer Bank'),
    (1,   4, 5, 'checked_out', '2024-02-20', '2024-02-23', 'Credit Card'),
    (3,  30, 6, 'checked_out', '2024-03-01', '2024-03-08', 'Cash'),
    (6,  13, 7, 'checked_out', '2024-03-05', '2024-03-08', 'Credit Card'),
    (9,   5, 8, 'checked_out', '2024-03-10', '2024-03-13', 'Debit Card'),
    (11, 22, 1, 'checked_out', '2024-03-15', '2024-03-20', 'QRIS'),
    (13, 27, 2, 'cancelled',   '2024-03-18', '2024-03-22', 'Transfer Bank'),
    (2,   6, 3, 'checked_out', '2024-03-22', '2024-03-25', 'Credit Card'),
    -- Q2 2024
    (8,  29, 4, 'checked_out', '2024-04-01', '2024-04-09', 'Credit Card'),
    (3,  20, 5, 'checked_out', '2024-04-03', '2024-04-08', 'Cash'),
    (6,  12, 6, 'checked_out', '2024-04-05', '2024-04-09', 'Credit Card'),
    (1,   7, 7, 'checked_out', '2024-04-08', '2024-04-11', 'Debit Card'),
    (4,  24, 8, 'checked_out', '2024-04-10', '2024-04-15', 'QRIS'),
    (14,  1, 1, 'checked_out', '2024-04-12', '2024-04-15', 'Cash'),
    (10, 13, 2, 'checked_out', '2024-04-15', '2024-04-19', 'Credit Card'),
    (7,  22, 3, 'checked_out', '2024-04-18', '2024-04-24', 'Transfer Bank'),
    (15,  2, 4, 'checked_out', '2024-04-20', '2024-04-23', 'Credit Card'),
    (8,  30, 5, 'checked_out', '2024-05-01', '2024-05-09', 'QRIS'),
    (6,  11, 6, 'checked_out', '2024-05-03', '2024-05-07', 'Cash'),
    (3,  19, 7, 'checked_out', '2024-05-05', '2024-05-12', 'Credit Card'),
    (11,  3, 8, 'checked_out', '2024-05-08', '2024-05-11', 'Debit Card'),
    (5,  25, 1, 'checked_out', '2024-05-12', '2024-05-17', 'Transfer Bank'),
    (12,  4, 2, 'checked_out', '2024-05-18', '2024-05-21', 'Credit Card'),
    (1,  13, 3, 'pending',     '2024-05-25', '2024-05-28', 'QRIS'),
    (4,  27, 4, 'checked_out', '2024-06-01', '2024-06-07', 'Cash'),
    (6,  20, 5, 'checked_out', '2024-06-03', '2024-06-08', 'Credit Card'),
    (3,  29, 6, 'checked_out', '2024-06-10', '2024-06-18', 'Transfer Bank'),
    (9,   5, 7, 'checked_out', '2024-06-12', '2024-06-15', 'Credit Card'),
    (13, 12, 8, 'checked_out', '2024-06-15', '2024-06-19', 'Debit Card'),
    (7,  22, 1, 'checked_out', '2024-06-20', '2024-06-26', 'QRIS'),
    (2,   6, 2, 'checked_out', '2024-06-22', '2024-06-25', 'Cash'),
    -- Q3 2024
    (8,  30, 3, 'checked_out', '2024-07-01', '2024-07-10', 'Credit Card'),
    (6,  14, 4, 'checked_out', '2024-07-03', '2024-07-07', 'Transfer Bank'),
    (14, 28, 5, 'checked_out', '2024-07-05', '2024-07-11', 'Credit Card'),
    (1,   7, 6, 'checked_out', '2024-07-08', '2024-07-11', 'QRIS'),
    (3,  19, 7, 'checked_out', '2024-07-12', '2024-07-19', 'Debit Card'),
    (10,  1, 8, 'checked_out', '2024-07-15', '2024-07-18', 'Cash'),
    (15, 13, 1, 'checked_out', '2024-07-20', '2024-07-24', 'Credit Card'),
    (5,  25, 2, 'cancelled',   '2024-07-22', '2024-07-27', 'Transfer Bank'),
    (12,  2, 3, 'checked_out', '2024-08-05', '2024-08-08', 'Credit Card'),
    (4,  19, 4, 'checked_out', '2024-08-08', '2024-08-14', 'Cash'),
    (6,  11, 5, 'checked_out', '2024-08-12', '2024-08-16', 'QRIS'),
    (9,   3, 6, 'checked_out', '2024-08-18', '2024-08-21', 'Debit Card'),
    (7,  27, 7, 'checked_out', '2024-08-22', '2024-08-27', 'Credit Card'),
    (1,   8, 8, 'checked_out', '2024-09-03', '2024-09-06', 'Transfer Bank'),
    (13, 20, 1, 'checked_out', '2024-09-08', '2024-09-13', 'Credit Card'),
    (2,  12, 2, 'checked_out', '2024-09-15', '2024-09-18', 'QRIS'),
    (8,  29, 3, 'confirmed',   '2024-09-25', '2024-10-02', 'Credit Card'),
    -- Q4 2024
    (3,  30, 4, 'checked_out', '2024-10-01', '2024-10-08', 'Cash'),
    (6,  14, 5, 'checked_out', '2024-10-05', '2024-10-09', 'Credit Card'),
    (11,  4, 6, 'checked_out', '2024-10-10', '2024-10-13', 'Debit Card'),
    (14, 28, 7, 'checked_out', '2024-10-15', '2024-10-21', 'QRIS'),
    (7,  22, 8, 'checked_out', '2024-10-22', '2024-10-28', 'Transfer Bank'),
    (15,  1, 1, 'pending',     '2024-10-28', '2024-10-31', 'Cash'),
    (8,  30, 2, 'checked_out', '2024-11-01', '2024-11-09', 'Credit Card'),
    (1,   5, 3, 'checked_out', '2024-11-05', '2024-11-08', 'QRIS'),
    (6,  13, 4, 'checked_out', '2024-11-10', '2024-11-14', 'Transfer Bank'),
    (4,  22, 5, 'checked_out', '2024-11-15', '2024-11-21', 'Credit Card'),
    (10, 24, 6, 'cancelled',   '2024-11-20', '2024-11-24', 'Debit Card'),
    (2,   6, 7, 'checked_out', '2024-11-22', '2024-11-25', 'Cash'),
    (3,  29, 8, 'checked_out', '2024-12-01', '2024-12-08', 'Credit Card'),
    (8,  19, 1, 'checked_out', '2024-12-05', '2024-12-12', 'QRIS'),
    (6,  12, 2, 'checked_out', '2024-12-08', '2024-12-12', 'Credit Card'),
    (14, 25, 3, 'checked_out', '2024-12-10', '2024-12-16', 'Transfer Bank'),
    (1,   2, 4, 'checked_out', '2024-12-15', '2024-12-18', 'Debit Card'),
    (9,   7, 5, 'checked_out', '2024-12-18', '2024-12-21', 'Cash'),
    (7,  20, 6, 'checked_out', '2024-12-20', '2024-12-27', 'Credit Card'),
    (15, 14, 7, 'checked_out', '2024-12-22', '2024-12-26', 'QRIS'),
    (4,  27, 8, 'checked_out', '2024-12-26', '2024-12-31', 'Transfer Bank'),
    -- Q1 2025
    (3,  30, 1, 'checked_out', '2025-01-03', '2025-01-10', 'Credit Card'),
    (6,  11, 2, 'checked_out', '2025-01-05', '2025-01-08', 'Cash'),
    (8,  20, 3, 'checked_out', '2025-01-10', '2025-01-17', 'Debit Card'),
    (1,   3, 4, 'checked_out', '2025-01-12', '2025-01-15', 'Credit Card'),
    (12, 24, 5, 'checked_out', '2025-01-18', '2025-01-23', 'QRIS'),
    (2,   4, 6, 'confirmed',   '2025-01-25', '2025-01-28', 'Transfer Bank'),
    (5,   5, 7, 'checked_out', '2025-02-05', '2025-02-08', 'Credit Card'),
    (7,  22, 8, 'checked_out', '2025-02-10', '2025-02-16', 'Cash'),
    (13, 13, 1, 'checked_out', '2025-02-15', '2025-02-19', 'Debit Card'),
    (6,  25, 2, 'cancelled',   '2025-02-20', '2025-02-25', 'Credit Card'),
    (3,  29, 3, 'checked_out', '2025-03-01', '2025-03-08', 'QRIS'),
    (8,  20, 4, 'checked_out', '2025-03-05', '2025-03-11', 'Credit Card'),
    (1,   6, 5, 'checked_out', '2025-03-10', '2025-03-13', 'Transfer Bank'),
    (10, 12, 6, 'checked_out', '2025-03-15', '2025-03-19', 'Credit Card'),
    (14, 27, 7, 'checked_out', '2025-03-20', '2025-03-26', 'Cash'),
    -- Q2 2025
    (6,  30, 8, 'checked_out', '2025-04-01', '2025-04-08', 'Credit Card'),
    (3,  19, 1, 'checked_out', '2025-04-03', '2025-04-10', 'Debit Card'),
    (8,  14, 2, 'checked_out', '2025-04-05', '2025-04-09', 'QRIS'),
    (4,  28, 3, 'checked_out', '2025-04-08', '2025-04-14', 'Credit Card'),
    (1,   7, 4, 'checked_out', '2025-04-12', '2025-04-15', 'Cash'),
    (15,  2, 5, 'checked_out', '2025-04-18', '2025-04-21', 'Transfer Bank'),
    (7,  22, 6, 'checked_out', '2025-04-22', '2025-04-28', 'Credit Card'),
    (8,  30, 7, 'checked_out', '2025-05-01', '2025-05-10', 'QRIS'),
    (6,  13, 8, 'checked_out', '2025-05-05', '2025-05-09', 'Cash'),
    (3,  20, 1, 'checked_out', '2025-05-12', '2025-05-19', 'Credit Card'),
    (11,  3, 2, 'checked_out', '2025-05-15', '2025-05-18', 'Debit Card'),
    (5,  24, 3, 'checked_out', '2025-05-20', '2025-05-25', 'Transfer Bank'),
    (4,  28, 4, 'checked_out', '2025-06-01', '2025-06-07', 'Credit Card'),
    (6,  12, 5, 'checked_out', '2025-06-05', '2025-06-09', 'QRIS'),
    (3,  29, 6, 'checked_out', '2025-06-10', '2025-06-18', 'Credit Card'),
    (9,   8, 7, 'checked_out', '2025-06-12', '2025-06-15', 'Cash'),
    (7,  22, 8, 'checked_out', '2025-06-20', '2025-06-26', 'Debit Card'),
    (13, 14, 1, 'pending',     '2025-06-25', '2025-06-29', 'Credit Card'),
    -- Q3 2025
    (8,  30, 2, 'checked_out', '2025-07-01', '2025-07-10', 'Credit Card'),
    (6,  11, 3, 'checked_out', '2025-07-03', '2025-07-07', 'Transfer Bank'),
    (14, 25, 4, 'checked_out', '2025-07-05', '2025-07-11', 'QRIS'),
    (1,   1, 5, 'checked_out', '2025-07-08', '2025-07-11', 'Credit Card'),
    (3,  19, 6, 'checked_out', '2025-07-12', '2025-07-19', 'Cash'),
    (10,  4, 7, 'checked_out', '2025-07-15', '2025-07-18', 'Debit Card'),
    (12, 27, 8, 'checked_out', '2025-07-20', '2025-07-26', 'Credit Card'),
    (2,   5, 1, 'checked_out', '2025-08-05', '2025-08-08', 'QRIS'),
    (4,  19, 2, 'checked_out', '2025-08-10', '2025-08-16', 'Credit Card'),
    (6,  13, 3, 'checked_out', '2025-08-15', '2025-08-19', 'Cash'),
    (15,  6, 4, 'checked_out', '2025-08-20', '2025-08-23', 'Transfer Bank'),
    (1,   2, 5, 'checked_out', '2025-09-03', '2025-09-06', 'Credit Card'),
    (7,  20, 6, 'checked_out', '2025-09-08', '2025-09-14', 'Debit Card'),
    (13, 12, 7, 'cancelled',   '2025-09-15', '2025-09-19', 'QRIS'),
    (3,  30, 8, 'confirmed',   '2025-09-25', '2025-10-02', 'Credit Card'),
    -- Q4 2025
    (8,  29, 1, 'checked_out', '2025-10-01', '2025-10-08', 'Credit Card'),
    (6,  14, 2, 'checked_out', '2025-10-05', '2025-10-09', 'Cash'),
    (11,  3, 3, 'checked_out', '2025-10-10', '2025-10-13', 'Transfer Bank'),
    (14, 24, 4, 'checked_out', '2025-10-15', '2025-10-21', 'Credit Card'),
    (7,  22, 5, 'checked_out', '2025-10-22', '2025-10-28', 'QRIS'),
    (3,  30, 6, 'checked_out', '2025-11-01', '2025-11-08', 'Credit Card'),
    (1,   7, 7, 'checked_out', '2025-11-05', '2025-11-08', 'Debit Card'),
    (6,  11, 8, 'checked_out', '2025-11-10', '2025-11-14', 'Cash'),
    (4,  22, 1, 'checked_out', '2025-11-15', '2025-11-21', 'Credit Card'),
    (2,   4, 2, 'checked_out', '2025-11-22', '2025-11-25', 'QRIS'),
    (10, 28, 3, 'confirmed',   '2025-11-28', '2025-12-03', 'Transfer Bank'),
    (8,  30, 4, 'checked_out', '2025-12-01', '2025-12-09', 'Credit Card'),
    (3,  19, 5, 'checked_out', '2025-12-05', '2025-12-12', 'Cash'),
    (6,  13, 6, 'checked_out', '2025-12-08', '2025-12-12', 'Credit Card'),
    (14, 27, 7, 'checked_out', '2025-12-10', '2025-12-16', 'Debit Card'),
    (1,   5, 8, 'checked_out', '2025-12-15', '2025-12-18', 'QRIS'),
    (9,   8, 1, 'checked_out', '2025-12-18', '2025-12-21', 'Credit Card'),
    (7,  20, 2, 'checked_out', '2025-12-20', '2025-12-27', 'Transfer Bank'),
    (15, 12, 3, 'checked_out', '2025-12-22', '2025-12-26', 'Credit Card'),
    (4,  25, 4, 'checked_out', '2025-12-26', '2025-12-31', 'Cash'),
    -- Q1 2026
    (3,  29, 5, 'checked_out', '2026-01-03', '2026-01-10', 'Credit Card'),
    (6,  14, 6, 'checked_out', '2026-01-05', '2026-01-08', 'QRIS'),
    (8,  20, 7, 'checked_out', '2026-01-10', '2026-01-17', 'Credit Card'),
    (1,   1, 8, 'checked_out', '2026-01-15', '2026-01-18', 'Cash'),
    (14, 28, 1, 'checked_out', '2026-01-20', '2026-01-26', 'Transfer Bank'),
    (7,  22, 2, 'checked_out', '2026-02-03', '2026-02-09', 'Credit Card'),
    (2,   6, 3, 'checked_out', '2026-02-10', '2026-02-13', 'Debit Card'),
    (3,  30, 4, 'checked_out', '2026-02-15', '2026-02-22', 'Credit Card'),
    (10, 13, 5, 'checked_out', '2026-02-20', '2026-02-24', 'QRIS'),
    (8,  30, 6, 'checked_in',  '2026-03-01', '2026-03-09', 'Credit Card'),
    (6,  12, 7, 'checked_in',  '2026-03-03', '2026-03-07', 'Cash'),
    (4,  24, 8, 'checked_in',  '2026-03-05', '2026-03-10', 'Transfer Bank'),
    (3,  19, 1, 'confirmed',   '2026-03-10', '2026-03-17', 'Credit Card'),
    (1,   7, 2, 'confirmed',   '2026-03-12', '2026-03-15', 'Debit Card'),
    (14, 27, 3, 'pending',     '2026-03-15', '2026-03-20', 'QRIS'),
    (15,  2, 4, 'cancelled',   '2026-03-08', '2026-03-12', 'Cash');