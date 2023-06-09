ALTER TABLE sbd.address
    MODIFY address_id INT AUTO_INCREMENT,
    MODIFY street VARCHAR(255) NOT NULL,
    MODIFY postal_code VARCHAR(45) NOT NULL,
    MODIFY rt INT NOT NULL,
    MODIFY rw INT NOT NULL,
    MODIFY district VARCHAR(255) NOT NULL,
    MODIFY city VARCHAR(255) NOT NULL,
    MODIFY province VARCHAR(255) NOT NULL,
    ADD CONSTRAINT pk_address_address_id PRIMARY KEY (address_id);

DESCRIBE sbd.address;