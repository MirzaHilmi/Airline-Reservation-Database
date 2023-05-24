INSERT INTO sbd.flight (airline_id, admin_id, name, destination, distance, departure, arrival, capacity)
VALUES (7, 5, 'MALANG-JAKARTA', 'Jakarta', 500, '2023-05-24 08:00:00', '2023-05-24 10:00:00', 10),
       (4, 1, 'YOGYAKARTA-SURABAYA', 'Surabaya', 300, '2023-05-24 09:30:00', '2023-05-24 11:30:00', 10),
       (2, 9, 'MEDAN-DENPASAR', 'Denpasar', 800, '2023-05-24 11:00:00', '2023-05-24 14:00:00', 10),
       (6, 3, 'PALU-MEDAN', 'Medan', 1000, '2023-05-24 13:15:00', '2023-05-24 16:15:00', 10),
       (1, 5, 'SUMUT-MAKASSAR', 'Makassar', 700, '2023-05-24 15:30:00', '2023-05-24 18:30:00', 10),
       (9, 2, 'LOMBOK-YOGYAKARTA', 'Yogyakarta', 400, '2023-05-24 17:45:00', '2023-05-24 19:45:00', 10),
       (8, 8, 'BLITAR-BALIKPAPAN', 'Balikpapan', 900, '2023-05-24 20:00:00', '2023-05-24 23:00:00', 10),
       (5, 7, 'KEDIRI-BANDUNG', 'Bandung', 200, '2023-05-24 06:30:00', '2023-05-24 08:30:00', 10),
       (10, 6, 'NGAWI-PONTIANAK', 'Pontianak', 600, '2023-05-24 09:45:00', '2023-05-24 12:45:00', 10),
       (3, 4, 'PEKANBARU-MANADO', 'Manado', 1200, '2023-05-24 14:15:00', '2023-05-24 17:15:00', 10);

SELECT *
FROM sbd.flight;