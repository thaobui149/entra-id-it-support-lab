Connect-MgGraph -Scopes "User.ReadWrite.All"

$PasswordProfile = @{
    Password = "Test1234!"
    ForceChangePasswordNextSignIn = $true
}

New-MgUser -DisplayName "Test User" `
    -UserPrincipalName "testuser@yourtenant.onmicrosoft.com" `
    -MailNickname "testuser" `
    -AccountEnabled `
    -PasswordProfile $PasswordProfile