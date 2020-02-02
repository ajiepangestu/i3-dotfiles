[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Bash Completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Archive Extractor
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Editor Environment
export VISUAL="vim"
export EDITOR="$VISUAL"

# LAMP Server
alias lamp-start='sudo systemctl restart httpd && sudo systemctl restart mysqld'
alias lamp-stop='sudo systemctl stop httpd  && sudo systemctl stop mysqld'

# Sequelize
alias reload-database='sequelize db:drop && sequelize db:create && sequelize db:migrate && sequelize db:seed:all'

# Other Shortcut
alias todata='cd /mnt/data/'
alias toapps='cd /mnt/data/.apps/'
alias toworks='cd /mnt/data/.apps/'

# Mount Partition
alias mount-windows='udisksctl mount --block-device /dev/sda3'
alias mount-data='udisksctl mount --block-device /dev/sdb1'
alias mount-data-windows='udisksctl mount --block-device /dev/sda4'
alias mount-usb='udisksctl mount --block-device /dev/sdc1'

# Node JS Environment
export PATH=$PATH:/mnt/data/.apps/nodejs/bin

# JDK
export JAVA_HOME=/usr/lib/jvm/default

# Flutter Enviroment
export PATH=$PATH:/mnt/data/.apps/flutter/bin

# Android Environment
export ANDROID_HOME=/mnt/data/.apps/android-sdk
export ANDROID_SDK_HOME=/mnt/data/.apps/android
export GRADLE_USER_HOME=/mnt/data/.apps/gradle
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# QT5 Environment
export QT_QPA_PLATFORMTHEME="qt5ct"

# Powerline Shell
function _update_ps1() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

