ALTER TABLE sbd.customer
    MODIFY customer_id INT AUTO_INCREMENT,
    MODIFY first_name VARCHAR(255) NOT NULL,
    MODIFY last_name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY phone_number VARCHAR(15) NOT NULL,
    MODIFY gender ENUM ('MALE', 'FEMALE') NOT NULL,
    MODIFY age SMALLINT NOT NULL,
    ADD CONSTRAINT pk_customer_customer_id PRIMARY KEY (customer_id),
    ADD CONSTRAINT fk_customer_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (address_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_customer_address_id UNIQUE (address_id),
    ADD CONSTRAINT uq_customer_email UNIQUE (email),
    ADD CONSTRAINT uq_customer_phone_number UNIQUE (phone_number),
    ADD CONSTRAINT chk_customer_age CHECK ( age > 0 );

DESCRIBE sbd.customer;
