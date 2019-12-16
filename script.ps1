<# Author:- Gourav Kumar
Version 1.1
#>
$i = 0
$paths = "C:\temp", "C:\temp2"

# if we want to pass paths through file or we have multiple file to check then we could use below line for paths.
#$paths = Get-Content C:\temp\paths.csv

while($i -ge 0)
{
foreach($path in $paths)
{
$i++
$date=(Get-Date).Hour

#This line will populate the result on the PowerShell console
Test-Path $path

#This line will store the data in file, which will create a new file every file in every new hour, Refer Screenshot 2 for further clarification
#Test-Path $path | Out-file C:\temp\""outfile.txt"$date.txt"
}
Start-Sleep -Seconds 3600
}
