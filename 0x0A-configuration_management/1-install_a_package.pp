#!/usr/bin/pup

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Install a package
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}

# Install WSGI app
package { 'werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
