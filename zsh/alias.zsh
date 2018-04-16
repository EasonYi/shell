alias nlg='npm list -g -depth 0'
alias 'gc!'='git commit -v --amend'
alias 'gca!'='git commit -v -a --amend'
alias 'gcan!'='git commit -v -a --no-edit --amend'
alias 'gcans!'='git commit -v -a -s --no-edit --amend'
alias 'gcn!'='git commit -v --no-edit --amend'
#alias -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 99='for i in {1..9}; do for j in {1..${i}}; do echo -n "${j}x${i}=$(($i*$j)) "; done; echo; done'
alias 9='cd -9'
alias afind='ack -il'
alias bpy3='python3 -m bpython'
alias bpy='bpython'
alias brewcaskupdate='brew update&&brew cask outdated|cut -d"(" -f1|xargs brew cask reinstall&&brew cask cleanup'
alias brewupdate='brew update&&brew upgrade&&brew cleanup'
alias c='while true;do echo "$(date +"%F %T"): $(ls | wc -l)"; sleep 5; done'
alias cf='pbpaste|pbcopy'
alias d='dirs -v | head -10'
alias dd='wget -U "Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36" -bmckpN '
alias df='df -h '
alias du='du -h -d 1 '
alias f='find'
alias ga='git add'
alias gaa='git add --all'
alias gacp='git add . && git commit -m "fix" && git push'
alias gapa='git add --patch'
alias gau='git add --update'
alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbda='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -a -m'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcf='git config --list'
alias gcl='git clone --recursive'
alias gclean='git clean -fd'
alias gcm='git checkout master'
alias gcmsg='git commit -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gcpa='git cherry-pick --abort'
alias gcpc='git cherry-pick --continue'
alias gcs='git commit -S'
alias gcsm='git commit -s -m'
alias gd='git diff'
alias gdca='git diff --cached'
alias gdct='git describe --tags `git rev-list --tags --max-count=1`'
alias gdt='git diff-tree --no-commit-id --name-only -r'
alias gdw='git diff --word-diff'
alias gf='git fetch'
alias gfa='git fetch --all --prune'
alias gfo='git fetch origin'
alias gfw='ssh -i ~/.ssh/aws-gfw.pem ubuntu@52.192.24.132 -v'
alias gg='git gui citool'
alias gga='git gui citool --amend'
alias ggpull='git pull origin $(git_current_branch)'
alias ggpush='git push origin $(git_current_branch)'
alias ggsup='git branch --set-upstream-to=origin/$(git_current_branch)'
alias ghh='git help'
alias gignore='git update-index --assume-unchanged'
alias gignored='git ls-files -v | grep "^[[:lower:]]"'
alias git-svn-dcommit-push='git svn dcommit && git push github master:svntrunk'
alias gk='\gitk --all --branches'
alias gke='\gitk --all $(git log -g --pretty=%h)'
alias gl='git pull'
alias glg='git log --stat'
alias glgg='git log --graph'
alias glgga='git log --graph --decorate --all'
alias glgm='git log --graph --max-count=10'
alias glgp='git log --stat -p'
alias glo='git log --oneline --decorate'
alias globurl='noglob urlglobber '
alias glog='git log --oneline --decorate --graph'
alias gloga='git log --oneline --decorate --graph --all'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit'
alias glola='git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'\'' --abbrev-commit --all'
alias glum='git pull upstream master'
alias gm='git merge'
alias gmom='git merge origin/master'
alias gmt='git mergetool --no-prompt'
alias gmtvim='git mergetool --no-prompt --tool=vimdiff'
alias gmum='git merge upstream/master'
alias gp='git push'
alias gpd='git push --dry-run'
alias gpoat='git push origin --all && git push origin --tags'
alias gpristine='git reset --hard && git clean -dfx'
alias gpsup='git push --set-upstream origin $(git_current_branch)'
alias gpu='git push upstream'
alias gpv='git push -v'
alias gr='git remote'
alias gra='git remote add'
alias grb='git rebase'
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbi='git rebase -i'
alias grbm='git rebase master'
alias grbs='git rebase --skip'
alias grep='grep --color=auto'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias grl='git config --list|grep -e "^remote.*\.url"'
alias grmv='git remote rename'
alias grrm='git remote remove'
alias grset='git remote set-url'
alias grt='cd $(git rev-parse --show-toplevel || echo ".")'
alias gru='git reset --'
alias grup='git remote update'
alias grv='git remote -v'
alias gsb='git status -sb'
alias gsd='git svn dcommit'
alias gsi='git submodule init'
alias gsps='git show --pretty=short --show-signature'
alias gsr='git svn rebase'
alias gss='git status -s'
alias gst='git status'
alias gsta='git stash save'
alias gstaa='git stash apply'
alias gstc='git stash clear'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash show --text'
alias gsu='git submodule update'
alias gts='git tag -s'
alias gtv='git tag | sort -V'
alias gunignore='git update-index --no-assume-unchanged'
alias gunwip='git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'
alias gup='git pull --rebase'
alias gupv='git pull --rebase -v'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias gwip='git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "--wip-- [skip ci]"'
alias history='fc -l 1'
alias ip='ifconfig | grep inet; curl ip.cn'
alias ipg='ipg.sh '
alias javac='javac -J-Dfile.encoding=utf8'
alias k='kill -9 '
alias l='ls -lhptTr '
alias la='ls -alhptcTr '
alias las='ls -alhpSTr '
alias li='lsof -i '
alias ll='ls -lhptTr '
alias lp='lsof -p '
alias ls='ls -G'
alias lsa='ls -lah'
alias md='mkdir -p'
alias mf='mdfind'
alias mfd='mdfind -onlyin'
alias mongod='mongod --bind_ip 127.0.0.1'
alias netg='netstat -an | grep -i '
alias nett='netstat -anltp TCP'
alias netu='netstat -anltp UDP'
alias now='date +"%Y-%m-%d %H:%M:%S"'
alias npmupdate='npm update -g'
alias pipupdate='pip list -o 2>/dev/null|cut -d"(" -f1|xargs pip install -U'
alias pip3update='pip3 list -o 2>/dev/null|cut -d"(" -f1|xargs pip3 install -U'
alias port='netstat -an|grep -i listen'
alias porte='netstat -an|grep -i established'
alias porteg='netstat -an|grep -i established|grep'
alias portg='netstat -an|grep -i listen|grep'
alias psg='ps -axf | grep -v grep | grep -i '
alias redis='redis-server --bind 127.0.0.1'
alias redisd='nohup redis-server --bind 127.0.0.1 > /dev/null 2>&1 &'
alias route='netstat -nr'
alias routea='netstat -nrla'
alias rvm-restart='rvm_reload_flag=1 source '\''/Users/eason/.rvm/scripts/rvm'\'
alias tree='tree -N'
alias utf8='enca -x utf-8 '
alias vi='vim'
