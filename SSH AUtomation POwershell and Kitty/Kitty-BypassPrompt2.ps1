#This Script will need to be started by a scheduled task or similar and will loop and look for the Kitty Alert SSH client, a file will be created for conitional purposes on the C drive#
#If the Process of the Kitty SSH client is running send keys will be used to enter the required key strokes#
$dog = "dog"
while ($dog -eq "dog") {
$p = Get-Process | Where {$_.mainWindowTitle -like "KiTTY Security Alert"} | select ID, name
$File = "C:\cyberoamscripthasrun.txt"
$FileExists = Test-Path $File 
if($p.name -like "kitty_portable-0.70.0.7" -and $FileExists -eq $true) 
{
   $wshell = New-Object -ComObject wscript.shell; $wshell.AppActivate('$p')
   $wshell.SendKeys('%Y')
   $wshell.SendKeys('%Y')
   $wshell.SendKeys('%Y')
   $wshell.SendKeys('%Y')
   $wshell.SendKeys('%Y')
   $wshell.SendKeys('%Y')
   $wshell.SendKeys('%Y')

}}