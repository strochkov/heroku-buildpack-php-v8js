#!/bin/bash
# Build Path: /app/.heroku/php/

git clone https://github.com/FriendsOfPHP/pickle.git
cd pickle
chmod +x bin/pickle
apt-get install -y libv8js-dev
bin/pickle install v8js-0.1.3
echo "extension=v8js.so" >> /app/.heroku/php/etc/php/php.ini
