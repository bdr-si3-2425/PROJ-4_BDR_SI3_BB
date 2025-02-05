-- Affiche les évènements par bibliothèques


SELECT b.nom, e.id_evenement, e.nom_evenement, e.date_evenement, e.description from evenement AS e
JOIN bibliotheque AS b ON b.id_bibliotheque = e.id_bibliotheque
ORDER BY b.nom
