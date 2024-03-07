DELIMITER //

CREATE PROCEDURE AjouterCritique(
    IN p_utilisateur_id INT,
    IN p_nom_utilisateur VARCHAR(50),
    IN p_email_utilisateur VARCHAR(255),
    IN p_mot_de_passe_utilisateur VARCHAR(255),
    IN p_date_inscription DATE,
    IN p_film_id INT,
    IN p_note DECIMAL(3,1),
    IN p_commentaire TEXT,
    IN p_date_critique DATE
)
BEGIN
    DECLARE v_critique_id INT;

    -- Insérer un nouvel utilisateur si nécessaire
    INSERT IGNORE INTO UTILISATEURS (utilisateur_id, nom_utilisateur, email_utilisateur, mot_de_passe_utilisateur, date_inscription)
    VALUES (p_utilisateur_id, p_nom_utilisateur, p_email_utilisateur, p_mot_de_passe_utilisateur, p_date_inscription);

    -- Récupérer l'ID de la critique (auto-incrémenté)
    INSERT INTO CRITIQUES (film_id, utilisateur_id, note, commentaire, date_critique)
    VALUES (p_film_id, p_utilisateur_id, p_note, p_commentaire, p_date_critique);

    SET v_critique_id = LAST_INSERT_ID();

    -- Associer la critique à un film et un utilisateur sur le site Internet
    INSERT INTO SITE_INTERNET (critique_id, utilisateur_id, film_id)
    VALUES (v_critique_id, p_utilisateur_id, p_film_id);
END //

DELIMITER ;
