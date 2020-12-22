Clear-Host

Set-Location c:\ 


Get-Service


Get-Service | Format-List -Property Name, Status


Get-ADComputer -Filter * -Properties OperatingSystem


Get-ADComputer -Filter * -Properties OperatingSystem | ft -Property Name, OperatingSystem


Get-ADUser -Filter *


Get-ADUser -Filter * | fw -AutoSize
