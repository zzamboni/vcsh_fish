function gitlab-clone
        set -l GITLAB_BASE ~/Work/Swisscom/gitlab
        set -l URL $argv[1]
        if not expr "$URL" : "https://gitlab\.swisscloud\.io/" >/dev/null
                echo "Error: not a gitlab URL"
        else
                set -l REPO (basename $URL)
                set -l REPODIR (basename $REPO .git)
                set -l BASE (dirname $URL)
                set -l USER (basename $BASE)
                cd $GITLAB_BASE
                if not test -d $USER
                        mkdir $USER
                end
                cd $USER
                if test -d $REPODIR
                        echo "Repo is already checked out!"
                else
                        echo "Checking out $USER/$REPO..."
                        git clone $URL
                end
                echo "Done, leaving you in $GITLAB_BASE/$USER/$REPODIR"
                cd $REPODIR
        end
end
