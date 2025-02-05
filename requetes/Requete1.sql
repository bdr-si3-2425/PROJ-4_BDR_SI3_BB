/*
	Affiche les livres disponibles dans une bibliothèque 
	à partir de son nom (qui est une ville).
*/
SET var.nom_bibliotheque = 'Paris';

SELECT o.titre, o.auteur, e.emplacement
FROM Bibliotheque AS b
JOIN Exemplaire AS e USING(id_bibliotheque)
JOIN Ouvrage AS o USING(id_ouvrage)
WHERE b.nom = CURRENT_SETTING('var.nom_bibliotheque') AND e.statut = 'Disponible' ;

