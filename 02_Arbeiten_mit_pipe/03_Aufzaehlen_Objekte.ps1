Clear-Host

Set-Location c:\ 


Get-Service | Measure-Object


Get-ADUser -Filter * | Measure-Object


Get-Process | Measure-Object –Property VM –Sum –Average
