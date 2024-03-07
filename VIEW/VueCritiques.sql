CREATE VIEW VueCritiques AS
SELECT
    C.critique_id,
    C.film_id,
    F.film_titre,
    U.utilisateur_id,
    U.nom_utilisateur,
    C.note,
    C.commentaire,
    C.date_critique
FROM
    CRITIQUES C
    JOIN FILMS F ON C.film_id = F.film_id
    JOIN UTILISATEURS U ON C.utilisateur_id = U.utilisateur_id;
