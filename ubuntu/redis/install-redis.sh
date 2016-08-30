#!/usr/bin/env bash

# http://redis.io/topics/quickstart
cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xvzf redis-stable.tar.gz
cd redis-stable
make
make install
mkdir /etc/redis
mkdir /var/redis
cp /tmp/redis-stable/utils/redis_init_script /etc/init.d/redis_6379
cp /tmp/redis-stable/redis.conf /etc/redis/6379.conf
mkdir /var/redis/6379
sed -i "s/dir \.\//dir \/var\/redis\/6379/g" /etc/redis/6379.conf
sed -i "s/daemonize no/daemonize yes/g" /etc/redis/6379.conf
