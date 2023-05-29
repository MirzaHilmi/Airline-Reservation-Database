DROP TABLE IF EXISTS sbd.agency;

CREATE TABLE sbd.agency
(
    agency_id      INT,
    address_id     INT,
    name           VARCHAR(255),
    email          VARCHAR(255),
    password       VARCHAR(255),
    contact_number VARCHAR(15)
);
