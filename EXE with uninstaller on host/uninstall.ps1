. .\bootstrap.ps1

## Uninstall
if(test-path ${env:ProgramFiles}\$ProgramDir)           #program files
{
    if($ProgramUninstallerParameters.length -gt 0)
    {
        start-process ${env:ProgramFiles}\$ProgramDir\$ProgramUninstaller -ArgumentList $ProgramUninstallerParameters -Wait -NoNewWindow
    }
    else
    {
        start-process ${env:ProgramFiles}\$ProgramDir\$ProgramUninstaller -Wait -NoNewWindow
    }
}

if(test-path ${env:ProgramFiles(x86)}\$ProgramDir)      #program files(x86)
{
    if($ProgramUninstallerParameters.length -gt 0)
    {
        start-process ${env:ProgramFiles(x86)}\$ProgramDir\$ProgramUninstaller -ArgumentList $ProgramInstallerParameters -Wait -NoNewWindow
    }
    else
    {
        start-process ${env:ProgramFiles(x86)}\$ProgramDir\$ProgramUninstaller -Wait -NoNewWindow
    }
}
