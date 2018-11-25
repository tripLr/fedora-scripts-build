# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples
# alias sudo='sudo '

# Alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

alias md='mkdir -v '
alias rd='sudo rmdir -v '
alias copy='cp -v '
alias mv='sudo mv -v '
# alias lp='leafpad '
# alias slp='sudo leafpad '
alias srm='sudo rm -Rfv '
# alias lpa='leafpad ~/.bash_aliases'
# alias lpb='leafpad ~/.bashrc'
# alias lpp='sudo leafpad ~/.profile'

alias sn='sudo nano'
alias update='sudo dnf update -y'
alias install='sudo dnf install'
 
alias brc='. ~/.bashrc'
alias bra='. ~/.bash_aliases'
alias nbc='nano ~/.bashrc'
alias nba='nano ~/.bash_aliases'
alias ndp='nano ~/.profile'
alias build='nano ~/buildenvironment.sh'
alias lineage='nano ~/lineageos.sh'

alias ..='cd ..'
alias ~='cd ~/'
alias cd..='cd ..'
alias ...='cd ../..'

alias cdG='cd ~/git'
alias cdS='cd ~/git/linux/stable'
alias cdL='cd  ~/git/linux/linux'
alias cdP='cd ~/git/patches'
alias cdm='cd /lib/modules'

alias ls='ls --color=auto '
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# user triplr aliases
# some more ls aliases

alias ll='ls -l --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'

echo 'update aliases successful'
