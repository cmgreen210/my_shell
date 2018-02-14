#!/usr/bin/env bash

STARTUP=
if [ "$(uname)" == "Darwin" ]; then
  STARTUP="$HOME/.bash_profile"
else
  STARTUP="$HOME/.bashrc"
fi

msg() {
    border="-------------------------------------------------"
    echo "$border"
    echo "$1"
    echo "$border"
}

if [ -f "$STARTUP" ] 
then
    BACKUP="${STARTUP}_bak"
    msg "Backing up bash startup to $BACKUP"
    cp -f "$STARTUP" "$BACKUP"
fi

if [ -f "$HOME/.bash_prompt" ]
then
    BACKUP="$HOME/.bash_prompt_backup"
    msg "Backing up bash_prompt to $BACKUP"
    cp -f "$HOME/.bash_prompt" "$BACKUP"
fi

PROFILE="bash_profile"
cp -f "$PROFILE" "$STARTUP"

if [ "$(ls -A sexy-bash-prompt)" ] ; then
    ( cd "sexy-bash-prompt" && make "install" )
else
    echo "ERROR!! sexy-bash-prompt is empty!"
    echo "Try: git clone --recursive git://github.com/cmgreen210/my_shell" 
fi

echo "export GOPATH=~/go" >> $STARTUP

source "$STARTUP"

msg "Installation complete!!"
