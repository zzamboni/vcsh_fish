
# Supress initial greeting
set fish_greeting ""

# Custom bindings for OS X Terminal
bind \033b prevd-or-backward-word
bind \033f nextd-or-forward-word

set -U fish_user_paths $HOME/bin $GOPATH/bin

# Some aliases
alias hub git
alias more less
alias v vagrant

# Plugins
fundle plugin 'tuvistavie/oh-my-fish-core'
fundle plugin 'joehillen/to-fish'
fundle plugin 'oh-my-fish/plugin-bang-bang'
fundle plugin 'oh-my-fish/plugin-brew'
fundle plugin 'oh-my-fish/plugin-bundler'
fundle plugin 'zzamboni/long-running-notifications'
fundle plugin 'tuvistavie/fish-fastdir'
fundle plugin 'oh-my-fish/plugin-direnv'
fundle plugin 'icyleaf/fish-pkg-docker'
fundle plugin 'oh-my-fish/plugin-config'
fundle plugin 'oh-my-fish/plugin-bak'
fundle plugin 'oh-my-fish/plugin-ssh-config.d'

# Theme
fundle plugin 'zzamboni/theme-fishy-drupal'

# Start them up
fundle init
