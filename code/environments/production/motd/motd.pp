file { '/etc/motd' :
    ensure => file,
    mode => "644",
    content => template('motd/motd.erb'),
    audit => all,
  }
