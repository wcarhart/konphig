FROM centos:latest

RUN yum install -y git
RUN yum install -y tree
RUN yum install -y vim
RUN yum install -y bind-utils
RUN yum install -y bc

ADD .bash_profile /root/.bash_profile
ADD .git-prompt.sh /root/.git-prompt.sh
ADD .gitconfig /root/.gitconfig
ADD .vimrc /root/.vimrc
ADD .tmux.conf /root/.tmux.conf
ADD gpg-agent.conf /root/gpg-agent.conf
ADD .pypirc /root/.pypirc
ADD .profile /root/.profile
ADD .bash_aliases /root/.bash_aliases
ADD .bash_variables /root/.bash_variables
ADD .bashrc /root/.bashrc
ADD bash_functions/linux/* /root/functions/

CMD /bin/bash
