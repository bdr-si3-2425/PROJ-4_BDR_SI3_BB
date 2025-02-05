

-- Affiche les ouvrages selon leur fréquence de transfert dans l'ordre décroissant

SELECT o.id_ouvrage, o.titre, o.auteur, o.genre, 
COUNT(*) AS "Nombre de transferts",
AVG(t.date_reception - t.date_demande) AS "délai moyen"
FROM ouvrage AS o
JOIN exemplaire AS e ON e.id_ouvrage = o.id_ouvrage
JOIN reservation AS r ON r.id_exemplaire = e.id_exemplaire
JOIN transfert AS t ON t.id_reservation = r.id_reservation
GROUP BY o.id_ouvrage
ORDER BY "Nombre de transferts" DESC