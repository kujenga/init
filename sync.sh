#!/bin/sh

# Sync local files into this repository

set -e

R="$(dirname "$0")"

# files that are identical between here and the local copy
HOME_FILES='
.zshrc
.vimrc
.gitignore_global
.editorconfig
.prettierrc.yaml
.tern-config
'

for f in $HOME_FILES; do
	cp "$HOME/$f" "$R/home/$f";
done
