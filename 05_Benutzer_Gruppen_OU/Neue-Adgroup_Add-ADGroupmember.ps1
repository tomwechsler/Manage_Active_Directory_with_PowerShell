Clear-Host

Set-Location c:\


New-ADGroup -Name "Marketing" -GroupScope DomainLocal

New-ADGroup -Name "Logistik" -GroupScope Global

Get-ADGroup "Marketing"

New-ADGroup –Name 'Technik' `
-Description 'Sicherheitsgruppe fuer alle Technik Benutzer' `
-DisplayName 'Technik' `
-GroupCategory Security `
-GroupScope Global `
-SAMAccountName 'Technik' `
-PassThru


Add-ADGroupMember -Identity Technik -Members frabets, janschm -PassThru

Get-ADGroupMember -Identity Technik 

New-ADGroup –Name 'Manager' `
-Description 'Sicherheitsgruppe fuer alle Manager' `
-DisplayName 'Manager' `
-GroupCategory Security `
-GroupScope Global `
-SAMAccountName 'Manager' `
-PassThru


$ManagerArray = (Get-ADUser -Filter {Title -like "*Manager*" } `
-Properties Title).SAMAccountName


$ManagerArray

Add-ADGroupMember -Identity "Manager" -Members $ManagerArray -PassThru

Get-ADGroupMember -Identity Manager `
| Get-ADUser -Properties Title `
| Format-Table -auto SAMAccountName,Name,Title