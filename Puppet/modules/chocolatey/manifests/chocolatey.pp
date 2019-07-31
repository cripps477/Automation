class chocolatey {
if $::kernel == 'windows' {
  Package { 
    provider => 'chocolatey'  
  }
}

include chocolatey

package { 'notepadplusplus':
  ensure   => 'installed'
}
		 }
