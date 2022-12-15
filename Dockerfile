FROM registry.access.redhat.com/ubi8/httpd-24:latest
USER 1001
RUN chmod 777 /opt/app-root/src ; \
    mkdir -p /var/www/html/charts/
EXPOSE 8080
CMD ["/usr/bin/alias ll='ls -l'", "/usr/bin/run-httpd"]
