USE sbd;
SELECT d.name AS agency_name, COUNT(a.ticket_id) AS ticket_count, b.name AS flight_name, SUM(a.price) AS flight_price
FROM sbd.ticket a
    INNER JOIN sbd.flight b ON a.flight_id = b.flight_id
    INNER JOIN sbd.admin c ON b.admin_id = c.admin_id
    INNER JOIN sbd.agency d ON c.agency_id = d.agency_id
GROUP BY d.name, b.name ORDER BY SUM(a.price) DESC ;