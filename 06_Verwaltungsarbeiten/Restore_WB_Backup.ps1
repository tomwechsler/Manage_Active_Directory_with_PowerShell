Clear-Host
Set-Location c:\

$Backup = Get-WBBackupSet
Start-WBVolumeRecovery -BackupSet $Backup -VolumeInBackup $Backup.Volume[0] -Force

$Backup = Get-WBBackupSet
$RecoveryTarget = Get-WBVolume
Start-WBVolumeRecovery -BackupSet $Backup -VolumeInBackup $Backup.Volume[0] -RecoveryTargetVolume $RecoveryTarget