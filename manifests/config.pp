#
#
#
define profile::config (
  $ensure,
  $priority   = '10',
  $cmd_name   = $name,
  $content,
) {

  include ::profile

  file { "${priority}_${cmd_name}":
    ensure  => $ensure,
    path    => "/etc/profile.d/${priority}-${cmd_name}.sh",
    content => template("${module_name}/profile.sh.erb"),
  }

}
