# Find the customers who have placed an order but haven't paid yet, along with their contact information:
SELECT c.first_name, c.last_name, c.email, c.phone_number
FROM sbd.customer c
JOIN sbd.order_ticket ot ON c.customer_id = ot.customer_id
WHERE ot.date_order_paid IS NULL;
