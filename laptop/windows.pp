if $::kernel == windows {
  # default package provider
  Package {
    provider => chocolatey, }
}

package { 'chocolatey': ensure => latest }

package { 'git': ensure => present }

package { 'virtualbox': ensure => present }

# package { 'virtualbox.extensionpack':
#  ensure  => present,
#  require => Package["virtualbox"],
#}
#
# package { 'vboxguestadditions.install':
#  ensure  => present,
#  require => Package["virtualbox"],
#}

# package { 'atom': ensure => present }

package { 'vagrant': ensure => present }

package { 'putty': ensure => present }

package { 'cygwin': ensure => present }

#package { 'cyg-get':
#  ensure  => present,
#  require => Package["cygwin"],
#}

package { 'launchy':
  ensure => installed,
#  install_options => ['-override', '-installArgs', '"', '/VERYSILENT', '/NORESTART', '"'],
}