ALTER TABLE sbd.customer
    ADD CONSTRAINT pk_customer_id PRIMARY KEY (id),
    ALTER id SET DEFAULT (UUID()),
    MODIFY first_name VARCHAR(255) NOT NULL,
    MODIFY last_name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY phone_number VARCHAR(15) NOT NULL,
    MODIFY gender ENUM ('MALE', 'FEMALE') NOT NULL,
    MODIFY age INT NOT NULL,
    ADD CONSTRAINT fk_customer_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_customer_email UNIQUE (email),
    ADD CONSTRAINT uq_customer_phone_number UNIQUE (phone_number),
    ADD CONSTRAINT chk_customer_age CHECK ( age > 0 );
