ALTER TABLE sbd.seat
    MODIFY seat_id INT AUTO_INCREMENT,
    ALTER available SET DEFAULT FALSE,
    ADD CONSTRAINT pk_seat_seat_id PRIMARY KEY (seat_id),
    ADD CONSTRAINT fk_seat_class_id FOREIGN KEY (class_id) REFERENCES sbd.class (class_id) ON UPDATE CASCADE ON DELETE CASCADE;

DESCRIBE sbd.seat;