FROM nextcloud:latest

COPY cronjob.sh /var/www/html/

# Modify the entrypoint script to run the cronjob
RUN echo "./cronjob.sh" >> /entrypoint.sh

# Set the working directory
WORKDIR /var/www/html

# Install necessary packages
RUN apt-get update && apt-get install cron vim -y

# Make the script executable
RUN chmod +x /var/www/html/cronjob.sh

# Define the command to run your script
CMD ["/entrypoint.sh"]
