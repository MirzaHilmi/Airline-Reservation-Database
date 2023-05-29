DROP TRIGGER IF EXISTS after_update_ticket;

CREATE TRIGGER after_update_ticket
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

    UPDATE sbd.seat
    SET available = NEW.order_ticket_id IS NULL
    WHERE seat_id = (SELECT ticket.seat_id
                     FROM sbd.ticket
                     WHERE order_ticket_id = @current_order_ticket_id AND ticket_id = NEW.ticket_id);
END;