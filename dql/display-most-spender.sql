USE sbd;

SELECT COUNT(ticket.ticket_id) AS bought_ticket, CONCAT(customer.first_name, ' ', customer.last_name) AS fullname
FROM customer
         LEFT JOIN order_ticket ON customer.customer_id = order_ticket.customer_id
         INNER JOIN ticket ON order_ticket.order_ticket_id = ticket.order_ticket_id
GROUP BY fullname
ORDER BY bought_ticket DESC;