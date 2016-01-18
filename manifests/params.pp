class speakaboos::params {

  case $::operatingsystem {
    /^(Debian|Ubuntu)$/: {
      $package   = 'curl'
      $installer = '/usr/bin/dpkg'
    }
    /^(CentOS)$/: {
      $package   = 'curl'
      $installer = '/usr/bin/yum install -y'
    }
    /^(RedHat)$/: {
      $package   = 'curl'
      $installer = '/bin/rpm -i'
    }
    default: {
      fail ("${::operatingsystem} not supported.")
    }
  }
}