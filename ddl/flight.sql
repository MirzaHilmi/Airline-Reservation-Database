DROP TABLE IF EXISTS sbd.flight;

CREATE TABLE sbd.flight
(
    flight_id   INT,
    airline_id  INT,
    admin_id    INT,
    name        VARCHAR(255),
    destination VARCHAR(255),
    distance    INT,
    departure   DATETIME,
    arrival     DATETIME,
    capacity    INT
);