class exercise_c (
  $package_name = 'npt',
  $name2 = hiera('exercise::name2')
) {
  
  package{$package_name: ensure => installed }

  file{"/tmp/exercise_c.txt":
    content => "${::operatingsystem} ${name2}"
  }

  file{"/tmp/exercise_c.txt${name2}":
    content => "${::operatingsystem}"
  }

}
