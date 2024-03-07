SELECT
    F.film_id,
    F.film_titre,
    F.film_annee,
    F.film_genre,
    R.realisateur_nom AS realisateur_nom,
    R.realisateur_prenom AS realisateur_prenom,
    A.acteur_nom AS acteur_nom,
    A.acteur_prenom AS acteur_prenom,
    P.projection_date_heure
FROM FILMS F
JOIN REALISATEUR R ON F.realisateur_id = R.realisateur_id
JOIN ACTEURS A ON F.acteur_id = A.acteur_id
JOIN PROJECTIONS P ON F.film_id = P.film_id
WHERE F.film_id = VOTRE_ID_DE_FILM;
