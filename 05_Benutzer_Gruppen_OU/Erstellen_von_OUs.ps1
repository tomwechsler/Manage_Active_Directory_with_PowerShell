Clear-Host

Set-Location c:\

New-ADOrganizationalUnit -Name "Technik"

Get-ADOrganizationalUnit -Filter *

New-ADOrganizationalUnit -Name "Bern"

New-ADOrganizationalUnit -Path "OU=Bern,DC=primee,DC=pri" -Name "Technik"


Get-ADOrganizationalUnit Technik


help Get-ADOrganizationalUnit 
help Get-ADOrganizationalUnit -Parameter identity


Get-ADOrganizationalUnit -Identity "OU=Technik,OU=Bern,DC=prime,DC=pri"
Get-ADOrganizationalUnit -Identity "OU=Technik,DC=prime,DC=pri"


Remove-ADOrganizationalUnit "Technik" 

Remove-ADOrganizationalUnit "OU=Technik,DC=prime,DC=pri" 

whoami

Get-ADOrganizationalUnit "OU=Technik,DC=prime,DC=pri" -Properties *

Set-ADOrganizationalUnit -ProtectedFromAccidentalDeletion $false -Identity "OU=Technik,DC=prime,DC=pri"

Remove-ADOrganizationalUnit "OU=Technik,DC=prime,DC=pri"

Get-ADOrganizationalUnit -Identity "OU=Technik,DC=prime,DC=pri"