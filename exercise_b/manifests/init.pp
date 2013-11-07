class exercise_b {

  case $::operatigsystem {
  'SLES': { 
     package{'ntp': ensure => installed }
   }
   'Gentoo': {
     package{'ntp-client': ensure => installed }
   }
   default: { 
     fail('ERROR!')
   }

  file{'/etc/ntp.conf':
    ensure => present
  }

}
