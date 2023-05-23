ALTER TABLE sbd.class
    MODIFY class_id INT AUTO_INCREMENT,
    MODIFY type ENUM ('FIRST', 'BUSINESS', 'ECONOMY') NOT NULL,
    MODIFY price DECIMAL(10, 2) NOT NULL,
    ADD CONSTRAINT pk_class_class_id PRIMARY KEY (class_id),
    ADD CONSTRAINT fk_class_flight_id FOREIGN KEY (flight_id) REFERENCES sbd.flight (flight_id);

DESCRIBE sbd.class;