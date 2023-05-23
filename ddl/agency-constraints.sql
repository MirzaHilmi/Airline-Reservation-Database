ALTER TABLE sbd.agency
    MODIFY agency_id INT AUTO_INCREMENT,
    MODIFY name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY contact_number VARCHAR(15) NOT NULL,
    ADD CONSTRAINT pk_agency_agency_id PRIMARY KEY (agency_id),
    ADD CONSTRAINT fk_agency_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (address_id) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT uq_agency_address_id UNIQUE (address_id),
    ADD CONSTRAINT uq_agency_email UNIQUE (email),
    ADD CONSTRAINT uq_agency_contact_number UNIQUE (contact_number);

DESCRIBE sbd.agency;
