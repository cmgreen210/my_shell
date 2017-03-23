#!/usr/bin/env bash

msg() {
    border="-------------------------------------------------"
    echo "$border"
    echo "$1"
    echo "$border"
}

if [ -f "$HOME/.bashrc" ] 
then
    BACKUP="$HOME/.bashrc_backup"
    msg "Backing up bashrc to $BACKUP"
    cp -f "$HOME/.bashrc" "$BACKUP"
fi

if [ -f "$HOME/.bash_prompt" ]
then
    BACKUP="$HOME/.bash_prompt_backup"
    msg "Backing up bash_prompt to $BACKUP"
    cp -f "$HOME/.bash_prompt" "$BACKUP"
fi

cp -f "bashrc" "$HOME/.bashrc"

if [ "$(ls -A sexy-bash-prompt)" ] ; then
    ( cd "sexy-bash-prompt" && make "install" )
else
    echo "ERROR!! sexy-bash-prompt is empty!"
    echo "Try: git clone --recursive git://github.com/cmgreen210/my_shell" 
fi

source "$HOME/.bashrc"

msg "Installation complete!!"
