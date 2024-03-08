-- Valeurs factices pour la table ACTEURS
INSERT INTO ACTEURS (acteur_id, acteur_nom, acteur_prenom, acteur_date_naissance)
VALUES 
(1, 'Smith', 'John', '1980-05-15'),
(2, 'Doe', 'Jane', '1985-02-28'),
(3, 'Johnson', 'Michael', '1972-09-10'),
(4, 'Brown', 'Emily', '1990-11-20');

-- Valeurs factices pour la table REALISATEUR
INSERT INTO REALISATEUR (realisateur_id, realisateur_nom, realisateur_prenom, realisateur_date_naissance)
VALUES 
(1, 'Anderson', 'Paul', '1965-07-08'),
(2, 'Miller', 'Laura', '1978-04-25'),
(3, 'Garcia', 'Carlos', '1982-12-15'),
(4, 'Smith', 'Amanda', '1970-03-02');

-- Valeurs factices pour la table FILMS
INSERT INTO FILMS (film_id, film_titre, film_annee, realisateur_id, acteur_id, film_genre)
VALUES 
(1, 'The Adventure', 2020, 1, 1, 'Action'),
(2, 'Love Story', 2018, 2, 2, 'Romance'),
(3, 'Thriller Express', 2022, 3, 3, 'Thriller'),
(4, 'Comedy Club', 2019, 4, 4, 'Comedy');

-- Valeurs factices pour la table SALLES
INSERT INTO SALLES (salle_id, salle_nom, salle_capacite)
VALUES 
(1, 'Main Hall', 200),
(2, 'Small Room', 50),
(3, 'VIP Lounge', 30),
(4, 'Outdoor Arena', 300);

-- Valeurs factices pour la table PROJECTIONS
INSERT INTO PROJECTIONS (projection_id, film_id, salle_id, projection_date_heure)
VALUES 
(1, 1, 1, '2024-03-10 18:00:00'),
(2, 2, 2, '2024-03-11 20:30:00'),
(3, 3, 3, '2024-03-12 15:45:00'),
(4, 4, 4, '2024-03-13 19:15:00');

-- Valeurs factices pour la table UTILISATEURS
INSERT INTO UTILISATEURS (utilisateur_id, nom_utilisateur, email_utilisateur, mot_de_passe_utilisateur, date_inscription)
VALUES 
(1, 'user1', 'user1@example.com', 'pass123', '2023-01-20'),
(2, 'user2', 'user2@example.com', 'pass456', '2023-02-15'),
(3, 'user3', 'user3@example.com', 'pass789', '2023-03-05'),
(4, 'user4', 'user4@example.com', 'passabc', '2023-04-10');

-- Valeurs factices pour la table CASTING
INSERT INTO CASTING (realisateur_id, acteur_id, film_id, effectif)
VALUES 
(1, 1, 1, 1),
(2, 2, 2, 2),
(3, 3, 3, 3),
(4, 4, 4, 4);

-- Valeurs factices pour la table SEANCE
INSERT INTO SEANCE (salle_id, projection_id, utilisateur_id, reservation)
VALUES 
(1, 1, 1, 150),
(2, 2, 2, 30),
(3, 3, 3, 20),
(4, 4, 4, 250);

-- Valeurs factices pour la table CRITIQUES
INSERT INTO CRITIQUES (film_id, utilisateur_id, critique_id, note, commentaire, date_critique)
VALUES 
(1, 1, 1, 4.5, 'Great movie!', '2024-03-11'),
(2, 2, 2, 3.8, 'Nice love story', '2024-03-12'),
(3, 3, 3, 4.2, 'Thrilling experience', '2024-03-13'),
(4, 4, 4, 3.5, 'Hilarious comedy', '2024-03-14');
