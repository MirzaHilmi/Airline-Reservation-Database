ALTER TABLE sbd.class
    MODIFY class_id INT AUTO_INCREMENT,
    MODIFY name ENUM ('FIRST', 'BUSINESS', 'ECONOMY') NOT NULL,
    ADD CONSTRAINT pk_class_class_id PRIMARY KEY (class_id),
    ADD CONSTRAINT fk_class_flight_id FOREIGN KEY (flight_id) REFERENCES sbd.flight (flight_id) ON UPDATE CASCADE ON DELETE CASCADE;

DESCRIBE sbd.class;