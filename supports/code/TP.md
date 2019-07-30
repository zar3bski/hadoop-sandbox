# TP 

bon, j'ai peur d'en paumer pas mal avec Git donc vous pourrez m'envoyer votre travail à cette adresse : zarebskidavid@gmail.com

## Quelques questions de cours

[https://docs.google.com/forms/d/e/1FAIpQLSc1B_lSJFaI7DTOjGzCbbvvc7yDP0v253R-6UPBZCTD904hJg/viewform](https://docs.google.com/forms/d/e/1FAIpQLSc1B_lSJFaI7DTOjGzCbbvvc7yDP0v253R-6UPBZCTD904hJg/viewform)

ne perdez pas trop de temps dessus

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
