Clear-Host

Set-Location c:\

Update-Help

New-Item -ItemType Directory -Path C:\PSHelp

New-SmbShare –Path C:\PSHelp –Name PSHelp -FullAccess prime\administrator -ReadAccess "Authentifizierte Benutzer"

Get-SmbShare

Update-Help * -Force

Save-Help -DestinationPath \\dc01\PSHelp -force

#Offline Update
Update-Help -SourcePath \\dc01\PSHelp