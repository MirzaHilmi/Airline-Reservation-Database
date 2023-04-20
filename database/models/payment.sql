CREATE TABLE sbd.payment
(
    id     VARCHAR(36),
    method ENUM ('CASH', 'BANK'),
    amount DECIMAL(10, 2)
);