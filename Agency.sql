CREATE TABLE sbd.agency
(
    id           VARCHAR(36) PRIMARY KEY,
    address_id   VARCHAR(36),
    first_name   VARCHAR(255),
    last_name    VARCHAR(255),
    email        VARCHAR(255),
    password     VARCHAR(255),
    phone_number VARCHAR(15),
    gender       ENUM ('MALE', 'FEMALE'),
    age          INT,
    FOREIGN KEY (address_id) REFERENCES sbd.address (id)
);

ALTER TABLE sbd.agency
    ALTER id SET DEFAULT (UUID()),
    MODIFY first_name VARCHAR(255) NOT NULL,
    MODIFY last_name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY phone_number VARCHAR(15) NOT NULL,
    MODIFY gender ENUM ('MALE', 'FEMALE') NOT NULL,
    MODIFY age INT NOT NULL,
    ADD CONSTRAINT chk_agency_age CHECK ( age > 0 );