class chrisleappa {
  pparepo { "chris-lea/node.js": apt_key => "C7917B12" , ensure => present}
}

class nodejs {
  require chrisleappa

  package { "nodejs":
    ensure => "0.6.12-1chl~oneiric1",
    require => Class['chrisleappa']
  }
  package {"npm":
    ensure => "1.1.4-1chl1~oneiric1",
    require => Class['chrisleappa']
  }

  package {"cronolog" :
    ensure => present
  }
}

