# docker-centos7-sshd
CentOS 7, sshd
# Usage example
```
[root@docker1 ~]# docker pull ogata/docker-centos7-sshd
[root@docker1 ~]# docker run -P -d ogata/docker-centos7-sshd
[root@docker1 ~]# docker ps
CONTAINER ID        IMAGE                       COMMAND               CREATED             STATUS              PORTS                   NAMES
5b02ff314f68        ogata/docker-centos7-sshd   "/usr/sbin/sshd -D"   24 seconds ago      Up 23 seconds       0.0.0.0:32771->22/tcp   hungry_hawking
[root@docker1 ~]# ssh -p 32771 root@localhost
[root@5b02ff314f68 ~]# logout
[root@docker1 ~]# docker stop hungry_hawking
```
