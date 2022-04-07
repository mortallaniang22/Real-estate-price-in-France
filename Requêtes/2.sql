/* 
1. Je calcule le nombre total d'appartement vendus. 
2. Je divise le COUNT des transactions par la première requête (reqûetes imbriquées).
3. Je mutiplie par 100 pour les pourcentages. 
4. Je formate l'affichage des nombre décimaux avec Round.*/ 

SELECT nbrDePieces AS "Nombre de pièces", 
	ROUND((COUNT(idTransaction)/(
		SELECT COUNT(bi.idBienImmobilier) AS NbrTotalAppart
		FROM bien_immobilier bi
		INNER JOIN transaction tr USING (idBienImmobilier)
		WHERE typeLocal = "Appartement")*100),2) 
        AS "Proportion des ventes des appartements par le nombe de pièces (en %)"
FROM transaction tr
INNER JOIN bien_immobilier bi USING (idBienImmobilier)
WHERE bi.typeLocal = "Appartement"
GROUP BY bi.nbrDePieces
ORDER BY bi.nbrDePieces


