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
