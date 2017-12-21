<#
    .SYNOPSIS
        PowerShell script to install eduroam profile
    .DESCRIPTION
        This script replaces the CAT tool with an easy PowerShell script to install an eduroam profile.
    .EXAMPLE
        .\Install-Eduroam.ps1
#>
#Requires -Version 3.0

# Warning: All files with the ending .crt are installed automatically in the Root-Certificate Store. Please check whether only trusted certificates are in the folder.
Get-ChildItem "$PSScriptRoot\certs" -Filter *.crt | Foreach-Object {
    Import-Certificate -FilePath $_.FullName -CertStoreLocation 'Cert:\LocalMachine\Root\' -Verbose
}

# Change the path to the *.xml you want to use as a profile. The included wlan_prof-0-comments.xml could work as a template.
netsh wlan add profile filename="$PSScriptRoot\wlan_prof-0.xml" user=all
