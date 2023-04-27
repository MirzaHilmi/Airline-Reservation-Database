ALTER TABLE sbd.seat
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT pk_seat_id PRIMARY KEY (id),
    ADD CONSTRAINT fk_seat_class_id FOREIGN KEY (class_id) REFERENCES sbd.class (id),
    ALTER available SET DEFAULT FALSE;

ALTER TABLE sbd.seat
    ALTER id SET DEFAULT (UUID());