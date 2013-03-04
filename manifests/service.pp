# Class: ssh::service
#
# Class to control the SSH service
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ssh::service {
  include ssh
  service { $ssh::params::ssh_service_name:
    #ensure     => running,
    hasstatus  => true,
    hasrestart => true,
    #enable     => true,
    require    => Class["ssh::config"],
  }
}

class ssh::service::enabled inherits ssh::service {
  Service[$ssh::params::ssh_service_name] { ensure => running, enable => true }
}

class ssh::service::disabled inherits ssh::service {
  Service[$ssh::params::ssh_service_name] { ensure => stopped, enable => false }
}