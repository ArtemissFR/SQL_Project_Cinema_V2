INSERT INTO ACTEURS (acteur_id, acteur_nom, acteur_prenom, acteur_date_naissance) -- Ajout de l'acteur non présent
VALUES
    (6, 'Murphy', 'Cillian', '1976-05-25'),

INSERT INTO FILMS (film_id, film_titre, film_annee, genre_id, realisateur_id, acteur_id, theme_id) -- Ajout du film
VALUES
    (6, 'Oppenheimer', 2023, 3, 3, 6, 5);
