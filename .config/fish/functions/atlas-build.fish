function atlas-build
        set -l buildtype (set -q argv[1]; and echo $argv[1]; or echo "pdf")
	set -l branch (_git_branch_name)
	set -l repo (_git_current_repo)
	echo "Building $buildtype on branch $branch of $repo..."
	atlas build $ATLAS_TOKEN $repo $buildtype $branch
end
