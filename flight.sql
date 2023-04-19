CREATE TABLE sbd.flight
(
    id          VARCHAR(36),
    airline_id  VARCHAR(36),
    agency_id   VARCHAR(36),
    name        VARCHAR(255),
    destination VARCHAR(255),
    distance    INT,
    departure   DATETIME,
    arrival     DATETIME,
    capacity    INT
);