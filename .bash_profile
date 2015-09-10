THIS_DIR=$(dirname $(readlink -e $HOME/.bash_profile))

export PROMPT_COMMAND='echo "k\\"' # screen title reset
export EDITOR=/usr/bin/vim
export LESS="$LESS -R"

# Set up colors for filetypes, if we can.
if type dircolors > /dev/null 2>&1; then
    . <(dircolors $THIS_DIR/.dircolors)
    alias ls='ls -p --color=auto';
else
    alias ls='ls -p';
fi

alias vi=vim
