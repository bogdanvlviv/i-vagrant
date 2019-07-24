#!/usr/bin/env bash

cat <<EOF | tee /usr/local/bin/docker-reset > /dev/null
#!/usr/bin/env bash

docker container rm --force \$(docker container ls --all --quiet)
docker image rm --force \$(docker image ls --all --quiet)
EOF

chmod 755 /usr/local/bin/docker-reset
