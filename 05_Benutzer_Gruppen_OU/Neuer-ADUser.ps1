Clear-Host

Set-Location c:\

#Einen neuen Benutzer erstellen, aber wie?
help New-ADUser

New-ADUser BobS

Get-ADUser -Identity Bobs 


Remove-ADUser -Identity BobS


New-ADUser -Name BobS -Department Technik -Title Manager -City Luzern


Get-ADUser -Identity Bobs -Properties City, Department, Title
 

Remove-ADUser -Identity BobS


New-ADUser -Name BobS -Department Technik -Title Manager -City Luzern -AccountPassword "Pass123!"


help New-ADUser -Parameter accountpassword
help ConvertTo-SecureString


Remove-ADUser -Identity BobS

$newPassword = ConvertTo-SecureString -String "Pass123!" -AsPlainText -Force

New-ADUser -Name BobS -Department Technik -Title Manager -City Luzern -AccountPassword $newPassword -Enabled $TRUE

Get-ADUser -Identity Bobs -Properties City, Department, Title