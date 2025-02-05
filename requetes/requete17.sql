
-- Affiche les coûts de transfert 	totaux de chaque bibliothèque

SELECT b.id_bibliotheque, b.nom, b.region, SUM(t.cout_transfert) 
AS "Coût transfert total" FROM bibliotheque AS b
JOIN distance AS d ON d.id_bibliotheque_source = b.id_bibliotheque
JOIN transfert AS t ON t.id_distance = d.id_distance
GROUP BY b.id_bibliotheque
ORDER BY b.id_bibliotheque
