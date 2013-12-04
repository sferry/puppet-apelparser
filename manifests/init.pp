# Class: apel_parser
#
# This module manages apel_parser
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class apelparser($with_repositories=true) {
  if($with_repositories) {
    class { 'apelparser::repositories': before=> Class['apelparser::install']}
  }

  class { 'apelparser::install': }
  ->
  class { 'apelparser::config': }
  ->
  class { 'apelparser::cron': }

}
