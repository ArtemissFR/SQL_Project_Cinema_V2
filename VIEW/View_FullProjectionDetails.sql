CREATE VIEW FullProjectionDetails AS
SELECT Projections.projection_id, Films.film_titre, Salles.salle_nom AS salle, Projections.projection_date_heure
FROM Projections
JOIN Films ON Projections.film_id = Films.film_id
JOIN Salles ON Projections.salle_id = Salles.salle_id;
