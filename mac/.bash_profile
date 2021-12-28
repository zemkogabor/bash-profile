# Current branch name
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Find dirty state
parse_git_dirty() {
  [[ -n "$(git status -s 2> /dev/null)" ]] && echo " *"
}

# Git completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PS1="\[\033[37m\]\u@\h \[\033[00m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[31m\]\$(parse_git_dirty)\[\033[00m\] $ "
