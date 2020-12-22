Clear-Host

Set-Location c:\

Add-DnsServerResourceRecord -ZoneName "prime.pri" `
-A `
-Name websrv01 `
-IPv4Address 192.168.136.30 `
-CreatePtr `
-PassThru


Add-DnsServerResourceRecord -ZoneName "prime.pri" `
-CName `
-Name wds `
-HostNameAlias wdssrv01.prime.pri `
-PassThru

Get-DnsServerResourceRecord -ZoneName "prime.pri"


Get-DnsServerResourceRecord -ZoneName "prime.pri" | where-Object {$_.recordtype -eq "A"}