############# fourth file puppet agent will check 
class ssh::service{
	service{'sshd':
		ensure => running,
		hasstatus => true,
		hasrestart => true,
		enable => true,
		require => Class['ssh::config']
		}
}
