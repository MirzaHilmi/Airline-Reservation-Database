ALTER TABLE sbd.order_ticket
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT pk_ticket_id PRIMARY KEY (id),
    ADD CONSTRAINT fk_ticket_agency_id FOREIGN KEY (agency_id) REFERENCES sbd.agency (id),
    ADD CONSTRAINT fk_ticket_customer_id FOREIGN KEY (customer_id) REFERENCES sbd.customer (id),
    ADD CONSTRAINT fk_ticket_ticket_id FOREIGN KEY (ticket_id) REFERENCES sbd.ticket (id),
    ADD CONSTRAINT fk_ticket_payment_id FOREIGN KEY (payment_id) REFERENCES sbd.payment (id),
    MODIFY price_amount DECIMAL(10, 2) NOT NULL,
    MODIFY date_order_placed DATETIME DEFAULT (NOW()),
    MODIFY date_order_paid DATETIME NOT NULL;

ALTER TABLE sbd.order_ticket
    ALTER id SET DEFAULT (UUID()),
    ALTER date_order_placed SET DEFAULT (NOW());
