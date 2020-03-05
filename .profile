gb() {
      echo && echo -n '  └─▶ [' && git branch 2>/dev/null | grep '^*' | colrm 1 2 | tr -d '\n' && echo -n ']'
}
git_branch() {
      gb | sed 's/.*\[\].*//'
}

PS1="\[\e[01;32m\]`whoami`@\h\[\e[0;37m\]:\[\e[01;34m\]\w\[\e[0;90m\]\$(git_branch)\[\e[0;32m\]\$ \[\e[0;92m\]"
#PS1="`whoami`@\h:\w$ "

export CLICOLOR=1
alias ll='ls -lahF'
