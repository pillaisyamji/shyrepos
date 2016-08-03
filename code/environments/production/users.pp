file { "/home/shyamjihome":
  ensure => "directory",
  owner => "shyamjipillai",
  group => "shyamjigrp",
  mode => "770",
  require => [ User[shyamjipillai], Group[shyamjigrp] ],
  audit => all,
}


group { 'shyamjigrp':
                          ensure => 'present',
                          gid    => '2000',
     }
user { 'shyamjipillai':
  ensure           => 'present',
  comment          => 'welcome shyamji pillai',
  gid              => '2000',
  home             => '/home/shyamjihome',
  system      => true,
  managehome  => true,
  password         => '*',
  password_max_age => '99999',
  password_min_age => '0',
  shell            => '/bin/bash',
  uid              => '2000',
}

