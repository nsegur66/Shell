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





