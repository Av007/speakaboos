class speakaboos::service {

  service{ 'speakaboos-server':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}