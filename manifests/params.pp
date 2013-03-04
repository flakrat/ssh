# Class: ssh::params
#
# Class to define various parameters for the SSH module
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ssh::params {
  case $::operatingsystem {
    Solaris: {
      $ssh_package_name   = 'openssh'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name   = 'sshd'
    }
    /(Ubuntu|Debian)/: {
      $ssh_package_name   = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name   = 'ssh'
    }
    /(RedHat|CentOS|Fedora)/: {
      $ssh_package_name   = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name   = 'sshd'
    }
    default: {
      $ssh_package_name   = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name   = 'sshd'
    }
  }
}