--Affiche tous les prêts d'un abonne à partir de son id_abonne

SET var.id_abonne = '4';

SELECT 
	p.id_pret, 
	p.id_exemplaire, 
	p.date_emprunt, 
	p.date_retour, 
	p.date_retour_prevue,
	o.titre, o.auteur
FROM (
	SELECT * FROM Abonne
	JOIN Pret USING(id_abonne)
	WHERE Abonne.id_abonne = CURRENT_SETTING('var.id_abonne')::INT
	) AS p
JOIN Exemplaire
USING(id_exemplaire)
JOIN Ouvrage AS o
USING (id_ouvrage)