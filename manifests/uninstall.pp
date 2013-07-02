class apelparser::uninstall {
  package { [
    "apel-lib",
    "apel-parsers"]:
    ensure => "absent",
  }
}