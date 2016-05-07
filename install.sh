#!/usr/bin/env bash

msg() {
    border="-------------------------------------------------"
    echo "$border"
    echo "$1"
    echo "$border"
}

if [ -f "$HOME/.bashrc" ] 
then
    msg "Backing up $HOME/.bashrc...."
    mv "$HOME/.bashrc" "$HOME/.bashrc_backup"
fi

if [ -f "$HOME/.bash_prompt" ]
then
    msg "Backing up $HOME/.bshrc...."
    mv "$HOME/.bash_prompt" "$HOME/.bash_prompty_backup"
fi

cp -f "bashrc" "$HOME/.bashrc"

if [ "$(ls -A sexy-bash-prompt)" ] ; then
    ( cd "sexy-bash-prompt" && make "install" )
else
    echo "ERROR!! sexy-bash-prompt is empty!"
    echo "Try: git clone --recursive git://github.com/cmgreen210/my_shell" 
fi

source "$HOME/.bashrc"

msg "Installation complete!"
