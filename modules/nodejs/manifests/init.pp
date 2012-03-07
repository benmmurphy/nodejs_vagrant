class chrisleappa {
  pparepo { "chris-lea/node.js": apt_key => "C7917B12" , ensure => present}
}

class nodejs {
  require chrisleappa

  package { "nodejs":
    ensure => present,
    require => Class['chrisleappa']
  }
  package {"npm":
    ensure => present,
    require => Class['chrisleappa']
  }

}

