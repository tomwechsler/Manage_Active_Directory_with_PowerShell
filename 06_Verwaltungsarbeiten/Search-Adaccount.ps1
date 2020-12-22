Clear-Host
Set-Location c:\


Get-Aduser -Filter * -Properties lastlogondate | ft name,lastlogondate

Get-Aduser -Filter * -Properties lastlogondate, passwordlastset | ft name,lastlogondate,passwordlastset

Get-ADUser -Filter * -Properties * | ft samaccountname, PasswordNeverExpires, Lockedout -AutoSize

Get-ADUser -Filter {enabled -ne $true}


help Search-ADAccount

Search-ADAccount -Accountdisabled -usersonly | fl name

Search-ADAccount -AccountInactive -TimeSpan "30" -UsersOnly | fl name

Search-ADAccount -PasswordneverExpires

Search-ADAccount -Lockedout