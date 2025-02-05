/*
	Cette fonction permet d'ajouter un exemplaire.
	A exécuter lorsqu'une bibliothèque souhaire acheter un exemplaire d'un ouvrage
	qui existe déjà. Si l'ouvrage n'existe pas, alors créer l'ouvrage avec la requete4.
*/

CREATE OR REPLACE FUNCTION ajouter_exemplaire(
	p_id_ouvrage INT,
	p_id_bibliotheque INT,
	p_emplacement VARCHAR(255))
RETURNS VOID AS $$
BEGIN
    INSERT INTO exemplaire (id_exemplaire, id_ouvrage, id_bibliotheque, emplacement, statut) 
	VALUES ((SELECT MAX(id_exemplaire)+1 FROM exemplaire), p_id_ouvrage, p_id_bibliotheque, p_emplacement, 'Disponible');
END;
$$ LANGUAGE plpgsql;

--Exemple d'exécution
SELECT ajouter_exemplaire(0, 19, 'etagere 1 rangee 2') 