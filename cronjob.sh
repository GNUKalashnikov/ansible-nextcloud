if ! grep -q "echo '*/5 * * * * php -f /var/www/html/cron.php" /etc/crontabs/www-data; then
    echo "echo '*/5 * * * * php -f /var/www/html/cron.php" >> /etc/crontabs/www-data
fi

# Realisation: This script will not work as it's not the host file I'm targeting but the docker container.
# Meaning I will either need to send this script to be executed inside the container
# Or create a docker file with nextcloud and transplant these commands inside it.