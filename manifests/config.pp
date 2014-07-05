define component_profile::config (
  $ensure,
  $priority   = '10',
  $cmd_name   = $name,
  $content,
) {
 
  file { "${priority}_${cmd_name}":
    ensure  => $ensure,
    path    => "/etc/profile.d/${priority}-${cmd_name}.sh",
    content => template("${module_name}/profile.sh.erb"),
  } 

}
