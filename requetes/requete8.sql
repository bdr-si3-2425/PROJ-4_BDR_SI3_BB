/*
	Cette fonction ajoute une réservation à la date d'aujourd'hui 
	à partir d'un id_reservation.
*/

--A finir

CREATE OR REPLACE FUNCTION ajouter_reservation(p_id_reservation INT, p_id_abonne INT, p_id_exemplaire INT, p_id_bibliotheque_destination INT, statut VARCHAR(20))
RETURNS VOID AS $$
BEGIN
	INSERT INTO Reservation (id_reservation, id_abonne, id_exemplaire, id_bibliotheque_destination, date_reservation, statut)
	SELECT r.id_reservation, d.id_distance, CURRENT_DATE, d.distance*CURRENT_SETTING('var.coeff_cout_transfert')::INT
	FROM Reservation AS r
	JOIN Exemplaire AS e USING(id_exemplaire)
	JOIN Distance AS d 
	ON d.id_bibliotheque_source = e.id_bibliotheque 
	AND d.id_bibliotheque_destination = r.id_bibliotheque_destination 
	WHERE r.id_reservation = p_id_reservation;
END;
$$ LANGUAGE plpgsql;

SELECT ajouter_transfert(0);