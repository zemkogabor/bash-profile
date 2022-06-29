source ~/.git-prompt.sh

export GIT_PS1_SHOWCOLORHINTS=true 
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

export PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi
