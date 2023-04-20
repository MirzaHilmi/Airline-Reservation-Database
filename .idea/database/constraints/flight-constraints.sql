ALTER TABLE sbd.flight
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT pk_flight_id PRIMARY KEY (id),
    ADD CONSTRAINT fk_flight_airline_id FOREIGN KEY (airline_id) REFERENCES sbd.airline (id),
    ADD CONSTRAINT fk_flight_agency_id FOREIGN KEY (agency_id) REFERENCES sbd.agency (id),
    MODIFY name VARCHAR(255) NOT NULL,
    MODIFY destination VARCHAR(255) NOT NULL,
    MODIFY distance INT NOT NULL,
    MODIFY departure DATETIME NOT NULL,
    MODIFY arrival DATETIME NOT NULL,
    MODIFY capacity INT NOT NULL;

ALTER TABLE sbd.flight
    ALTER id SET DEFAULT (UUID());
