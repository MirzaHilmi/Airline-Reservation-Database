CREATE TABLE sbd.Address
(
    id           VARCHAR(36) DEFAULT (UUID()),
    street       VARCHAR(255) NOT NULL,
    house_number INT          NOT NULL,
    rt           INT          NOT NULL,
    rw           INT          NOT NULL,
    village VARCHAR(255) NOT NULL ,
    district VARCHAR(255) NOT NULL ,
    city VARCHAR(255) NOT NULL ,
    province VARCHAR(255) NOT NULL ,
    postal_code VARCHAR(5) NOT NULL
);