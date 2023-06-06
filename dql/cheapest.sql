SELECT  c.name AS airline_name, b.name, a.price
FROM ticket a
         INNER JOIN flight b ON a.flight_id = b.flight_id
        INNER JOIN airline c ON b.airline_id = c.airline_id
WHERE price = (SELECT MIN(price) FROM ticket);