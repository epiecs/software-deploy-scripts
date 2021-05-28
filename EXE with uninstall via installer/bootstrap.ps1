# install:   powershell.exe -ExecutionPolicy ByPass -File install.ps1
# uninstall: powershell.exe -ExecutionPolicy ByPass -File uninstall.ps1

# Dir to look for in program files
$ProgramDir                   = "Python38"

# Exe to look for to check if installed
$ProgramExecutable            = "python.exe"

# Installer with parameters eg. "/S"
$ProgramInstaller             = "python-3.8.1-amd64.exe"
$ProgramInstallerParameters   = "/quiet InstallAllUsers=1 PrependPath=1 Include_test=0"

# Uninstaller with parameters eg. "uninstall.exe /S"
$ProgramUninstaller           = "python-3.8.1-amd64.exe"
$ProgramUninstallerParameters = "/quiet /uninstall"
