# Random Aliases
alias grep='grep --color=auto'
alias l='ls -alhG'
alias ..='cd ..'
alias c="clear && printf '\033[3J'"
alias die="killall -9"

# Docker aliases
alias rmdangle='docker rmi $(docker images -f "dangling=true" -q); docker volume rm $(docker volume ls -qf dangling=true)'

# Custom Functions
prunelocal() {
	git fetch -p && for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do git branch -D $branch; done
}