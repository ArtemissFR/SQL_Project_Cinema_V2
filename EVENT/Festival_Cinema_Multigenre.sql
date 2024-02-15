-- Création de l'événement pour le Festival du Cinéma Multigenre
DELIMITER //
CREATE EVENT IF NOT EXISTS festival_cinema_multigenre
ON SCHEDULE AT '2024-07-10 18:00:00' -- Date et heure du début de l'événement
DO
BEGIN
    -- Insertion d'une projection spéciale du film avec l'ID 1
    INSERT INTO PROJECTIONS (film_id, salle_id, projection_date_heure)
    VALUES (1, 1, '2024-07-10 18:00:00'); -- Vous devez ajuster la salle_id et la date et l'heure selon votre base de données.
END;
//
DELIMITER ;
