# Retrieve the average price of tickets sold for each class on a specific flight:
SELECT c.name AS class_name, AVG(t.price) AS average_ticket_price
FROM sbd.class c
         JOIN seat s ON c.class_id = s.class_id
         JOIN sbd.ticket t ON s.seat_id = t.seat_id
WHERE t.flight_id = 1
GROUP BY c.name;
