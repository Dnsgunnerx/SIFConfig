# General Args
$prefix                 = 'sugcon_xm0'
$configsRoot            = Join-Path $PSScriptRoot Configs
$packagesRoot           = Join-Path $PSScriptRoot Packages
$licenseFilePath        = Join-Path $PSScriptRoot '..\\license.xml'
$sqlServer              = 'localhost\SQLEXPRESS'
$SqlAdminUser           = 'dev'
$SqlAdminPassword       = 'dev123'    

### DSC ### 

# Install DSC
$sitecoreDSC = @{
    Path                = Join-Path $configsRoot DSC.json
    Package                = Join-Path $packagesRoot 'Sitecore.ps1'
}

### Solr ###

# Install Solr

$sitecoreSolr = @{
    Path                   = Join-Path $configsRoot Solr.json
    Package                = Join-Path $packagesRoot 'Install-Solr.ps1'
}
### Sitecore ###



# Install Sitecore
$sitecoreStandalone = @{
    Path                = Join-Path $configsRoot sitecore-xm0.json
    Package             = Join-Path $packagesRoot 'Sitecore 9.0.1 rev. 171219 (OnPrem)_single.scwdp.zip'
    LicenseFile         = $licenseFilePath
    SqlDbPrefix         = $prefix
    SiteName            = $prefix
    SqlServer           = $sqlServer
    SqlAdminUser        = $SqlAdminUser
    SqlAdminPassword    = $SqlAdminPassword
    SqlCoreUser         = $SqlAdminUser
    SqlCorePassword     = $SqlAdminPassword
    SqlMasterUser       = $SqlAdminUser
    SqlMasterPassword   = $SqlAdminPassword
    SqlWebUser          = $SqlAdminUser
    SqlWebPassword      = $SqlAdminPassword
    SqlFormsUser        = $SqlAdminUser
    SqlFormsPassword    = $SqlAdminPassword
}

$uninstallArgs = @{
    Path = Join-Path $configsRoot uninstall.json
    Prefix = $prefix
    SqlServer = $sqlServer
    SqlAdminUser        = $SqlAdminUser
    SqlAdminPassword    = $SqlAdminPassword
}