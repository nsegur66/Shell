## Histoire du Shell

* 1971: Apparition du Thompson Shell avec la première version d'Unix. Créé par Ken Thompson.

* 1977: Apparition du Bourne Shell (sh) créé par Stephen Bourne et qui remplaca le Thompson Shell dans la 7ème version d'Unix.

* 1978: Création du C Shell (csh) par l'étudiant Bill Joy. Il permet pour la première fois la réutilisation de commandes précédemment utilisées.

* 1983: Apparition du Korn Shell (ksh) créé par David Korn.

* 1987: Larry Wall crée le langage d eprogrammation nommé "Le Perl" . Il s'inspire des structures de contrôle et d'impression du langage C & des scripts du types sed, awk ...

* 1988: Création du Bourne-Again Shell (bash) par Brian Fox pour la Free Software Foundation (organisation pour les logiciels libres de droits) dans le cadre du projet GNU.

* 1990: Création du Z Shell (zsh) par l'étudiant Paul Falstad.

----------------------
## Au final, qu'est ce que le Shell ?

> :bulb: Le Shell est une interface en ligne de commande.

Un shell1
 est une couche logicielle qui fournit l'interface utilisateur d'un système d'exploitation. Il
correspond à la couche la plus externe de ce dernier. L'interface système est utilisé comme diminutif
de l'interface utilisateur du système d'exploitation.
Il existe deux environnements très différents sous Unix :
• l'environnement console
• l'environnement graphique
Et il existe plusieurs environnements console : les shells.
La console a toujours un fond noir et un texte blanc. En revanche, les fonctionnalités offertes par
l'invite de commandes peuvent varier en fonction du shell que l'on utilise.
Voici les noms de quelques-uns des principaux shells :
• sh : Bourne Shell. L'ancêtre de tous les shells.
• bash : Bourne Again Shell. Une amélioration du Bourne
Shell, disponible par défaut sous GNU/Linux et Mac OS X.
• ksh : Korn Shell. Un shell puissant assez présent sur les
Unix propriétaires, mais aussi disponible en version libre,
compatible avec bash.
• csh : C Shell. Un shell utilisant une syntaxe proche du
langage C.
• tcsh : Tenex C Shell. Amélioration du C Shell.
• zsh : Z Shell. Shell assez récent reprenant les meilleures
idées de bash, ksh et tcsh.
Le bash est le shell par défaut. Cependant, sh reste toujours plus
répandu que bash.
Beaucoup de solutions sont données en ligne de commande, non pas qu'Unix n'ait pas d'interface
graphique, mais pour certaines tâches, l'utilisation de la ligne de commande s'avère bien plus
pratique et plus puissante que la souris. 

Le Shell est une interface entre l'utilisateur et le système d'exploitation. L'utilisateur entre des commandes, qui sont ensuite interprétées par le Shell, et celui-ci renvoie un certain résultat.



Quand on parle du Shell, on fait souvent référence à l'interpréteur de commande, autrefois nommé sh (contraction de shell), et qui a ensuite donné naissance à tout un éventail d'interpréteurs tels que bash, csh, zsh, ksh… qu'il ne faut pas confondre avec un émulateur de terminal comme xterm, eterm, gnome-terminal qui est un outil graphique qui permet d'avoir accès au shell.
En réalité, les vrais terminaux sont accessibles via la combinaison de touche CTRL + ALT + Fx (où x est un chiffre entre 1 et 6) lorsque vous êtes dans un environnement graphique, le 7 correspondant à cette session. Si vous êtes dans un vrai Terminal, il faut théoriquement utiliser ALT + Fx. À noter également qu'un émulateur permet d'afficher une sorte de TTY (TéléTYpe) dans la session graphique.

Le Shell vous donne accès à toute une gamme d'outils très performants qui permettent d'effectuer des tâches impossibles jusque là mais aussi de les automatiser, et cela d'une manière assez simple. De nombreuses interfaces graphiques sont certes disponibles, mais le shell reste très léger, rapide, accessible, efficace…
