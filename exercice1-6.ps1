#=============================================================================
#exercice1-6.ps1
#Daroussi Aksam
#20/03/2024

#Version 4
  
#Exercice 1-5

#Demander à l'utilisateur quel processus il désire filtrer pour l'affichage en fonction qui doit être appelé dans le script avec le nom du processus en paramètre 

#=============================================================================
function InfoProcessus($processusName)

{
Write-Host "Affichage des processus contenant : $processusName"
$processus = Get-Process | Where-Object {$_.ProcessName -like "*$processusName*"} 
$processus | Format-Table Name, Id, Description

$processus | Format-Table Name, Id, Description | Out-File C:\Scripts\Sauvegarde.txt
$processus | Format-Table Name, Id, Description | Out-File C:\Scripts\Sauvegarde.scv
}
$processusName = Read-Host "Quel processus désirez-vous afficher ?"
InfoProcessus($processusName)

