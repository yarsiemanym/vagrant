# Setup Boxstarter and Chocolatey
. { iwr -useb http://boxstarter.org/bootstrapper.ps1 } | iex
get-boxstarter -Force

# Enter Boxstarter shell
C:\ProgramData\Boxstarter\BoxstarterShell.ps1

# Configure Windows using Boxstarter commands
Install-WindowsUpdate
Disable-UAC
Update-ExecutionPolicy
Set-WindowsExplorerOptions -EnableShowFileExtensions

# Install packages using Chocolatey commands
chocolatey feature enable -n=allowGlobalConfirmation
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
choco install VisualStudio2017Professional
choco install VisualStudio2017-Workload-NetWeb
choco install VisualStudio2017-Workload-ManagedDesktop
choco install DotNet3.5
chocolatey feature disable -n=allowGlobalConfirmation