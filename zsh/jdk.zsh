# 设置 JDK 
export JAVA_10_HOME=`/usr/libexec/java_home`
# 设置 JDK 8 export
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`
#默认JDK 
export JAVA_HOME=$JAVA_8_HOME
# alias命令动态切换JDK版本
alias jdk="export JAVA_HOME=$JAVA_10_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
