function fish_user_key_bindings
	# These are for Terminal.app
	bind \033b prevd-or-backward-word
	bind \033f nextd-or-forward-word

	# From https://github.com/fish-shell/fish-shell/wiki/Bash-Refugees
	bind ! bind_bang
	bind '$' bind_dollar
end
