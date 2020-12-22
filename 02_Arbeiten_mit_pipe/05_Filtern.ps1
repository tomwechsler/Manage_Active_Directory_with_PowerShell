Clear-Host

Set-Location c:\


Get-SMBShare | Where Name –like '*$*'


Get-PhysicalDisk | Where-Object –FilterScript { $PSItem.HealthStatus –eq 'Healthy' } | Select-Object -Property FriendlyName,OperationalStatus


Get-Volume | Where-Object -FilterScript { $PSItem.DriveType -eq "Fixed" -and $PSItem.FileSystem -eq "NTFS"} | Select-Object -Property DriveLetter,FileSystemLabel,DriveType,FileSystem | fl


Get-Verb | Where { $_.Verb –like 'c*' } | fw



