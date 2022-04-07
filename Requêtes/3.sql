/* 
1. Je SELECT la colonne code département et Prix du mètre carré après l'avoir calculée.
2. j'écarte les valeurs foncières nulles afin de s'assurer d'avoir une vraie moyenne.
3. je group par codeDepartement
4. Je tri le prix du mètre carré en ordre décroissant (du plus élevé au plus petit).
 Je limite l'affichage des résultats aux 10 premières lignes. */

SELECT DISTINCT cm.codeDepartement AS "Les 10 départements les plus cher au prix du mètre carré", 
ROUND(AVG(tr.valeurFonciere/bi.surfaceCarrezLot),2) AS "Prix du mètre carré"
FROM commune cm
JOIN bien_immobilier bi USING (idCommune)
JOIN transaction tr USING (idBienImmobilier)
WHERE bi.surfaceCarrezLot != 0
AND tr.valeurFonciere != 0
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
