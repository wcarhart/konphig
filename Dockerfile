FROM centos:latest

RUN yum install -y git
RUN yum install -y tree
RUN yum install -y vim
RUN yum install -y bind-utils
RUN yum install -y bc

RUN cd ~ && git clone https://github.com/wcarhart/Konphig.git && echo hello

CMD /bin/bash
