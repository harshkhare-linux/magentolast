#!/bin/bash
sudo service nginx restart
sudo /var/www/html/bin/magento setup:static-content:deploy -f
sudo /var/www/html/bin/magento c:c
sudo /var/www/html/bin/magento c:f
cd /var/www/html && sudo find var generated vendor pub/static pub/media app/etc -type f -exec chmod g+w {} +
cd /var/www/html && sudo find var generated vendor pub/static pub/media app/etc -type d -exec chmod g+ws {} +
cd /var/www/html && sudo chown -R :www-data . # Ubuntu
