# Reverse the array so we uninstall in the right order
[array]::Reverse($msiPackages)

Foreach ($program in $msiPackages)
{
    Start-Process msiexec.exe  -ArgumentList "/x $($program.package) $($program.parameters)" -Wait -NoNewWindow
}
