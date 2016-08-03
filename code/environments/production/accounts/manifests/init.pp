class accounts {
  	class { '::accounts::groups':} ->
   	Class['accounts']
  
  $rootgroup = $osfamily ? {
    'Debian'  => 'sudo',
    'RedHat'  => 'wheel',
    default   => warning('This distribution is not supported by the Accounts module'),
  }
  user { 'superuser':
    ensure      => present,
    home        => '/home/superuser',
    shell       => '/bin/bash',
    managehome  => true,
    gid         => 'superuser',
    groups      => "$rootgroup",
    password    => '$1$saQLyZpX$xA1ri/dTdMcCm.oN4dEWR.', 
  }

}
