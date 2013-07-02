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
class apelparser {
class { 'apelparser::repositories': }

  class { 'apelparser::install': }


  class { 'apelparser::config': }

  class { 'apelparser::cron': }

  Class['apelparser::repositories'] -> Class['apelparser::install'] -> 
  Class['apelparser::config'] -> Class['apelparser::cron']
}
