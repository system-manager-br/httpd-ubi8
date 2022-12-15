FROM registry.access.redhat.com/ubi8/httpd-24:latest
USER root
RUN  echo "alias ll='ls -l'" >> /etc/bashrc
USER 1001
RUN chmod 777 /opt/app-root/src ; \
    mkdir -p /var/www/html/charts/
EXPOSE 8080
CMD ["bash", "/usr/bin/run-httpd"]
