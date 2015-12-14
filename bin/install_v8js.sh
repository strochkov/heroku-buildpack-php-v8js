#!/usr/bin/env bash
# bin/compile <build-dir> <cache-dir>

git clone https://github.com/FriendsOfPHP/pickle.git
cd pickle
chmod +x bin/pickle
bin/pickle install v8js-0.1.3
echo "extension=v8js.so" >> /app/.heroku/php/etc/php/php.ini
