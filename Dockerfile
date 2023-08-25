FROM nextcloud:latest

COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Make the script executable (if needed)
RUN apt-get update; apt-get install cron vim -y
RUN chmod +x cronjob.sh

# Define the command to run your script
#RUN ./cronjob.sh
