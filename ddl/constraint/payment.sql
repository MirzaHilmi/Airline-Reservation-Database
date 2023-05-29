ALTER TABLE sbd.payment
    MODIFY payment_id INT AUTO_INCREMENT,
    MODIFY payment_method ENUM ('BCA', 'BRI', 'BNI', 'MANDIRI', 'BSI') NOT NULL,
    ADD CONSTRAINT pk_payment_payment_id PRIMARY KEY (payment_id),
    ADD CONSTRAINT fk_payment_order_ticket_id FOREIGN KEY (order_ticket_id) REFERENCES sbd.order_ticket (order_ticket_id) ON UPDATE CASCADE ON DELETE CASCADE;

DESCRIBE sbd.payment;