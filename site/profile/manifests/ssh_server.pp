class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC5UE4u9p345MjxUlqwbtVsbvFWYN6NQA02usbKEDxLyOvDwX7IcsMtwzsaBHQWzXFGx78wTx6xpWNQFHQxnUMZIa6VwvDJAT3T47pMYyaSkfMQXm/HvLHcfOeot3MJJ7M3x2KYIV4/R10OfQTc0JO30LbE+5hgQclKOZujhLBN/uCqahpUacYMSPG294I/sqmC5js6UfaxCWMMvqrjeMm3DRRXdkaiN0Wmv8VubXPd59Nz3QPXLkFj5+oiPHf8GMdZhtfNKS1CnaePHYj1J7iiDNhnrC9f4MFRp0yKzFJrBQ1TBg8WBluo/UJMMMw7jZmaYW+pu00uRvMqb1TDnkQJ',
	}  
}
