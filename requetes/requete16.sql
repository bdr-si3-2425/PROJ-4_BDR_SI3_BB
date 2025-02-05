
-- Affiche les livres les plus empruntés par régions

SELECT region, o.titre, count(*) AS "nb_of_livres" FROM abonne AS a
JOIN pret AS p ON  p.id_abonne=a.id_abonne
JOIN exemplaire AS e ON e.id_exemplaire=p.id_exemplaire
JOIN ouvrage AS o ON o.id_ouvrage=e.id_ouvrage
GROUP BY region, o.titre
ORDER BY region, "nb_of_livres" DESC