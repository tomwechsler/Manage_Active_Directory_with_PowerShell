Clear-Host
Set-Location c:\


Get-ADDefaultDomainPasswordPolicy


Get-ADDefaultDomainPasswordPolicy -Identity prime.pri `
| Set-ADDefaultDomainPasswordPolicy -LockoutThreshold 10 `
-LockoutDuration 00:10:00 `
-LockoutObservationWindow 00:10:00 `
-MinPasswordLength 10 `
-MaxPasswordAge 100.00:00:00 `
-PassThru


Get-ADDefaultDomainPasswordPolicy