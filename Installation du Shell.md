## Installation du Shell
"
Voici quelques commandes pour installer une versions de "Debian 10" sur linux.


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

## Probleme lié a l'installation 


