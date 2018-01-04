FROM debian:stretch-slim

# Install software via apt
RUN apt-get update && apt-get install -y apache2 libapache2-mod-wsgi-py3 \
    python3 python3-pip && apt-get clean

# Redirect apache logs to stdout
RUN ln -sf /proc/self/fd/1 /var/log/apache2/access.log && \
    ln -sf /proc/self/fd/1 /var/log/apache2/error.log

# Copy the requirements list and install
COPY requirements.txt /var/www/apache-flask/
RUN pip3 install -r /var/www/apache-flask/requirements.txt

# Copy Apache configuration
COPY apache-flask.conf /etc/apache2/sites-available/

# Configure apache
RUN a2enmod headers
RUN a2dissite 000-default
RUN a2ensite apache-flask

# Copy the application
COPY apache-flask.wsgi /var/www/apache-flask/
COPY app /var/www/apache-flask/app

EXPOSE 80

CMD  /usr/sbin/apache2ctl -D FOREGROUND
