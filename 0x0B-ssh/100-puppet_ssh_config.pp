#Client configuratino file (w/Puppet)

# Ensure the .ssh directory exists
file { '/root/.ssh':
  ensure => directory,
  owner  => 'root',
  group  => 'root',
  mode   => '0700',
}

$str = "Host 342067-web-01
    HostName 3.84.237.204
    IdentityFile /root/.ssh/school
    PasswordAuthentication no
"

file { '/etc/ssh/ssh_config':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  content => $str
}
