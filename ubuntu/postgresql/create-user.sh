#!/usr/bin/env bash

service postgresql start

# TODO Remove this sudo
sudo -u postgres psql --command "CREATE USER $1 WITH SUPERUSER PASSWORD '$2'"
