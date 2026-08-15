#!/bin/sh
set -eu

REPO="https://github.com/hillbillydev/dots.git"

if command -v chezmoi >/dev/null 2>&1; then
    chezmoi="$(command -v chezmoi)"
elif [ -x "$HOME/.local/bin/chezmoi" ]; then
    chezmoi="$HOME/.local/bin/chezmoi"
else
    mkdir -p "$HOME/.local/bin"
    sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
    chezmoi="$HOME/.local/bin/chezmoi"
fi

if [ -t 0 ]; then
    exec "$chezmoi" init --apply "$REPO"
else
    exec "$chezmoi" init --apply --promptDefaults "$REPO"
fi
