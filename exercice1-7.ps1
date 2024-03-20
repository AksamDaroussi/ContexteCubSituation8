#=============================================================================
#exercice1-7.ps1
#Daroussi Aksam
#13/03/2024

#Version 6
  
#Exercice 1-7

#Lister les services démarrés du système (Nom, Description et Status) et exporter le résultat dans un fichier "service.csv"

#=============================================================================
function Get-StartedServices {
    $services = Get-Service | Where-Object {$_.Status -eq "Running"}
    $services | Format-Table Name, DisplayName, Status
    $servicesData = foreach ($service in $services) {
        [PSCustomObject]@{
            Name = $service.Name
            Description = $service.DisplayName
            Status = $service.Status
        }
    }
    $servicesData | Export-Csv -Path "C:\Scripts\service.csv" -NoTypeInformation
    Write-Host "Liste des services démarrés exportée dans le fichier service.csv"
}

Get-StartedServices
