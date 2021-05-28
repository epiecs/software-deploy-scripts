# install:   powershell.exe -ExecutionPolicy ByPass -File install.ps1
# uninstall: powershell.exe -ExecutionPolicy ByPass -File uninstall.ps1

# Dir to look for in program files directories
$ProgramDir                   = "FileZilla FTP Client"

# Exe to look for to check if installed
$ProgramExecutable            = "filezilla.exe"

# Uninstaller with parameters eg. "uninstall.exe /S"
$ProgramInstaller             = "FileZilla_3.46.3_win64-setup.exe"
$ProgramInstallerParameters   = "/S /NCRC /D=%ProgramFiles%"

# Uninstaller with parameters eg. "uninstall.exe /S"
$ProgramUninstaller           = "uninstall.exe"
$ProgramUninstallerParameters = "/S"
