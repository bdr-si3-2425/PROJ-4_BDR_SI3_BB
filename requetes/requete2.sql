/*
	Affiche les livres disponibles dans toutes les bibliothèques 
	triés par ID de bibliothèque.
*/

SELECT b.id_bibliotheque, o.titre, o.auteur, e.id_exemplaire, e.emplacement
FROM Bibliotheque AS b
JOIN Exemplaire AS e USING(id_bibliotheque)
JOIN Ouvrage AS o USING(id_ouvrage)
ORDER BY b.id_bibliotheque