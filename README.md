# powershell-eduroam

PowerShell script to install eduroam profile 

## What is this supposed to be?

[Eduroam](https://www.eduroam.org/about/connect-yourself/) (more information on [Wikipedia](https://en.wikipedia.org/wiki/Eduroam)) is a great idea. The only problem is that it sometimes is tough to install. Recently, it has become easier since many computers are able to connect to the network without any addtional steps. When this is not the case, the option of using the [Configuration Assistant Tool (CAT)](https://cat.eduroam.org/) (more information is available [here](https://www.eduroam.org/configuration-assistant-tool-cat/)) makes the installation much easier than manually installing certificates and configuring a WiFi network through the "legacy" networking interface of Windows 8 or above.

Sometimes though, the CAT does not help or installs addtional tools that do not improve the ease of use at all. To help those who want a more-or-less easy install with complete transparency (aka me), I created this simple script that does all of the steps usually required throughout a manual setup itself.

### Prerequisites

Since I wrote this script for myself, I only included the certificates and profile file required for my university (University of Bremen, Germany). To use this script at other universities, you might have to switch out both. Usually, the certificates can be obtained from the universities help pages (e.g. see [this site](https://www.uni-bremen.de/en/zfn/network/wlan/instructions/windows-10.html) for University of Bremen). Addtionally, I included a commented profile (`wlan_prof-0-comments.xml`) that explains where information might need to be changed.

### Installing

The actual installation is extremely easy: Just clone the repository and run `Install-Eduroam.ps1` from a PowerShell with elevated rights (you might need to [change the Execution Policy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-5.1)).

## Built With

* The included profile was extracted from the [eduroam CAT with University of Bremen as selected institution](https://cat.eduroam.de/?idp=112).

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
