Clear-Host
Set-Location c:\


Get-ADUser -Filter * | Measure-Object


Get-ADUser -Filter * -Properties * | where-object {$PSItem.city -eq "Luzern"} | Select-Object name,department,title


measure-command {Get-ADUser -Filter * -properties * | where-object {$PSItem.city -eq "Luzern"} | Select-Object name,department,title}


(measure-command {Get-ADUser -Filter * -Properties * | where-object {$PSItem.city -eq "Luzern"} | Select-Object name,department,title}).TotalSeconds


Get-ADUser -Filter {city -eq "Luzern"} -Properties * | Select-Object name,department,title
(measure-command {Get-ADUser -Filter {city -eq "Luzern"} -Properties * | Select-Object name,department,title}).TotalSeconds


Get-ADUser -Filter {city -eq "Luzern"} -Properties name, department, title | select-object name, department, title
(measure-command {Get-ADUser -filter {city -eq "Luzern"} -Properties name, department, title | select-object name, department, title}).TotalSeconds


#Je präziser Sie Ihre Suche erstellen umso schneller erhalten Sie das Resultat. - Was wäre wohl bei einem AD mit 50'000 Objekten?