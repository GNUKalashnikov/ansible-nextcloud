FROM nextcloud:latest

COPY cronjob.sh /root
WORKDIR /root

# Run Commands
RUN apt-get update; apt-get install cron vim sudo -y
#RUN chmod +x cronjob.sh
#RUN ./cronjob.sh

# Cron Alternative
RUN crontab -l | { cat; echo "*/1 * * * * sudo -u data-www php memory_limit=-1 -f /var/www/html/cron.php"; } | crontab -
CMD cron start
