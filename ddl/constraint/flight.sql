ALTER TABLE sbd.flight
    MODIFY flight_id INT AUTO_INCREMENT,
    MODIFY destination VARCHAR(255) NOT NULL,
    MODIFY name VARCHAR(255) NOT NULL,
    MODIFY distance INT NOT NULL,
    MODIFY departure DATETIME NOT NULL,
    MODIFY arrival DATETIME NOT NULL,
    MODIFY capacity INT NOT NULL,
    ADD CONSTRAINT pk_flight_flight_id PRIMARY KEY (flight_id),
    ADD CONSTRAINT fk_flight_airline_id FOREIGN KEY (airline_id) REFERENCES sbd.airline (airline_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_flight_admin_id FOREIGN KEY (admin_id) REFERENCES sbd.admin (admin_id) ON UPDATE CASCADE ON DELETE CASCADE;

DESCRIBE sbd.flight;
