Clear-Host

Set-Location c:\


Set-ADGroup "Marketing" -GroupScope Universal

Get-ADGroup "Marketing"


Set-ADGroup "Logistik" -GroupScope DomainLocal

Set-ADGroup "Logistik" -GroupScope Universal
Set-ADGroup "Logistik" -GroupScope Domainlocal

Get-ADGroup "Logistik"

New-ADGroup -Name "HR" -GroupScope Global

Get-ADUser -Filter {department -eq "HR"} -Properties department

Get-ADUser -Filter {department -eq "HR"} -Properties department | Add-ADGroupMember "HR" 

Get-ADUser -Filter {department -eq "HR"} -Properties department | Add-ADPrincipalGroupMembership -MemberOf "HR"

Get-ADGroupMember "HR" | Get-ADUser -Properties department

Get-ADPrincipalGroupMembership "patStei"