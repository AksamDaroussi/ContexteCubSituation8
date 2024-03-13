#=============================================================================
#exercice1-2.ps1
#Daroussi Aksam
#13/03/2024

#Version 1
  
#Exercice 1-2

#Lister les numéros d'identifiants et les noms des processus "svchost"

#=============================================================================

Get-Process | Where-Object {$_.ProcessName -eq "svchost"} | Format-Table -AutoSize

