Clear-Host

Set-Location c:\

Get-Command *org*

help Get-ADObject

Get-ADObject -SearchBase "OU=NewUsers,DC=prime,DC=pri" -Filter *

Get-ADUser -Filter "department -eq 'Technik'"

Get-ADUser -Filter "department -eq 'Technik' -and city -eq 'Bern'"

Get-ADUser -Filter "department -eq 'Technik' -and city -eq 'Bern'" -Properties department, city | Select-Object name, city, department

Get-ADUser -Filter "department -eq 'Technik' -and city -eq 'Bern'" -Properties department, city | Move-ADObject -TargetPath "OU=Technik,OU=Bern,DC=prime,DC=pri"

Get-ADObject -SearchBase "OU=Technik,OU=Bern,DC=prime,DC=pri" -Filter *
