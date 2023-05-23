ALTER TABLE sbd.payment
    MODIFY payment_id INT AUTO_INCREMENT,
    MODIFY method ENUM ('CASH', 'BANK') NOT NULL,
    MODIFY amount DECIMAL(10, 2) NOT NULL,
    ADD CONSTRAINT pk_payment_payment_id PRIMARY KEY (payment_id);

DESCRIBE sbd.payment;