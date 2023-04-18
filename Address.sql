CREATE TABLE sbd.address
(
    id           VARCHAR(36) PRIMARY KEY,
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

ALTER TABLE sbd.address
    ALTER id SET DEFAULT (UUID()),
    MODIFY street VARCHAR(36) NOT NULL,
    MODIFY house_number INT NOT NULL,
    MODIFY rt INT NOT NULL,
    MODIFY rw INT NOT NULL,
    MODIFY village VARCHAR(255) NOT NULL,
    MODIFY district VARCHAR(255) NOT NULL,
    MODIFY city VARCHAR(255) NOT NULL,
    MODIFY province VARCHAR(255) NOT NULL,
    MODIFY postal_code VARCHAR(5) NOT NULL;
