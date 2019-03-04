sudo apt install unzip
unzip serverapp.zip
cd serverapp
sudo mkdir /var/www/serverapp
sudo mkdir /var/www/serverapp/html
sudo chown -R $USER:$USER /var/www/serverapp/html
sudo chmod -R 755 /var/www/serverapp/html


sudo cp index.html /var/www/serverapp/html/index.html
sudo cp index.html /var/www/serverapp/html/index.php
sudo cp -r css /var/www/serverapp/html/
sudo cp -r js /var/www/serverapp/html/ 

cd ..

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/serverapp.conf 

sudo apt install php mysql apache2 myqsql-server


