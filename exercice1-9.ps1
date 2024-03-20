#=============================================================================
#exercice1-9.ps1
#Daroussi Aksam
#13/03/2024

#Version 4
  
#Exercice 1-9

#Parcourir le fichier "services.csv" précédemment exporté pour les services démarrés
#Afficher en vert les services contenant le mot "system" dans leur nom, en affichant uniquement leur nom et leur statut

#=============================================================================
function Get-ServicesStatus {
    $servicesData = Import-Csv -Path "C:\Scripts\services_demarres.csv"
    $service | Format-Table Name, Status
    
    foreach ($service in $servicesData) {
        if ($service.Name -match "system") {
            Write-Host -ForegroundColor Green "$($service.Name) - $($service.Status)"
        }
    }
}

Get-ServicesStatus