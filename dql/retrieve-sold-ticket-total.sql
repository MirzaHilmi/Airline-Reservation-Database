SELECT f.name, f.destination, COUNT(t.ticket_id) AS total_tickets_sold
FROM sbd.flight f
JOIN sbd.ticket t ON f.flight_id = t.flight_id
GROUP BY f.name, f.destination;
