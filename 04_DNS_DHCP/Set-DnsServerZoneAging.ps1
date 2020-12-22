Clear-Host

Set-Location c:\

Set-DnsServerScavenging -ScavengingState:$True `
-ScavengingInterval 1:00:00:00 `
-RefreshInterval 4:00:00:00 `
-NoRefreshInterval 4:00:00:00 `
-ApplyOnAllZones `
-PassThru


get-DnsServerZoneAging -Name prime.pri