# Configure SSH server

# About
This module installs and configures SSH server

The module was built using examples in "Pro Puppet", by James Turnbull

# Usage
To enable SSH:
include ssh::service::enabled

To disable SSH:
include ssh::service::disabled

# Testing

  * This was tested on CentOS 5 and 6 clients
  * Tested using Puppet 3.1.0
  
# License
Apache Software License 2.0
