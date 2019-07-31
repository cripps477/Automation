$ErrorActionPreference = 'SilentlyContinue'
$servers  = import-csv "\\192.168.7.67\d\servers.csv"
$serverArray = [System.Collections.ArrayList]@()
$password = ConvertTo-SecureString “password” -AsPlainText -Force
$SVR
$Cred = New-Object System.Management.Automation.PSCredential (“PCR.admin”, $password)
$i = 0
$server1 = ""
$newvar = ""
$newvar5 = ""
$newvar2 = ""
foreach ($emptyvalue in $servers) {
    if ($server1 -ne $emptyvalue.Computername)
    {
        $server1 = $emptyvalue.Computername
        $arryID = $serverArray.Add($server1)
        #write-host "$emptyvalue.computername 1"
    }

} 

foreach ($item in $serverArray) {
    if ($item) {$i++}
         if ($i -eq 1) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos02 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}
            $nos02service = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 2) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos23 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}
            $nos23service = Invoke-Command $session -Scriptblock {get-service}}
    #
         if ($i -eq 3) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos13service = Invoke-Command $session -Scriptblock {get-service}
            $nos13 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 4) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos24service = Invoke-Command $session -Scriptblock {get-service}
            $nos24 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 5) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos08service = Invoke-Command $session -Scriptblock {get-service}
            $nos08 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 6) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos28service = Invoke-Command $session -Scriptblock {get-service}
            $nos28 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}

    #
         if ($i -eq 7) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos10service = Invoke-Command $session -Scriptblock {get-service}
            $nos10 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 8) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos18service = Invoke-Command $session -Scriptblock {get-service}
            $nos18 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 9) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos23service = Invoke-Command $session -Scriptblock {get-service}
            $nos23 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 10) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos27service = Invoke-Command $session -Scriptblock {get-service}
            $nos27 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 11) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos09service = Invoke-Command $session -Scriptblock {get-service}
            $nos09 = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 12) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos03devservice = Invoke-Command $session -Scriptblock {get-service}
            $nos03dev = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 13) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos15devservice = Invoke-Command $session -Scriptblock {get-service}
            $nos15dev = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 14) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos26dwsservice = Invoke-Command $session -Scriptblock {get-service}
            $nos26dws = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 15) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos04dwsservice = Invoke-Command $session -Scriptblock {get-service}
            $nos04dws = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 16) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos25dwsservice = Invoke-Command $session -Scriptblock {get-service}
            $nos25dws = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 17) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos15webservice = Invoke-Command $session -Scriptblock {get-service}
            $nos15web = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 18) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos16webservice = Invoke-Command $session -Scriptblock {get-service}
            $nos16web = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 19) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos14webservice = Invoke-Command $session -Scriptblock {get-service}
            $nos14web = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
         if ($i -eq 20) 
            {$session = New-PSSession -ComputerName $item -Credential $Cred
            Invoke-Command $session -Scriptblock {Import-Module ActiveDirectory}
            Import-PSSession -Session $session -module ActiveDirectory
            $nos29webservice = Invoke-Command $session -Scriptblock {get-service}
            $nos29web = Invoke-Command $session -Scriptblock {dcdiag /test:DNS /e /Q /I}}
    #
}

#Get-PSSession | Remove-PSSession