class apelparser::install (
  $ensure = present,
  $required_repos=[ Yumrepo['epel'], Yumrepo['EMI_3_base']], #this is the default list of required repositories for the packages 
  ) {
  
  package { 'apel-lib':
    ensure  => $ensure,
    require => $required_repos,
  }

  package { 'apel-parsers':
    ensure  => $ensure,
    require => $required_repos,
  }
}
