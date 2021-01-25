#!/bin/bash
sudo yum install httpd -y
sudo yum install epel-release -y
sudo yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm 
sudo yum-config-manager --enable remi-php74
sudo yum install php -y
sudo systemctl restart httpd
sudo systemctl enable httpd
sudo yum install wget -y
sudo wget https://wordpress.org/latest.tar.gz
sudo tar -xf latest.tar.gz -C /var/www/html/
sudo mv /var/www/html/wordpress/* /var/www/html/
sudo yum install php-mysql -y
sudo systemctl restart httpd
sudo getenforce
sudo sed 's/SELINUX=permissive/SELINUX=enforcing/g' /etc/sysconfig/selinux -i
sudo setenforce 0
sudo chown -R apache:apache /var/www/html/
sudo systemctl restart httpd