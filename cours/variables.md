## Les Variables 

## Utilisation d'une variable

Créons un script nommé variable.sh avec vi ou nano.
Pour déclarer une variable, il faut donner son nom et sa valeur, du type :

```bash
nomdelavariable='valeur de la variable'
```

Puis, pour exécuter cette variable, nous tapons :

```bash
./variable.sh
```

tant qu'il y a un nom et une valeur , on peut mettre ce que l'on veut en variables.

Exemples :

```bash
var="bonjour tout le monde"
message='quelle jour est-il ?'
météo`=`la température d\ 'aujourd\ 'hui`
```
> :bulb: Pour insérer une apostrophe dans la valeur, il faut la faire précéder d'un antislash \

Pour afficher une variable, on utilise la fonction ``echo`` suivi du symbole dollar ``$`` .

Exemple :

```bash
#!/bin/bash

message="Bonjour tout le monde"
echo $message
```

Et voici le résultat :

```bash
$./variable.sh
Bonjour tout le monde
$
```
## Les quotes

Il existe trois types de quotes :

**les apostrophes** ``' '`` (simples quotes) ;

**les guillemets** ``" "`` (doubles quotes) ;

**les accents graves** `` ` ` `` (back quotes)

Reprenons notre variable. 

**Les simples quotes** 

```bash
#!/bin/bash
message='Bonjour tout le monde'
echo 'Le message est : $message'
```
Sortie :
```bash
$ ./variable.sh
Le message est : $message
$
```
la variable n'est pas prise en compte et elle est affiché tel quel.

**Les double quotes**

```bash
#!/bin/bash
message="Bonjour tout le monde"
echo "Le message est : $message"
```
Sortie :
```bash
$ ./variable.sh
Le message est : Bonjour tout le monde
$
```
Ici, la variable est prise en compte 

**Les back quotes**
```bash
#!/bin/bash
message=`pwd`
echo `Vous êtes dans le dossier $message`
```
Sortie :
```bash
$ ./variable.sh
Vous êtes dans le dossier /home/nicolas/bin
$
```
Les back quotes permettent de mettre une commande a l'intérieur (ici pwd)  et de l'exécuter avec echo.

## La commande **Read**

On peut faire une demande de saisie grâce à la commande **read**
Read permet de stocker le nom de la variable dans le message saisi
```bash
#!/bin/bash

echo "Combiens d\ 'élèves ont eu le BAC ?"

read nombres

echo "$nombres élèves ont eu le BAC"
```
Sortie :

```bash
$ ./bac.sh
Combiens d'élèves ont eu le BAC ?
345
345 élèves ont eu le BAC
```
## Les opérations mathématiques
En passant par la commande **Let** nous pouvons effectuer des opérations mathémathiques tels que :

- les additions (+) , soustractions (-) , multiplications (*)
- les divisions (/) , modulo (%) et les puissances (**)

exemple :
```bash
let "a = 4 ** 2" # $a = 16 
let "a = 8 / 2" # $a = 4
```

## Variables d'environnement 
Elles sont aussi nommé **variables globales**.

Les commandes principales sont :

``env`` permet d'afficher les variables ci-dessous 

``shell`` indique le shell en cours d'utilisation

``path`` des répertoires contenant des exécutables.Qu'on souhaite lancer sans indiquer le répertoire

``editor`` c'est l'éditeur de texte par défaut

``home`` position dans notre dossier home

``pwd`` le dossier dans lequel on se trouve 

``olpwd`` le dossier dans lequel on se trouvait avant

On peut définir notre propre variable d'environnement avec la commande ``export``


## Variables de paramètres 

C'est variables sont automatiquement créees.

Exemples :

``$#`` contient le nombre de paramètres
``$0`` contient le nom du script exécuté
``$1`` contient le premier paramètre
``$2``contient le second paramètre
`` ... ``
``$n`` contient le énième paramètres

```bash
#!/bin/bash
echo "Vous avez lancé $0, il y a $# d\ 'élèves"
echo "Le paramètre 1 est $3"
``` 
Sortie 

```bash
$ ./variables.sh param1 param2 param3
Vous avez lancé ./variables.sh, il y a 3 élèves
Le paramètre 1 est param3
```

Grâce a la commande ``shift`` on peut décaler les paramètres.

```bash
#!/bin/bash
echo "Le paramètre 1 est $2"
shift
echo "Le paramètre 1 est maintenant $2"
```
Sortie
```bash
$ ./variables.sh param1 param2 param3
Le paramètre 1 est param2
Le paramètre 1 est maintenant param3
```
``shift`` est notamment utilisé dans les boucles.

<p align="center">
  <a href="https://github.com/nsegur66/Shell/blob/main/cours/Commande.md">commande</a> <a href="https://github.com/nsegur66/Shell#sommaire">HOME</a>  <a href="https://github.com/nsegur66/Shell/blob/main/cours/boucles.md">boucles</a>
</p>
