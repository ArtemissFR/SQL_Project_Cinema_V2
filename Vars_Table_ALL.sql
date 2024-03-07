-- Données factices pour la table FILMS
INSERT INTO FILMS (film_id, film_titre, film_annee, film_genre, realisateur_id, acteur_id)
VALUES
  (1, 'Le Voyageur', 2022, 'Drame', 1, 1),
  (2, 'Les Étoiles Brillantes', 2020, 'Science-Fiction', 2, 3),
  (3, 'Secrets Obscurs', 2019, 'Thriller', 1, 2),
  (4, 'L'Éclat du Soleil', 2021, 'Romance', 3, 4);

-- Données factices pour la table ACTEURS
INSERT INTO ACTEURS (acteur_id, acteur_nom, acteur_prenom, acteur_date_naissance)
VALUES
  (1, 'Smith', 'John', '1990-05-15'),
  (2, 'Jones', 'Emily', '1985-02-28'),
  (3, 'Taylor', 'James', '1992-08-10'),
  (4, 'Johnson', 'Sophie', '1988-11-20');

-- Données factices pour la table REALISATEUR
INSERT INTO REALISATEUR (realisateur_id, realisateur_nom, realisateur_prenom, realisateur_date_naissance)
VALUES
  (1, 'Anderson', 'Michael', '1978-04-22'),
  (2, 'Miller', 'Sarah', '1982-09-18'),
  (3, 'Clark', 'Robert', '1975-12-05');

-- Données factices pour la table SALLES
INSERT INTO SALLES (salle_id, salle_nom, salle_capacite)
VALUES
  (1, 'Salle A', 100),
  (2, 'Salle B', 150),
  (3, 'Salle C', 120);

-- Données factices pour la table PROJECTIONS
INSERT INTO PROJECTIONS (projection_id, film_id, salle_id, projection_date_heure)
VALUES
  (1, 1, 1, '2022-03-15 18:30:00'),
  (2, 2, 2, '2022-03-16 20:00:00'),
  (3, 3, 3, '2022-03-17 15:45:00');

-- Données factices pour la table CRITIQUES
INSERT INTO CRITIQUES (critique_id, film_id, utilisateur_id, note, commentaire, date_critique)
VALUES
  (1, 1, 1, 4.5, 'Une histoire captivante!', '2022-03-16'),
  (2, 2, 2, 3.8, 'Effets spéciaux incroyables.', '2022-03-17'),
  (3, 3, 3, 4.2, 'Suspens du début à la fin.', '2022-03-18');

-- Données factices pour la table UTILISATEURS
INSERT INTO UTILISATEURS (utilisateur_id, nom_utilisateur, email_utilisateur, mot_de_passe_utilisateur, date_inscription)
VALUES
  (1, 'user1', 'user1@example.com', 'mdp123', '2022-03-01'),
  (2, 'user2', 'user2@example.com', 'pass456', '2022-03-02'),
  (3, 'user3', 'user3@example.com', 'secret789', '2022-03-03');

-- Données factices pour la table CASTING
INSERT INTO CASTING (film_id, realisateur_id, acteur_id, effectif)
VALUES
  (1, 1, 1, 1),
  (2, 2, 3, 1),
  (3, 1, 2, 1),
  (4, 3, 4, 1);

-- Données factices pour la table SEANCE
INSERT INTO SEANCE (salle_id, projection_id, utilisateur_id, reservation_id)
VALUES
  (1, 1, 1, 101),
  (2, 2, 2, 102),
  (3, 3, 3, 103);

-- Données factices pour la table SITE_INTERNET
INSERT INTO SITE_INTERNET (critique_id, utilisateur_id, film_id)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3);
