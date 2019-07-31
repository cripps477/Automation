node default {
include chocolatey
#class { 'motd': }
#class { 'motd::crabby': }
#class { 'mystuff': }
#class { 'gns3': }
#class { 'atom': }	
#class { 'chocolatey': }
#class  { 'git': }
	     }

node "web-iis-01" {
class { 'atom': }
#class { 'windows': }
}
node "puppetagent1" {
class { 'atom': }
}
node "web-iis-02" {
class { 'windows': }
#class atom { require 'windows' }
#{ 'atom':
#	   require windows:: }
}


