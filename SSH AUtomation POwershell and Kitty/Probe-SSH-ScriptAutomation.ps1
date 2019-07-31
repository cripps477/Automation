#This script will condition on the computername being accessed by 10 pings or true#
#If this was to be used I expect instead that the True value would be changed to false and that the value would be a client at the remote end of a site to site vpn#
#This script could be used with several probes each probe could be named probe1-customer 1 probe1-customer2 & then execture a script based on the customer probe to automate a different SSH script#
#This script will need to continually run#
$probe = test-connection -ComputerName 172.16.16.160 -Quiet -Count 10
if ($probe -eq $true) {
C:\Users\PCripps\Desktop\SSH-Automation-Cyberoam.ps1
}