#!/usr/bin/env bash

service postgresql start

sudo -u postgres psql --command "CREATE USER $1 WITH SUPERUSER PASSWORD '$2'"
