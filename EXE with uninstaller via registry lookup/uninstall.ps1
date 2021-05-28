. .\bootstrap.ps1

foreach($packageName in $uninstallSoftware)
{
	$installedPackage = Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object {$_.DisplayName -Like "*$packageName*"}

    # If we dont have a 32bit install go and look for the 64 bit install
    if(-Not $installedPackage.UninstallString)
	{
        $installedPackage = Get-ItemProperty HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Where-Object {$_.DisplayName -Like "*$packageName*"}
    }
	
    if($installedPackage.UninstallString)
    {
    	if ($installedPackage.UninstallString -like '*msiexec*')
    	{
    		$uninstallstring =  $installedPackage.UninstallString | Select -First 1
    		$msiParam = ($uninstallstring -Replace "msiexec.exe","" -Replace "/I","" -Replace "/X","").Trim()

    		start-process "msiexec.exe" -arg "/X $msiParam /qn" -Wait -NoNewWindow
    	}
    	else
    	{
    		$uninstaller = ($installedPackage.UninstallString).Trim()
    		start-process $uninstaller -arg "-ms" -Wait -NoNewWindow
    	}
    }
}
