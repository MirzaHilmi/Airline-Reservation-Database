SELECT b.ticket_id, a.name, a.departure, a.arrival
FROM sbd.flight a
INNER JOIN sbd.ticket b ON a.flight_id = b.flight_id;