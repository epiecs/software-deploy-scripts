$runningPrograms = @()

# Stop all running programs that need to be stopped
Foreach ($program in $programs)
{
    if((get-process -name $program -ErrorAction SilentlyContinue).Id -ne $null)
    {
        $runningPrograms += $program
        Stop-Process -processname $program -Force
    }
}
