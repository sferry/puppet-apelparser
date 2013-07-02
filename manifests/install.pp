class apelparser::install (
  $ensure = present) {
  package { 'apel-lib':
    ensure  => $ensure,
    require => [
      Yumrepo['epel'],
      Yumrepo['EMI_3_base']],
  }

  package { 'apel-parsers':
    ensure  => $ensure,
    require => [
      Yumrepo['epel'],
      Yumrepo['EMI_3_base']],
  }
}