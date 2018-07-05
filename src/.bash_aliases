if [ $(uname) = "Darwin" ]
then
	alias ls='ls -FGA'
	chflags nohidden "$HOME/Library"
else
	alias ls='ls -vhFA --color=auto'
	alias lue='find . -type f | perl -ne "print \$1 if m/\.([^.\/]+)$/" | sort -u'
fi
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -l'
alias l='ll'
alias lal='ls -al'
alias ..='cd ..'
alias sshfs='sshfs -o cache=yes,compression=yes,large_read,kernel_cache'


# For easy aliases
alias c="clear && printf '\033[3J'"
#alias c="reset"
alias pgadmin="source /home/cbenson/pgadmin4/bin/activate; python /home/cbenson/pgadmin4/lib/python2.7/site-packages/pgadmin4/pgAdmin4.py;"
alias nmnm="rm -rf ./node_modules"
alias die="killall -9"

alias ecpdev="ssh -A ubuntu@ecp-bastion-dev.10002.elluciancloud.com"
alias ecpstage="ssh -A ubuntu@ecp-bastion-stage.10133.elluciancloud.com"
alias ecptest="ssh -A ubuntu@ecp-bastion-test.10004.elluciancloud.com"
alias ecpprod="ssh -A ubuntu@ecp-bastion-prod.10005.elluciancloud.com"

alias hubtest="ssh -A admin@bastion.test.integration.elluciancloud.com"
alias hubdev="ssh -A admin@bastion.dev.integration.elluciancloud.com"

alias setaws="source /usr/bin/setaws"
alias pg="psql -p 5432 -h localhost -U postgres"
resetdb() {
	pg -c "DROP DATABASE $1" && pg -c "CREATE DATABASE $1";
}
alias ms="mysql -u root --host 127.0.0.1 -p"
alias b="npm run build"
alias s="npm run start"
alias t="npm run test"
alias tw="npm run test-watch"

alias ng="sudo service nginx start"

#Git aliases
prunelocal() {
	git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
}
alias clay="git checkout clay-dev"
alias master="git checkout master"
alias development="git checkout development"
alias workspace="cd /mnt/c/Users/cbenson/workspace"
alias push="git push"
alias pull="git pull"

#Termbin
alias tb="nc termbin.com 9999"

#Pi
alias pi="ssh admin@10.4.101.97"

#XRandr Setup for Debian VM Multi Monitors
alias xr="xrandr --auto --output VGA-0 --left-of VGA-1"

# setup sts wrapper and load existing aws credentials
sts() {
    $GOPATH/bin/sts $@ && . $GOPATH/bin/setaws
}
[ -f $GOPATH/bin/setaws ] && . $GOPATH/bin/setaws