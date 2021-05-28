## Load bootstrap
. .\bootstrap.ps1

## Uninstall
. .\uninstall.ps1

## Install

if($ProgramInstallerParameters.length -gt 0)
{
    start-process .\$ProgramInstaller -ArgumentList $ProgramInstallerParameters -Wait -NoNewWindow
}
else
{
    start-process .\$ProgramInstaller -Wait -NoNewWindow
}
