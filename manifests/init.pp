#
#
#
class profile {

  file { '/etc/profile.d':
    ensure => directory,
    mode   => '0755',
  }

  if ($::operatingsystem == 'FreeBSD') {
    file { '/etc/profile':
      mode   => '0644',
      source => 'puppet:///modules/profile/etc_profile',
    }
  }

}
