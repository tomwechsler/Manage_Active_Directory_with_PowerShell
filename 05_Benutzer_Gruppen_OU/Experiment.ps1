Clear-Host

Set-Location c:\

1..500


1..500 | ForEach-Object {New-ADUser -Name "User$_" -AccountPassword (ConvertTo-SecureString -AsPlainText "DemoPass1!" -force) -Enabled:$TRUE}


#New-Aduser (Standard cmdlet für das erstellen eines Benutzers)
#ConvertTo-SecureString (Klartext wird in ein SecureString Format übersetzt)