#!/usr/bin/env bash

pg_ctl start

psql --dbname postgres --command "CREATE USER $1 WITH SUPERUSER PASSWORD '$2'"
