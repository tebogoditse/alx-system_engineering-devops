# Install Package 'Flask --version 2.1.0' using puppet
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
