ALTER TABLE sbd.payment
    MODIFY payment_id INT AUTO_INCREMENT,
    MODIFY payment_method ENUM ('BCA', 'BRI', 'BNI', 'MANDIRI', 'BSI') NOT NULL,
    MODIFY amount DECIMAL(10, 2) NOT NULL,
    ADD CONSTRAINT pk_payment_payment_id PRIMARY KEY (payment_id),
    ADD CONSTRAINT fk_payment_order_ticket_id FOREIGN KEY (order_ticket_id) REFERENCES sbd.order_ticket (order_ticket_id) ON UPDATE CASCADE ON DELETE CASCADE;

DELIMITER //

CREATE TRIGGER update_payment_amount
AFTER INSERT ON sbd.order_ticket
FOR EACH ROW
BEGIN
    UPDATE sbd.payment
    SET amount = NEW.price_amount
    WHERE order_ticket_id = NEW.order_ticket_id;
END //

DELIMITER ;


DESCRIBE sbd.payment;