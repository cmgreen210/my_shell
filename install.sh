#!/bin/bash

if [ -f "$HOME/.bashrc" ] 
then
    mv "$HOME/.bashrc" "$HOME/.bashrc_backup"
fi

if [ -f "$HOME/.bash_prompt" ]
then
    mv "$HOME/.bash_prompt" "$HOME/.bash_prompty_backup"
fi

