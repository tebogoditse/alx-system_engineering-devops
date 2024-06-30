#Using Puppet to make changes to our configuration file

file_line { 'Turn off passwd auth':
  ensure => 'present',
  path   => '/etc/ssh/ssh-config',
  line   => '    PasswordAuthentication no'
}

file_line { 'Declare identity file':
  ensure => 'present',
  path   => '/etc/ssh/ssh-config',
  line   => '    IdentityFile ~/.ssh/school'
}
