/*
	Fonction qui permet d'ajouter un ouvrage. A exécuter lorsqu'une bibliothèque 
	souhaite acheter un livre qui n'a aucun exemplaire dans aucune des bibliothèques.
*/

CREATE OR REPLACE FUNCTION ajouter_ouvrage(
	p_titre VARCHAR(255),
	p_auteur VARCHAR(255),
	p_genre VARCHAR(255),
	p_date DATE)
RETURNS VOID AS $$
BEGIN
    INSERT INTO ouvrage(id_ouvrage, titre, auteur, genre, date_publication) 
	VALUES ((SELECT MAX(id_ouvrage)+1 FROM ouvrage), p_titre, p_auteur, p_genre, p_date);
END;
$$ LANGUAGE plpgsql;

--Exemple d'exécution : 
SELECT ajouter_ouvrage('Le tour du monde en 80 jours', 'Jules Verne', 'Roman', '1872-01-01')  