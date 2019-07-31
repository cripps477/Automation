class windows::chocolatey {

  exec { 'set_executionpolicy':
    command  => "set-executionpolicy unrestricted -force -scope process; (iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>\$null 2>&1",
    provider => 'powershell',
    creates  => 'C:/ProgramData/chocolatey',
  }
  exec { 'install_powershell':
        command  => "puppet module install puppetlabs-powershell",
        provider => 'powershell',
	creates  => 'C:/ProgramData/installedpowershell',
  }
  exec { 'set_chocolatey':
        command  => "puppet module install chocolatey-chocolatey",
        provider => 'powershell',
	creates  => 'C:/ProgramData/chocolateyinstalled',
  }
   notify { "Prerequisites installed for Puppet": }
   # include atom::pakages
  # include chocolatey
  # package { 'Atom':
  # require => File['C:/ProgramData/chocolatey'],File[''C:/ProgramData/installedpowershell'] ],File['C:/ProgramData/chocolateyinstalled'] ]
  # ensure => 'latest',
  # provider => 'chocolatey',
   #        }
   #package { 'git':
   #require => File['C:/ProgramData/chocolatey'],File[''C:/ProgramData/installedpowershell'] ],File['C:/ProgramData/chocolateyinstalled'] ]
   #ensure => 'latest',
   #provider => 'chocolatey',
#	   }
	   }

 #require => [ File['~foo'], File['~bar'] ]