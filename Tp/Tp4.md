## Tp4 : Créer un annuaire téléphonique

Dans ce TP, on nous demandait de faire :

```bash
4 - Créer un annuaire téléphonique
Le script devra permettre la gestion d'un annuaire téléphonique. Il devra inclure les fonctionnalités suivantes :

* ajouter un contact (nom + tel + mail)
* modifier un contact
* voir la liste de tous les contacts (triés par ordre alphabétiques grâce à leurs noms et n'afficher que leurs noms)
* voir le détail d'un contact grâce à son nom
* retrouver le nom d'un contact grâce à son adresse mail
* retrouver le nom d'un contact grâce à son téléphone
* supprimer un contact

L'ensemble des informations devront être enregistrées dans un fichier texte
```



```
#!/bin/bash


refus()
{
echo Ne pas interrompre le programme...
}

if [ $# = 0 ]
then
	echo "---MENU---"
	echo " 1- Ajouter un contact" 
	echo " 2- Modifier un contact" 
	echo " 3- Rechercher un contact (téléphone)"
	echo " 4- Rechercher un contact (email)"
	echo " 5- Lister les contacts"
	echo " 6- Supprimer un contact"
	echo "----------"
	read -p "Saisissez un chiffre : " contactmodify


else
	echo " erreur "

fi

if [ $contactmodify = 1 ]
then
	read -p"Nom : " nom
	read -p"Prenom : " prenom
	read -p"Numero de telephone : " tel
	read -p"Email : " email
	
	echo "$nom:$prenom:$tel:$email"
	echo "Confirmez-vous ? (o/n)"
	read reponse
	case "$reponse" in
	o|oui)	echo "$nom:$prenom:$tel:$email" >> annuaire.txt
	echo Utilisateur $nom enregistré;;
	n|non)	echo "Information NON enregistrée"
	;;
	esac
fi

if [ $contactmodify = 2 ]
then	
	echo "NOM ?" 
	read nom
	if grep "$nom" annuaire.txt
	then
		
		echo "Nouveau téléphone"
		read telephone
		echo "Nouvelle adresse email"
		read email
		grep -v "$nom" annuaire.txt > buffer
		echo "Confirmez-vous ? (o/n)"
		read reponse
		mv buffer annuaire.txt
		case "$reponse" in
		o|oui)	echo "$nom:$prenom:$tel:$email" >> buffer
		echo Utilisateur $nom enregistré;;
		n|non)	echo "Information NON enregistrée"
		;;
		esac
	fi
fi

if [ $contactmodify = 3 ]
then
	echo "Recherche par téléphone"
	echo "téléphone ?"
	read telephone
	grep  "$téléphone" annuaire.txt 
	
fi

if [ $contactmodify = 4 ]
then
	echo "Recherche par email"
	echo "email ?"
	read email
	grep  "$email" annuaire.txt 
	
fi


if [ $contactmodify = 5 ]
then
	echo "Annuaire"
	sort annuaire.txt
fi


if [ $contactmodify = 6 ]
then
	echo "Supprimer un contact"
	echo "Nom ?"
	read nom
	grep -v "$nom" annuaire.txt > buffer
	echo "Confirmez-vous ? (o/n)"
	read reponse
	mv buffer annuaire.txt
	case "$reponse" in
	o|oui)	echo "conctact supprimé" 
	;;
	n|non)	echo "Information NON enregistrée"
	;;
	esac
fi
```
----------------------------------------------
Pour afficher notre menu, on créer une boucle ``if`` et un ``read -p`` pour pouvoir choisir une option.

```bash
if [ $# = 0 ]
then
	echo "---MENU---"
	echo " 1- Ajouter un contact" 
	echo " 2- Modifier un contact" 
	echo " 3- Rechercher un contact (téléphone)"
	echo " 4- Rechercher un contact (email)"
	echo " 5- Lister les contacts"
	echo " 6- Supprimer un contact"
	echo "----------"
	read -p "Saisissez un chiffre : " contactmodify


else
	echo " erreur "

fi
```

Cette boucle permet de créer le conctact de l'annuaire et de confirmer si on veut l'enregistrer ou pas.

```bash
if [ $# = 0 ]
then
	echo "---MENU---"
	echo " 1- Ajouter un contact" 
	echo " 2- Modifier un contact" 
	echo " 3- Rechercher un contact (téléphone)"
	echo " 4- Rechercher un contact (email)"
	echo " 5- Lister les contacts"
	echo " 6- Supprimer un contact"
	echo "----------"
	read -p "Saisissez un chiffre : " contactmodify


else
	echo " erreur "

fi
```
Cette boucle permet de modifié le contact en allant le chercher dans l'annuaire.

```bash
if [ $contactmodify = 2 ]
then	
	echo "NOM ?" 
	read nom
	if grep "$nom" annuaire.txt
	then
		
		echo "Nouveau téléphone"
		read telephone
		echo "Nouvelle adresse email"
		read email
		grep -v "$nom" annuaire.txt > buffer
		echo "Confirmez-vous ? (o/n)"
		read reponse
		mv buffer annuaire.txt
		case "$reponse" in
		o|oui)	echo "$nom:$prenom:$tel:$email" >> buffer
		echo Utilisateur $nom enregistré;;
		n|non)	echo "Information NON enregistrée"
		;;
		esac
	fi
fi
```

Cette partie sert a recherché les contacts suivant leurs email et leurs téléphones

```bash
if [ $contactmodify = 3 ]
then
	echo "Recherche par téléphone"
	echo "téléphone ?"
	read telephone
	grep  "$téléphone" annuaire.txt 
	
fi

if [ $contactmodify = 4 ]
then
	echo "Recherche par email"
	echo "email ?"
	read email
	grep  "$email" annuaire.txt 
	
fi
```
Cette dernière partie sert a afficher les contacts par ordre alphabétiques et de les supprimer en allant chercher leur noms dans l'annuaire

```bash
if [ $contactmodify = 5 ]
then
	echo "Annuaire"
	sort annuaire.txt
fi


if [ $contactmodify = 6 ]
then
	echo "Supprimer un contact"
	echo "Nom ?"
	read nom
	grep -v "$nom" annuaire.txt > buffer
	echo "Confirmez-vous ? (o/n)"
	read reponse
	mv buffer annuaire.txt
	case "$reponse" in
	o|oui)	echo "conctact supprimé" 
	;;
	n|non)	echo "Information NON enregistrée"
	;;
	esac
fi
```

<p align="center">
 <a href="https://github.com/nsegur66/Shell/blob/main/Tp/Tp3.md">Tp 3</a> <a href="https://github.com/nsegur66/Shell#sommaire">HOME</a> <a href="https://github.com/nsegur66/Shell/blob/main/Tp/Tp5.md">Tp 5</a>
</p>
