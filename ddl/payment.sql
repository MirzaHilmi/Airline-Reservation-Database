DROP TABLE IF EXISTS sbd.payment;

CREATE TABLE sbd.payment
(
    payment_id      INT,
    order_ticket_id INT,
    payment_method  ENUM ('BCA', 'BRI', 'BNI', 'MANDIRI', 'BSI'),
    amount          DECIMAL(10, 2)
);