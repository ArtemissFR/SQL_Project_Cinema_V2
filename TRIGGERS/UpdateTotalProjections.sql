CREATE TRIGGER UpdateTotalProjections
AFTER INSERT ON Projections
FOR EACH ROW
UPDATE Films
SET total_projections = total_projections + 1
WHERE film_id = NEW.film_id;
