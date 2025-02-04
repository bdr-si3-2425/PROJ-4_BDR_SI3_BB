SET var.category =  'Jeu';

-- Affiche les évènements par bibliothèques

WITH evtPerBiblio AS (
SELECT b.nom, e.id_evenement, e.nom_evenement, e.date_evenement, e.description from evenement AS e
JOIN bibliotheque AS b ON b.id_bibliotheque = e.id_bibliotheque
ORDER BY b.nom)

-- Affiche le abonnés participant et ayant participé aux évènements
-- d'une même catégorie 

SELECT a.id_abonne, a.nom, a.prenom, e.nom_evenement FROM abonne AS a
JOIN participationsevenement AS pE ON pE.id_abonne = a.id_abonne
JOIN evenement AS e ON pE.id_evenement = e.id_evenement
WHERE e.description LIKE ('%' || (CURRENT_SETTING('var.category')) || '%')