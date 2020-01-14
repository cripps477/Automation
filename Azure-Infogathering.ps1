#Array Creation#
$output = @()
#Source command for Azure to be iterated through#
$users = Get-AzureADUser -All $true
#Loop#
foreach ($user in $users) {
    $manager = Get-AzureADUserManager -ObjectId $user.ObjectId
    $azuredevice = Get-AzureADUserRegisteredDevice -ObjectId $user.ObjectId
    #Define the object to store all in one varible#
    $data = New-Object -TypeName psobject
    #Add properties to the $data varible
    $data | Add-Member -MemberType NoteProperty -Name UsersObjectId -Value $user.ObjectId
    $data | Add-Member -MemberType NoteProperty -Name UserUPN -Value $user.UserPrincipalName
    $data | Add-Member -MemberType NoteProperty -Name UserType -Value $user.UserType
    $data | Add-Member -MemberType NoteProperty -Name ManagersObjectId -Value $manager.ObjectId
    $data | Add-Member -MemberType NoteProperty -Name ManagerUPN -Value $manager.UserPrincipalName
    $data | Add-Member -MemberType NoteProperty -Name ManagerUserType -Value $manager.UserType
    $data | Add-Member -MemberType NoteProperty -Name Department -Value $user.Department
    $data | Add-Member -MemberType NoteProperty -Name AzureDevice -Value $azuredevice.DeviceId
    $data | Add-Member -MemberType NoteProperty -Name DeviceOwner -Value $azuredevice.DisplayName
    #Array adding the above $data
    $output += $data

}

$output | Export-Csv -Path C:\scripts\output2.csv -NoTypeInformation