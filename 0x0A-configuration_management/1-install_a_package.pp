# Install Package 'Flask --version 2.1.0' using puppet

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}

package { 'python':
  ensure   => '3.8.10',
  provider => 'pip3'
}

package { 'wezerkeug':
  ensure   => '2.1.1',
  provider => 'pip3'
}
