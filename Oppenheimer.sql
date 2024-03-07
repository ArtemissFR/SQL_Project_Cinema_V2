-- Ajout de l'acteur non présent
INSERT INTO ACTEURS (acteur_id, acteur_nom, acteur_prenom, acteur_date_naissance)
VALUES
    (5, 'Murphy', 'Cillian', '1976-05-25');

-- Ajout du film
INSERT INTO FILMS (film_id, film_titre, film_annee, film_genre, realisateur_id, acteur_id)
VALUES
    (6, 'Oppenheimer', 2023, 'Drame', 3, 5);
