USE sbd;

SELECT SUM(ticket.price) AS profit, airline.name
FROM airline
LEFT JOIN flight ON airline.airline_id = flight.airline_id
INNER JOIN ticket ON flight.flight_id = ticket.flight_id
INNER JOIN order_ticket ON ticket.order_ticket_id = order_ticket.order_ticket_id
GROUP BY airline.name
ORDER BY profit DESC;