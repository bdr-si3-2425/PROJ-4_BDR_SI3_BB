/*
	Cette fonction ajoute une réservation à la date d'aujourd'hui 
	à partir d'un id_reservation.
	A exécuter lorsqu'un abonne réserve un livre.
	Il faut mettre le statut à la main, ce qui n'est pas idéal. On aurait du
	faire une requête qui le fait automatiquement.
	Statut de la réservation en fonction du statut de l'exemplaire :
		Statut exemplaire : Disponible -> Statut réservation : Disponible
		Statut exemplaire : Emprunté -> Statut réservation : En cours
		Statut exemplaire : Réservé -> Ne faire faire la réservation
*/

CREATE OR REPLACE FUNCTION ajouter_reservation(
	p_id_abonne INT, 
	p_id_exemplaire INT, 
	p_id_bibliotheque_destination INT, 
	p_statut VARCHAR(20))
RETURNS VOID AS $$
BEGIN
	INSERT INTO Reservation (id_reservation, id_abonne, id_exemplaire, id_bibliotheque_destination, date_reservation, statut)
	VALUES ((SELECT MAX(id_reservation)+1 FROM reservation), p_id_abonne, p_id_exemplaire, p_id_bibliotheque_destination, CURRENT_DATE, p_statut);
END;
$$ LANGUAGE plpgsql;

SELECT ajouter_reservation(0, 1, 5, 'En cours');