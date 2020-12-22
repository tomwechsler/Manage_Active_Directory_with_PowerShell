# Neue virtuelle Disk hinzufügen

Set-Location c:\
Clear-Host

# Remote Session
Enter-PSSession -ComputerName srv01

# Die neue Disk bearbeiten
Get-Disk

Set-Disk -Number 1 -IsOffline $false

Get-Disk

Initialize-Disk -Number 1 -PartitionStyle GPT

New-Partition -DiskNumber 1 -UseMaximumSize -AssignDriveLetter

Format-Volume -DriveLetter E -FileSystem NTFS

# Installieren der Windows Server Sicherung und erstellen eines Backup-Jobs
Get-WindowsFeature *windows-server*

Install-WindowsFeature -Name Windows-Server-Backup -IncludeAllSubFeature -IncludeManagementTools

gcm -Module windowsserverbackup

$policy = New-WBPolicy

$policy

Add-WBSystemState -Policy $policy

$policy

Get-WBVolume -AllVolumes

Get-WBVolume -AllVolumes | where mountpath -EQ "c:"

$volume = Get-WBVolume -AllVolumes | where mountpath -EQ "c:"

Add-WBVolume -Policy $policy -Volume $volume

$policy

Get-WBVolume -AllVolumes

Get-WBVolume -AllVolumes | where mountpath -EQ "e:"

$backupvolume = Get-WBVolume -AllVolumes | where mountpath -EQ "e:"

$backuptarget = New-WBBackupTarget -Volume $backupvolume

Add-WBBackupTarget -Policy $policy -Target $backuptarget

$policy

Set-WBSchedule -Policy $policy -Schedule 03:00

$policy

# Wir wollen aber das Backup gleich jetzt starten
Set-WBPolicy -Policy $policy

Start-WBBackup -Policy $policy