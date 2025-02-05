/*
	Cette fonction permet d'ajouter un bibliothèque au réseau.
	Il faudra après exécution de cette fonction lier la bibliothèque
	au réseau en ajoutant à la main toutes les distances avec les autres
	bibliothèques avec la requete6.
*/

CREATE OR REPLACE FUNCTION ajouter_bibliotheque(
	p_nom VARCHAR(255), 
	p_region VARCHAR(255))
RETURNS VOID AS $$
BEGIN
<<<<<<< HEAD
    INSERT INTO Bibliotheque (id_bibliotheque, nom, region) 
	VALUES ((SELECT MAX(id_bibliotheque)+1 FROM Bibliotheque), p_nom, p_region);
=======
    INSERT INTO Bibliotheque (id_bibliotheque,nom, adresse, region) 
	VALUES (Select max(id_bibliotheque) from biblioteque,p_nom, p_adresse, p_region);
>>>>>>> d798b6343a5e922fad571d997b3cca64a25d2054
END;
$$ LANGUAGE plpgsql;

--Exemple d'exécution
SELECT ajouter_bibliotheque('Montpelier', 'Occitanie')