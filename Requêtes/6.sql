/* 
1. Je calcule les ventes du 1er trimestre 2020.
2. Je calcule les ventes du 2e trimestre 2020.
3. Je calcule le taux d'évolution avec les ventes de chaque trimestre. */

WITH
Table1 AS (SELECT COUNT(tr.idTransaction) AS ventesTrismestre1
FROM transaction tr
WHERE tr.dateTransaction BETWEEN  "2020-01-01" AND "2020-03-31"),

Table2 AS (SELECT COUNT(tr.idTransaction) AS ventesTrismestre2
FROM transaction tr
WHERE tr.dateTransaction BETWEEN  "2020-04-01" AND "2020-06-30")

SELECT  t1.ventesTrismestre1 AS "Nombre de ventes du premier trimestre 2020", 
		t2.ventesTrismestre2 AS "Nombre de ventes du second trimestre 2020", 
		round(((ventesTrismestre2 - ventesTrismestre1)/ventesTrismestre1*100),2) 
        AS "Taux d’évolution des ventes entre les 2 trimestres (en %)"
FROM Table1 t1, Table2 t2;
