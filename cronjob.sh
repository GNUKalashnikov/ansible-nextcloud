if ! grep -q "echo */5 * * * * php -f /var/www/html/cron.php" /etc/crontab; then
    echo "*/5 * * * * php -f /var/www/html/cron.php" >> /etc/crontab
fi