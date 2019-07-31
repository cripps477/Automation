#This will create the cyberoam txt doc for the probe script to condition on#
#The numbers 6,2 & y are entered into a SSH session to a cybeoroam appliance#
#The method below in theory could be used to specify multiple cyberoams, the cyberoams act differently to other SSH sessions#
#The Sleep command is used to facilitate the keys, probe script and the closing with the right timing#
$switches = @("173.16.16.16")

foreach($switch in $switches) {
    $sshCommand = @"
6
2
y
"@
    New-Item -Path C:\ -Name "cyberoamscripthasrun.txt" -ItemType "file"
    $kittyCommand = {echo y | c:\kitty_portable-0.70.0.7.exe $switch -ssh -v -l admin -pw admin -cmd $sshCommand -log c:\temp\}
    & $kittyCommand
    sleep 10
    remove-item -Path C:\cyberoamscripthasrun.txt -force
    sleep 10
    get-process -processName kitty_portable-0.70.0.7 | stop-process
}
