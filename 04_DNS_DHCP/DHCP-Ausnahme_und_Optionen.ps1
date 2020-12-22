Clear-Host

Set-Location c:\

Add-DhcpServerv4ExclusionRange -ScopeID "192.168.136.0" `
-ComputerName "srv01" `
-StartRange "192.168.136.230" `
-EndRange "192.168.136.254" `
-PassThru


Set-DhcpServerv4OptionValue -ScopeID "192.168.136.0" `
-ComputerName "srv01" `
-DnsDomain "prime.pri" `
-DnsServer "192.168.136.10" `
-Router "192.168.136.2" `
-PassThru


Get-DhcpServerv4OptionValue -ScopeId "192.168.136.0"