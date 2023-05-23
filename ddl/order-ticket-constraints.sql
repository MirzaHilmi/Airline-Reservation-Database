ALTER TABLE sbd.order_ticket
    MODIFY order_ticket_id INT AUTO_INCREMENT,
    MODIFY date_order_placed DATETIME NOT NULL DEFAULT (NOW()),
    MODIFY date_order_paid DATETIME NOT NULL,
    MODIFY price_amount DECIMAL(10, 2) NOT NULL,
    ADD CONSTRAINT pk_order_ticket_order_ticket_id PRIMARY KEY (order_ticket_id),
    ADD CONSTRAINT fk_order_ticket_agency_id FOREIGN KEY (agency_id) REFERENCES sbd.agency (agency_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_order_ticket_customer_id FOREIGN KEY (customer_id) REFERENCES sbd.customer (customer_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_order_ticket_ticket_id FOREIGN KEY (ticket_id) REFERENCES sbd.ticket (ticket_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_order_ticket_payment_id FOREIGN KEY (payment_id) REFERENCES sbd.payment (payment_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_order_ticket_payment_id UNIQUE (payment_id);

DESCRIBE sbd.order_ticket;
