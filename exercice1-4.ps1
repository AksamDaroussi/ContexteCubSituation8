#=============================================================================
#exercice1-4.ps1
#Daroussi Aksam
#13/03/2024

#Version 3
  
#Exercice 1-4

#Demander à l'utilisateur quel processus il désire filtrer pour l'affichage 

#=============================================================================

$processusName = Read-Host "Quel processus désirez-vous afficher ?"
$process = Get-Process | Where-Object {$_.ProcessName -like "*$processusName*"} 
$process | Format-Table Id, Name, Description

