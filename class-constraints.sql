ALTER TABLE sbd.class
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT pk_class_id PRIMARY KEY (id),
    ADD CONSTRAINT fk_class_flight_id FOREIGN KEY (flight_id) REFERENCES sbd.flight (id),
    MODIFY type ENUM ('FIRST', 'BUSINESS', 'ECONOMY') NOT NULL,
    MODIFY price DECIMAL(10, 2) NOT NULL;

ALTER TABLE sbd.class
    ALTER id SET DEFAULT (UUID());