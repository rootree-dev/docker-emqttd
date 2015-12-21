#!/bin/bash

sudo /bin/sed -i "s/MYSQL_HOST/$MYSQL_HOST/g" /emqttd/plugins/emqttd_plugin_mysql/etc/plugin.config
sudo /bin/sed -i "s/MYSQL_PORT/$MYSQL_PORT/g" /emqttd/plugins/emqttd_plugin_mysql/etc/plugin.config
sudo /bin/sed -i "s/MYSQL_USER/$MYSQL_USER/g" /emqttd/plugins/emqttd_plugin_mysql/etc/plugin.config
sudo /bin/sed -i "s/MYSQL_PASSWORD/$MYSQL_PASSWORD/g" /emqttd/plugins/emqttd_plugin_mysql/etc/plugin.config
sudo /bin/sed -i "s/MYSQL_DATABASE/$MYSQL_DATABASE/g" /emqttd/plugins/emqttd_plugin_mysql/etc/plugin.config

./bin/emqttd start
./bin/emqttd_ctl plugins load emqttd_plugin_mysql

bash -c
