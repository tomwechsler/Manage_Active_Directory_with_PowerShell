Clear-Host

Set-Location c:\

Add-KdsRootKey -EffectiveImmediately


Add-KdsRootKey -EffectiveTime ((Get-Date).AddHours(-10)) 


New-ADGroup -Name TestMSA `
-GroupScope DomainLocal `
-Description "Gruppe fuer Server von TestMSA" `
-DisplayName "Test gMSA Gruppe" `
-GroupCategory Security `
-SAMAccountName TestMSA `
-PassThru

Add-ADGroupMember -Identity TestMSA `
-Members "srv01$","dc02$" `
-PassThru

Get-ADGroupMember -Identity TestMSA

New-ADServiceAccount -Name SvcAcnt1 `
-DNSHostName SvcAcnt1.prime.pri `
-PassThru

Set-ADServiceAccount -Identity SvcAcnt1 `
-PrincipalsAllowedToRetrieveManagedPassword TestMSA `
-PrincipalsAllowedToDelegateToAccount TestMSA `
-PassThru

Invoke-Command -ComputerName dc02 -ScriptBlock {Restart-Computer -Force}

Invoke-Command -ComputerName dc02 -ScriptBlock {Install-ADServiceAccount -Identity SvcAcnt1}

Invoke-Command -ComputerName dc02 -ScriptBlock {Test-ADServiceAccount -Identity SvcAcnt1}


#Jetzt können wir in den Diensten diesen Account für einen spezifischen Dienst auswählen