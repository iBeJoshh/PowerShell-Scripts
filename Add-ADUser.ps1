#Tells End user what this script does
Write-Host "This Script is to make new AD users."

#Reads the user input and store it in the variable $Firstname
$Firstname = Read-Host "Pleae enter the first name for the new user"

#Asks user for last name of the new user
$Lastname = Read-Host "Please input the last name of the new user"

#Asks user for the domain username
$Username = Read-Host "Please input the new users domain username"

#Asks user for the new users telephone number
$Telephone = Read-Host "Please input new users telephone number"

#Asks user for new users domain email
$Email = Read-Host "Please input new users domain email"

#Asks user what location the new user is located
$Office = Read-Host "Please input the office location of the new user"

#Imports AD module
Import-Module ActiveDirectory

#New AD user script runs
New-ADUser -Name $Firstname -Surname $Lastname -SamAccountName $Username -OfficePhone $Telephone -EmailAddress $Email -Office $Office