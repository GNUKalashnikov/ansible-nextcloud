if ! grep -q "1 */5   * * * www-data php -f /var/www/html/cron.php" /etc/crontab; then
    echo "1 */5   * * * www-data php -f /var/www/html/cron.php" >> /etc/crontab
fi