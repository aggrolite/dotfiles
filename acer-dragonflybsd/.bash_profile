EDITOR=vim
HISTSIZE=4000
HISTCONTROL=ignoredups
PATH=~/bin:~/.plenv/bin:~/.plenv/shims:$PATH
GITCOMP=~/.git-completion.bash
PLENVCOMP=~/.plenv/completions/plenv.bash
#FIXME manpath (for plenv)
#MANPATH="$HOME/.plenv/
if [ -f $GITCOMP ]; then
	. $GITCOMP
fi
if [ -f $PLENVCOMP ]; then
	. $PLENVCOMP
fi
eval "$(plenv init -)"
