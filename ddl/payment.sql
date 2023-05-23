DROP TABLE IF EXISTS sbd.payment;

CREATE TABLE sbd.payment
(
    payment_id INT,
    method     ENUM ('CASH', 'BANK'),
    amount     DECIMAL(10, 2)
);