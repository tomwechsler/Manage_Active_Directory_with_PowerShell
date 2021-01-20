##################################################
# Add AD Users
##################################################

# Set values for your environment
$numUsers = "10"
$userPrefix = "WVDUser"
$passWord = "P@ssword!"
$userDomain = "contosotom.ch"

# Import the AD Module
Import-Module ActiveDirectory

# Convert the password to a secure string
$UserPass = ConvertTo-SecureString -AsPlainText "$passWord" -Force

#Add the users
for ($i=0; $i -le $numUsers; $i++) {
$newUser = $userPrefix + $i
New-ADUser -name $newUser -SamAccountName $newUser -UserPrincipalName $newUser@$userDomain -GivenName $newUser -Surname $newUser -DisplayName $newUser `
-AccountPassword $userPass -ChangePasswordAtLogon $false -PasswordNeverExpires $true -Enabled $true
}

