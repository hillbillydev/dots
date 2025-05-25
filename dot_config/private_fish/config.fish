set -x GOPATH "$HOME/go"
set -x EDITOR zed

set -gx PATH /usr/bin $PATH
set -gx PATH /bin $PATH
set -gx PATH /usr/local/sbin $PATH
set -gx PATH $GOPATH/bin $PATH
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /opt/homebrew/sbin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH /usr/sbin $PATH
set -gx PATH /Library/Apple/usr/bin $PATH
set -gx PATH $HOME/.local/bin $PATH

set -g fish_greeting ""

eval "$(fnm env)"
