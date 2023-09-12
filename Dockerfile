FROM nextcloud:latest

COPY cronjob.sh /root
WORKDIR /root

# Run Commands
RUN apt-get update; apt-get install cron vim -y
RUN chmod +x cronjob.sh
RUN ./cronjob.sh

RUN cron -f 
