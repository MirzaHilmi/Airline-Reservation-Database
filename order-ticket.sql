CREATE TABLE sbd.order_ticket
(
    id                VARCHAR(36),
    agency_id         VARCHAR(36),
    customer_id       VARCHAR(36),
    ticket_id         VARCHAR(36),
    payment_id        VARCHAR(36),
    price_amount      DECIMAL(10, 2),
    date_order_placed DATETIME,
    date_order_paid   DATETIME
);