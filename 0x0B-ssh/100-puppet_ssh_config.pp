#Using Puppet to make changes to our client configuration file

file {'/etc/ssh/ssh_config':
  ensure => 'present'
}

file_line {'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => 'true'
}

file_line {'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'IdentityFile ~/.ssh/config',
  replace => true
}
