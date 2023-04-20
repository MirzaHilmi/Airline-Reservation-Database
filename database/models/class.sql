CREATE TABLE sbd.class
(
    id        VARCHAR(36),
    flight_id VARCHAR(36),
    type      ENUM ('FIRST', 'BUSINESS', 'ECONOMY'),
    price     DECIMAL(10, 2)
);