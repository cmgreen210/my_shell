# Run twolfson/sexy-bash-prompt
. ~/.bash_prompt

HISTSIZE=5000
HISTFILESIZE=10000

export PATH="$PATH:/usr/local/cuda/bin"
export LD_LIBRARY_PATH="/usr/local/cuda/lib64:/usr/local/lib"
export CUDA_HOME=/usr/local/cuda

if [ -f "$HOME/.bashrc_custom" ] ; then
    source "$HOME/.bashrc_custom"
fi

# Line continuation
export PS2="continue-> "

# Debugging
export PS4='$0.$LINENO+ '


# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gb='git branch'
alias gbd='git branch -d '
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gp='git pull'
alias gss='git status -s'

# ----------------------
# Git Functions
# ----------------------
# Git log find by commit message
function glf() { git log --all --grep="$1"; }


# -----------------
# Custom Aliases
# -----------------
alias l="ls"
alias wip="git commit -a -m WIP"
alias squish="git status && git commit -a --amend -C HEAD"

# -----------------
# Custom Functions
# -----------------

function msg() {
  echo "----------------------------------------------"
  echo "$1"
  echo
}

function pyactivate() {

    VENV_DIR="$HOME/.venv"
    if [ ! -d "$VENV_DIR" ]; then
        msg "ERROR: No virtualenv directory found at $VENV_DIR!!!"
        return 1
    fi

    PS3='Please select virtualenv to activate: '
    select opt in $VENV_DIR/*;
    do
        if [[ "$REPLY" == stop ]]; then break; fi
        if [[ "$opt" == "" ]]; then
            echo "'$REPLY' is not a valid input"
            echo
            continue
        fi
        source "$opt/bin/activate"
        break
    done
}

export PATH="$PATH:$HOME/phabricator/arcanist/bin"
export EDITOR=vim

