CREATE OR REPLACE FUNCTION ajouter_exemplaire(
	p_id_ouvrage INT,
	p_id_bibliotheque INT,
	p_emplacement VARCHAR(255))
RETURNS VOID AS $$
BEGIN
    INSERT INTO exemplaire (id_exemplaire,id_ouvrage,id_bibliotheque, emplacement, statut) 
	VALUES ((Select Max(id_exemplaire) from exemplaire),p_id_ouvrage,p_id_bibliotheque,p_emplacement,'Disponible');
END;
$$ LANGUAGE plpgsql;
Select ajouter_exemplaire(0,19,'etagere 1 rangee 2') 