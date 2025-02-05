/*
	Cette fonction permet d'ajouter une date de réception lorsqu'un
	transfert est terminé, ie. lorsque le livre est arrivé à destination.
*/

CREATE OR REPLACE FUNCTION ajouter_date_de_reception(p_id_transfert INT, p_date_reception DATE)
RETURNS VOID AS $$
BEGIN
    UPDATE Transfert
	SET date_reception = p_date_reception
	WHERE id_transfert = p_id_transfert;
END;
$$ LANGUAGE plpgsql;


--Exemple d'exécution
SELECT ajouter_date_de_reception(0, CURRENT_DATE);
