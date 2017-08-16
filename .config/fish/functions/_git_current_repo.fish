function _git_current_repo
	git remote -v | head -1 | sed 's/^.*://; s/\.git.*$//' $argv;
end
