## Les Boucles

Les deux types de boucles les plus rencontrées sont ``While`` et ``For``.

Nous allons découvrir leurs utilisations ainsi que leurs syntaxes. 

## La Boucle ``While``

``While`` veut dire "tant que", et permet de boucler tant que la condition n'est pas vérifié.

```bash
while [ condition ]; do
  echo "action a effectué"
done
```
Ici, le ``do`` correspond a l'action a effectué.

Et le ``done`` à la fin de la boucle.

> :bulb: Il existe un commande nommer ``until`` qui est l'inverse de ``While``.
Elle veut dire "jusqu'a ce que".



## La Boucle ``For``

``For`` correspond a "pour".

```bash
#!/bin/bash
for var in 'val1' 'val2' do
   echo "action a effectué"
done
```
Ici, on utilise un ``for`` pour dire que si **var** est contenu dans **val1** et **val2**, le **do** effectuera un action.
Et le **done** pour fermer cette boucles.

Exemples :

```bash
#!/bin/bash
for élèves in 'seconde 1' 'première 4' 'terminal 9' do
        echo "En quelle classe est cette élève ? : $élèves"
done
```
Sortie

```bash
En quelle classe est cette élève ? : seconde 1
En quelle classe est cette élève ? : terminal 9
En quelle classe est cette élève ? : première 4
```
Mais, il est possible d'introduire une varaibles dans notre boucles ``for``.

Exemples :

```bash
#!/bin/bash
liste_fichiers=`ls`
for fichier in $liste_fichiers do
   echo "Fichier trouvé : $fichier"
done
```
Sortie 
```bash
Fichier trouvé : boucles.sh
Fichier trouvé : conditions.sh
Fichier trouvé : variables.sh
```

## Pour Résumé

Le ``while`` permet de boucler tant qu'une condition n'est pas remplie.

Le ``for`` permet de boucler sur une série de valeurs définies.

