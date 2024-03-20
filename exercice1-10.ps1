#=============================================================================
#exercice1-10.ps1
#Daroussi Aksam
#13/03/2024

#Version 9
  
#Exercice 1-10

#Demander à l'utilisateur le mot qu'il désire filtrer pour le parcours du fichier "services.csv" précédemment exporté
#Afficher en vert les services dont le nom contient ce mot, en affichant uniquement leur nom et leur statut

#=============================================================================
function Get-ServicesStatus {
    $filterWord = Read-Host "Entrez le mot à filtrer dans les noms de service :"
    $servicesData = Import-Csv -Path "C:\Scripts\services_demarres.csv"
    
    foreach ($service in $servicesData) {
        if ($service.Name -match $filterWord) {
            Write-Host -ForegroundColor Green "$($service.Name) - $($service.Status)"
        }
    }
}

Get-ServicesStatus