USE sbd;

SELECT COUNT(ticket.ticket_id)                              AS bought_ticket,
       CONCAT(customer.first_name, ' ', customer.last_name) AS fullname,
       customer.email,
       customer.phone_number,
       address.city,
       address.street,
       CONCAT(address.rt, '/', address.rw) as rt_rw
FROM customer
         INNER JOIN address ON customer.address_id = address.address_id
         LEFT JOIN order_ticket ON customer.customer_id = order_ticket.customer_id
         INNER JOIN ticket ON order_ticket.order_ticket_id = ticket.order_ticket_id
GROUP BY fullname, customer.email, customer.phone_number
ORDER BY bought_ticket DESC;