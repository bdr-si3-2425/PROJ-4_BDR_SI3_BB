--Affiche le nombre de prêts d'un abonne, son nom et prénom, à partir de son id_abonne

SET var.id_abonne = '4';

SELECT p.id_abonne, p.prenom, p.nom, COUNT(p.id_exemplaire) AS "nombre de prêt"
FROM (
	SELECT * FROM Abonne
	JOIN Pret USING(id_abonne)
	WHERE Abonne.id_abonne = CURRENT_SETTING('var.id_abonne')::INT
	) AS p
JOIN Exemplaire
USING(id_exemplaire)
JOIN Ouvrage AS o
USING (id_ouvrage)
GROUP BY p.id_abonne, p.prenom, p.nom