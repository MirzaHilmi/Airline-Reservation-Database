DROP TABLE IF EXISTS sbd.class;

CREATE TABLE sbd.class
(
    class_id  INT,
    flight_id INT,
    name      ENUM ('FIRST', 'BUSINESS', 'ECONOMY')
);