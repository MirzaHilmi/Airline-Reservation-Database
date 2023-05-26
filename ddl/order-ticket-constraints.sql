ALTER TABLE sbd.order_ticket
    MODIFY order_ticket_id INT AUTO_INCREMENT,
    MODIFY date_order_placed DATETIME NOT NULL DEFAULT (NOW()),
    MODIFY date_order_paid DATETIME NULL,
    ADD CONSTRAINT pk_order_ticket_order_ticket_id PRIMARY KEY (order_ticket_id),
    ADD CONSTRAINT fk_order_ticket_customer_id FOREIGN KEY (customer_id) REFERENCES sbd.customer (customer_id) ON UPDATE CASCADE ON DELETE CASCADE;

DELIMITER //

CREATE TRIGGER update_order_price_amount
AFTER INSERT ON sbd.ticket FOR EACH ROW
BEGIN
    UPDATE sbd.order_ticket
    SET price_amount = (
        SELECT SUM(price)
        FROM sbd.ticket
        WHERE order_ticket_id = NEW.order_ticket_id
    )
    WHERE order_ticket_id = NEW.order_ticket_id;
END //

DELIMITER ;

DESCRIBE sbd.order_ticket;
