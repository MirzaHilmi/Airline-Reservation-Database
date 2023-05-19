DROP TABLE IF EXISTS sbd.customer;

CREATE TABLE sbd.customer
(
    customer_id  INT,
    address_id   INT,
    first_name   VARCHAR(255),
    last_name    VARCHAR(255),
    email        VARCHAR(255),
    password     VARCHAR(255),
    phone_number VARCHAR(15),
    gender       ENUM ('MALE', 'FEMALE'),
    age          SMALLINT
);
