ALTER TABLE sbd.ticket
    MODIFY ticket_id INT AUTO_INCREMENT,
    MODIFY price DECIMAL(10, 2) NOT NULL,
    ADD CONSTRAINT pk_ticket_ticket_id PRIMARY KEY (ticket_id),
    ADD CONSTRAINT fk_ticket_flight_id FOREIGN KEY (flight_id) REFERENCES sbd.flight (flight_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_ticket_seat_id FOREIGN KEY (seat_id) REFERENCES sbd.seat (seat_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_ticket_order_ticket_id FOREIGN KEY (order_ticket_id) REFERENCES sbd.order_ticket (order_ticket_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_ticket_seat_id UNIQUE (seat_id);

DESCRIBE sbd.ticket;