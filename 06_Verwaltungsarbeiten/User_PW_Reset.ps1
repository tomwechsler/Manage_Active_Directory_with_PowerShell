Clear-Host
Set-Location c:\


Read-Host "Enter the user account to unlock" | Unlock-ADAccount


Set-ADAccountPassword (Read-Host 'User') -Reset
