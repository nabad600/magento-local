#!/bin/sh
cd /var/www
bin/magento setup:install \
--base-url=http://localhost \
--db-host=mariadb \
--db-name={DB_NAME} \
--db-user={DB_USER} \
--db-password={DB_PASSWORD} \
--admin-firstname=admin \
--admin-lastname=admin \
--admin-email=admin@admin.com \
--admin-user=admin \
--admin-password=admin123 \
--language=en_US \
--currency=USD \
--timezone=America/Chicago \
--use-rewrites=1 \
--elasticsearch-host=elasticsearch
exec "$@"