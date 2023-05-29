SELECT a.ticket_id, b.seat_id, c.name
FROM sbd.ticket a
INNER JOIN sbd.seat b ON a.seat_id = b.seat_id
INNER JOIN sbd.class c ON b.class_id = c.class_id;