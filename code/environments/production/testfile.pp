file { "/var/tmp/testfile":
        ensure => "present",
        owner => "root",
        group => "root",
        mode => "664",
        content => "This is a test file created using puppet.
Puppet is really cool shyamji pillai",
	audit => all
}





#########=============================================================
#case $operatingsystem {
#  centos, redhat: { $service_name = 'ntpd' }
#  debian, ubuntu: { $service_name = 'ntp' }
#}

#package { 'ntp':
#  ensure => installed,
#}

#service { 'ntp':
#  name      => $service_name,
#  ensure    => running,
#  enable    => true,
#  subscribe => File['ntp.conf'],
#}

#file { 'ntp.conf':
#  path    => '/etc/ntp.conf',
#  ensure  => file,
#  require => Package['ntp'],
#  source  => "puppet:///modules/ntp/ntp.conf",
#}

####################################### user add via puppet ###################################

#file { "/home/shyamjihome": 
#  ensure => "directory", 
#  owner => "shyamjipillai", 
#  group => "shyamjigrp", 
#  mode => "770", 
#  require => [ User[shyamjipillai], Group[shyamjigrp] ], 
#} 


#group { 'shyamjigrp':
#  			  ensure => 'present',
# 			  gid    => '2000',
#     }
#user { 'shyamjipillai':
#  ensure           => 'present',
#  comment          => 'welcome shyamji pillai',
#  gid              => '2000',
#  home             => '/home/shyamjihome',
#  system      => true,
#  managehome  => true,
#  password         => '*',
#  password_max_age => '99999',
#  password_min_age => '0',
#  shell            => '/bin/bash',
#  uid              => '2000',
#}
