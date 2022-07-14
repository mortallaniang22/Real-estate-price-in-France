## Real estate Price in France

In this project, we built a prediction and recommendation model with SQL

We used [Requests for land values](https://www.data.gouv.fr/fr/datasets/5c4ae55a634f4117716d5656/) data from [Data.gouv](https://www.data.gouv.fr/fr/).

#

### Data cleaning

We used **Excel** and **Power Query** for data preparation

### Database Design
We used **Power Architect** to design the datase.

<img alt="MySQL" width="40%" src="./data/kmeans_report.png" style="padding-right:10px;" />

### Logistic Regression model

<img alt="MySQL" width="40%" src="./data/reglog_confusion (2).png" style="padding-right:10px;" />
<img alt="MySQL" width="20%" src="./data/reglog_score.png" style="padding-right:10px;" />

### Frontend application

We create a [Frontend App](https://alhasdata-fakenotes-dectector-main-ff5ra5.streamlitapp.com/) with **Streamlit** to test the logistic regression model.

#


### Tools that we used 

<img align="left" alt="MySQL" width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" style="padding-right:10px;" />
<img align="left" alt="MySQL" width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/numpy/numpy-original.svg" style="padding-right:10px;" />
<img align="left" alt="MySQL" width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/pandas/pandas-original.svg" style="padding-right:10px;" />
<img align="left" alt="MySQL" width="45px" src="https://github.com/Alhasdata/Alhasdata/blob/main/tools/sklearn.png" style="padding-right:10px;" />
<img align="left" alt="MySQL" width="45px" src="https://github.com/Alhasdata/Alhasdata/blob/main/tools/spark.png" style="padding-right:10px;" />
<img align="left" alt="MySQL" width="40px" src="https://github.com/Alhasdata/Alhasdata/blob/main/tools/streamlit2.png" style="padding-right:10px;" />

<img align="left" alt="MySQL" width="30px" src='https://cdn.jsdelivr.net/gh/devicons/devicon/icons/html5/html5-original.svg' style="padding-right:10px;" />
<img align="left" alt="MySQL" width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/css3/css3-original.svg" style="padding-right:10px;" />


<img align="left" alt="MySQL" width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/jupyter/jupyter-original.svg" style="padding-right:10px;" />
<img align="left" alt="MySQL" width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/vscode/vscode-original.svg" style="padding-right:10px;" />


<img align="left" alt="MySQL" width="30px" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg" style="padding-right:10px;" />






# DataImmo
Modèle de prédiction et de recommandation du prix de vente des biens immobiliers en France.

Données traitées : Demandes de valeurs foncières.

Source des données : https://www.data.gouv.fr/fr/datasets/5c4ae55a634f4117716d5656/.

Techno : Power query, Power architect, MySQL, PostgreSQL

## Contenu du dossier
1 Dictionnaire des données.

1 Schéma relationnel.

1 script MySQL pour la création des tables.

1 script PostgreSQL pour la création des tables.

4 fichiers fichiers csv.

9 requêtes MySQL 

## Les requêtes
1. Nombre total d’appartements vendus au 1er semestre 2020.
2. Proportion des ventes d’appartements par le nombre de pièces. 
3. Liste des 10 départements où le prix du mètre carré est le plus élevé. 
4. Prix moyen du mètre carré d’une maison en Île-de-France.
5. Liste des 10 appartements les plus chers avec le département et le nombre de mètres carrés. 
6. Taux d’évolution du nombre de ventes entre le premier et le second trimestre de 2020. 
7. Liste des communes où le nombre de ventes a augmenté d'au moins 20% entre le premier et le second trimestre de 2020 
8. Différence en pourcentage du prix au mètre carré entre un appartement de 2 pièces et un appartement de 3 pièces. 
9. Les moyennes de valeurs foncières pour le top 3 des communesdes départements 6, 13, 33, 59 et 69
