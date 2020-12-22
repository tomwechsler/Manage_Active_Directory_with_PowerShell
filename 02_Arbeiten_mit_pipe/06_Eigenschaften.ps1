Clear-Host

Set-Location c:\ 


Get-ADuser -Filter * -Properties whenCreated


Get-ADuser -Filter * -Properties whenCreated | Sort-Object -Property whenCreated -Descending


Get-ADUser -Filter * -Properties whenCreated | Sort-Object -Property whenCreated -Descending | Select-Object -Property Name,@{n='Account age (days)';e={(New-TimeSpan -Start $PSItem.whenCreated).Days}}


Get-ADUser -Filter * -Properties whenCreated | Select-Object -Property Name,@{n='Account age (days)';e={(New-TimeSpan -Start $PSItem.whenCreated).Days}} | Sort-Object -Property 'Account age (days)'
