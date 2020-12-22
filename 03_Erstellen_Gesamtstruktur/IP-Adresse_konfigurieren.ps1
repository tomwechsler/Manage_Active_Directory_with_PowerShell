Clear-Host

Set-Location c:\

Get-NetAdapter   

Get-NetAdapter | Get-Member

Set-NetIPInterface -InterfaceAlias "Ethernet0" -DHCP Disabled -PassThru

New-NetIPAddress -AddressFamily IPv4 -InterfaceAlias "Ethernet0" -IPAddress 192.168.136.10 -PrefixLength 24 -DefaultGateway 192.168.136.2

Set-DnsClientServerAddress `
     -InterfaceAlias "Ethernet0" `
     -ServerAddresses 192.168.136.10

Get-NetIPAddress -InterfaceAlias "Ethernet0"

Get-DnsClientServerAddress -InterfaceAlias "Ethernet0"

Test-Connection 8.8.8.8

Rename-Computer -NewName dc01 -Restart -Force
