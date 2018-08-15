Configuration Sitecore
{
	Node "localhost"
	{
		# .NET and ASP.NET
		#

		WindowsFeature EnableASP
                {
                Ensure = "Present"
                Name = "Web-ASP"
                }

                WindowsFeature dotNet35
                {
                Ensure = "Present"
                Name = "Web-Net-Ext"
                }

                WindowsFeature dotNet45
                {
                Ensure = "Present"
                Name = "Web-Net-Ext45"
                }

                WindowsFeature ASPNet35
                {
                Ensure = "Present"
                Name = "Web-Asp-Net"
                }

                WindowsFeature ASPNet45
                {
                Ensure = "Present"
                Name = "Web-Asp-Net45"
                }

                # IIS Management Tools
                #
                WindowsFeature ManagementTools
                {
                Ensure = "Present"
                Name = "Web-Mgmt-Tools"
                }

                WindowsFeature WebManagementTools
                {
                Ensure = "Present"
                Name = "Web-Mgmt-Console"
                }

                WindowsFeature WebManagementService
                {
                Ensure = "Present"
                Name = "Web-Mgmt-Service"
                }

                # IIS Settings
                WindowsFeature WebServerIIS
                {
                Ensure = "Present"
                Name = "Web-Server"
                }

                WindowsFeature WebSever
                {
                Ensure = "Present"
                Name = "Web-WebServer"
                }

                WindowsFeature Common-HTTP-Features
                {
                Ensure = "Present"
                Name = "Web-Common-Http"
                }

                WindowsFeature Default-Document
                {
                Ensure = "Present"
                Name = "Web-Default-Doc"
                }

                WindowsFeature Directory-Browsing
                {
                Ensure = "Present"
                Name = "Web-Dir-Browsing"
                }

                WindowsFeature HTTP-Errors
                {
                Ensure = "Present"
                Name = "Web-Http-Errors"
                }

                WindowsFeature Static-Content
                {
                Ensure = "Present"
                Name = "Web-Static-Content"
                }

                WindowsFeature HTTP-Logging
                {
                Ensure = "Present"
                Name = "Web-Http-Logging"
                }

                WindowsFeature NET-HTTP-Activation
                {
                Ensure = "Present"
                Name = "NET-HTTP-Activation"
                }

                WindowsFeature NET-WCF-HTTP-Activation45
                {
                Ensure = "Present"
                Name = "NET-WCF-HTTP-Activation45"
                }

                WindowsFeature Static-Content-Compression
                {
                Ensure = "Present"
                Name = "Web-Stat-Compression"
                }

                WindowsFeature Dynamic-Content-Compression
                {
                Ensure = "Present"
                Name = "Web-Dyn-Compression"
                }

                WindowsFeature Telnet-Client
                {
                Ensure = "Present"
                Name = "Telnet-Client"
                }

                WindowsFeature Windows-Identity-Foundation
                {
                    Ensure = "Present"
                    Name = "Windows-Identity-Foundation"
                }
        }
}
Sitecore
