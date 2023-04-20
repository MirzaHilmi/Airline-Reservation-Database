ALTER TABLE sbd.payment
    ALTER id SET DEFAULT (UUID()),
    ADD CONSTRAINT pk_payment_id PRIMARY KEY (id),
    MODIFY method ENUM ('CASH', 'BANK') NOT NULL,
    MODIFY amount DECIMAL(10, 2) NOT NULL;

ALTER TABLE sbd.payment
    ALTER id SET DEFAULT (UUID());