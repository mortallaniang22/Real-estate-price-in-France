/*
1. J'applique COUNT sur ibTransaction afin de compter le nombre de ventes.
2. Je JOIN la table bien_immobilier.
3. J'applique un filtre sur la colonne typeLocal pour limiter mes résultats aux Appartements. 
4. Je rajoute un 2e filtre pour pour déterminer la période concernée. */

SELECT COUNT(DISTINCT tr.idTransaction) AS "Total des appartements vendus au 1er semestre 2020"
FROM transaction tr
INNER JOIN bien_immobilier bi ON (bi.idBienImmobilier = tr.idBienImmobilier)
WHERE bi.typeLocal = "Appartement"
AND tr.dateTransaction BETWEEN  "2020-01-01" AND "2020-06-30";
