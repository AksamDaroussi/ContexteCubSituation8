#=============================================================================
#exercice1-4.ps1
#Daroussi Aksam
#13/03/2024

#Version 4
  
#Exercice 1-5

#Demander à l'utilisateur quel processus il désire filtrer pour l'affichage en fonction qui doit être appelé dans le script avec le nom du processus en paramètre 

#=============================================================================
function InfoProcessus($processusName)

{
Write-Host "Affichage des processus contenant : $processusName"
$processus = Get-Process | Where-Object {$_.ProcessName -like "*$processusName*"} 
$processus | Format-Table Id, Name, Description
}
$processusName = Read-Host "Quel processus désirez-vous afficher ?"
InfoProcessus($processusName)
