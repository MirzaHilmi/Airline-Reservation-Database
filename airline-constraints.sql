ALTER TABLE sbd.airline
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT pk_airline_id PRIMARY KEY (id),
    MODIFY name VARCHAR(255) NOT NULL;

ALTER TABLE sbd.airline
    ALTER id SET DEFAULT (UUID());