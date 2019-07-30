# TP 

## Créer votre branche du projet

L'ensemble des commandes qui suivent sont à effectuer depuis la racine du projet `hadoop-sandbox`. Nous allons nous servir de git. Assurez vous tout d'abord que votre version du projet est à jour (`git pull`)

Il vous faudra ensuite créer une banche locale qui portera votre nom
```
git branch nom_prenom
```
puis basculer dessus
```
git checkout nom_prenom
```

Vous pouvez vous assurer que vous êtes bien sur votre branche en tappant `git status`
```
git status
Sur la branche nom_prenom
```
Dernier point **important**, il faut que votre version inclue le contenu du dossier *user_home_on_namenode*. Assurez vous que celui-ci ne figure pas dans le fichier `.gitignore` situé à la racine du projet (normalement non). Votre code devra se trouver dans ce dossier.

## Le TP à proprement parler

Le tp se composera de deux étapes: i) ingestion de données sur une base de données distante ii) traitement de ces dernières à l'aide de jobs MapReduce écrits par vos soins. 

### ingestion de données distantes

A l'aide de sqoop, vous allez ingérer la table `crimes` de la base `boston`. Pour rappel, les crédentials sont les suivants: 

- user: postgres
- pass: boston_password

et vous aurez besoin de l'ip du serveur 51.15.236.215

Vous êtes libres de mettre les fichiers où vous le souhaitez sur l'HDFS (veillez juste à vous souvenir de l'endroit). 

### Traitement de ces données en map reduce

Une description des données ainsi que quelques stats sont disponibles à [cette addresse](https://www.kaggle.com/ankkur13/boston-crime-data). Si vous veniez à douter, au cours du TP, des résultats de vos calculs, reportez-vous à ceux calculés sur cette page. Vous allez effectuer les traitements suivants. Vous veillerez à nommer vos `mapper.py` `reducer.py` de manière à pouvoir identifier le traitement correspondant (e.g. `month_reducer.py`)

#### Fréquence des incidents par mois (`month`)

Il s'agit de calculer les données de l'histogramme présenté au dessus de la colonne `#MONTH`. Votre résultat devra être présenté sous la forme *numéro du mois*		*nombre d'incident*

```

1	23625

2	21661

...	.....

...	.....

12	23484

```

#### Incident les plus/moins fréquents (`frequency`)

Il s'agit d'identifier les incidents les plus et les moins fréquents à l'aide de la colonne `#OFFENSE_CODE_GROUPE`. Votre résultat devra être présenté sous la forme: 

```

incident_le_plus_fréquent	proportion_représentée

incident_le_moins_fréquent	proportion_représentée

```

## Transmettre votre travail

Une fois votre travail terminé, il va vous falloir envoyer votre branche sur le repos. Pour cela, effectez les commandes suivantes: 

```
git commit -am "tp votre nom votre prenom"
git push
```

Le reste des opérations se fera directement sur l'interface web du projet: [https://github.com/zar3bski/hadoop-sandbox](https://github.com/zar3bski/hadoop-sandbox)
