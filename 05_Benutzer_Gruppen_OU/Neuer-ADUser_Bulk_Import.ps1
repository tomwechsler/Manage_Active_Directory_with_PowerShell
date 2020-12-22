Clear-Host

Set-Location c:\

New-ADOrganizationalUnit NewUsers

Import-CSV ".\newusers.csv" | ogv

help New-ADuser

Import-CSV ".\newusers.csv" | Select-Object Title, Department, City, State, Office, EmployeeID, `
    @{name='name';expression={($_.'First Name'.substring(0,3)+$_.'Last Name').substring(0,7).toLower()}}, `
    @{name='samAccountName';expression={($_.'First Name'.substring(0,3)+$_.'Last Name').substring(0,7).toLower()}}, `
    @{name='displayName';expression={$_.'First Name'+' '+$_.'Last Name'}}, `
    @{name='givenName';expression={$_.'First Name'}}, `
    @{name='surName';expression={$_.'Last Name'}}, `
    @{name='path';expression={'OU=NewUsers,DC=prime,DC=pri'}} |
    Out-GridView


Import-CSV ".\newusers.csv" | Select-Object Title, Department, City, State, Office, EmployeeID, `
    @{name='name';expression={($_.'First Name'.substring(0,3)+$_.'Last Name').substring(0,7).toLower()}}, `
    @{name='samAccountName';expression={($_.'First Name'.substring(0,3)+$_.'Last Name').substring(0,7).toLower()}}, `
    @{name='displayName';expression={$_.'First Name'+' '+$_.'Last Name'}}, `
    @{name='givenName';expression={$_.'First Name'}}, `
    @{name='surName';expression={$_.'Last Name'}} |
    New-ADUser -ChangePasswordAtLogon $true -Enabled $True -AccountPassword $(ConvertTo-SecureString "P@55word" -AsPlainText -Force) -Path 'OU=NewUsers,DC=prime,DC=pri' -PassThru


Get-ADObject -SearchBase "OU=NewUsers,DC=prime,DC=pri" -Filter *
Get-ADUser -Filter 'Office -eq "OWA"' | ogv