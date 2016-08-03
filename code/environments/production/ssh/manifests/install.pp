############ second file to check
class ssh::install {
	package{'openssh-server':
		ensure => present,
	}
}
