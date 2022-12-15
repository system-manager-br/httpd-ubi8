FROM registry.access.redhat.com/ubi8/httpd-24:latest
USER 1001
RUN mkdir -p /var/www/html/charts/
EXPOSE 8080
CMD ["/usr/bin/run-httpd"]
