/* 
1. Je calcule les ventes du 1er trimestre 2020 par commune.
2. Je calcule les ventes du 2e trimestre 2020 par commune.
3. Je calcule le taux d'évolution avec les ventes de chaque trimestre. 
4. J'affiche les communes avec un taux d'évolution supérieur à 20 %. */

WITH
table1 AS (SELECT cm.nomCommune, COUNT(tr.idTransaction) AS trim1
FROM commune cm
INNER JOIN bien_immobilier bi USING (idCommune) 
INNER JOIN transaction tr USING (idBienImmobilier)
WHERE tr.dateTransaction BETWEEN  "2020-01-01" AND "2020-03-31"
GROUP BY 1),

table2 AS (SELECT cm.nomCommune, count(tr.idTransaction) as trim2
FROM commune cm
INNER JOIN bien_immobilier bi USING (idCommune) 
INNER JOIN transaction tr USING (idBienImmobilier)
WHERE tr.dateTransaction BETWEEN  "2020-04-01" AND "2020-06-30"
GROUP BY 1)

SELECT t1.nomCommune AS "Commune",
	t1.trim1 AS "Nombre de ventes du premier trimestre 2020", 
	t2.trim2 AS "Nombre de ventes du second trimestre 2020" , 
    ROUND((((trim2- trim1)/trim1)*100),2) AS "Taux d'évolution entre le premier et le second trimestre 2020"
FROM table1 t1
INNER JOIN table2 t2 USING (nomCommune)
WHERE ((trim2- trim1)/trim1) >= 0.2
ORDER BY 4 
