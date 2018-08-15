# Bring parameters into scope
. $PSScriptRoot\parameters.ps1



#install chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
#install base programs
choco install googlechrome -Y
choco install jre8 -Y
choco install winrar -Y
choco install javaruntime -Y
choco install git.install -Y
choco install dotnetcore -Y
choco install nodejs.install -Y
choco install notepadplusplus -Y
choco install conemu -Y
choco install visualstudiocode -Y
choco install visualstudio2017professional -Y
choco install urlrewrite -Y
choco install webdeploy -Y
choco install sql-server-management-studio -Y
.\SSMS-Setup-ENU

Register-PSRepository -Name SitecoreGallery -SourceLocation https://sitecore.myget.org/F/sc-powershell/api/v2 -Y
Install-Module SitecoreInstallFramework -Y
Install-Module SitecoreFundamentals -Y
#Install solr and setup
.\Install-Solr.ps1
Start-DscConfiguration -Wait -Verbose -Path .\Sitecore

Install-SitecoreConfiguration @sitecoreStandalone
