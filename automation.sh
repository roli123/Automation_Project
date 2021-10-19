sudo apt update -y
apt install apache2
/etc/init.d/apache2 start
systemctl enable apache2
tar -zcvf "/tmp/roli-httpd-logs-$(date).tar.gz" /var/log/apache2/
aws s3 \
cp /tmp/roli-httpd-logs-$(date '+%d%m%Y-%H%M%S').tar \
s3://roliautomationproject/roli-httpd-logs-$(date '+%d%m%Y-%H%M%S').tar
cat /var/www/html/inventory.html
cat /etc/cron.d/automation
