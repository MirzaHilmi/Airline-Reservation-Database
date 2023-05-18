DROP TABLE IF EXISTS sbd.address;

CREATE TABLE sbd.address
(
    id           VARCHAR(36),
    street       VARCHAR(255),
    house_number INT,
    rt           INT,
    rw           INT,
    village      VARCHAR(255),
    district     VARCHAR(255),
    city         VARCHAR(255),
    province     VARCHAR(255),
    postal_code  VARCHAR(5)
);
