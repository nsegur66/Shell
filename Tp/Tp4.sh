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


