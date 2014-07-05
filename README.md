a module to add rsyslog conf's to /etc/profile.d/, could be fleshed out

component_profile::config { 'cmd':
  ensure        => 'present|absent',
  priority      => '10',
  cmd_name      => 'some_name',
  content       => 'stuffIwantinmyprofile.d',
}
