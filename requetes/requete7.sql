/*
	Fonction qui permet d'ajouter un distance entre deux bibliothèques.
	A exécuter lors de l'ajout d'une nouvelle bibliothèque pour la relier
	au réseau.
*/

CREATE OR REPLACE FUNCTION ajouter_distance(
	p_id_bibliotheque_source INT,
	p_id_bibliotheque_destination INT,
	p_distance INT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO distance (id_distance, id_bibliotheque_source, id_bibliotheque_destination, distance) 
	VALUES ((SELECT MAX(id_distance)+1 FROM distance), p_id_bibliotheque_source, p_id_bibliotheque_destination, p_distance);
END;
$$ LANGUAGE plpgsql;

--Exemple d'exécution
SELECT ajouter_distance(20, 0, 500)  