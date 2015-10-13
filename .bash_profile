export PROMPT_COMMAND='echo "k\\"' # screen title reset
export EDITOR=/usr/bin/vim
export LESS="$LESS -R"

# Set up colors for filetypes, if we can.
if type dircolors > /dev/null 2>&1; then
    . <(dircolors $HOME/.dircolors)
    alias ls='ls -p --color=auto'
elif [[ $(uname) == 'Darwin' ]]; then # We're on OS-X
    export LSCOLORS=xx # Set directory color to normal fore/background
    alias ls='ls -pG'
fi

alias vi=vim

if [[ -a $HOME/.bash_profile.local ]]; then
    . $HOME/.bash_profile.local
fi
