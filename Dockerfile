FROM centos:centos7
MAINTAINER OGATA Takahiro <marty_taka@hotmail.com>
RUN yum -y install openssh-server initscripts
RUN sshd-keygen
RUN echo 'root:passw0rd' | chpasswd
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
