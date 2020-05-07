[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Bash Completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion
# Archive Extractor
if [ -f $HOME/.bash/extractor ]; then
    . $HOME/.bash/extractor
fi
# Aliases
if [ -f $HOME/.bash/aliases ]; then
    . $HOME/.bash/aliases
fi
# Environments
if [ -f $HOME/.bash/environments ]; then
    . $HOME/.bash/environments
fi
# Powerline Shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
