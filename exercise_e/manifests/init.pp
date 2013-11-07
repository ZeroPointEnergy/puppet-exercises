class exercise_e {
  require exercise_e::install
  require exercise_e::service

  file{'/tmp/ntp.conf':
    ensure => present,
    notify => Service['ntp']
  }

}
