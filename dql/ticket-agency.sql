SELECT a.ticket_id, b.name AS flight_name, d.name AS agency_name
FROM sbd.ticket a
INNER JOIN sbd.flight b ON a.flight_id = b.flight_id
INNER JOIN sbd.admin c ON b.admin_id = c.admin_id
INNER JOIN sbd.agency d ON c.agency_id = d.agency_id;