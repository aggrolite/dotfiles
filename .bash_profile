#reload profile: source .bash_profile
export HISTSIZE=4000
export HISTCONTROL=ignoredups #no dupes!

CBROOTLOCAL=~/ypbot
CBROOT=$CBROOTLOCAL/combust
CBCONFIG=~/ypbot/combust.conf

EDITOR=vim
PERL5LIB=$CBROOTLOCAL/lib:$CBROOT/lib:$CBROOTLOCAL/cpan/lib/perl5

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export LS_COLORS='no=00:fi=00:di=00;34:ln=00;36:pi=40;33:so=00;35:bd=40;33;01:ex=00;35'
alias ls='ls --color=auto'
PS1="$ "

switch() {
    dir=$PWD
    cd ~/ypbot
    ~/ypbot/bin/switch_config $1
    cd $dir #cd - echoes, but I want it to be silent :)
}

# User specific environment and startup programs

PATH=$HOME/bin:$CBROOT/bin:/pkg/bin:$PATH

export PATH CBROOTLOCAL CBROOT CBCONFIG EDITOR PERL5LIB
export PATH=~/.vim/bin:$PATH
alias :q=exit
alias cleanup='~gbarr/bin/git-branch-cleanup'
alias vime='vim -u ~/.vimencrypt -x'
alias vim='$HOME/local/bin/vim'
alias ack='$HOME/local/bin/ack'
alias crawl='~/ypbot/bin/crawl/crawlertest --trace --force --cache'
alias tube='~/ypbot/bin/crawl/crawlertest --trace --force --cache --tube'
alias tmux='TERM=xterm-256color tmux'
export TERM='xterm-256color'
alias pirl=$CBROOTLOCAL/cpan/bin/pirl
