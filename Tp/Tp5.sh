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
