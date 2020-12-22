Clear-Host

Set-Location c:\

Get-DnsServerZone

Add-DnsServerPrimaryZone -NetworkID 192.168.136.0/24 `
-ReplicationScope 'Domain' `
-DynamicUpdate 'Secure' `
-PassThru


ipconfig /registerdns
