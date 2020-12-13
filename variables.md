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







## Variable d'environnement 






## Variable de paramètres 

