class gns3::gns3 {
	
if $osfamily == 'redhat' {
   package { 'gns3':
	   ensure => 'latest'	
}
		 }
elsif $osfamily == 'debian' {
       package { 'gns3':
	       ensure => 'latest'
	       }
			     }
}
