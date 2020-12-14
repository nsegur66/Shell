## Fonctionnement du Shell

PowerShell est un langage de script fondé sur la programmation orientée objet. Le logiciel PowerShell (fichier exécutable  powershell.exe  ) est l’interpréteur de l’interface en ligne de commande de l’environnement de développement Windows PowerShell. 

Les commandes PowerShell sont constituées d’un verbe ou préfixe et d’un nom, séparés par un tiret. Elles peuvent être suivies de paramètres, on les appelle des commandlets ou cmdlets (command applets en anglais ou phrases en français).

Le préfixe de cmdlet est appelé verbe car il détermine l’action à effectuer sur les entités désignées dans la phrase. Voyons-en quelques-uns des plus utiles :

Add  permet d’ajouter des données ou informations sur le nom qui le suit ;

Get  permet d’obtenir des données ou informations sur le nom qui le suit ;

Read  permet de lire des données ou informations sur le nom qui le suit ;

Clear  permet de réinitialiser l’affichage de l’interface ;

Importet  Export  permettent d’importer/exporter des fichiers de commande ou des Alias ;

New  permet de créer de nouveaux objets ou variables ;

Set  permet de définir des données ou informations sur le nom qui le suit ;

Write  permet de d’écrire des données ou informations sur le nom qui le suit et peut agir comme le compte rendu d’une commande.

## Commande de base 

Read-Host. C’est une fonction qui permet de saisir une chaîne de caractères et de l’enregistrer dans une variable ; on utilisera cette fonction souvent dans la suite du cours.

la variable  $val  vous retourne votre chaîne de caractères

[string]: chaîne de caractères, on l’a déjà vu précédemment ;

[char]  : caractère Unicode sur 16 bits ;

[byte]  : caractère sur 8 bits non signé ;

[int]  : valeur entière sur 32 bits signée ;

[long]  : valeur entière sur 64 bits signée ;

[bool]  : valeur booléenne (True/False : vraie/fausse).


Par savoir où l’on se situe, on va utiliser la commande  Get-Location

Pour afficher le contenu d’un dossier, utilisez la commande Get-ChildItem

Allez, nous allons créer un répertoire de sauvegarde SAVE dans notre dossier utilisateur ; utilisons la commande  New-Item



gerer les droits 

Full : contrôle total ;

Change : modifier ;

Read : lecture ;

Custom : personnalisé.



la commande  Get-Location  qui permet de savoir dans quel dossier on se situe ;

la commande  Get-ChildItem  qui permet de lister le contenu d’un répertoire ;

la commande  New-Item  qui permet de créer des répertoires et des fichiers textes vides ou non vides ;

la commande de copie de fichiers ou de répertoires  :  Copy-Item  ;

la commande de déplacement de fichiers ou de répertoires  :  Move-Item  ;

la commande d’effacement de fichiers ou de répertoires  :  Remove-Item  ;

la commande de renommage de fichiers ou de répertoires  :  Rename-Item  ;

la commande  New-SmbShare  qui permet de créer un partage de dossier ;

la commande  Grant-SmbShareAccess  qui permet de rajouter des autorisations d’accès à des utilisateurs ou à des groupes sur un répertoire partagé.
