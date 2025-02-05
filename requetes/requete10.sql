/*
	Cette fonction permet d'ajouter une date de réception lorsqu'un
	transfert est terminé, ie lorsque que le livre est arrivé à destination.
*/

CREATE OR REPLACE FUNCTION ajouter_date_de_reception(p_id_transfert INT, p_date_reception DATE)
RETURNS VOID AS $$
BEGIN
    UPDATE Transfert
	SET date_reception = p_date_reception
	WHERE id_transfert = p_id_transfert;
END;
$$ LANGUAGE plpgsql;


--A décommenter pour ajouter une date de réception à un transfert
SET var.id_transfert = '0';

SELECT ajouter_date_de_reception(CURRENT_SETTING('var.id_transfert')::INT, CURRENT_DATE);
