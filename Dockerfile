FROM centos:7

RUN cd /usr/local/bin && \
    curl -O https://storage.googleapis.com/kubernetes-release/release/v1.4.0/bin/linux/amd64/kubectl && \
    chmod 755 kubectl

WORKDIR /opt/app-root

COPY chaos.sh ./
CMD [ "bash", "/opt/app-root/chaos.sh" ]
