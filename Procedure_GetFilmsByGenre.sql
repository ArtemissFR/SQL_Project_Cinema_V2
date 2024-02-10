DELIMITER //
CREATE PROCEDURE GetFilmsByGenre(IN genre_name VARCHAR(30))
BEGIN
    SELECT film_titre, film_annee, genre_nom AS genre
    FROM Films
    JOIN Genres ON Films.genre_id = Genres.genre_id
    WHERE genre_nom = genre_name;
END //
DELIMITER ;
