set -x GOPATH "$HOME/go"
set -x EDITOR "zed --wait"
set -g fish_greeting ""
set -gx fish_history_search_ignore_case true

fish_add_path \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    /usr/local/bin \
    /usr/local/sbin \
    /usr/bin \
    /bin \
    /usr/sbin \
    /Library/Apple/usr/bin \
    $HOME/.local/bin \
    $GOPATH/bin

fnm env | source
zoxide init fish | source
starship init fish | source

fish_default_key_bindings

bind \cz '__zoxide_zi'

alias ls="eza --icons --git"
alias cat="bat"
alias grep="rg"
alias g="git"
