SELECT a.first_name, b.price_amount
FROM sbd.customer a
INNER JOIN sbd.order_ticket b ON a.customer_id = b.customer_id
WHERE a.first_name = 'Rani' AND b.price_amount IS NOT NULL ;