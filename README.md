# test-path.ps1
Script to test drive path on windows device

This can run on all windows machine that has os version 2008R2 or above.

There is no elevated permission needed to run this script however if you are trying to incorporate this with any monitoring tool then you need to check tool side compatibilty and how to(s).

We could add multiple paths to check in this script usinig two methods
$paths = "C:\temp", "C:\temp2", "C:\testath3", "C:\testpath4", "testpathsoon"

or we could also use a csv file to add paths in variable (if we have multilple paths to check)
Create a csv file with all paths that we need to check and give it a name paths.csv and put this somewhere in drive (i noramally prefer temp file in testing, but please do not use temp in production as this can be deleted)

$paths = Get-Content C:\temp\paths.csv

Now time to execute the script you could directly run this or use any monitoring solution to run this powershell script.
you could download this from the same Git branch, where I have uploaded with the name script

Note: - As powershell uses .ps1 extension so make sure when we save this script we must use .ps1 in the end of the name (like script.ps1)

Feel free to reach me for any question, 
gouravin@outlook.com

