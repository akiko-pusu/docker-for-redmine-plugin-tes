FROM ruby:2.3.1
MAINTAINER AKIKO TAKANO / (Twitter: @akiko_pusu)

### Replace shell with bash so we can source files ###
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

### install default sys packeges ###

RUN apt-get update
RUN apt-get install -qq -y \
    wget                   \
    sudo                   \
    git                    \
    mercurial              \
    sqlite3                \
    curl                   \
    build-essential        \
    libpq-dev              \
    autoconf               \
    libreadline-dev        \
    libssl-dev             \
    libxml2-dev            \
    libxslt-dev            \
    zlib1g-dev             \
    libbz2-dev

### install lts stable nodejs ###

RUN cd /tmp && wget https://github.com/Medium/phantomjs/archive/2.1.14.tar.gz
RUN cd /tmp && tar xvzf 2.1.14.tar.gz
RUN sudo cp /tmp/phantomjs-2.1.14/bin/phantomjs /usr/local/bin

### get Redmine source
RUN cd /tmp && hg clone https://bitbucket.org/redmine/redmine-all redmine


