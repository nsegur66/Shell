## Tp5 : Création d'un agenda

Dans ce TP, on nous demandait de faire : 

```bash
Le script devra permettre de gérer un agenda. Il devra inclure les fonctionnalités suivantes :

* ajouter un évènement (date + heure + nom + durée)
* voir la liste des évènements par ordre chronologique
* modifier un évènement
* supprimer un évènement

L'ensemble des informations devront être enregistrées dans un fichier texte
```
## Fichier associé

[événement](https://github.com/nsegur66/Shell/blob/main/Tp/evenement.txt)

## Voici mon code : 

```bash
#!/bin/bash

refus()
{
echo Ne pas interrompre le programme...
}

if [ $# = 0 ]
then
	echo "---MENU---"
	echo " 1- Ajouter un événement" 
	echo " 2- Modifier un événement" 
	echo " 3- Rechercher événement (nom)"
	echo " 4- Lister les événements"
	echo " 5- Supprimer un événement"
	echo "----------"
	read -p "Saisissez un chiffre : " evenementmodify


else
	echo " erreur "

fi

if [ $evenementmodify = 1 ]
then
	read -p"Nom : " nom
	read -p"Date : " date
	read -p"Heure : " heure
	read -p"Durée : " dure
	
	echo "$nom:$date:$heure:$dure"
	echo "Confirmez-vous ? (o/n)"
	read reponse
	case "$reponse" in
	o|oui)	echo "$nom:$date:$heure:$dure" >> evenement.txt
	echo Utilisateur $nom enregistré;;
	n|non)	echo "Information NON enregistrée"
	;;
	esac
fi

if [ $evenementmodify = 2 ]
then	
	echo "NOM ?" 
	read nom
	if grep "$nom" evenement.txt
	then
		
		echo "Nouvelle date :"
		read date
		echo "Nouvelle heure :"
		read heure
        echo "Nouvelle durée :"
		read dure
		grep -v "$nom" evenement.txt > buffer
		echo "Confirmez-vous ? (o/n)"
		read reponse
		mv buffer evenement.txt
		case "$reponse" in
		o|oui)	echo "$nom:$date:$heure:$dure" >> buffer
		echo Utilisateur $nom enregistré;;
		n|non)	echo "Information NON enregistrée"
		;;
		esac
	fi
fi

if [ $evenementmodify = 3 ]
then
	echo "Recherche par nom"
	echo "nom ?"
	read nom
	grep  "$nom" evenement.txt 
	
fi


if [ $evenementmodify = 4 ]
then
	echo "Evénement"
	sort evenement.txt
fi


if [ $evenementmodify = 5 ]
then
	echo "Supprimer un événement"
	echo "Nom ?"
	read nom
	grep -v "$nom" evenement.txt > buffer
	echo "Confirmez-vous ? (o/n)"
	read reponse
	mv buffer evenement.txt
	case "$reponse" in
	o|oui)	echo "événement supprimé" 
	;;
	n|non)	echo "Information NON enregistrée"
	;;
	esac
fi
```

---------------------------------------------------------------------------
Ce menu est le même que le tp4, toujours composer d'une boucles ``if`` et de plusieurs ``echo``
```bash
if [ $# = 0 ]
then
	echo "---MENU---"
	echo " 1- Ajouter un événement" 
	echo " 2- Modifier un événement" 
	echo " 3- Rechercher événement (nom)"
	echo " 4- Lister les événements"
	echo " 5- Supprimer un événement"
	echo "----------"
	read -p "Saisissez un chiffre : " evenementmodify


else
	echo " erreur "

fi
```


Cette partie est presque la même que le tp4, j'ai juste changer les noms de mes variables pour créer un agenda.

```bash
if [ $evenementmodify = 1 ]
then
	read -p"Nom : " nom
	read -p"Date : " date
	read -p"Heure : " heure
	read -p"Durée : " dure
	
	echo "$nom:$date:$heure:$dure"
	echo "Confirmez-vous ? (o/n)"
	read reponse
	case "$reponse" in
	o|oui)	echo "$nom:$date:$heure:$dure" >> evenement.txt
	echo Utilisateur $nom enregistré;;
	n|non)	echo "Information NON enregistrée"
	;;
	esac
fi
```

Cette section de code permet de créer les événement et leurs durée ainsi que l'heure et la date avec des ``echo`` et des ``read``

```bash
if [ $evenementmodify = 2 ]
then	
	echo "NOM ?" 
	read nom
	if grep "$nom" evenement.txt
	then
		
		echo "Nouvelle date :"
		read date
		echo "Nouvelle heure :"
		read heure
        echo "Nouvelle durée :"
		read dure
		grep -v "$nom" evenement.txt > buffer
		echo "Confirmez-vous ? (o/n)"
		read reponse
		mv buffer evenement.txt
		case "$reponse" in
		o|oui)	echo "$nom:$date:$heure:$dure" >> buffer
		echo Utilisateur $nom enregistré;;
		n|non)	echo "Information NON enregistrée"
		;;
		esac
	fi
fi
```
Ici  on peut rechercher des événements par nom et les lister par ordre alphabétique en allant les chercher dans le fichier ``evenement.txt``

```bash
if [ $evenementmodify = 3 ]
then
	echo "Recherche par nom"
	echo "nom ?"
	read nom
	grep  "$nom" evenement.txt 
	
fi


if [ $evenementmodify = 4 ]
then
	echo "Evénement"
	sort evenement.txt
fi
```
Cette dernière partie de code sert a modifier les élément enregistrer dans le dossier ``evenement.txt``

```bash
if [ $evenementmodify = 5 ]
then
	echo "Supprimer un événement"
	echo "Nom ?"
	read nom
	grep -v "$nom" evenement.txt > buffer
	echo "Confirmez-vous ? (o/n)"
	read reponse
	mv buffer evenement.txt
	case "$reponse" in
	o|oui)	echo "événement supprimé" 
	;;
	n|non)	echo "Information NON enregistrée"
	;;
	esac
fi
```

<p align="center">
 <a href="https://github.com/nsegur66/Shell/blob/main/Tp/Tp4.md">Tp 4</a>
 <a href="https://github.com/nsegur66/Shell#sommaire">HOME</a>
</p>
