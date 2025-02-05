--Affiche tous les prêts de tous les abonnés triés selon l'id_abonne

SELECT 
	a.id_abonne,
	p.id_pret, 
	e.id_exemplaire, 
	p.date_emprunt, 
	p.date_retour, 
	p.date_retour_prevue,
	o.titre, o.auteur
FROM Abonne AS a
JOIN Pret AS p USING(id_abonne)
JOIN Exemplaire AS e USING(id_exemplaire)
JOIN Ouvrage AS o USING (id_ouvrage)
ORDER BY id_abonne