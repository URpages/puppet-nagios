class nagios::contact {
	nagios::contact::contacts { "hotkey":
		alias => "Dennis Hoppe",
		email => "nagios@${::domain}",
		group => "admins",
	}

	nagios::contact::contactgroups { "admins":
		alias => "Debian Solutions"
	}

	Nagios_contact <||> {
		notify => Exec["fix-permissions"],
	}

	Nagios_contactgroup <||> {
		notify => Exec["fix-permissions"],
	}
}

# vim: tabstop=3