file { "/etc/hosts":
        ensure => "present",
        owner => "root",
        group => "root",
        mode => "644",
        source  => "puppet:///modules/hostsfile/hosts",
}

