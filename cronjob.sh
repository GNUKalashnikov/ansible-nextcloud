if ! grep -q "echo '*/5 * * * * php -f /var/www/html/cron.php" /etc/crontabs/www-data; then
    echo "echo '*/5 * * * * php -f /var/www/html/cron.php" >> /etc/crontabs/www-data
fi