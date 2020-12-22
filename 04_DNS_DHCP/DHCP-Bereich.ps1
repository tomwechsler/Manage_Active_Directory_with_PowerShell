Clear-Host

Set-Location c:\

Add-DhcpServerv4Scope -Name "prime.pri" `
-ComputerName "srv01" `
-Description "IP-Bereich für die Verteilung" `
-StartRange "192.168.136.1" `
-EndRange "192.168.136.254" `
-SubNetMask "255.255.255.0" `
-State Active `
-Type DHCP `
-PassThru

Get-DhcpServerv4Scope