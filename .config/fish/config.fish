# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
#set fish_theme robbyrussell
set fish_theme fishy-drupal

# Supress initial greeting
set fish_greeting ""

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins brew bundler tmux vagrant long_running_notification

# Path to your custom folder (default path is $FISH/custom)
set fish_custom $HOME/.config/oh-my-fish

# Load autojump configuration
[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Custom bindings
bind \033b prevd-or-backward-word
bind \033f nextd-or-forward-word

set -U fish_user_paths $HOME/bin $GOPATH/bin

# http://direnv.net
eval (direnv hook fish)

eval (docker-machine env default 2>/dev/null)

# https://github.com/joehillen/to-fish
fundle plugin 'joehillen/to-fish'

fundle init
