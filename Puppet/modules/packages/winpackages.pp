class packages::winpackages {
package { 'gns3':
	ensure => 'latest',
	provider => 'chocolatey',
}
