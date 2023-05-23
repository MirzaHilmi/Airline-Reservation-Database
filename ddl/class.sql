DROP TABLE IF EXISTS sbd.class;

CREATE TABLE sbd.class
(
    class_id  INT,
    flight_id INT,
    type      ENUM ('FIRST', 'BUSINESS', 'ECONOMY'),
    price     DECIMAL(10, 2)
);