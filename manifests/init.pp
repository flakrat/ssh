# Class: ssh
#
# This module manages ssh
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class ssh {
  include ssh::params, ssh::install, ssh::config, ssh::service
}
