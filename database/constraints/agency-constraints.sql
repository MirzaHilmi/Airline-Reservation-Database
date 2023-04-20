ALTER TABLE sbd.agency
    ADD CONSTRAINT pk_agency_id PRIMARY KEY (id),
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT fk_agency_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (id),
    MODIFY first_name VARCHAR(255) NOT NULL,
    MODIFY last_name VARCHAR(255) NOT NULL,
    ADD CONSTRAINT uq_agency_email UNIQUE (email),
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    ADD CONSTRAINT uq_agency_phone_number UNIQUE (phone_number),
    MODIFY phone_number VARCHAR(15) NOT NULL,
    MODIFY gender ENUM ('MALE', 'FEMALE') NOT NULL,
    ADD CONSTRAINT chk_agency_age CHECK ( age > 0 ),
    MODIFY age INT NOT NULL;

ALTER TABLE sbd.agency
    ALTER id SET DEFAULT (UUID());
