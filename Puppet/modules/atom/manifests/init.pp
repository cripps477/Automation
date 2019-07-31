class atom {
include atom::pakages
notify { "Calling Pakagepp script": }
include atom::pakages
	    }
#class atom {
#include chocolatey
#package { 'Atom':
#	ensure => 'latest',
#	provider => 'chocolatey',
#        }
#notify { "installing Atom script2": }
#package { 'git':
#        ensure => 'latest',
#	provider => 'chocolatey',
#}
#	   }
#class atom {
#notify { "installing Atom": }
#include atom::atominstall
#           }
