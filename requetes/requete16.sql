Select o.titre,region,count(*) AS "nb_of_livres" from abonne AS a
JOIN pret as p ON  p.id_abonne=a.id_abonne
JOIN exemplaire AS e on e.id_exemplaire=p.id_exemplaire
JOIN ouvrage as o ON o.id_ouvrage=e.id_ouvrage
GROUP BY (region,o.titre)
ORDER BY "nb_of_livres" DESC