FROM nextcloud:latest

COPY cronjob.sh /root
WORKDIR /root

# Run Commands
RUN apt-get update; apt-get install cron vim -y
RUN apt-get install sudo -y
RUN chmod +x cronjob.sh
RUN ./cronjob.sh

# Cron Alternative
#RUN crontab -u root -l | { cat; echo "*/1 * * * * sudo -u www-data php memory_limit=-1 -f /var/www/html/cron.php"; } | crontab -u root -
RUN service cron start

