## Les Conditions

## La condition ``If``

le ``if`` signifie "si"

```bash
if [ condition ]
then
        echo "action"
fi
```
le mot ``fi`` indique la fin de la condition ``if``.

On peut aussi l'écrire avec le ``then`` aligné au ``if``

```bash
if [ condition ]; then
        echo "action"
fi
```
## La condition ``Then`` et ``Else``

Quand la condition n'est pas remplie, on peut rajouter un ``else`` qui signifie « sinon »

```bash
if [ condition ]
then
        echo "action"
else
        echo "action"
fi
```
Le ``else`` est nécessaire lors de l'exécution de la condition sinon cela ne marche pas.

## La condition ``Elif``

``elif`` signifie "sinon si"
En additionnant ``if`` / ``elif`` /  ``else`` on peut : vérifier différentes actions (la premère, la deuxième , la troisième ... ) et si aucunes conditions n'est vérifiées effectuer une action ou non.

## Chaines de caractères 

Conditions	Significations
[ $str1 == $str2 ]	Vérifie si str1 est égale à str2. (Possible avec un seul =)
[ $str1 != $str2 ]	Vérifie si str1 n'est pas égale à str2
[ -z $str ]	Vérifie si str est vide
[ -n $str ]	Vérifie si str n'est pas vide


## Fichiers

[ -a fichier ]	Vérifie si ce fichier existe
[ -d dossier ]	Vérifie si ce dossier existe
[ -L fichier ]	Vérifie si ce fichier est un lien symbolique
[ -r fichier ]	Vérifie si ce fichier est lisible
[ -w fichier ]	Vérifie si ce fichier est modifiable
[ -x fichier ]	Vérifie si ce fichier est exécutable
[ fichier1 -nt fichier2 ]	Vérifie si le fichier 1 est plus récent que le fichier 2 (netherthan)
[ fichier1 -ot fichier2 ]	Vérifie si le fichier 1 est plus vieux que le fichier 2 (olderthan)
[ -s fichier ]	Vérifie si la taille du fichier est supérieure à zéro

## Nombres

Conditions	Significations
[ $nb1 -eq $nb2 ]	Vérifie si les nombres son égaux
[ $nb1 -ne $nb2 ]	Vérifie si les nombres ne sont pas égaux
[ $nb1 -lt $nb2 ]	Vérifie si nb1 est inférieur à nb2
[ $nb1 -le $nb2 ]	Vérifie si nb1 est inférieur ou égal à nb2
[ $nb1 -gt $nb2 ]	Vérifie si nb1 est supérieur à nb2
[ $nb1 -ge $nb2 ]	Vérifie si nb1 est supérieur ou égal à nb2

## D'autres Options

## Plusieurs ``if`` à la fois

On peut faire plusieurs ``if`` grâce aux symboles :

- && : signifie "et"

- || : signifie "ou"

Exemple :

```bash
#!/bin/bash
if [ $# -ge 1 ] && [ $1 = 'adresse' ]
then
        echo "Bravo !"
        echo "Vous connaissez vôtre adresse"
else
        echo "Vous ne connaissez pas vôtre adresse "
fi
```

## Inverser un ``if``

Il est possible d'inverser un test en utilisant la négation. 

Ici il faut utilisé le point d'exclamation « ! ».

 



