<#
    .SYNOPSIS
        PowerShell script to install eduroam profile
    .DESCRIPTION
        This script replaces the CAT tool with an easy PowerShell script to install an eduroam profile.
    .EXAMPLE
        .\Install-Eduroam.ps1
#>
#Requires -Version 3.0

Get-ChildItem "$PSScriptRoot\certs" -Filter *.crt | Foreach-Object {
    Import-Certificate -FilePath $_.FullName -CertStoreLocation 'Cert:\LocalMachine\Root\' -Verbose
}

netsh wlan add profile filename="$PSScriptRoot\wlan_prof-0.xml" user=all
