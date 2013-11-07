class exercise_e::services {
  require exercise_e::install

  service{'ntp':
    ensure => running,
    enable => true,
  }

}
