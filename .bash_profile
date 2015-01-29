EDITOR=vim
HISTSIZE=4000
HISTCONTROL=ignoredups
PATH="$HOME/.pyenv/bin:$HOME/bin:$PATH"
GOPATH=$HOME/go
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
# enable shims and autocompletion
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
#source ~/perl5/perlbrew/etc/bashrc
