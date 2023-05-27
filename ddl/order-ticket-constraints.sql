ALTER TABLE sbd.order_ticket
    MODIFY order_ticket_id INT AUTO_INCREMENT,
    MODIFY date_order_placed DATETIME NOT NULL DEFAULT (NOW()),
    MODIFY date_order_paid DATETIME NULL,
    ADD CONSTRAINT pk_order_ticket_order_ticket_id PRIMARY KEY (order_ticket_id),
    ADD CONSTRAINT fk_order_ticket_customer_id FOREIGN KEY (customer_id) REFERENCES sbd.customer (customer_id) ON UPDATE CASCADE ON DELETE CASCADE;

DESCRIBE sbd.order_ticket;
