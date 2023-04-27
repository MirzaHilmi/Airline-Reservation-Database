ALTER TABLE sbd.ticket
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT pk_ticket_id PRIMARY KEY (id),
    ADD CONSTRAINT fk_ticket_flight_id FOREIGN KEY (flight_id) REFERENCES sbd.flight (id),
    ADD CONSTRAINT fk_ticket_seat_id FOREIGN KEY (seat_id) REFERENCES sbd.seat (id),
    MODIFY price DECIMAL(10, 2) NOT NULL;

ALTER TABLE sbd.ticket
    ALTER id SET DEFAULT (UUID());