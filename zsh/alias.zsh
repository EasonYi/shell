alias 99='for i in {1..9}; do for j in {1..${i}}; do echo -n "${j}x${i}=$(($i*$j)) "; done; echo; done'
alias bpy3='python3 -m bpython'
alias bpy='bpython'
alias c='while true;do echo "$(date +"%F %T"): $(ls | wc -l)"; sleep 5; done'
alias cf='pbpaste|pbcopy'
alias f='find'
alias gacp='git add . && git commit -m "fix" && git push'
alias gfw="ssh -i ~/.ssh/aws-gfw.pem ubuntu@52.192.24.132 -v"
alias grep="grep --color=auto"
alias grl='git config --list|grep -e "^remote.*\.url"'
alias ip="ifconfig | grep inet; curl ip.cn"
alias ipg='ipg.sh '
alias l="ls -lhptTr "
alias la="ls -alhptcTr "
alias las="ls -alhpSTr "
alias li="lsof -i "
alias ll="ls -lhptTr "
alias lp="lsof -p "
alias mf='mdfind'
alias mfd='mdfind -onlyin'
alias mongod='mongod --bind_ip 127.0.0.1'
alias netg="netstat -an | grep -i "
alias nett="netstat -anltp TCP"
alias netu="netstat -anltp UDP"
alias now='date +"%Y-%m-%d %H:%M:%S"'
alias port='netstat -an|grep -i listen'
alias porte='netstat -an|grep -i established'
alias porteg='netstat -an|grep -i established|grep'
alias portg='netstat -an|grep -i listen|grep'
alias psg="ps -axf | grep -v grep | grep -i "
alias redis='redis-server --bind 127.0.0.1'
alias redisd='nohup redis-server --bind 127.0.0.1 > /dev/null 2>&1 &'
alias route="netstat -nr"
alias routea="netstat -nrla"
alias tree='tree -N'
alias utf8="enca -x utf-8 "
alias vi='vim'
alias zc='zc(){print "$1=$(($1))"'
