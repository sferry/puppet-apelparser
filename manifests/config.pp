class apelparser::config (
  $mysql_hostname = 'localhost',
  $mysql_port     = 3306,
  $mysql_database = 'apelclient',
  $mysql_user     = 'apel',
  $mysql_password = 'changeme',
  $site_name      = 'UKI-SOUTHGRID-XXX-HEP',) {
  file { '/etc/apel/parser.cfg':
    owner   => "root",
    group   => "root",
    ensure  => "present",
    content => template("${module_name}/parser.cfg.erb"),
    require => Package['apel-parsers'],
  }
}