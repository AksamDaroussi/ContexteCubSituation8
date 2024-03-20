#=============================================================================
#exercice1-8.ps1
#Daroussi Aksam
#13/03/2024

#Version 7
  
#Exercice 1-8

#Demander à l'utilisateur s'il souhaite la liste des services arrêtés ou démarrés
#Lister les services correspondants (Nom, Description et Status) et exporter le résultat dans un fichier "service.csv"

#=============================================================================
function Get-ServicesList {
    $statusChoice = Read-Host "Souhaitez-vous la liste des services arrêtés ou démarrés? (Entrez 'arrêtés' ou 'démarrés')"
    
    if ($statusChoice -eq "arrêtés") {
        $services = Get-Service | Where-Object {$_.Status -eq "Stopped"}
        $outputFileName = "C:\Scripts\services_arretes.csv"
    }
    elseif ($statusChoice -eq "démarrés") {
        $services = Get-Service | Where-Object {$_.Status -eq "Running"}
        $outputFileName = "C:\Scripts\services_demarres.csv"
    }
    else {
        Write-Host "Choix invalide. Veuillez entrer 'arrêtés' ou 'démarrés'."
        return
    }

    $servicesData = foreach ($service in $services) {
        [PSCustomObject]@{
            Name = $service.Name
            Description = $service.DisplayName
            Status = $service.Status
        }
    }
    
    $servicesData | Export-Csv -Path $outputFileName -NoTypeInformation
    Write-Host "Liste des services $statusChoice exportée dans le fichier $outputFileName"
}

Get-ServicesList
