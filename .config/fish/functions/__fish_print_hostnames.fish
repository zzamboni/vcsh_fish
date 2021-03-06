function __fish_print_hostnames --description 'Print a list of known hostnames'
	# Print all hosts from /etc/hosts
	if test -x /usr/bin/getent
		getent hosts | tr -s ' ' ' ' | cut -d ' ' -f 2- | tr ' ' '\n'
		else if test -r /etc/hosts
		tr -s ' \t' '  ' < /etc/hosts | sed 's/ *#.*//' | cut -s -d ' ' -f 2- | grep -o '[^ ]*'
	end
	# Print nfs servers from /etc/fstab
		if test -r /etc/fstab
		grep </etc/fstab "^\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\|[a-zA-Z.]*\):"|cut -d : -f 1
	end

	# Print hosts with known ssh keys
	# Does not match hostnames with @directives specified
#	grep -Eoh '^[^#@|, ]*' ~/.ssh/known_hosts{,2} ^/dev/null | sed -E 's/^\[([^]]+)\]:([0-9]+)$/\1/'

	# Print hosts from system wide ssh configuration file
	if [ -e /etc/ssh/ssh_config ]
		awk -v FS="[ =]+" -v OFS='\n' 'tolower($0) ~ /^ *host[^*?!]*$/{ $1=""; print }' /etc/ssh/ssh_config
	end

	# Print hosts from ssh configuration file
	if [ -e ~/.ssh/config ]
		awk -v FS="[ =]+" -v OFS='\n' 'tolower($0) ~ /^ *host[^*?!]*$/{ $1=""; print }' ~/.ssh/config
	end
end

