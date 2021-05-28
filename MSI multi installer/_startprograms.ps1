# Re open programs that were open
Foreach ($program in $runningPrograms)
{
    Start-Process $program
}
