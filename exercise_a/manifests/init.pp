class exercise_a {

  package{'openssh': ensure => installed }

  service{'ssh':
    ensure  => running,
    enable  => true
    require => Package['openssh']
  }

  file{'/etc/ssh/sshd_config':
    ensure => present,
    notify => Service[ssh]
  ]

}
