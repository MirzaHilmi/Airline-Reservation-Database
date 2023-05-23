ALTER TABLE sbd.airline
    MODIFY airline_id INT AUTO_INCREMENT,
    MODIFY name VARCHAR(255) NOT NULL,
    ADD CONSTRAINT pk_airline_airline_id PRIMARY KEY (airline_id);

DESCRIBE sbd.airline;
