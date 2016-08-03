include ssh 
include accounts
include ::sudo



#node 'client.devops.com, ns1.devops.com' {
#package { 'vim':
#ensure => present,
#}
#}
node /client/ {
# include jenkins
# include apache
# include motd
#include ::sudo
}

node /ns1/ {
#include ::sudo
#}
}
