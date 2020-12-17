## Commande de base du Shell

## Commande génériques

## ``ls`` et ``ls -a``

La commande ``ls`` sert a lister l'ensemble des fichiers & dossiers présents dans le répertoire courant (sans les dossiers et fichiers cachés)

Alors que la commande ``ls -al`` permet de lister l'ensemble des fichiers & dossiers présents dans le répertoire courant, y compris les dossiers et fichiers cachés

## ``man``

Permet de vous afficher la documentation de la commande renseignée

## ``mv``
Permet de déplacer des éléments.Par exemple déplacer un fichier vers dossier ou inversement.

## ``Touch``

Cette commande permet de créer un fichier 

## ``mkdir``

Cette commande permet de créer un dossier/répertoire

> :bulb: > Il existe beaucoup d'autres commandes génériques, vu dans le [cours](https://github.com/kevinniel/resources/blob/master/Cours/linux/commandes_generiques.md#ligne-de-commande-g%C3%A9n%C3%A9riques-cli)

## Autres commandes


## ``Echo``
La commande ``echo`` permet simplement d'afficher une ligne. 

```bash
$echo "quelle temps fait-il ?"
quelle temps fait-il ?
``` 
Ils existent des paramètres :

* -e : permet d'interpéter des séquences
* -n : permet de retirer le saut de ligne insérer par défaut
* -E : permet d'interpéter des séquences spéciales (\t, \b, \r ...)

## ``Read``

La commande ``read`` lit l'entrée standard et affecte les valeurs saisies

```bash
#!/bin/bash
read nombres
echo "Vous avez $nombres élèves dans cette classe"
```
Sortie 

```bash
$
30
Vous avez 30 élèves dans cette classe
$
```

Ils existent des paramètres :

* read -p : Permet de mettre un message avant la saisie de l'utilisateur.
* read -n : Permet de limiter le nombre de caractère que peut saisir l'utilisateur.
* read -t : Permet de limiter le temps que peut mettre l'utilisateur à faire la saisie.
* read -s : Permet de cacher la saisie de l'utilisateur.

##  ``Let``

La commmande ``let`` permet d'effectuer des calculs. Comme les additions (+) , soustractions (-) , multiplications (*)
les divisions (/) , modulo (%) et les puissances (**)

Exemples :

```bash
$ a=1
$ let "a=$a + 1"
$ echo $a
2
```

## ``Env``

Cette commande fait partie des commandes d'environnements.

Elle sert a affiché les variables d'environnements

## ``pwd``

la commande ``pwd`` permet de savoir dans quel répertoire on se trouve.

## les Groupes

## ``Usermod``

Elle permet la gestion d'utlisateurs.

useradd <username> : commande permettant d'ajouter un utilisateur.
  
useradd -G <groups> <username>: crée un utilisateur ``username`` en lui affectant automatiquement les groupes listés dans groups.
  
userdel <username> : permet de supprimer l'utilisateur ``usernmae``.

## Autres Commandes

passwd <username> : permet de définir le nouveau mot de passe à l'uilisateur ``usernmae``. 
  
groupadd <nom_du_groupe> : permet de créer un groupe nom_du_groupe.

groupdel <nom_du_groupe> : permet de supprimer le groupe nom_du_groupe.

## Les Droits

On peut aussi modifier les droits de nos fichiers/dossiers avec la commande ``chmod``
(vu dans le [cours](https://github.com/kevinniel/resources/blob/master/Cours/linux/droits.md) récédemment)

