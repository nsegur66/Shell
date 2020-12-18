## Installation du Shell

Voici quelques commandes pour installer une versions Shell, ici "Debian 10" sur linux.


---
*Download the Microsoft repository GPG keys*  
wget https://packages.microsoft.com/config/debian/10/packages-microsoft-prod.deb

*Register the Microsoft repository GPG keys*  
sudo dpkg -i packages-microsoft-prod.deb

*Update the list of products*  
sudo apt-get update

*Install PowerShell*  
sudo apt-get install -y powershell

*Start PowerShell*  
pwsh

---

On peut configurer d'autres version de Debian.  
Disponible sur le site [microsoft](https://docs.microsoft.com/fr-fr/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7.1)

<p align="center">
 <a href="https://github.com/nsegur66/Shell#sommaire">HOME</a>         <a href="https://github.com/nsegur66/Shell/blob/main/cours/Commande.md">commande</a>
</p>

