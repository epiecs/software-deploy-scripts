. .\bootstrap.ps1

## Uninstall
if((test-path ${env:ProgramFiles}\$ProgramDir) -or (test-path ${env:ProgramFiles(x86)}\$ProgramDir))           #program files
{
    if($ProgramUninstallerParameters.length -gt 0)
    {
        start-process .\$ProgramUninstaller -ArgumentList $ProgramUninstallerParameters -Wait -NoNewWindow
    }
    else
    {
        start-process .\$ProgramUninstaller -Wait -NoNewWindow
    }

}
