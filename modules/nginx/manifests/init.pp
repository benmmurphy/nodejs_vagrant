class nginxppa {
  pparepo { "nginx/stable": apt_key => "C300EE8C" , ensure => present} 
}


class nginx {
  require nginxppa

  package { "nginx":
    ensure => "1.0.11-1ppa1~oneiric",
    require => Class[nginxppa]
  }

  service { "nginx":
    ensure => running,
    require => Package["nginx"]
  }

}

