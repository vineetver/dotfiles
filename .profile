# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export EDITOR="code -w"
export READER="zathura"
export TERM="rxvt-unicode-256color"
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
export SCALA_HOME=/usr/local/src/scala/scala-2.13.2
export PATH=$SCALA_HOME/bin:$PATH

export PATH="$PATH:/home/blaq/snap/WebStorm-201.7223.93/bin"
export PATH="$PATH:/home/blaq/snap/clion-2020.1.1/bin"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/usr/local/zeppelin-0.9.0-preview1-bin-all/bin"

export SPARK_HOME=/usr/local/spark-3.0.0-bin-hadoop2.7
export PATH=$PATH:/usr/local/spark-3.0.0-bin-hadoop2.7/bin
export PATH=$SPARK_HOME/python:$PATH

export M2_HOME=/usr/share/maven
export PATH=${M2_HOME}/bin:${PATH}

export HADOOP_HOME=/usr/local/hadoop-3.1.3
export HADOOP_CONF_DIR=/usr/local/hadoop-3.1.3/etc/hadoop
export HADOOP_MAPRED_HOME=/usr/local/hadoop-3.1.3
export HADOOP_COMMON_HOME=/usr/local/hadoop-3.1.3
export HADDOP_HDFS_HOME=/usr/local/hadoop-3.1.3
export YARN_HOME=/usr/local/hadoop-3.1.3
export PATH=$PATH:/usr/local/hadoop-3.1.3/bin

export PDSH_RCMD_TYPE=ssh

export HIVE_HOME=/usr/local/apache-hive-3.1.2-bin
export PATH=$HIVE_HOME/bin:$PATH

export MAVEN_OPTS="-Xmx2g -XX:MaxPermSize=1024m"



