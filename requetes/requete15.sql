
-- Crée une vue contenant tous les abonnés n'ayant pas respecté les délais
-- ainsi que les prêts associés aux délais non respecté

DROP VIEW if EXISTS abonnes_delais;
CREATE VIEW abonnes_delais AS
SELECT a.id_abonne, a.nom, a.prenom, p.id_pret, p.date_emprunt, 
p.date_retour_prevue, p.date_retour FROM abonne AS a 
JOIN pret AS p ON p.id_abonne = a.id_abonne
WHERE (p.date_retour > date_retour_prevue OR 
(SELECT NOW()) > date_retour_prevue and date_retour IS NULL);

-- Affiche les abonnés ne repsectant pas les délais de prêt 
-- ainsi que leur fréquence d'infraction

SELECT a.id_abonne, a.nom, a.prenom, COUNT(*) AS frequence FROM abonnes_delais AS a
GROUP BY a.id_abonne, a.nom, a.prenom
ORDER BY frequence
