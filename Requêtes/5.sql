/* 
1. Je SELECT les colonnes pertinentes.alter
2. Je JOIN les tables concernées.
3. J'applique le filtre WHERE pour limiter mes résultats au typeLocal Appartement.
4. Je tri en ordre décroisant : de la valeur foncière la plus élevée à la plus petite. 
5. Je limite l'affichage des résultats aux 10 premières lignes.*/

SELECT 
	bi.idBienImmobilier AS "Référence",
	cm.codeDepartement AS "Département", 
	bi.surfaceCarrezLot AS "Nombre de mètres carrés de l'appartement", 
	tr.valeurFonciere AS "Valeur (en euros)"
FROM 
	commune cm
JOIN bien_immobilier bi USING (idCommune)
JOIN transaction tr USING (idBienImmobilier)
WHERE bi.typeLocal = "Appartement"
ORDER BY tr.valeurFonciere DESC
LIMIT 10;


