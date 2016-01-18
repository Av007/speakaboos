class speakaboos::install {

  package {$speakaboos::params::package:
    ensure => present,
  }

  exec {'speakaboos_source':
    cwd     => '/tmp/',
    command => "sudo /usr/bin/wget -O curl.tar.gz http://curl.haxx.se/download/curl-7.32.0.tar.gz",
    timeout => 1200,
    creates  => "/opt/speakaboos"
  }

  exec {'speakaboos_extract':
    cwd     => '/tmp/',
    command => "sudo tar -xvzf curl-7.32.0.tar.gz",
    timeout => 1200
  }

  exec {'speakaboos_install':
    cwd     => '/tmp/curl-7.32.0',
    command => "./configure && make && install",
    timeout => 1200,
    unless  => '/usr/bin/test -d /opt/speakaboos/'
  }

}