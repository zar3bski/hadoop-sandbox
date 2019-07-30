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
Dernier point **important**, il faut que votre version inclue le contenu du dossier *user_home_on_namenode*. Assurez vous que celui-ci ne figure pas dans le fichier `.gitignore` situé à la racine du projet (normalement non).

## Le TP à proprement parler


## Transmettre votre travail

Une fois votre travail terminé, il va vous falloir envoyer votre branche sur le repos. Pour cela, effectez les commandes suivantes: 

```
git commit -am "tp votre nom votre prenom"
git push
```

Le reste des opérations se fera directement sur l'interface web du projet: [https://github.com/zar3bski/hadoop-sandbox](https://github.com/zar3bski/hadoop-sandbox)
