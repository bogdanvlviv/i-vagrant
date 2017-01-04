#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

apt-get install -y curl

apt-get install -y build-essential

curl http://download.redis.io/redis-stable.tar.gz -o /tmp/redis-stable.tar.gz
tar xvzf /tmp/redis-stable.tar.gz -C /tmp
make -C /tmp/redis-stable
make install -C /tmp/redis-stable
mkdir /etc/redis
mkdir /var/lib/redis
cp /tmp/redis-stable/utils/redis_init_script /etc/init.d/redis
cp /tmp/redis-stable/redis.conf /etc/redis/6379.conf
sed -i "s/^dir \.\//dir \/var\/lib\/redis/g" /etc/redis/6379.conf
sed -i "s/^daemonize no/daemonize yes/g" /etc/redis/6379.conf
rm /tmp/redis-stable.tar.gz
rm -fr /tmp/redis-stable
