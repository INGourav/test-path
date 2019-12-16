<# Author:- Gourav Kumar (kumar_g@hcl.com), Pradeep Gadicherla (pradeep.gadicherla@hcl.com)
Version 1.2

How to run

D:\scripts\FilePathCheck_V1.2 -PathsFile D:\scripts\paths.txt -Logfilepath D:\scripts

Suppose you have saved this into D:\scripts folder then,
we need to pass file location with its exetention in parameter, inside which all paths are written those need to be tested/monitor.
Along side this we need to proivde a location to store our log file, Once again we only need to pass location, file with (FilepathStatus.log) name will be automatically created on the execution of script.

Note : - By default "FilepathStatus.log" you could change the name in script
#>


#start of script


[CmdletBinding()]

Param(
[parameter (Mandatory=$True, Position=0, ValueFromPipeLine=$True, HelpMessage="Provide the Path where paths file stored")]
[Alias('Paths')]
[ValidateNotNullOrEmpty()]
[string]$PathsFile,

[parameter (Mandatory=$True, Position=1, ValueFromPipeLine=$True, HelpMessage="Provide the Path where Logs file need to be stored")]
[Alias('LogFile')]
[ValidateNotNullOrEmpty()]
[string]$Logfilepath
)

begin{

$i = 0
while($i -ge 0)
{
$Spaths = Get-Content $PathsFile
$TD = Get-Date

foreach($Path in $Spaths)
{
$i++

$Test =  Test-Path $Path
if($Test -eq "True")
{
$Path + " is " + $Test + " and avilable at " + $TD | Out-File $Logfilepath\FilepathStatus.log -Append
}
else{
$Path + " is either " + $Test + " or not avilable " + $TD | Out-File $Logfilepath\FilepathStatus.log -Append
}
}
Start-Sleep -Seconds 2
}
}

end{}
