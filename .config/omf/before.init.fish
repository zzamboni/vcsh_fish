# For proxy plugin
set -U proxy_host proxy.corproot.net:8079
set -U proxy_auth false
# For autoproxy plugin
set -U autoproxy_check_command "test -f /etc/resolv.conf; and egrep -q '^(search|domain).*corproot.net' /etc/resolv.conf"
set -U autoproxy_notifications yes
# My paths
set -U fish_user_paths $HOME/bin $GOPATH/bin /Users/taazadi1/Dropbox/Personal/devel/hammerspoon/spoon/bin
