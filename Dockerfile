FROM nextcloud:latest

# Copy the script into the image
COPY cronjob.sh /var/www/html/

# Set the working directory
WORKDIR /var/www/html

# Install necessary packages
RUN apt-get update && apt-get install cron vim -y

# Make the script executable
RUN chmod +x cronjob.sh

# Define the command to run your script
CMD ["./cronjob.sh"]
