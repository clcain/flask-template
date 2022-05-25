FROM debian:buster-slim

RUN apt-get update && apt-get install -y apache2 libapache2-mod-wsgi-py3 \
    python3 python3-pip && apt-get clean

RUN ln -sf /proc/self/fd/1 /var/log/apache2/access.log && \
    ln -sf /proc/self/fd/1 /var/log/apache2/error.log

COPY apache2.conf /etc/apache2/
COPY sites-available /etc/apache2/sites-available

RUN a2enmod headers

COPY requirements.txt /var/www/app/
RUN pip3 install -r /var/www/app/requirements.txt

COPY app /var/www/app

CMD  /usr/sbin/apache2ctl -D FOREGROUND
