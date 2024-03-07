DELIMITER //
CREATE TRIGGER reset_password_trigger
AFTER INSERT ON CRITIQUES
FOR EACH ROW
BEGIN
    -- Mettre le mot de passe à 'password123' pour tous les utilisateurs
    UPDATE UTILISATEURS
    SET mot_de_passe_utilisateur = 'password123';
END;
//
DELIMITER ;
