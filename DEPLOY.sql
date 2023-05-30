DROP SCHEMA IF EXISTS sbd;
CREATE SCHEMA sbd;
USE sbd;

DROP TABLE IF EXISTS sbd.payment;
DROP TABLE IF EXISTS sbd.ticket;
DROP TABLE IF EXISTS sbd.order_ticket;
DROP TABLE IF EXISTS sbd.seat;
DROP TABLE IF EXISTS sbd.class;
DROP TABLE IF EXISTS sbd.flight;
DROP TABLE IF EXISTS sbd.airline;
DROP TABLE IF EXISTS sbd.admin;
DROP TABLE IF EXISTS sbd.agency;
DROP TABLE IF EXISTS sbd.customer;
DROP TABLE IF EXISTS sbd.address;
DROP TRIGGER IF EXISTS sbd.after_update_ticket;
DROP VIEW IF EXISTS sbd.airline_flight_class;

#               TABLE CREATION
# ===========================================
CREATE TABLE sbd.address
(
    address_id  INT,
    street      VARCHAR(255),
    postal_code VARCHAR(45),
    rt          INT,
    rw          INT,
    ward        VARCHAR(255),
    district    VARCHAR(255),
    city        VARCHAR(255),
    province    VARCHAR(255)
);


CREATE TABLE sbd.customer
(
    customer_id  INT,
    address_id   INT,
    first_name   VARCHAR(255),
    last_name    VARCHAR(255),
    email        VARCHAR(255),
    password     VARCHAR(255),
    phone_number VARCHAR(15),
    gender       ENUM ('MALE', 'FEMALE'),
    age          SMALLINT
);

CREATE TABLE sbd.agency
(
    agency_id      INT,
    address_id     INT,
    name           VARCHAR(255),
    email          VARCHAR(255),
    password       VARCHAR(255),
    contact_number VARCHAR(15)
);

CREATE TABLE sbd.admin
(
    admin_id     INT,
    agency_id    INT,
    address_id   INT,
    first_name   VARCHAR(255),
    last_name    VARCHAR(255),
    email        VARCHAR(255),
    password     VARCHAR(255),
    phone_number VARCHAR(15),
    gender       ENUM ('MALE', 'FEMALE')
);

CREATE TABLE sbd.airline
(
    airline_id   INT,
    name VARCHAR(255)
);

CREATE TABLE sbd.flight
(
    flight_id   INT,
    airline_id  INT,
    admin_id    INT,
    name        VARCHAR(255),
    destination VARCHAR(255),
    distance    INT,
    departure   DATETIME,
    arrival     DATETIME,
    capacity    INT
);

CREATE TABLE sbd.class
(
    class_id  INT,
    flight_id INT,
    name      ENUM ('FIRST', 'BUSINESS', 'ECONOMY')
);

CREATE TABLE sbd.seat
(
    seat_id   INT,
    class_id  INT,
    available BOOLEAN
);

CREATE TABLE sbd.order_ticket
(
    order_ticket_id   INT,
    customer_id       INT,
    date_order_placed DATETIME,
    date_order_paid   DATETIME,
    price_amount      DECIMAL(10, 2)
);

CREATE TABLE sbd.ticket
(
    ticket_id       INT,
    flight_id       INT,
    seat_id         INT,
    order_ticket_id INT,
    price           DECIMAL(10, 2)
);

CREATE TABLE sbd.payment
(
    payment_id      INT,
    order_ticket_id INT,
    payment_method  ENUM ('BCA', 'BRI', 'BNI', 'MANDIRI', 'BSI')
);

#           CONSTRAINT CREATION
# ==========================================
ALTER TABLE sbd.address
    MODIFY address_id INT AUTO_INCREMENT,
    MODIFY street VARCHAR(255) NOT NULL,
    MODIFY postal_code VARCHAR(45) NOT NULL,
    MODIFY rt INT NOT NULL,
    MODIFY rw INT NOT NULL,
    MODIFY district VARCHAR(255) NOT NULL,
    MODIFY city VARCHAR(255) NOT NULL,
    MODIFY province VARCHAR(255) NOT NULL,
    ADD CONSTRAINT pk_address_address_id PRIMARY KEY (address_id);

ALTER TABLE sbd.customer
    MODIFY customer_id INT AUTO_INCREMENT,
    MODIFY first_name VARCHAR(255) NOT NULL,
    MODIFY last_name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY phone_number VARCHAR(15) NOT NULL,
    MODIFY gender ENUM ('MALE', 'FEMALE') NOT NULL,
    MODIFY age SMALLINT NOT NULL,
    ADD CONSTRAINT pk_customer_customer_id PRIMARY KEY (customer_id),
    ADD CONSTRAINT fk_customer_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (address_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_customer_email UNIQUE (email),
    ADD CONSTRAINT uq_customer_phone_number UNIQUE (phone_number),
    ADD CONSTRAINT chk_customer_age CHECK ( age > 0 );

ALTER TABLE sbd.agency
    MODIFY agency_id INT AUTO_INCREMENT,
    MODIFY name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY contact_number VARCHAR(15) NOT NULL,
    ADD CONSTRAINT pk_agency_agency_id PRIMARY KEY (agency_id),
    ADD CONSTRAINT fk_agency_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (address_id) ON DELETE CASCADE ON UPDATE CASCADE,
    ADD CONSTRAINT uq_agency_email UNIQUE (email),
    ADD CONSTRAINT uq_agency_contact_number UNIQUE (contact_number);

ALTER TABLE sbd.admin
    MODIFY admin_id INT AUTO_INCREMENT,
    MODIFY first_name VARCHAR(255) NOT NULL,
    MODIFY last_name VARCHAR(255) NOT NULL,
    MODIFY email VARCHAR(255) NOT NULL,
    MODIFY password VARCHAR(255) NOT NULL,
    MODIFY phone_number VARCHAR(15) NOT NULL,
    MODIFY gender ENUM ('MALE', 'FEMALE') NOT NULL,
    ADD CONSTRAINT pk_admin_admin_id PRIMARY KEY (admin_id),
    ADD CONSTRAINT fk_admin_agency_id FOREIGN KEY (agency_id) REFERENCES sbd.agency (agency_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_admin_address_id FOREIGN KEY (address_id) REFERENCES sbd.address (address_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_admin_email UNIQUE (email),
    ADD CONSTRAINT uq_admin_phone_number UNIQUE (phone_number);

ALTER TABLE sbd.airline
    MODIFY airline_id INT AUTO_INCREMENT,
    MODIFY name VARCHAR(255) NOT NULL,
    ADD CONSTRAINT pk_airline_airline_id PRIMARY KEY (airline_id);

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

ALTER TABLE sbd.class
    MODIFY class_id INT AUTO_INCREMENT,
    MODIFY name ENUM ('FIRST', 'BUSINESS', 'ECONOMY') NOT NULL,
    ADD CONSTRAINT pk_class_class_id PRIMARY KEY (class_id),
    ADD CONSTRAINT fk_class_flight_id FOREIGN KEY (flight_id) REFERENCES sbd.flight (flight_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE sbd.seat
    MODIFY seat_id INT AUTO_INCREMENT,
    ALTER available SET DEFAULT FALSE,
    ADD CONSTRAINT pk_seat_seat_id PRIMARY KEY (seat_id),
    ADD CONSTRAINT fk_seat_class_id FOREIGN KEY (class_id) REFERENCES sbd.class (class_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE sbd.order_ticket
    MODIFY order_ticket_id INT AUTO_INCREMENT,
    MODIFY date_order_placed DATETIME NOT NULL DEFAULT (NOW()),
    MODIFY date_order_paid DATETIME NULL,
    ADD CONSTRAINT pk_order_ticket_order_ticket_id PRIMARY KEY (order_ticket_id),
    ADD CONSTRAINT fk_order_ticket_customer_id FOREIGN KEY (customer_id) REFERENCES sbd.customer (customer_id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE sbd.ticket
    MODIFY ticket_id INT AUTO_INCREMENT,
    MODIFY price DECIMAL(10, 2) NOT NULL,
    ADD CONSTRAINT pk_ticket_ticket_id PRIMARY KEY (ticket_id),
    ADD CONSTRAINT fk_ticket_flight_id FOREIGN KEY (flight_id) REFERENCES sbd.flight (flight_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_ticket_seat_id FOREIGN KEY (seat_id) REFERENCES sbd.seat (seat_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT fk_ticket_order_ticket_id FOREIGN KEY (order_ticket_id) REFERENCES sbd.order_ticket (order_ticket_id) ON UPDATE CASCADE ON DELETE CASCADE,
    ADD CONSTRAINT uq_ticket_seat_id UNIQUE (seat_id);

ALTER TABLE sbd.payment
    MODIFY payment_id INT AUTO_INCREMENT,
    MODIFY payment_method ENUM ('BCA', 'BRI', 'BNI', 'MANDIRI', 'BSI') NOT NULL,
    ADD CONSTRAINT pk_payment_payment_id PRIMARY KEY (payment_id),
    ADD CONSTRAINT fk_payment_order_ticket_id FOREIGN KEY (order_ticket_id) REFERENCES sbd.order_ticket (order_ticket_id) ON UPDATE CASCADE ON DELETE CASCADE;

DELIMITER $$
CREATE TRIGGER sbd.after_update_ticket
    AFTER UPDATE
    ON sbd.ticket
    FOR EACH ROW

BEGIN
    SET @current_order_ticket_id = COALESCE(NEW.order_ticket_id, OLD.order_ticket_id);
    UPDATE sbd.order_ticket
    SET price_amount = (SELECT SUM(price)
                        FROM sbd.ticket
                        WHERE order_ticket_id = @current_order_ticket_id)
    WHERE order_ticket_id = @current_order_ticket_id;

    IF NEW.order_ticket_id IS NOT NULL AND NEW.order_ticket_id != OLD.order_ticket_id THEN
        UPDATE sbd.order_ticket
        SET price_amount = (SELECT SUM(price)
                            FROM sbd.ticket
                            WHERE order_ticket_id = OLD.order_ticket_id)
        WHERE order_ticket_id = OLD.order_ticket_id;
    END IF;

    IF NEW.order_ticket_id IS NOT NULL THEN
    UPDATE sbd.seat
    SET available = FALSE
    WHERE seat_id = (SELECT ticket.seat_id
                     FROM sbd.ticket
                     WHERE order_ticket_id = @current_order_ticket_id AND ticket_id = NEW.ticket_id);
    END IF;
END;
DELIMITER ;

CREATE VIEW sbd.airline_flight_class AS
SELECT a.name AS airline_name, b.name AS flight_name, b.destination, b.departure, b.arrival, b.capacity, c.name AS class_type
FROM sbd.airline a
         INNER JOIN sbd.flight b ON a.airline_id = b.airline_id
         INNER JOIN sbd.class c ON b.flight_id = c.flight_id;

#           DATA INSERTION
# ======================================
INSERT INTO sbd.address (street, postal_code, rt, rw, ward, district, city, province)
VALUES ('Jalan Merdeka 12', '10110', '001', '002', 'Menteng', 'Jakarta Pusat', 'Jakarta', 'DKI Jakarta'),
       ('Jalan Sudirman 25', '12930', '003', '001', 'Setiabudi', 'Jakarta Selatan', 'Jakarta', 'DKI Jakarta'),
       ('Jalan Pemuda 17', '60271', '002', '003', 'Bubutan', 'Surabaya Timur', 'Surabaya', 'Jawa Timur'),
       ('Jalan Asia Afrika 156', '40112', '001', '001', 'Babakan Ciparay', 'Bandung Kidul', 'Bandung', 'Jawa Barat'),
       ('Jalan Diponegoro 8', '56116', '004', '002', 'Gajahmungkur', 'Semarang Selatan', 'Semarang', 'Jawa Tengah'),
       ('Jalan Yos Sudarso 32', '30128', '005', '002', 'Karisidenan', 'Tegal Timur', 'Tegal', 'Jawa Tengah'),
       ('Jalan Hasyim Ashari 80', '60282', '003', '001', 'Genteng', 'Surabaya Pusat', 'Surabaya', 'Jawa Timur'),
       ('Jalan Sudirman 101', '12210', '005', '003', 'Kebayoran Baru', 'Jakarta Selatan', 'Jakarta', 'DKI Jakarta'),
       ('Jalan Veteran 45', '40115', '006', '002', 'Babakan Ciamis', 'Bandung Kulon', 'Bandung', 'Jawa Barat'),
       ('Jalan Pahlawan 23', '56127', '008', '001', 'Mangunharjo', 'Semarang Timur', 'Semarang', 'Jawa Tengah'),
       ('Jalan Slamet Riyadi 72', '57132', '003', '003', 'Gilingan', 'Surakarta', 'Surakarta', 'Jawa Tengah'),
       ('Jalan Ahmad Yani 55', '54112', '007', '002', 'Kedungkandang', 'Malang', 'Malang', 'Jawa Timur'),
       ('Jalan Gajah Mada 10', '60282', '002', '002', 'Tegalsari', 'Surabaya Pusat', 'Surabaya', 'Jawa Timur'),
       ('Jalan Thamrin 28', '10130', '009', '001', 'Menteng', 'Jakarta Pusat', 'Jakarta', 'DKI Jakarta'),
       ('Jalan Diponegoro 15', '12940', '010', '002', 'Kuningan', 'Jakarta Selatan', 'Jakarta', 'DKI Jakarta'),
       ('Jalan Kusuma Bangsa 4', '60284', '006', '001', 'Gubeng', 'Surabaya Pusat', 'Surabaya', 'Jawa Timur'),
       ('Jalan Cihampelas 62', '40116', '011', '003', 'Cipaganti', 'Bandung Wetan', 'Bandung', 'Jawa Barat'),
       ('Jalan Gajah Mada 78', '56113', '009', '002', 'Banyumanik', 'Semarang Selatan', 'Semarang', 'Jawa Tengah'),
       ('Jalan Slamet Riyadi 110', '57141', '012', '001', 'Sumber', 'Surakarta', 'Surakarta', 'Jawa Tengah'),
       ('Jalan Ijen 25', '54123', '010', '002', 'Klojen', 'Malang', 'Malang', 'Jawa Timur'),
       ('Jalan Majapahit 18', '60281', '008', '002', 'Genteng', 'Surabaya Pusat', 'Surabaya', 'Jawa Timur'),
       ('Jalan Thamrin 50', '10150', '013', '003', 'Tanah Abang', 'Jakarta Pusat', 'Jakarta', 'DKI Jakarta'),
       ('Jalan Sudirman 35', '12950', '014', '001', 'Karet Semanggi', 'Jakarta Selatan', 'Jakarta', 'DKI Jakarta'),
       ('Jalan Pemuda 32', '60283', '009', '002', 'Tegalsari', 'Surabaya Pusat', 'Surabaya', 'Jawa Timur'),
       ('Jalan Cipaganti 82', '40117', '015', '003', 'Citarum', 'Bandung Wetan', 'Bandung', 'Jawa Barat'),
       ('Jalan Gajah Mada 97', '56114', '011', '002', 'Pedurungan', 'Semarang Selatan', 'Semarang', 'Jawa Tengah'),
       ('Jalan Slamet Riyadi 150', '57151', '016', '001', 'Banjarsari', 'Surakarta', 'Surakarta', 'Jawa Tengah'),
       ('Jalan Ijen 35', '54124', '012', '002', 'Blimbing', 'Malang', 'Malang', 'Jawa Timur'),
       ('Jalan Raya Diponegoro 112', '60285', '010', '002', 'Simokerto', 'Surabaya Barat', 'Surabaya', 'Jawa Timur'),
       ('Jalan Thamrin 80', '10160', '017', '003', 'Cikini', 'Jakarta Pusat', 'Jakarta', 'DKI Jakarta');

INSERT INTO sbd.customer (address_id,first_name, last_name, email, password, phone_number, gender, age)
VALUES
  (10,'Ade', 'Pratama', 'adepratama@gmail.com', '12345abc', '081234567890', 'Male', 25),
  (9,'Rani', 'Fitriani', 'ranifitriani@yahoo.com', 'p@ssw0rd', '085678912345', 'Female', 32),
  (8,'Budi', 'Santoso', 'budisantoso@hotmail.com', 'securepass123', '081345678912', 'Male', 40),
  (7,'Maya', 'Sari', 'mayasari@gmail.com', 'mypassword123', '082233445566', 'Female', 29),
  (6,'Agung', 'Kurniawan', 'agungkurniawan@outlook.com', 'pass1234', '087654321098', 'Male', 35),
  (5,'Siti', 'Rahmawati', 'sitirahmawati@gmail.com', 'strongpassword1', '082112233445', 'Female', 27),
  (4,'Fajar', 'Wijaya', 'fajarwijaya@yahoo.com', 'secret123', '089876543210', 'Male', 31),
  (3,'Dian', 'Puspita', 'dianpuspita@hotmail.com', 'mypass456', '081112233445', 'Female', 36),
  (2,'Rizki', 'Prasetyo', 'rizkiprasetyo@gmail.com', '123abcxyz', '085678967890', 'Male', 23),
  (1,'Lina', 'Putri', 'linaputri@yahoo.com', 'p@ssword123', '087654321123', 'Female', 28);

INSERT INTO sbd.agency (address_id, name, email, password, contact_number)
VALUES (20, 'Agensi Penerbangan Langit', 'langit@example.com', 'Rahasia123', '6281234567890'),
       (19, 'Perjalanan Pesawat Lintas', 'pesawatlintas@example.com', 'Aman1234', '6281398765432'),
       (18, 'Maskapai Udara Utama', 'udarautama@example.com', 'Terbang456', '6281123452345'),
       (17, 'Penerbangan Cepat Express', 'cepatair@example.com', 'Express2023!', '6281567891234'),
       (16, 'Tiket Pesawat Indah', 'pesawatindah@example.com', 'Indah789', '6281234567893'),
       (15, 'Penerbangan Cita Link', 'citalink@example.com', 'CitaLink2023', '62813987612312'),
       (14, 'Perjalanan Garuda', 'garuda@example.com', 'GarudaPass!', '62811234534523'),
       (13, 'Maskapai Udara Megah', 'udaramegah@example.com', 'Megah2023', '6281234567891'),
       (12, 'Pesawat Terbang Aman', 'pesawataman@example.com', 'AmanWings!', '6281398762345'),
       (11, 'Travel Udara Lintas', 'udaralintas@example.com', 'Lintas456', '6281123456789');

INSERT INTO sbd.admin (agency_id, address_id, first_name, last_name, email, password, phone_number, gender)
VALUES (1, 30, 'Budi', 'Santoso', 'budi.santoso@example.com', 'pass123', '081234567890', 'MALE'),
       (2, 29, 'Lina', 'Wijaya', 'lina.wijaya@example.com', 'password123', '082345678901', 'FEMALE'),
       (3, 28, 'Ahmad', 'Hidayat', 'ahmad.hidayat@example.com', '123456', '083456789012', 'MALE'),
       (4, 27, 'Siti', 'Rahayu', 'siti.rahayu@example.com', 'qwerty', '084567890123', 'FEMALE'),
       (5, 26, 'Rudi', 'Kurniawan', 'rudi.kurniawan@example.com', 'pass1234', '085678901234', 'MALE'),
       (6, 25, 'Linda', 'Susilo', 'linda.susilo@example.com', 'password1234', '086789012345', 'FEMALE'),
       (7, 24, 'Dedi', 'Pranowo', 'dedi.pranowo@example.com', '12345678', '087890123456', 'MALE'),
       (8, 23, 'Rina', 'Widjaja', 'rina.widjaja@example.com', 'qwerty123', '088901234567', 'FEMALE'),
       (9, 22, 'Anto', 'Gunawan', 'anto.gunawan@example.com', 'pass12345', '089012345678', 'MALE'),
       (10, 21, 'Sari', 'Saputra', 'sari.saputra@example.com', 'password12345', '090123456789', 'FEMALE');

INSERT INTO sbd.airline (name)
VALUES ('Garuda Indonesia'),
       ('Lion Air'),
       ('Citilink'),
       ('Batik Air'),
       ('Sriwijaya Air'),
       ('AirAsia Indonesia'),
       ('Wings Air'),
       ('Nam Air'),
       ('Kalstar Aviation'),
       ('TransNusa Air Services');

INSERT INTO sbd.flight (airline_id, admin_id, name, destination, distance, departure, arrival, capacity)
VALUES (7, 5, 'MALANG-JAKARTA', 'Jakarta', 500, '2023-05-24 08:00:00', '2023-05-24 10:00:00', 10),
       (4, 1, 'YOGYAKARTA-SURABAYA', 'Surabaya', 300, '2023-05-24 09:30:00', '2023-05-24 11:30:00', 10),
       (2, 9, 'MEDAN-DENPASAR', 'Denpasar', 800, '2023-05-24 11:00:00', '2023-05-24 14:00:00', 10),
       (6, 3, 'PALU-MEDAN', 'Medan', 1000, '2023-05-24 13:15:00', '2023-05-24 16:15:00', 10),
       (1, 5, 'SUMUT-MAKASSAR', 'Makassar', 700, '2023-05-24 15:30:00', '2023-05-24 18:30:00', 10),
       (9, 2, 'LOMBOK-YOGYAKARTA', 'Yogyakarta', 400, '2023-05-24 17:45:00', '2023-05-24 19:45:00', 10),
       (8, 8, 'BLITAR-BALIKPAPAN', 'Balikpapan', 900, '2023-05-24 20:00:00', '2023-05-24 23:00:00', 10),
       (5, 7, 'KEDIRI-BANDUNG', 'Bandung', 200, '2023-05-24 06:30:00', '2023-05-24 08:30:00', 10),
       (10, 6, 'NGAWI-PONTIANAK', 'Pontianak', 600, '2023-05-24 09:45:00', '2023-05-24 12:45:00', 10),
       (3, 4, 'PEKANBARU-MANADO', 'Manado', 1200, '2023-05-24 14:15:00', '2023-05-24 17:15:00', 10);

INSERT INTO sbd.class (flight_id, name)
VALUES (1, 'FIRST'),
       (1, 'BUSINESS'),
       (2, 'FIRST'),
       (2, 'BUSINESS'),
       (2, 'ECONOMY'),
       (3, 'BUSINESS'),
       (4, 'FIRST'),
       (4, 'BUSINESS'),
       (5, 'FIRST'),
       (6, 'BUSINESS'),
       (7, 'FIRST'),
       (8, 'BUSINESS'),
       (8, 'ECONOMY'),
       (9, 'FIRST'),
       (10, 'FIRST');

INSERT INTO sbd.seat (class_id, available) VALUES
  (1, TRUE), (2, FALSE), (3, TRUE), (4, TRUE), (5, FALSE), (6, TRUE), (7, FALSE), (8, TRUE), (9, TRUE), (10, FALSE),
  (11, TRUE), (12, TRUE), (13, FALSE), (14, TRUE), (15, FALSE), (1, TRUE), (2, TRUE), (3, FALSE), (4, FALSE), (5, TRUE),
  (6, TRUE), (7, FALSE), (8, FALSE), (9, TRUE), (10, TRUE), (11, FALSE), (12, TRUE), (13, TRUE), (14, FALSE), (15, TRUE),
  (1, FALSE), (2, TRUE), (3, FALSE), (4, TRUE), (5, FALSE), (6, TRUE), (7, FALSE), (8, TRUE), (9, TRUE), (10, FALSE),
  (11, TRUE), (12, FALSE), (13, TRUE), (14, TRUE), (15, FALSE), (1, TRUE), (2, FALSE), (3, TRUE), (4, TRUE), (5, FALSE),
  (6, TRUE), (7, FALSE), (8, TRUE), (9, TRUE), (10, FALSE), (11, TRUE), (12, TRUE), (13, FALSE), (14, TRUE), (15, FALSE),
  (1, TRUE), (2, TRUE), (3, FALSE), (4, FALSE), (5, TRUE), (6, TRUE), (7, FALSE), (8, FALSE), (9, TRUE), (10, TRUE),
  (11, FALSE), (12, TRUE), (13, TRUE), (14, FALSE), (15, TRUE), (1, FALSE), (2, TRUE), (3, FALSE), (4, TRUE), (5, FALSE),
  (6, TRUE), (7, FALSE), (8, TRUE), (9, TRUE), (10, FALSE), (11, TRUE), (12, FALSE), (13, TRUE), (14, TRUE), (15, FALSE),
  (1, TRUE), (2, FALSE), (3, TRUE), (4, TRUE), (5, FALSE), (6, TRUE), (7, FALSE), (8, TRUE), (9, TRUE), (10, FALSE);

INSERT INTO sbd.order_ticket (customer_id, date_order_paid)
VALUES (3, '2023-05-27 10:30:00'),
       (8, '2023-05-27 14:15:00'),
       (5, '2023-05-27 17:45:00'),
       (1, '2023-05-27 09:00:00'),
       (2, '2023-05-27 16:30:00'),
       (4, '2023-05-27 11:45:00'),
       (9, '2023-05-27 13:00:00'),
       (10, '2023-05-27 15:30:00'),
       (6, '2023-05-27 08:45:00'),
       (3, '2023-05-28 12:15:00'),
       (1, '2023-05-28 16:00:00'),
       (7, '2023-05-28 10:30:00'),
       (5, '2023-05-28 15:45:00'),
       (8, '2023-05-28 14:00:00'),
       (2, '2023-05-28 11:30:00'),
       (4, '2023-05-28 17:00:00'),
       (9, '2023-05-28 13:15:00'),
       (10, '2023-05-28 09:30:00'),
       (6, '2023-05-28 08:00:00'),
       (3, '2023-05-29 14:45:00'),
       (2, '2023-05-29 13:00:00'),
       (1, '2023-05-29 16:30:00'),
       (4, '2023-05-29 12:00:00'),
       (7, '2023-05-29 09:15:00'),
       (9, '2023-05-29 17:30:00'),
       (5, '2023-05-29 11:45:00'),
       (8, '2023-05-29 15:00:00'),
       (10, '2023-05-29 10:00:00'),
       (6, '2023-05-29 08:15:00'),
       (1, '2023-05-30 09:30:00'),
       (3, '2023-05-30 15:00:00'),
       (4, '2023-05-30 10:15:00'),
       (7, '2023-05-30 13:45:00'),
       (2, '2023-05-30 11:00:00'),
       (8, '2023-05-30 12:30:00'),
       (5, '2023-05-30 16:45:00'),
       (6, '2023-05-30 14:00:00'),
       (9, '2023-05-30 17:15:00'),
       (10, '2023-05-30 08:45:00');

INSERT INTO sbd.ticket (flight_id, seat_id, order_ticket_id, price)
VALUES (1, 56, 1, 1500000.00),
       (2, 83, 2, 2000000.00),
       (3, 12, 3, 1750000.00),
       (4, 64, 3, 1900000.00),
       (5, 7, 3, 1650000.00),
       (6, 91, 4, 2250000.00),
       (7, 28, 5, 1800000.00),
       (8, 33, 5, 1950000.00),
       (9, 41, 6, 1700000.00),
       (10, 76, 6, 2100000.00),
       (1, 92, 6, 2200000.00),
       (2, 17, 7, 1850000.00),
       (3, 63, 8, 1600000.00),
       (4, 34, 8, 2300000.00),
       (5, 80, 9, 2050000.00),
       (6, 52, 10, 1400000.00),
       (7, 25, 10, 1750000.00),
       (8, 97, 11, 1900000.00),
       (9, 9, 11, 1550000.00),
       (10, 45, 12, 2100000.00),
       (1, 87, 12, 1800000.00);

INSERT INTO sbd.ticket (flight_id, seat_id, price)
VALUES (2, 73, 1950000.00),
       (3, 49, 2100000.00),
       (4, 38, 1650000.00),
       (5, 21, 2200000.00),
       (6, 60, 2000000.00),
       (7, 95, 1750000.00),
       (8, 3, 1850000.00),
       (9, 69, 2250000.00),
       (10, 86, 1700000.00),
       (1, 39, 1600000.00),
       (2, 81, 1400000.00),
       (3, 61, 2050000.00),
       (4, 26, 1500000.00),
       (5, 48, 2300000.00),
       (6, 14, 1750000.00),
       (7, 67, 1950000.00),
       (8, 53, 2100000.00),
       (9, 37, 1900000.00),
       (10, 78, 2200000.00),
       (1, 19, 1750000.00),
       (2, 72, 1550000.00),
       (3, 36, 1800000.00),
       (4, 66, 1950000.00),
       (5, 22, 2100000.00),
       (6, 50, 1650000.00),
       (7, 94, 2000000.00),
       (8, 4, 1600000.00),
       (9, 88, 1850000.00),
       (10, 70, 2250000.00);

INSERT INTO sbd.payment (order_ticket_id, payment_method)
VALUES (1, 'BCA'),
       (2, 'BSI'),
       (3, 'BRI'),
       (4, 'MANDIRI'),
       (5, 'BNI'),
       (6, 'BCA'),
       (7, 'BRI'),
       (8, 'BSI'),
       (9, 'BCA'),
       (10, 'BNI'),
       (11, 'BNI'),
       (12, 'BCA'),
       (13, 'MANDIRI'),
       (14, 'BRI'),
       (15, 'BSI'),
       (16, 'BSI'),
       (17, 'BCA'),
       (18, 'BRI'),
       (19, 'BSI'),
       (20, 'MANDIRI'),
       (21, 'BCA'),
       (22, 'BNI'),
       (23, 'MANDIRI'),
       (24, 'BRI'),
       (25, 'BSI'),
       (26, 'BSI'),
       (27, 'BCA'),
       (28, 'MANDIRI'),
       (29, 'BRI'),
       (30, 'BNI'),
       (31, 'BCA'),
       (32, 'BRI'),
       (33, 'BSI'),
       (34, 'BNI'),
       (35, 'BCA'),
       (36, 'MANDIRI'),
       (37, 'BSI'),
       (38, 'BRI'),
       (39, 'BNI');
