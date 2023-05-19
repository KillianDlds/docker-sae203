FROM debian:latest

# Install services, packages and do cleanup
RUN  apt-get update && \
    apt-get -y install  \
    apache2 \
    mariadb-server \
    mariadb-client \
    php \
    php-mysql \
    libapache2-mod-php 

RUN mkdir /data
# Copy files
COPY start-script.sh /root/
COPY ./html /var/www/html
COPY ./data /data

# Expose Apache
EXPOSE 3306
EXPOSE 80

RUN chmod +x /root/start-script.sh 
CMD /root/start-script.sh