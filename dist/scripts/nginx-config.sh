#!/bin/bash

echo -e "\n--- Configure nginx ---\n"
sudo cp /vagrant/dist/nginx/nginx.conf /etc/nginx/

echo -e "\n--- Configure hosts ---\n"
sudo cp /vagrant/dist/nginx/conf.d/phpmyadmin.loc /etc/nginx/conf.d/phpmyadmin.loc

echo -e "\n--- Restart nginx ---\n"
sudo service nginx restart
