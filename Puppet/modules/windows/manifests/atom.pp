class windows::atom {
include chocolatey
package { 'Atom':
	ensure => 'latest',
	provider => 'chocolatey',
        }
package { 'git':
        ensure => 'latest',
	provider => 'chocolatey',
}
	   }
#class atom {
#notify { "installing Atom": }
#include atom::atominstall
#           }
