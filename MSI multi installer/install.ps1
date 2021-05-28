. .\bootstrap.ps1

. .\_stopprograms.ps1
. .\_uninstallprograms.ps1

# Re reverse the array so that if we install we do it in the right order
[array]::Reverse($msiPackages)

Foreach ($program in $msiPackages)
{
    Start-Process msiexec.exe  -ArgumentList "/i $($program.package) $($program.parameters)" -Wait -NoNewWindow
}

. .\_startprograms.ps1
