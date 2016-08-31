#!/usr/bin/env bash


apt-get update

apt-get install -y curl

apt-get install -y build-essential

# http://redis.io/topics/quickstart
curl http://download.redis.io/redis-stable.tar.gz -o /tmp/redis-stable.tar.gz
tar xvzf /tmp/redis-stable.tar.gz -C /tmp
make -C /tmp/redis-stable
make install -C /tmp/redis-stable
mkdir /etc/redis
mkdir /var/redis
cp /tmp/redis-stable/utils/redis_init_script /etc/init.d/redis_6379
cp /tmp/redis-stable/redis.conf /etc/redis/6379.conf
mkdir /var/redis/6379
sed -i "s/dir \.\//dir \/var\/redis\/6379/g" /etc/redis/6379.conf
sed -i "s/daemonize no/daemonize yes/g" /etc/redis/6379.conf
rm /tmp/redis-stable.tar.gz
rm -fr /tmp/redis-stable
