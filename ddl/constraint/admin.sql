ALTER TABLE sbd.admin
    MODIFY admin_id INT AUTO_INCREMENT,
    MODIFY first_name VARCHAR(255) NOT NULL,
    MODIFY last_name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY phone_number VARCHAR(15) NOT NULL,
    MODIFY gender ENUM ('MALE', 'FEMALE') NOT NULL,
    ADD CONSTRAINT pk_admin_admin_id PRIMARY KEY (admin_id),
    ADD CONSTRAINT fk_admin_agency_id FOREIGN KEY (agency_id) REFERENCES sbd.agency (agency_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_admin_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (address_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_admin_email UNIQUE (email),
    ADD CONSTRAINT uq_admin_phone_number UNIQUE (phone_number);

DESCRIBE sbd.admin;
