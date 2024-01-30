#!/bin/bash


#Installing packages

sudo yum install httpd wget unzip -y

#Start and enabling httpd service

sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd

#Creating temprory path for downloading URL
#start artifact deployment

sudo mkdir -p /tmp/websetup/
cd /tmp/websetup/
wget https://www.tooplate.com/zip-templates/2137_barista_cafe.zip
unzip 2137_barista_cafe.zip
sudo cp -r 2137_barista_cafe/* /var/www/html/
sudo rm -rf /tmp/websetup

#Restarting httpd service

sudo systemctl restart httpd
sudo systemctl status httpd
~
