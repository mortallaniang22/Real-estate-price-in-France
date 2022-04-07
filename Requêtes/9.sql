WITH
valeurparcommune as (SELECT codeDepartement, nomCommune, valeurFonciere
FROM commune cm
INNER JOIN bien_immobilier bi USING (idCommune)
INNER JOIN transaction tr USING (idBienImmobilier)
WHERE codeDepartement IN (6, 13, 33, 59, 69)
GROUP BY codeDepartement, nomCommune)

SELECT codeDepartement, nomCommune, valeurFonciere, ranking
FROM (
SELECT 
	codeDepartement, 
    nomCommune, 
    valeurFonciere,
RANK() OVER (PARTITION BY codeDepartement ORDER BY valeurFonciere DESC) as ranking
FROM valeurparcommune) as rankingresult
WHERE ranking <= 3