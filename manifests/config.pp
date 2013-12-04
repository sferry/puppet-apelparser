class apelparser::config (
  $mysql_hostname = 'localhost',
  $mysql_port     = 3306,
  $mysql_database = 'apelclient',
  $mysql_user     = 'apel',
  $mysql_password = 'changeme',
  $site_name      = 'GOCDB-NAME',
  
  #this may vary, depending on the packages
  $torque_dir='/var/torque/server_priv/accounting', 
  $blah_dir='/var/log/cream/accounting',
  
  #don't change, unless you know what you're doing
  $template_name="${module_name}/parser.cfg.erb"
  ) {
  file { '/etc/apel/parser.cfg':
    owner   => "root",
    group   => "root",
    ensure  => "present",
    content => template($template_name),
    require => Package['apel-parsers'],
  }
}
