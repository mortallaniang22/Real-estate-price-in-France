/* 
1. Je SELECT le prix mpyen du mètre carré d'un maison (en le calculant)
2. J'applique un filtre Maison.
3. Je rajoute des filtres sur tous les départements IDF. */

SELECT ROUND(AVG(tr.valeurFonciere/bi.surfaceCarrezLot),2) AS "Prix moyen du mètre carré d'une maison en IDF"
FROM transaction tr
JOIN bien_immobilier bi USING (idBienImmobilier)
JOIN commune cm USING (idCommune)
WHERE bi.typeLocal = "Maison"
AND bi.surfaceCarrezLot != 0
AND tr.valeurFonciere != 0
AND cm.codeDepartement IN ('75', '77', '78', '91', '92', '93', '94', '95');