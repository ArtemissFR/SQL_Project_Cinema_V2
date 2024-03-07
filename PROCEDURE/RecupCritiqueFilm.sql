DELIMITER //

CREATE PROCEDURE recupererCritiquesFilm(
    IN p_film_id INT
)
BEGIN
    SELECT CRITIQUES.critique_id, UTILISATEURS.nom_utilisateur, CRITIQUES.note, CRITIQUES.commentaire, CRITIQUES.date_critique
    FROM CRITIQUES
    INNER JOIN UTILISATEURS ON CRITIQUES.utilisateur_id = UTILISATEURS.utilisateur_id
    WHERE CRITIQUES.film_id = p_film_id;
END //

DELIMITER ;

-- Cette procédure prend en paramètre l'ID d'un film et renvoie les critiques associées à ce film avec le nom de l'utilisateur qui a posté chaque critique.
