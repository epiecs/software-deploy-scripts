# install:   powershell.exe -ExecutionPolicy ByPass -File install.ps1
# uninstall: powershell.exe -ExecutionPolicy ByPass -File uninstall.ps1

# Applications that need to be stopped and restarted if running

$programs = @(
    "Outlook"
)

# Msi packages that need to be installed, in order

$msiPackages = @(
	@{
        "package"    = "Software/ZoomInstallerFull.msi";
        "parameters" = "/qn"
    },
	@{
        "package"    = "Software/ZoomOutlookPluginSetup.msi";
        "parameters" = "/qn"
    }
)
