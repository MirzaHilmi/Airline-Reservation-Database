DROP VIEW IF EXISTS sbd.airline_flight_class;

CREATE VIEW sbd.airline_flight_class AS
SELECT a.name AS airline_name, b.name AS flight_name, b.destination, b.departure, b.arrival, b.capacity, c.name AS class_type
FROM sbd.airline a
         INNER JOIN sbd.flight b ON a.airline_id = b.airline_id
         INNER JOIN sbd.class c ON b.flight_id = c.flight_id;