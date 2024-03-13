#=============================================================================
#exercice1-3.ps1
#Daroussi Aksam
#13/03/2024

#Version 1
  
#Exercice 1-3

#Lister les noms, Identifiants et les descriptions des processus "svchost"

#=============================================================================

$process = Get-Process | Where-Object {$_.ProcessName -like"svchost"} 
$process | Format-Table Id, Name, Description

