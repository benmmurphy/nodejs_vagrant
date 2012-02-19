include core
include nginx
include nodejs

user { "vagrant" :
  ensure => 'present',
  groups => ['vagrant','adm','dialout','cdrom','plugdev','lpadmin','sambashare','admin','www-data']
}
