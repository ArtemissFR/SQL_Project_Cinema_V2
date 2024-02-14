SELECT
    FILMS.film_id,
    FILMS.film_titre,
    FILMS.film_annee,
    REALISATEUR.realisateur_nom,
    REALISATEUR.realisateur_prenom,
    GROUP_CONCAT(DISTINCT ACTEURS.acteur_nom ORDER BY ACTEURS.acteur_nom ASC SEPARATOR ', ') AS acteurs,
    GENRES.genre_nom,
    THEME.theme_nom,
    PROJECTIONS.salle_id,
    SALLES.salle_nom,
    PROJECTIONS.projection_date_heure
FROM
    FILMS
JOIN REALISATEUR ON FILMS.realisateur_id = REALISATEUR.realisateur_id
JOIN PERSONNEL ON FILMS.film_id = PERSONNEL.film_id
JOIN ACTEURS ON PERSONNEL.acteur_id = ACTEURS.acteur_id
JOIN SCENARIO ON FILMS.film_id = SCENARIO.film_id
JOIN GENRES ON SCENARIO.genre_id = GENRES.genre_id
JOIN THEME ON SCENARIO.theme_id = THEME.theme_id
JOIN PROJECTIONS ON FILMS.film_id = PROJECTIONS.film_id
JOIN SALLES ON PROJECTIONS.salle_id = SALLES.salle_id
WHERE
    FILMS.film_id = 1
GROUP BY
    FILMS.film_id, FILMS.film_titre, FILMS.film_annee,
    REALISATEUR.realisateur_nom, REALISATEUR.realisateur_prenom,
    GENRES.genre_nom, THEME.theme_nom,
    PROJECTIONS.salle_id, SALLES.salle_nom, PROJECTIONS.projection_date_heure;
