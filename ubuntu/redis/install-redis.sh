#!/usr/bin/env bash

if [[ "$RUN_APT_GET_UPDATE_BEFORE" != "no" ]]; then
  apt-get update
fi

# "ubuntu/curl/install-curl.sh"
apt-get install -y curl
# "ubuntu/curl/install-curl.sh"

apt-get install -y build-essential

rm /tmp/redis-stable.tar.gz
rm -fr /tmp/redis-stable
curl http://download.redis.io/redis-stable.tar.gz -o /tmp/redis-stable.tar.gz
tar xvzf /tmp/redis-stable.tar.gz -C /tmp
make -C /tmp/redis-stable
make install -C /tmp/redis-stable

adduser --system --group --no-create-home redis

mkdir -p /etc/redis
mkdir -p /var/lib/redis
chown redis:redis /var/lib/redis
chmod 770 /var/lib/redis

cp /tmp/redis-stable/redis.conf /etc/redis/redis.conf
sed -i "s/^supervised no/supervised systemd/g" /etc/redis/redis.conf
sed -i "s/^dir \.\//dir \/var\/lib\/redis/g" /etc/redis/redis.conf

cat <<EOF | tee /lib/systemd/system/redis.service > /dev/null
[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target
EOF

rm /tmp/redis-stable.tar.gz
rm -fr /tmp/redis-stable
