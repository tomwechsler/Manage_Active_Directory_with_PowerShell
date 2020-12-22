Clear-Host

Set-Location c:\ 


Get-Process | ConvertTo-HTML


Get-Process | ConvertTo-HTML | Out-File E:\Procs.html


Get-Process | ConvertTo-JSON > E:\Procs.json


Get-Service | ConvertTo-CSV | Out-File E:\Serv.csv 
# oder 
Get-Service | Export-CSV E:\Serv.csv


Notepad E:\Serv.csv


Get-Service | Export-CliXML E:\Serv.xml


Notepad E:\Serv.xml



