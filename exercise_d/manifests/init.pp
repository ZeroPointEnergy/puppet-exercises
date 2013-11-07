class exercise_d(
  $servers = ['time2.example.com', 'time2'.example.com ]
){

  case $::operatingsystem {
  'SLES': { 
     package{'ntp': ensure => installed }
   }
   'Gentoo': {
     package{'ntp-client': ensure => installed }
   }
   default: { 
     fail('ERROR!')
   }
  }

  file{'/tmp/ntp.conf':
    ensure  => present,
    content => template('exercise_d/ntp.conf.erb')
  }

}
