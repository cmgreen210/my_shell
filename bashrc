# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

HISTSIZE=5000
HISTFILESIZE=10000

if [ -f "$HOME/.bashrc_custom" ] ; then
    source "$HOME/.bashrc_custom"
fi
