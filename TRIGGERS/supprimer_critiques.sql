DELIMITER //
CREATE TRIGGER supprimer_critiques
AFTER DELETE ON PROJECTIONS
FOR EACH ROW
BEGIN
    DECLARE film_id_variable INT;

    -- Récupérer l'ID du film concerné par la suppression de la projection
    SET film_id_variable = OLD.film_id;

    -- Supprimer les critiques liées au film si le film n'a plus de projections
    IF NOT EXISTS (SELECT 1 FROM PROJECTIONS WHERE film_id = film_id_variable) THEN
        DELETE FROM CRITIQUES WHERE film_id = film_id_variable;
    END IF;
END;
//
DELIMITER ;
