DROP TABLE IF EXISTS sbd.address CASCADE;

CREATE TABLE sbd.address
(
    address_id  INT,
    street      VARCHAR(255),
    postal_code VARCHAR(45),
    rt          INT,
    rw          INT,
    ward        VARCHAR(255),
    district    VARCHAR(255),
    city        VARCHAR(255),
    province    VARCHAR(255)
);
