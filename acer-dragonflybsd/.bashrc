EDITOR=vim
HISTSIZE=4000
HISTCONTROL=ignoredups
PATH=$PATH:~/bin
GITCOMP=~/.git-completion.bash
if [ -f $GITCOMP ]; then
	. $GITCOMP
fi
