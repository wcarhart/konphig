FROM centos:latest

RUN yum install -y git
RUN yum install -y tree
RUN yum install -y vim
RUN yum install -y bind-utils
RUN yum install -y bc

CMD /bin/bash
