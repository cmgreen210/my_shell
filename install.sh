#!/usr/bin/env bash

msg() {
    border="-------------------------------------------------"
    echo "$border"
    echo "$1"
    echo "$border"
}

PROFILE="bash_profile"
if [ -f "$HOME/.$PROFILE" ] 
then
    BACKUP="$HOME/.${PROFILE}_backup"
    msg "Backing up bash_profile to $BACKUP"
    cp -f "$HOME/.$PROFILE" "$BACKUP"
fi

if [ -f "$HOME/.bash_prompt" ]
then
    BACKUP="$HOME/.bash_prompt_backup"
    msg "Backing up bash_prompt to $BACKUP"
    cp -f "$HOME/.bash_prompt" "$BACKUP"
fi

cp -f "$PROFILE" "$HOME/.$PROFILE"

if [ "$(ls -A sexy-bash-prompt)" ] ; then
    ( cd "sexy-bash-prompt" && make "install" )
else
    echo "ERROR!! sexy-bash-prompt is empty!"
    echo "Try: git clone --recursive git://github.com/cmgreen210/my_shell" 
fi

source "$HOME/.$PROFILE"

msg "Installation complete!!"
