SELECT a.street, a.city, b.*
FROM sbd.address a
         INNER JOIN sbd.customer b ON a.address_id = b.address_id;