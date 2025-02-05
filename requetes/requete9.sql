/*
	Cette fonction ajoute un transfert à la date d'aujourd'hui 
	à partir d'un id_reservation.
	Fonction à exécuter seulement lorsque id_bibliotheque_destination de la réservation est différent
	de id_biliotheque de l'Exemplaire.
*/

SET var.coeff_cout_transfert = '1';

CREATE OR REPLACE FUNCTION ajouter_transfert(p_id_reservation INT)
RETURNS VOID AS $$
BEGIN
	INSERT INTO Transfert (id_transfert, id_reservation, id_distance, date_demande, cout_transfert)
	SELECT (SELECT MAX(id_transfert)+1 FROM Transfert), r.id_reservation, d.id_distance, CURRENT_DATE, d.distance*CURRENT_SETTING('var.coeff_cout_transfert')::INT
	FROM Reservation AS r
	JOIN Exemplaire AS e USING(id_exemplaire)
	JOIN Distance AS d 
	ON d.id_bibliotheque_source = e.id_bibliotheque 
	AND d.id_bibliotheque_destination = r.id_bibliotheque_destination 
	WHERE r.id_reservation = p_id_reservation;
END;
$$ LANGUAGE plpgsql;

SELECT ajouter_transfert(0);