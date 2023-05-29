DROP TABLE IF EXISTS sbd.ticket;

CREATE TABLE sbd.ticket
(
    ticket_id       INT,
    flight_id       INT,
    seat_id         INT,
    order_ticket_id INT,
    price           DECIMAL(10, 2)
);