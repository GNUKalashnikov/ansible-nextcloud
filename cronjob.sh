if ! grep -q "*/5 * * * * sudo -u www-data php d memory_limit=-1 -f /var/www/html/cron.php; then
    echo "*/5 * * * * sudo -u www-data php d memory_limit=-1 -f /var/www/html/cron.php" >> /etc/crontab
fi