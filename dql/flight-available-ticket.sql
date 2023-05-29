SELECT a.name, a.destination, a.departure, b.price
FROM sbd.flight a
INNER JOIN sbd.ticket b ON a.flight_id = b.flight_id
WHERE b.seat_id = (SELECT seat_id FROM sbd.seat WHERE seat_id = b.seat_id AND available);