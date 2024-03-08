DELIMITER //

CREATE TRIGGER after_insert_reservation
AFTER INSERT
ON SEANCE FOR EACH ROW
BEGIN
    UPDATE SALLES
    SET salle_capacite = salle_capacite - 1
    WHERE salle_id = NEW.salle_id;
END //

DELIMITER ;
