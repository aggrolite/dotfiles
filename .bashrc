alias tmux="TERM=screen-256color-bce tmux"

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
