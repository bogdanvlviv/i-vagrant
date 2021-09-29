#!/usr/bin/env bash

pg_ctl start

createdb $3

psql --command "CREATE USER $1 WITH SUPERUSER PASSWORD '$2'"
