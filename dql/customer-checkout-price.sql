SELECT *
FROM sbd.customer a
INNER JOIN sbd.order_ticket b ON a.customer_id = b.customer_id
WHERE a.customer_id = 1;