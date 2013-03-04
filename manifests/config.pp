# Class: ssh::config
#
# Class to configure SSH
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ssh::config {
  file { $ssh::params::ssh_service_config:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0600,
    source  => "puppet:///modules/ssh/sshd_config",
    require => Class["ssh::install"],
    notify  => Class["ssh::service"],
  }
}