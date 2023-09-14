# SEF 2023 demos
# Dazzle

<# Dazzle 1 - VS Code - Add List line by line

# Connect to M365 tenant with pnp.powershell
Connect-PnPOnline -Url https://1kgvf.sharepoint.com/sites/SEF2023 -Interactive

# List all of the lists and libraries in the site
Get-PnPList

# List all of the lists and libraries in the site that aren't hidden or system
Get-PnPList -Includes IsSystemList | Where-Object { $_.Hidden -eq $false -and $_.IsSystemList -eq $false } # -Includes IsSystemList

# Set them all to a variable call $AllLists
$AllLists = Get-PnPList -Includes IsSystemList | Where-Object { $_.Hidden -eq $false -and $_.IsSystemList -eq $false }

# If there's not a list called "Todd's stuff" then create it
if ($AllLists.Title -notcontains "Todd's stuff") {
    New-PnPList -Title "Todd's stuff" -Template DocumentLibrary
}
#>

<# Dazzle 2 - VS Code in one shot

Using PnP.Powershell Connect to a SharePoint Online site. If there's not a list called "Todds Stuff" create it.

It shouldn't work
#>

<# Dazzle 3 - ChatGPT in one shot

Using PnP.Powershell Connect to a SharePoint Online site. If there's not a list called "Todds Stuff" create it.

# It should work
#>

<#  Dazzle 4 - ChatGPT - Add-ClientCredential
https://chat.openai.com/share/60deb970-34ac-4dbb-9885-c0667cf65e86

Let's write a PowerShell function called Add-ClientCredential. It has 4 parameters, tenantname, username, password, and testcredential. It should use Add-PnpStoredCredential to store credentials for https://tenant.sharepoint.com, https://tenant.sharepoint.com/, and https://tenant-admin.sharepoint.com. 

Let's have it check first if a credential exists and prompt the user to replace it if it does.

Let's have it prompt the user if they don't enter tenantname, username, or password. And let's have the password take a securestrong instead of a string.

Add a check to make sure the pnp.powershell is installed. If it's not, tell the user and give them the line to install it. 

If the script finds an existing credential, show the username for that credential.

Please add a description and provide a few examples. 

add support if the user enters contoso.sharepoint.com, contoso.onmicrosoft.com, https or http versions of them.

Is there anything else I should add, or any other errors I should trap for?

Add validation for tenant name format and error handling for pnp cmdlets.

## Should have done the documentation and examples last, or had them rewritten
#>
# Stop here
<# Dazzle 5 - ChatGPT - Get Proxy Addresses
https://chat.openai.com/share/aea20da7-52e1-45cd-a21d-9e8528163327

Turn this one line of PowerShell into a function called Get-TKProxyAddresses,  Get-ADUser -Identity me -Properties Proxyaddresses | select Proxyaddresses -
ExpandProperty Proxyaddresses | Sort-Object
It will take one parameter, identity. If that parameter is in the form of a upn, strip off the domain part. Have it look through the results and find the one that starts with "SMTP:" return it first. Return the rest in alphabetical order. Remove "smpt:" from the beginning of each response.
# note the typo of "smpt"
Have it return each result on a separate line

That didn't work. They're still all one big string

Also have it remove results that don't start with "smtp:"

Can you add some documentation and examples, please?
#>

