Clear-Host

Set-Location c:\ 


Get-Process | Sort-Object –Property VM –Descending | Select-Object –First 10


Get-Date | Select-Object –Property DayOfWeek


Get-EventLog –Newest 10 –LogName Security | Select-Object –Property EventID,TimeWritten,Message


Get-ADComputer -Filter * -Properties OperatingSystem | Sort -Property OperatingSystem | Select-Object -Property OperatingSystem,Name | fl -GroupBy OperatingSystem -Property Name
