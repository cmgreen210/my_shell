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
