date "+------Welcome back!------ [%Y-%m-%d %H:%M:%S]"
ulimit && ulimit -n 10032

HIST_STAMPS="yyyy-mm-dd"
plugins=(git virtualenv textmate ruby autojump mvn gradle)

# openssl
export LDFLAGS=-L/usr/local/opt/openssl/lib
export CPPFLAGS=-I/usr/local/opt/openssl/include

#Android
export ANDROID_HOME=/Users/eason/work/client/android/android-sdk-macosx
export ANDROID_SDK=$ANDROID_HOME

# Postgres
export PGDATA="/usr/local/var/postgres"

# go path
export GOPATH="/Users/eason/work/go"
export GOROOT="/usr/local/opt/go/libexec"

# system path
export PATH="/Users/eason/.pyenv/shims:/Users/eason/.pyenv/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:${GOROOT}/bin:${GOPATH}/bin:$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools:$ANDROID_SDK/build-tools/android-5.1:$PATH:/Users/eason/tools:/Users/eason/work/shell"

export EDITOR='vim'
export HOMEBREW_GITHUB_API_TOKEN=6a097a3f7ded5843577703f0b2f8296b0e0f8586

# Add the following to your zshrc to access the online help:
autoload run-help
HELPDIR=/usr/local/share/zsh/help

if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export WORKON_HOME="$HOME/.pyenv/versions"

# tomcat
export TOMCAT_HOME="/usr/local/Cellar/tomcat7/7.0.64/libexec"
export CATALINA_HOME=$TOMCAT_HOME
export CATALINA_PID=$TOMCAT_HOME/catalina_pid.txt

# cassandra settings
#export CASSANDRA_CONF=~/Downloads/cassandra-cassandra-2.1.3/conf
#export CLASSPATH=.:$CASSANDRA_CONF/../lib:$CLASSPATH

#export HOMEBREW_CASK_OPTS="--caskroom=/opt/homebrew-cask/Caskroom ${HOMEBREW_CASK_OPTS}"

# metasploit-framework
export MSF_DATABASE_CONFIG=/Users/eason/work/hacker/metasploit-framework/config/database.yml

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

export NVM_DIR="/Users/eason/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

