CREATE TABLE sbd.agency
(
    id           VARCHAR(36),
    address_id   VARCHAR(36),
    first_name   VARCHAR(255),
    last_name    VARCHAR(255),
    email        VARCHAR(255),
    password     VARCHAR(255),
    phone_number VARCHAR(15),
    gender       ENUM ('MALE', 'FEMALE'),
    age          INT
);
