#!/usr/bin/env bash

cp /work/rails/projects/rails/activerecord/test/config.example.yml /work/rails/projects/rails/activerecord/test/config.yml

sudo -u postgres createuser --superuser $1
sudo -u postgres createdb -O $1 -E UTF8 -T template0 activerecord_unittest
sudo -u postgres createdb -O $1 -E UTF8 -T template0 activerecord_unittest2

MYSQL_PWD=$3 mysql -u $2 <<SQL
CREATE USER 'rails'@'localhost';
CREATE DATABASE activerecord_unittest DEFAULT CHARACTER SET utf8mb4;
CREATE DATABASE activerecord_unittest2 DEFAULT CHARACTER SET utf8mb4;
GRANT ALL PRIVILEGES ON activerecord_unittest.* to 'rails'@'localhost';
GRANT ALL PRIVILEGES ON activerecord_unittest2.* to 'rails'@'localhost';
GRANT ALL PRIVILEGES ON inexistent_activerecord_unittest.* to 'rails'@'localhost';
SQL
