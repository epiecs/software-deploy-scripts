# install:   powershell.exe -ExecutionPolicy ByPass -File install.ps1
# uninstall: powershell.exe -ExecutionPolicy ByPass -File uninstall.ps1

<#
	When testing these commands you have to take into account the different behaviours of start-process and normal command running.

	Example:

	.\Software\Setup.exe /S /v"/qn /log \`"C:\Temp\Canape InstallLog.log\`" VSETUPKEY_LICENSEKEY=XXXX-XXXX-XXXX-XXXX"
	Start-Process .\Software\Setup.exe -ArgumentList  '/S /v"/qn /log \"C:\Temp\Canape InstallLog.log\" VSETUPKEY_LICENSEKEY=XXXX-XXXX-XXXX-XXXX"'

	when working in between quotes (") with a normal command you have to escape with a backslach and backtick \`" and when using start-process you just use a backslash (notice the difference with Canape InstallLog)
#>

#	Installer with parameters eg. "/S"
$ProgramInstaller             = "Software/Setup.exe"
$ProgramInstallerParameters   = '/S"'

# This is the name that is displayed in the control panel entries. (is regex matched)
# You can also find this in the registry
$uninstallSoftware = @(
    "programma"
)
