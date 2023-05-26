DROP TABLE IF EXISTS sbd.order_ticket;

CREATE TABLE sbd.order_ticket
(
    order_ticket_id   INT,
    customer_id       INT,
    date_order_placed DATETIME,
    date_order_paid   DATETIME,
    price_amount      DECIMAL(10, 2)
);