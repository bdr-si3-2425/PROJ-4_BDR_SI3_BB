SET var.evt = 'test 2';

-- 	Affiche les abonnés qui participent à un évènement evt particulier

SELECT a.id_abonne, a.nom, a.prenom, e.nom_evenement, e.id_evenement
FROM participationsevenement as pE
JOIN abonne AS a ON pE.id_abonne = a.id_abonne
JOIN evenement AS e ON e.id_evenement = pE.id_evenement 
WHERE e.nom_evenement = CURRENT_SETTING('var.evt')
ORDER BY a.id_abonne;