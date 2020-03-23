node default {
  file { '/root/README':
    ensure => file,
    content => 'BOO',
    owner => 'root',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}
