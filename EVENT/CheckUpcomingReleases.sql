CREATE EVENT CheckUpcomingReleases
ON SCHEDULE EVERY 1 MONTH
DO
BEGIN
  DECLARE upcoming_count INT;
  SELECT COUNT(*) INTO upcoming_count
  FROM Films
  WHERE film_annee > CURDATE() AND film_annee <= DATE_ADD(CURDATE(), INTERVAL 3 MONTH);

  IF upcoming_count > 0 THEN
    SELECT CONCAT('Il y a ', upcoming_count, ' films à venir dans les trois prochains mois.') AS Message;
    SELECT film_titre, film_annee
    FROM Films
    WHERE film_annee > CURDATE() AND film_annee <= DATE_ADD(CURDATE(), INTERVAL 3 MONTH);
  ELSE
    SELECT 'Pas de films à venir dans les trois prochains mois.';
  END IF;
END;
