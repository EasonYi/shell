# 设置 JDK 7
export JAVA_7_HOME=`/usr/libexec/java_home -v 1.7`
# 设置 JDK 8 export
export JAVA_8_HOME=`/usr/libexec/java_home -v 1.8`
#默认JDK 7
export JAVA_HOME=$JAVA_8_HOME
# alias命令动态切换JDK版本
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
