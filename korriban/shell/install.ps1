param([String]$mode='host')

# Setup Boxstarter and Chocolatey
. { Invoke-WebRequest -useb http://boxstarter.org/bootstrapper.ps1 } | Invoke-Expression
Get-Boxstarter -Force

# Enter Boxstarter shell
C:\ProgramData\Boxstarter\BoxstarterShell.ps1

# Configure Windows using Boxstarter commands
Install-WindowsUpdate
Set-WindowsExplorerOptions -EnableShowFullPathInTitleBar -EnableShowFileExtensions

# Install packages using Chocolatey commands
choco feature enable -n=allowGlobalConfirmation

if ($mode -ne 'virtual')
{
    choco install Zoom
    choco install Slack
    choco install Docker-Desktop
    choco install ShrewSoftVPN
    choco install OpenVPN
}

choco install IIS-ApplicationDevelopment -source windowsfeatures
choco install IIS-ASPNET -source windowsfeatures
choco install IIS-ASPNET45 -source windowsfeatures
choco install IIS-CommonHttpFeatures -source windowsfeatures
choco install IIS-DefaultDocument -source windowsfeatures
choco install IIS-HttpLogging -source windowsfeatures
choco install IIS-ISAPIExtensions -source windowsfeatures
choco install IIS-ISAPIFilter -source windowsfeatures
choco install IIS-ManagementConsole -source windowsfeatures
choco install IIS-NetFxExtensibility45 -source windowsfeatures
choco install IIS-RequestFiltering -source windowsfeatures
choco install IIS-Security -source windowsfeatures
choco install IIS-WebServer -source windowsfeatures
choco install IIS-WebServerManagementTools -source windowsfeatures
choco install IIS-WebServerRole -source windowsfeatures
choco install URLRewrite
choco install Firefox
choco install GitKraken
choco install Git
choco install SQL-Server-Management-Studio
choco install VisualStudio2017Community
choco install VisualStudio2017-Workload-NetWeb
choco install VisualStudio2017-Workload-ManagedDesktop
choco install NodeJS.Install
choco install DotNet3.5 # Why is this needed?
choco install DotNet4.6.2
choco install NetFx-4.6.2-DevPack
choco install DotNetCore-SDK 
choco install VSCode
choco install NuGet.CommandLine 
choco install Postman

choco feature disable -n=allowGlobalConfirmation
