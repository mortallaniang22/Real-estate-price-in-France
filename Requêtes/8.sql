/* 
1. Je calcule le prix du mètre carré d'un T2. 
2. Je calcule le prix du mètre carré d'un T3.
3. Je calcule le taux de variation du prix d'un T2 vers un T3 */

WITH
table1 AS (SELECT ROUND(AVG((tr.valeurFonciere)/bi.surfaceCarrezLot),2) AS prixm2T2
FROM bien_immobilier bi
INNER JOIN transaction tr ON ( bi.idBienImmobilier = tr.idBienImmobilier)
WHERE bi.typeLocal = "Appartement"
AND bi.nbrDePieces = "2"),

table2 as(SELECT ROUND(AVG((tr.valeurFonciere)/bi.surfaceCarrezLot),2) AS prixm2T3
FROM bien_immobilier bi
INNER JOIN transaction tr ON ( bi.idBienImmobilier = tr.idBienImmobilier)
WHERE bi.typeLocal = "Appartement"
AND bi.nbrDePieces = "3")

SELECT 
	t1.prixm2T2 AS "Prix du mètre d'un T2", 
    t2.prixm2T3 AS "Prix du mètre d'un T3",
	ROUND(((t2.prixm2T3 - t1.prixm2T2)/t1.prixm2T2)*100,2) AS "Différence du prix au mètre carré entre un T2 et un T3 (en %)"
FROM table1 t1, table2 t2