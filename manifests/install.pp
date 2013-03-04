# Class: ssh::install
#
# Class to install SSH
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ssh::install {
  package { $ssh::params::ssh_package_name:
    ensure => installed,
  }
}