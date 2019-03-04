sudo apt install unzip
unzip frontapp.zip
cd frontapp
sudo mkdir /var/www/frontapp
sudo mkdir /var/www/frontapp/html
sudo chown -R $USER:$USER /var/www/frontapp/html
sudo chmod -R 755 /var/www/frontapp/html


sudo cp index.html /var/www/frontapp/html/index.html
sudo cp index.html /var/www/frontapp/html/index.php
sudo cp -r css /var/www/frontapp/html/
sudo cp -r js /var/www/frontapp/html/ 

cd ..

sudo cp /etc/apache2/sites-available/000-default.conf /etc/apache2/sites-available/frontapp.conf 

sudo apt install php mysql apache2 myqsql-server


