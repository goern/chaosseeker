FROM centos/centos:7

WORKDIR /opt/app-root

COPY chaos.sh ./
CMD [ "bash", "/opt/app-root/chaos.sh" ]
