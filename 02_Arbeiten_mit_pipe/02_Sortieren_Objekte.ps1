Clear-Host

Set-Location c:\


Get-Process


Get-Process | Sort-Object –Property ID


Get-Service | Sort-Object –Property Status 


Get-Service | Sort-Object –Property Status -Descending


Get-EventLog –LogName Security –Newest 10


Get-EventLog –LogName Security –Newest 10 | Sort-Object –Property TimeWritten


Get-ADUser -Filter * | Sort-Object –Property SurName | fw -AutoSize





