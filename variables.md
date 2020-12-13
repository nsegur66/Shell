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

Il existe trois types de quotes (aide de openclassrooms) :

**les apostrophes** ``' '`` (simples quotes) ;

**les guillemets** ``" "`` (doubles quotes) ;

**les accents graves** `` ` ` `` (back quotes)

Reprenons notre variables. 

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


## Variable d'environnement 






## Variable de paramètres 

