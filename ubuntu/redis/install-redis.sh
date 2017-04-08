#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/curl/install-curl.sh"
apt-get install -y curl
# "ubuntu/curl/install-curl.sh"

apt-get install -y build-essential

curl http://download.redis.io/redis-stable.tar.gz -o /tmp/redis-stable.tar.gz
tar xvzf /tmp/redis-stable.tar.gz -C /tmp
make -C /tmp/redis-stable
make install -C /tmp/redis-stable

adduser --system --group --no-create-home redis

mkdir /etc/redis
mkdir /var/lib/redis
chown redis:redis /var/lib/redis
chmod 770 /var/lib/redis

cp /tmp/redis-stable/redis.conf /etc/redis/redis.conf
sed -i "s/^supervised no/supervised systemd/g" /etc/redis/redis.conf
sed -i "s/^dir \.\//dir \/var\/lib\/redis/g" /etc/redis/redis.conf

echo "[Unit]" | tee /lib/systemd/system/redis.service > /dev/null
echo "Description=Redis In-Memory Data Store" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "After=network.target" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "[Service]" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "User=redis" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "Group=redis" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "ExecStop=/usr/local/bin/redis-cli shutdown" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "Restart=always" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "[Install]" | tee -a /lib/systemd/system/redis.service > /dev/null
echo "WantedBy=multi-user.target" | tee -a /lib/systemd/system/redis.service > /dev/null

rm /tmp/redis-stable.tar.gz
rm -fr /tmp/redis-stable
