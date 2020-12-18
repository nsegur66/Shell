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

Pris sur [openclassroom](https://openclassrooms.com/fr/courses/43538-reprenez-le-controle-a-laide-de-linux/43394-les-conditions)
                
[ $str1 == $str2 ] :arrow_right: Vérifie si str1 est identique à str2.

[ $str1 != $str2 ] :arrow_right: Vérifie si str1 est différent de str2

[ -z $str ] :arrow_right: Vérifie si str est vide

[ -n $str ] :arrow_right: Vérifie si str est non vide


## Fichiers

Pris sur [openclassroom](https://openclassrooms.com/fr/courses/43538-reprenez-le-controle-a-laide-de-linux/43394-les-conditions)

[ -e fichier ]  :arrow_right: Vérifie si ce fichier existe
 
[ -d dossier ]	:arrow_right: Vérifie si le fichier est un répertoire

[ -L fichier ]	:arrow_right::arrow_right: Vérifie si ce fichier est un lien symbolique

[ -r fichier ]	:arrow_right: Vérifie si ce fichier est lisible

[ -w fichier ]	:arrow_right: Vérifie si ce fichier est modifiable

[ -x fichier ]	:arrow_right: Vérifie si ce fichier est exécutable

[ fichier1 -nt fichier2 ] :arrow_right: Vérifie si le fichier 1 est plus récent que le fichier 2 (netherthan)

[ fichier1 -ot fichier2 ] :arrow_right: Vérifie si le fichier 1 est plus vieux que le fichier 2 (olderthan)

[ -s fichier ]	:arrow_right: Vérifie si la taille du fichier est supérieure à zéro

## Nombres

Pris sur [openclassroom](https://openclassrooms.com/fr/courses/43538-reprenez-le-controle-a-laide-de-linux/43394-les-conditions)

[ $nb1 -eq $nb2 ] :arrow_right:	Vérifie si les nombres son égaux

[ $nb1 -ne $nb2 ] :arrow_right:	Vérifie si les nombres ne sont pas égaux

[ $nb1 -lt $nb2 ] :arrow_right:	Vérifie si nb1 est inférieur à nb2

[ $nb1 -le $nb2 ] :arrow_right:	Vérifie si nb1 est inférieur ou égal à nb2

[ $nb1 -gt $nb2 ] :arrow_right:	Vérifie si nb1 est supérieur à nb2

[ $nb1 -ge $nb2 ] :arrow_right:	Vérifie si nb1 est supérieur ou égal à nb2

## D'autres Options

## Plusieurs ``if`` à la fois

On peut faire plusieurs ``if`` grâce aux symboles :

* && : signifie "et"

* || : signifie "ou"

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

 
<p align="center">
 <a href="https://github.com/nsegur66/Shell/blob/main/cours/boucles.md">boucles</a> <a href="https://github.com/nsegur66/Shell#sommaire">HOME</a>
</p>


