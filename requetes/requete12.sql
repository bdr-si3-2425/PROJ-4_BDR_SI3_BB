-- Affiche le abonnés participant et ayant participé aux évènements
-- d'une même catégorie 

SET var.category =  'Jeu';

SELECT a.id_abonne, a.nom, a.prenom, e.nom_evenement FROM abonne AS a
JOIN participationsevenement AS pE ON pE.id_abonne = a.id_abonne
JOIN evenement AS e ON pE.id_evenement = e.id_evenement
WHERE e.description LIKE ('%' || (CURRENT_SETTING('var.category')) || '%')